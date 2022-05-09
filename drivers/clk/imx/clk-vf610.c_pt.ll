; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-vf610.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-vf610.c"
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
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_vf610 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vf610_clocks_init }, section "__clk_of_table", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@clk = internal global { [191 x ptr], [164 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sirc_128k\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sirc_32k\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"firc\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sxosc\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fxosc\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_ext\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_ext\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"anaclk1\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fxosc_half\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,vf610-anatop\00", [47 x i8] zeroinitializer }, align 32
@anatop_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ccm_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slow_clk_sel\00", [19 x i8] zeroinitializer }, align 32
@slow_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fast_clk_sel\00", [19 x i8] zeroinitializer }, align 32
@fast_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.5], [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll1_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@pll_bypass_src_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.12, ptr @.str.41], [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll2_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll3_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll4_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll5_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll6_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll7_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll1\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll2\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll3\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll4\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll5\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll6\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll7\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll1_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll1_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.20, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll2_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll2_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.14], [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll3_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll3_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.22, ptr @.str.15], [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll4_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll4_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.23, ptr @.str.16], [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll5_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll5_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.24, ptr @.str.17], [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll6_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll6_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.25, ptr @.str.18], [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll7_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll7_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.26, ptr @.str.19], [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll1_sys\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll2_bus\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll3_usb_otg\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll4_audio\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll5_enet\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll6_video\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll7_usb_host\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lvds1_in\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll1_pfd1\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll1_pfd2\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll1_pfd3\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll1_pfd4\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll2_pfd1\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll2_pfd2\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll2_pfd3\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll2_pfd4\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll3_pfd1\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll3_pfd2\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll3_pfd3\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll3_pfd4\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll1_pfd_sel\00", [19 x i8] zeroinitializer }, align 32
@pll1_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.34, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll2_pfd_sel\00", [19 x i8] zeroinitializer }, align 32
@pll2_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.35, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sys_sel\00", [24 x i8] zeroinitializer }, align 32
@sys_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.12, ptr @.str.11, ptr @.str.55, ptr @.str.35, ptr @.str.54, ptr @.str.36], [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ddr_sel\00", [24 x i8] zeroinitializer }, align 32
@ddr_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.47, ptr @.str.56], [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sys_bus\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"platform_bus\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipg_bus\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pll3_usb_otg_div\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll4_audio_div\00", [17 x i8] zeroinitializer }, align 32
@pll4_audio_div_table = internal constant { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 6 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 10 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 14 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll6_video_div\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ddrmc\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wkpu\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbphy0\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbphy1\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usbc0\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usbc1\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qspi0_sel\00", [22 x i8] zeroinitializer }, align 32
@qspi_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.36, ptr @.str.53, ptr @.str.49, ptr @.str.45], [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qspi0_en\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qspi0_x4\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qspi0_x2\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qspi0_x1\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qspi0\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qspi1_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qspi1_en\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qspi1_x4\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qspi1_x2\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qspi1_x1\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qspi1\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_50m\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_25m\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_sel\00", [23 x i8] zeroinitializer }, align 32
@rmii_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.7, ptr @.str.6, ptr @.str.82, ptr @.str.83], [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enet_ts_sel\00", [20 x i8] zeroinitializer }, align 32
@enet_ts_sels = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.7, ptr @.str.5, ptr @.str.6, ptr @.str.191, ptr @.str.87, ptr @.str.83, ptr @.str.82], [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"enet\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enet_ts\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"enet0\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"enet1\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pit\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart4\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart5\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c0\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dspi0\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dspi1\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dspi2\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dspi3\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"crc\00", [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wdt\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"esdhc0_sel\00", [21 x i8] zeroinitializer }, align 32
@esdhc_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.36, ptr @.str.52, ptr @.str.44, ptr @.str.59], [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"esdhc0_en\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"esdhc0_div\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eshc0\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"esdhc1_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"esdhc1_en\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"esdhc1_div\00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eshc1\00", [26 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ftm0_ext_sel\00", [19 x i8] zeroinitializer }, align 32
@ftm_ext_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.4, ptr @.str.9, ptr @.str.6], [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ftm0_fix_sel\00", [19 x i8] zeroinitializer }, align 32
@ftm_fix_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.60], [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ftm0_ext_fix_en\00", [16 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ftm1_ext_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ftm1_fix_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ftm1_ext_fix_en\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ftm2_ext_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ftm2_fix_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ftm2_ext_fix_en\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ftm3_ext_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ftm3_fix_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ftm3_ext_fix_en\00", [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ftm0\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ftm1\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ftm2\00", [27 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ftm3\00", [27 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dcu0_sel\00", [23 x i8] zeroinitializer }, align 32
@dcu_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.43, ptr @.str.36], [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dcu0_en\00", [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dcu0_div\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dcu0\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dcu1_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dcu1_en\00", [24 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dcu1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dcu1\00", [27 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tcon0\00", [26 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tcon1\00", [26 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"esai_sel\00", [23 x i8] zeroinitializer }, align 32
@esai_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.6, ptr @.str.192, ptr @.str.193, ptr @.str.62], [16 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"esai_en\00", [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"esai_div\00", [23 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"esai\00", [27 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai0_sel\00", [23 x i8] zeroinitializer }, align 32
@sai_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.6, ptr @.str.192, ptr @.str.193, ptr @.str.62], [16 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sai0_en\00", [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai0_div\00", [23 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai0\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai1_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sai1_en\00", [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai1\00", [27 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai2_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sai2_en\00", [24 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai2\00", [27 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai3_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sai3_en\00", [24 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai3_div\00", [23 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai3\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nfc_sel\00", [24 x i8] zeroinitializer }, align 32
@nfc_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.59, ptr @.str.42, ptr @.str.50, ptr @.str.52], [16 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nfc_en\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nfc_pre_div\00", [20 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nfc_frac_div\00", [19 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfc\00", [28 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpu_sel\00", [24 x i8] zeroinitializer }, align 32
@gpu_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.47, ptr @.str.51], [24 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpu_en\00", [25 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vadc_sel\00", [23 x i8] zeroinitializer }, align 32
@vadc_sels = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.63, ptr @.str.61, ptr @.str.36], [20 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vadc_en\00", [24 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vadc_div\00", [23 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vadc_div_half\00", [18 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vadc\00", [27 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc0\00", [27 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc1\00", [27 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dac0\00", [27 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dac1\00", [27 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"asrc\00", [27 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flexcan0_en\00", [20 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"flexcan0\00", [23 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flexcan1_en\00", [20 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"flexcan1\00", [23 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dmamux0\00", [24 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dmamux1\00", [24 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dmamux2\00", [24 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dmamux3\00", [24 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snvs-rtc\00", [23 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dap\00", [28 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocotp\00", [26 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"caam\00", [27 x i8] zeroinitializer }, align 32
@clks_init_on = internal unnamed_addr constant [5 x i32] [i32 36, i32 35, i32 183, i32 185, i32 186], section ".init.rodata", align 4
@vf610_clk_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @vf610_clk_suspend, ptr @vf610_clk_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@clk_data = internal global { %struct.clk_onecell_data, [24 x i8] } zeroinitializer, align 32
@.str.191 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mlb\00", [28 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spdif_rx\00", [23 x i8] zeroinitializer }, align 32
@cscmr1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cscmr2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cscdr1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cscdr2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cscdr3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ccgr.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ccgr.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ccgr.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ccgr.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ccgr.4 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ccgr.5 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ccgr.6 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ccgr.7 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ccgr.8 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ccgr.9 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ccgr.10 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ccgr.11 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 184, i32 25 }
@___asan_gen_.197 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 113, i32 20 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 185, i32 29 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 186, i32 28 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 187, i32 24 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 189, i32 57 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 190, i32 57 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 191, i32 61 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 192, i32 60 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 195, i32 59 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 197, i32 30 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 199, i32 43 }
@___asan_gen_.230 = private unnamed_addr constant [12 x i8] c"anatop_base\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 68, i32 22 }
@___asan_gen_.233 = private unnamed_addr constant [9 x i8] c"ccm_base\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 69, i32 22 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 208, i32 32 }
@___asan_gen_.239 = private unnamed_addr constant [10 x i8] c"slow_sels\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 73, i32 20 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 209, i32 32 }
@___asan_gen_.245 = private unnamed_addr constant [10 x i8] c"fast_sels\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 72, i32 20 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 211, i32 35 }
@___asan_gen_.251 = private unnamed_addr constant [20 x i8] c"pll_bypass_src_sels\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 76, i32 20 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 212, i32 35 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 213, i32 35 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 214, i32 35 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 215, i32 35 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 216, i32 35 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 217, i32 35 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 219, i32 24 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 220, i32 24 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 221, i32 24 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 222, i32 24 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 223, i32 24 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 224, i32 24 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 225, i32 24 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 227, i32 27 }
@___asan_gen_.296 = private unnamed_addr constant [17 x i8] c"pll1_bypass_sels\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 77, i32 20 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 228, i32 27 }
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"pll2_bypass_sels\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 78, i32 20 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 229, i32 27 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"pll3_bypass_sels\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 79, i32 20 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 230, i32 27 }
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"pll4_bypass_sels\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 80, i32 20 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 231, i32 27 }
@___asan_gen_.320 = private unnamed_addr constant [17 x i8] c"pll5_bypass_sels\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 81, i32 20 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 232, i32 27 }
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"pll6_bypass_sels\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 82, i32 20 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 233, i32 27 }
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"pll7_bypass_sels\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 83, i32 20 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 244, i32 33 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 245, i32 33 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 246, i32 33 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 247, i32 33 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 248, i32 33 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 249, i32 33 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 250, i32 33 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 252, i32 29 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 254, i32 29 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 255, i32 29 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 256, i32 29 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 257, i32 29 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 259, i32 29 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 260, i32 29 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 261, i32 29 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 262, i32 29 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 264, i32 29 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 265, i32 29 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 266, i32 29 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 267, i32 29 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 269, i32 32 }
@___asan_gen_.398 = private unnamed_addr constant [10 x i8] c"pll1_sels\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 74, i32 20 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 270, i32 32 }
@___asan_gen_.404 = private unnamed_addr constant [10 x i8] c"pll2_sels\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 75, i32 20 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 271, i32 27 }
@___asan_gen_.410 = private unnamed_addr constant [9 x i8] c"sys_sels\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 84, i32 20 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 272, i32 27 }
@___asan_gen_.416 = private unnamed_addr constant [9 x i8] c"ddr_sels\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 85, i32 20 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 273, i32 27 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 274, i32 32 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 275, i32 27 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 277, i32 33 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 278, i32 66 }
@___asan_gen_.434 = private unnamed_addr constant [21 x i8] c"pll4_audio_div_table\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 101, i32 35 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 279, i32 33 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 281, i32 25 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 282, i32 24 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 284, i32 27 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 285, i32 27 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 287, i32 25 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 288, i32 25 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 290, i32 29 }
@___asan_gen_.461 = private unnamed_addr constant [10 x i8] c"qspi_sels\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 91, i32 20 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 291, i32 28 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 292, i32 32 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 293, i32 32 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 294, i32 32 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 295, i32 25 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 297, i32 29 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 298, i32 28 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 299, i32 32 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 300, i32 32 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 301, i32 32 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 302, i32 25 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 304, i32 28 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 305, i32 28 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 306, i32 28 }
@___asan_gen_.506 = private unnamed_addr constant [10 x i8] c"rmii_sels\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 86, i32 20 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 307, i32 31 }
@___asan_gen_.512 = private unnamed_addr constant [13 x i8] c"enet_ts_sels\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 87, i32 20 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 308, i32 24 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 309, i32 27 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 310, i32 25 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 311, i32 25 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 313, i32 23 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 315, i32 25 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 316, i32 25 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 317, i32 25 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 318, i32 25 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 319, i32 25 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 320, i32 25 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 322, i32 24 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 323, i32 24 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 324, i32 24 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 325, i32 24 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 327, i32 25 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 328, i32 25 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 329, i32 25 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 330, i32 25 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 332, i32 23 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 333, i32 23 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 335, i32 30 }
@___asan_gen_.581 = private unnamed_addr constant [11 x i8] c"esdhc_sels\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 92, i32 20 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 336, i32 29 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 337, i32 30 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 338, i32 26 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 340, i32 30 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 341, i32 29 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 342, i32 30 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 343, i32 26 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 351, i32 32 }
@___asan_gen_.608 = private unnamed_addr constant [13 x i8] c"ftm_ext_sels\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 97, i32 20 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 352, i32 32 }
@___asan_gen_.614 = private unnamed_addr constant [13 x i8] c"ftm_fix_sels\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 98, i32 20 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 353, i32 35 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 354, i32 32 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 355, i32 32 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 356, i32 35 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 357, i32 32 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 358, i32 32 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 359, i32 35 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 360, i32 32 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 361, i32 32 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 362, i32 35 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 365, i32 24 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 366, i32 24 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 367, i32 24 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 368, i32 24 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 370, i32 28 }
@___asan_gen_.662 = private unnamed_addr constant [9 x i8] c"dcu_sels\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 93, i32 20 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 371, i32 27 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 372, i32 28 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 373, i32 24 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 374, i32 28 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 375, i32 27 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 376, i32 28 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 377, i32 24 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 379, i32 25 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 380, i32 25 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 382, i32 28 }
@___asan_gen_.695 = private unnamed_addr constant [10 x i8] c"esai_sels\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 88, i32 20 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 383, i32 27 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 384, i32 28 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 385, i32 24 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 387, i32 28 }
@___asan_gen_.710 = private unnamed_addr constant [9 x i8] c"sai_sels\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 89, i32 20 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 388, i32 27 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 389, i32 28 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 390, i32 24 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 392, i32 28 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 393, i32 27 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 394, i32 28 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 395, i32 24 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 397, i32 28 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 398, i32 27 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 399, i32 28 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 400, i32 24 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 402, i32 28 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 403, i32 27 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 404, i32 28 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 405, i32 24 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 407, i32 27 }
@___asan_gen_.761 = private unnamed_addr constant [9 x i8] c"nfc_sels\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 90, i32 20 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 408, i32 26 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 409, i32 31 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 410, i32 32 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 411, i32 23 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 413, i32 27 }
@___asan_gen_.779 = private unnamed_addr constant [9 x i8] c"gpu_sels\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 94, i32 20 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 414, i32 26 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 415, i32 25 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 417, i32 28 }
@___asan_gen_.791 = private unnamed_addr constant [10 x i8] c"vadc_sels\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 95, i32 20 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 418, i32 27 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 419, i32 28 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 420, i32 33 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 421, i32 24 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 423, i32 24 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 424, i32 24 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 425, i32 24 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 426, i32 24 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 428, i32 24 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 430, i32 31 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 431, i32 28 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 432, i32 31 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 433, i32 28 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 435, i32 27 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 436, i32 27 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 437, i32 27 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 438, i32 27 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 440, i32 24 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 441, i32 23 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 442, i32 25 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 443, i32 24 }
@___asan_gen_.857 = private unnamed_addr constant [22 x i8] c"vf610_clk_syscore_ops\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 174, i32 27 }
@___asan_gen_.860 = private unnamed_addr constant [9 x i8] c"clk_data\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 114, i32 32 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 87, i32 73 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 88, i32 49 }
@___asan_gen_.869 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 88, i32 56 }
@___asan_gen_.872 = private unnamed_addr constant [7 x i8] c"cscmr1\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 116, i32 12 }
@___asan_gen_.875 = private unnamed_addr constant [7 x i8] c"cscmr2\00", align 1
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 117, i32 12 }
@___asan_gen_.878 = private unnamed_addr constant [7 x i8] c"cscdr1\00", align 1
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 118, i32 12 }
@___asan_gen_.881 = private unnamed_addr constant [7 x i8] c"cscdr2\00", align 1
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 119, i32 12 }
@___asan_gen_.884 = private unnamed_addr constant [7 x i8] c"cscdr3\00", align 1
@___asan_gen_.885 = private constant [31 x i8] c"../drivers/clk/imx/clk-vf610.c\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.885, i32 120, i32 12 }
@___asan_gen_.887 = private unnamed_addr constant [7 x i8] c"ccgr.0\00", align 1
@___asan_gen_.888 = private unnamed_addr constant [7 x i8] c"ccgr.1\00", align 1
@___asan_gen_.889 = private unnamed_addr constant [7 x i8] c"ccgr.2\00", align 1
@___asan_gen_.890 = private unnamed_addr constant [7 x i8] c"ccgr.3\00", align 1
@___asan_gen_.891 = private unnamed_addr constant [7 x i8] c"ccgr.4\00", align 1
@___asan_gen_.892 = private unnamed_addr constant [7 x i8] c"ccgr.5\00", align 1
@___asan_gen_.893 = private unnamed_addr constant [7 x i8] c"ccgr.6\00", align 1
@___asan_gen_.894 = private unnamed_addr constant [7 x i8] c"ccgr.7\00", align 1
@___asan_gen_.895 = private unnamed_addr constant [7 x i8] c"ccgr.8\00", align 1
@___asan_gen_.896 = private unnamed_addr constant [7 x i8] c"ccgr.9\00", align 1
@___asan_gen_.897 = private unnamed_addr constant [8 x i8] c"ccgr.10\00", align 1
@___asan_gen_.898 = private unnamed_addr constant [8 x i8] c"ccgr.11\00", align 1
@llvm.compiler.used = appending global [244 x ptr] [ptr @__of_table_vf610, ptr @.str, ptr @clk, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @anatop_base, ptr @ccm_base, ptr @.str.11, ptr @slow_sels, ptr @.str.12, ptr @fast_sels, ptr @.str.13, ptr @pll_bypass_src_sels, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @pll1_bypass_sels, ptr @.str.28, ptr @pll2_bypass_sels, ptr @.str.29, ptr @pll3_bypass_sels, ptr @.str.30, ptr @pll4_bypass_sels, ptr @.str.31, ptr @pll5_bypass_sels, ptr @.str.32, ptr @pll6_bypass_sels, ptr @.str.33, ptr @pll7_bypass_sels, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @pll1_sels, ptr @.str.55, ptr @pll2_sels, ptr @.str.56, ptr @sys_sels, ptr @.str.57, ptr @ddr_sels, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @pll4_audio_div_table, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @qspi_sels, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @rmii_sels, ptr @.str.85, ptr @enet_ts_sels, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @esdhc_sels, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @ftm_ext_sels, ptr @.str.116, ptr @ftm_fix_sels, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @dcu_sels, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @esai_sels, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @sai_sels, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @nfc_sels, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @gpu_sels, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @vadc_sels, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @vf610_clk_syscore_ops, ptr @clk_data, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @cscmr1, ptr @cscmr2, ptr @cscdr1, ptr @cscdr2, ptr @cscdr3, ptr @ccgr.0, ptr @ccgr.1, ptr @ccgr.2, ptr @ccgr.3, ptr @ccgr.4, ptr @ccgr.5, ptr @ccgr.6, ptr @ccgr.7, ptr @ccgr.8, ptr @ccgr.9, ptr @ccgr.10, ptr @ccgr.11], section "llvm.metadata"
@0 = internal global [243 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk to i32), i32 764, i32 928, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anatop_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccm_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slow_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fast_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_bypass_src_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll1_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll2_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll3_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll4_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll5_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll6_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll7_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll1_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll2_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll4_audio_div_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmii_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enet_ts_sels to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_ext_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_fix_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcu_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esai_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sai_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_sels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_clk_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscmr1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscmr2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscdr1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscdr2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscdr3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccgr.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccgr.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccgr.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccgr.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccgr.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccgr.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccgr.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccgr.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccgr.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccgr.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccgr.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccgr.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vf610_clocks_init(ptr noundef %ccm_node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  %tobool.not.i.i = icmp eq ptr %call.i, null
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.to_clk.exit_crit_edge, label %if.end.i

entry.to_clk.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  br label %to_clk.exit

to_clk.exit:                                      ; preds = %if.end.i, %entry.to_clk.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ %call.i, %entry.to_clk.exit_crit_edge ]
  store ptr %retval.0.i, ptr @clk, align 4
  %call.i631 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 128000, i32 noundef 0, i32 noundef 0) #4
  %tobool.not.i.i632 = icmp eq ptr %call.i631, null
  %cmp.i.i633 = icmp ugt ptr %call.i631, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i634 = or i1 %tobool.not.i.i632, %cmp.i.i633
  br i1 %spec.select.i.i634, label %to_clk.exit.to_clk.exit638_crit_edge, label %if.end.i636

to_clk.exit.to_clk.exit638_crit_edge:             ; preds = %to_clk.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit638

if.end.i636:                                      ; preds = %to_clk.exit
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i635 = getelementptr inbounds %struct.clk_hw, ptr %call.i631, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i635 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i635, align 4
  br label %to_clk.exit638

to_clk.exit638:                                   ; preds = %if.end.i636, %to_clk.exit.to_clk.exit638_crit_edge
  %retval.0.i637 = phi ptr [ %3, %if.end.i636 ], [ %call.i631, %to_clk.exit.to_clk.exit638_crit_edge ]
  store ptr %retval.0.i637, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 1), align 4
  %call.i639 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 32000, i32 noundef 0, i32 noundef 0) #4
  %tobool.not.i.i640 = icmp eq ptr %call.i639, null
  %cmp.i.i641 = icmp ugt ptr %call.i639, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i642 = or i1 %tobool.not.i.i640, %cmp.i.i641
  br i1 %spec.select.i.i642, label %to_clk.exit638.to_clk.exit646_crit_edge, label %if.end.i644

to_clk.exit638.to_clk.exit646_crit_edge:          ; preds = %to_clk.exit638
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit646

if.end.i644:                                      ; preds = %to_clk.exit638
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i643 = getelementptr inbounds %struct.clk_hw, ptr %call.i639, i32 0, i32 1
  %4 = ptrtoint ptr %clk.i643 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i643, align 4
  br label %to_clk.exit646

to_clk.exit646:                                   ; preds = %if.end.i644, %to_clk.exit638.to_clk.exit646_crit_edge
  %retval.0.i645 = phi ptr [ %5, %if.end.i644 ], [ %call.i639, %to_clk.exit638.to_clk.exit646_crit_edge ]
  store ptr %retval.0.i645, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 2), align 4
  %call.i647 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 24000000, i32 noundef 0, i32 noundef 0) #4
  %tobool.not.i.i648 = icmp eq ptr %call.i647, null
  %cmp.i.i649 = icmp ugt ptr %call.i647, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i650 = or i1 %tobool.not.i.i648, %cmp.i.i649
  br i1 %spec.select.i.i650, label %to_clk.exit646.to_clk.exit654_crit_edge, label %if.end.i652

to_clk.exit646.to_clk.exit654_crit_edge:          ; preds = %to_clk.exit646
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit654

if.end.i652:                                      ; preds = %to_clk.exit646
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i651 = getelementptr inbounds %struct.clk_hw, ptr %call.i647, i32 0, i32 1
  %6 = ptrtoint ptr %clk.i651 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i651, align 4
  br label %to_clk.exit654

to_clk.exit654:                                   ; preds = %if.end.i652, %to_clk.exit646.to_clk.exit654_crit_edge
  %retval.0.i653 = phi ptr [ %7, %if.end.i652 ], [ %call.i647, %to_clk.exit646.to_clk.exit654_crit_edge ]
  store ptr %retval.0.i653, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 3), align 4
  %call8 = tail call fastcc ptr @vf610_get_fixed_clock(ptr noundef %ccm_node, ptr noundef nonnull @.str.4) #7
  store ptr %call8, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 4), align 4
  %call9 = tail call fastcc ptr @vf610_get_fixed_clock(ptr noundef %ccm_node, ptr noundef nonnull @.str.5) #7
  store ptr %call9, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 5), align 4
  %call10 = tail call fastcc ptr @vf610_get_fixed_clock(ptr noundef %ccm_node, ptr noundef nonnull @.str.6) #7
  store ptr %call10, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 9), align 4
  %call11 = tail call fastcc ptr @vf610_get_fixed_clock(ptr noundef %ccm_node, ptr noundef nonnull @.str.7) #7
  store ptr %call11, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 10), align 4
  %call12 = tail call fastcc ptr @vf610_get_fixed_clock(ptr noundef %ccm_node, ptr noundef nonnull @.str.8) #7
  store ptr %call12, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 160), align 4
  %call.i655 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %tobool.not.i.i656 = icmp eq ptr %call.i655, null
  %cmp.i.i657 = icmp ugt ptr %call.i655, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i658 = or i1 %tobool.not.i.i656, %cmp.i.i657
  br i1 %spec.select.i.i658, label %to_clk.exit654.to_clk.exit662_crit_edge, label %if.end.i660

to_clk.exit654.to_clk.exit662_crit_edge:          ; preds = %to_clk.exit654
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit662

if.end.i660:                                      ; preds = %to_clk.exit654
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i659 = getelementptr inbounds %struct.clk_hw, ptr %call.i655, i32 0, i32 1
  %8 = ptrtoint ptr %clk.i659 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i659, align 4
  br label %to_clk.exit662

to_clk.exit662:                                   ; preds = %if.end.i660, %to_clk.exit654.to_clk.exit662_crit_edge
  %retval.0.i661 = phi ptr [ %9, %if.end.i660 ], [ %call.i655, %to_clk.exit654.to_clk.exit662_crit_edge ]
  store ptr %retval.0.i661, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 6), align 4
  %call15 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10) #4
  %call16 = tail call ptr @of_iomap(ptr noundef %call15, i32 noundef 0) #4
  store ptr %call16, ptr @anatop_base, align 4
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %do.body20, label %do.end25, !prof !477

do.body20:                                        ; preds = %to_clk.exit662
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/imx/clk-vf610.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 201, 0\0A.popsection", ""() #4, !srcloc !478
  unreachable

do.end25:                                         ; preds = %to_clk.exit662
  tail call void @of_node_put(ptr noundef %call15) #4
  %call26 = tail call ptr @of_iomap(ptr noundef %ccm_node, i32 noundef 0) #4
  store ptr %call26, ptr @ccm_base, align 4
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %do.body38, label %do.end46, !prof !477

do.body38:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/imx/clk-vf610.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #4, !srcloc !479
  unreachable

do.end46:                                         ; preds = %do.end25
  %add.ptr = getelementptr i8, ptr %call26, i32 8
  %call.i663 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11, i8 noundef zeroext 2, ptr noundef nonnull @slow_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr, i8 noundef zeroext 4, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i664 = icmp eq ptr %call.i663, null
  %cmp.i.i665 = icmp ugt ptr %call.i663, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i666 = or i1 %tobool.not.i.i664, %cmp.i.i665
  br i1 %spec.select.i.i666, label %do.end46.to_clk.exit670_crit_edge, label %if.end.i668

do.end46.to_clk.exit670_crit_edge:                ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit670

if.end.i668:                                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i667 = getelementptr inbounds %struct.clk_hw, ptr %call.i663, i32 0, i32 1
  %10 = ptrtoint ptr %clk.i667 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i667, align 4
  br label %to_clk.exit670

to_clk.exit670:                                   ; preds = %if.end.i668, %do.end46.to_clk.exit670_crit_edge
  %retval.0.i669 = phi ptr [ %11, %if.end.i668 ], [ %call.i663, %do.end46.to_clk.exit670_crit_edge ]
  store ptr %retval.0.i669, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 7), align 4
  %12 = load ptr, ptr @ccm_base, align 4
  %add.ptr49 = getelementptr i8, ptr %12, i32 8
  %call.i671 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, i8 noundef zeroext 2, ptr noundef nonnull @fast_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr49, i8 noundef zeroext 5, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i672 = icmp eq ptr %call.i671, null
  %cmp.i.i673 = icmp ugt ptr %call.i671, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i674 = or i1 %tobool.not.i.i672, %cmp.i.i673
  br i1 %spec.select.i.i674, label %to_clk.exit670.to_clk.exit678_crit_edge, label %if.end.i676

to_clk.exit670.to_clk.exit678_crit_edge:          ; preds = %to_clk.exit670
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit678

if.end.i676:                                      ; preds = %to_clk.exit670
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i675 = getelementptr inbounds %struct.clk_hw, ptr %call.i671, i32 0, i32 1
  %13 = ptrtoint ptr %clk.i675 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk.i675, align 4
  br label %to_clk.exit678

to_clk.exit678:                                   ; preds = %if.end.i676, %to_clk.exit670.to_clk.exit678_crit_edge
  %retval.0.i677 = phi ptr [ %14, %if.end.i676 ], [ %call.i671, %to_clk.exit670.to_clk.exit678_crit_edge ]
  store ptr %retval.0.i677, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 8), align 4
  %15 = load ptr, ptr @anatop_base, align 4
  %add.ptr52 = getelementptr i8, ptr %15, i32 624
  %call.i679 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr52, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i680 = icmp eq ptr %call.i679, null
  %cmp.i.i681 = icmp ugt ptr %call.i679, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i682 = or i1 %tobool.not.i.i680, %cmp.i.i681
  br i1 %spec.select.i.i682, label %to_clk.exit678.to_clk.exit686_crit_edge, label %if.end.i684

to_clk.exit678.to_clk.exit686_crit_edge:          ; preds = %to_clk.exit678
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit686

if.end.i684:                                      ; preds = %to_clk.exit678
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i683 = getelementptr inbounds %struct.clk_hw, ptr %call.i679, i32 0, i32 1
  %16 = ptrtoint ptr %clk.i683 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk.i683, align 4
  br label %to_clk.exit686

to_clk.exit686:                                   ; preds = %if.end.i684, %to_clk.exit678.to_clk.exit686_crit_edge
  %retval.0.i685 = phi ptr [ %17, %if.end.i684 ], [ %call.i679, %to_clk.exit678.to_clk.exit686_crit_edge ]
  store ptr %retval.0.i685, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 161), align 4
  %18 = load ptr, ptr @anatop_base, align 4
  %add.ptr55 = getelementptr i8, ptr %18, i32 48
  %call.i687 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.14, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr55, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i688 = icmp eq ptr %call.i687, null
  %cmp.i.i689 = icmp ugt ptr %call.i687, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i690 = or i1 %tobool.not.i.i688, %cmp.i.i689
  br i1 %spec.select.i.i690, label %to_clk.exit686.to_clk.exit694_crit_edge, label %if.end.i692

to_clk.exit686.to_clk.exit694_crit_edge:          ; preds = %to_clk.exit686
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit694

if.end.i692:                                      ; preds = %to_clk.exit686
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i691 = getelementptr inbounds %struct.clk_hw, ptr %call.i687, i32 0, i32 1
  %19 = ptrtoint ptr %clk.i691 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk.i691, align 4
  br label %to_clk.exit694

to_clk.exit694:                                   ; preds = %if.end.i692, %to_clk.exit686.to_clk.exit694_crit_edge
  %retval.0.i693 = phi ptr [ %20, %if.end.i692 ], [ %call.i687, %to_clk.exit686.to_clk.exit694_crit_edge ]
  store ptr %retval.0.i693, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 162), align 4
  %21 = load ptr, ptr @anatop_base, align 4
  %add.ptr58 = getelementptr i8, ptr %21, i32 16
  %call.i695 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr58, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i696 = icmp eq ptr %call.i695, null
  %cmp.i.i697 = icmp ugt ptr %call.i695, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i698 = or i1 %tobool.not.i.i696, %cmp.i.i697
  br i1 %spec.select.i.i698, label %to_clk.exit694.to_clk.exit702_crit_edge, label %if.end.i700

to_clk.exit694.to_clk.exit702_crit_edge:          ; preds = %to_clk.exit694
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit702

if.end.i700:                                      ; preds = %to_clk.exit694
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i699 = getelementptr inbounds %struct.clk_hw, ptr %call.i695, i32 0, i32 1
  %22 = ptrtoint ptr %clk.i699 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i699, align 4
  br label %to_clk.exit702

to_clk.exit702:                                   ; preds = %if.end.i700, %to_clk.exit694.to_clk.exit702_crit_edge
  %retval.0.i701 = phi ptr [ %23, %if.end.i700 ], [ %call.i695, %to_clk.exit694.to_clk.exit702_crit_edge ]
  store ptr %retval.0.i701, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 163), align 4
  %24 = load ptr, ptr @anatop_base, align 4
  %add.ptr61 = getelementptr i8, ptr %24, i32 112
  %call.i703 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.16, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr61, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i704 = icmp eq ptr %call.i703, null
  %cmp.i.i705 = icmp ugt ptr %call.i703, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i706 = or i1 %tobool.not.i.i704, %cmp.i.i705
  br i1 %spec.select.i.i706, label %to_clk.exit702.to_clk.exit710_crit_edge, label %if.end.i708

to_clk.exit702.to_clk.exit710_crit_edge:          ; preds = %to_clk.exit702
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit710

if.end.i708:                                      ; preds = %to_clk.exit702
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i707 = getelementptr inbounds %struct.clk_hw, ptr %call.i703, i32 0, i32 1
  %25 = ptrtoint ptr %clk.i707 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk.i707, align 4
  br label %to_clk.exit710

to_clk.exit710:                                   ; preds = %if.end.i708, %to_clk.exit702.to_clk.exit710_crit_edge
  %retval.0.i709 = phi ptr [ %26, %if.end.i708 ], [ %call.i703, %to_clk.exit702.to_clk.exit710_crit_edge ]
  store ptr %retval.0.i709, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 164), align 4
  %27 = load ptr, ptr @anatop_base, align 4
  %add.ptr64 = getelementptr i8, ptr %27, i32 224
  %call.i711 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.17, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr64, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i712 = icmp eq ptr %call.i711, null
  %cmp.i.i713 = icmp ugt ptr %call.i711, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i714 = or i1 %tobool.not.i.i712, %cmp.i.i713
  br i1 %spec.select.i.i714, label %to_clk.exit710.to_clk.exit718_crit_edge, label %if.end.i716

to_clk.exit710.to_clk.exit718_crit_edge:          ; preds = %to_clk.exit710
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit718

if.end.i716:                                      ; preds = %to_clk.exit710
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i715 = getelementptr inbounds %struct.clk_hw, ptr %call.i711, i32 0, i32 1
  %28 = ptrtoint ptr %clk.i715 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk.i715, align 4
  br label %to_clk.exit718

to_clk.exit718:                                   ; preds = %if.end.i716, %to_clk.exit710.to_clk.exit718_crit_edge
  %retval.0.i717 = phi ptr [ %29, %if.end.i716 ], [ %call.i711, %to_clk.exit710.to_clk.exit718_crit_edge ]
  store ptr %retval.0.i717, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 165), align 4
  %30 = load ptr, ptr @anatop_base, align 4
  %add.ptr67 = getelementptr i8, ptr %30, i32 160
  %call.i719 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.18, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr67, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i720 = icmp eq ptr %call.i719, null
  %cmp.i.i721 = icmp ugt ptr %call.i719, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i722 = or i1 %tobool.not.i.i720, %cmp.i.i721
  br i1 %spec.select.i.i722, label %to_clk.exit718.to_clk.exit726_crit_edge, label %if.end.i724

to_clk.exit718.to_clk.exit726_crit_edge:          ; preds = %to_clk.exit718
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit726

if.end.i724:                                      ; preds = %to_clk.exit718
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i723 = getelementptr inbounds %struct.clk_hw, ptr %call.i719, i32 0, i32 1
  %31 = ptrtoint ptr %clk.i723 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk.i723, align 4
  br label %to_clk.exit726

to_clk.exit726:                                   ; preds = %if.end.i724, %to_clk.exit718.to_clk.exit726_crit_edge
  %retval.0.i725 = phi ptr [ %32, %if.end.i724 ], [ %call.i719, %to_clk.exit718.to_clk.exit726_crit_edge ]
  store ptr %retval.0.i725, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 166), align 4
  %33 = load ptr, ptr @anatop_base, align 4
  %add.ptr70 = getelementptr i8, ptr %33, i32 32
  %call.i727 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.19, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr70, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i728 = icmp eq ptr %call.i727, null
  %cmp.i.i729 = icmp ugt ptr %call.i727, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i730 = or i1 %tobool.not.i.i728, %cmp.i.i729
  br i1 %spec.select.i.i730, label %to_clk.exit726.to_clk.exit734_crit_edge, label %if.end.i732

to_clk.exit726.to_clk.exit734_crit_edge:          ; preds = %to_clk.exit726
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit734

if.end.i732:                                      ; preds = %to_clk.exit726
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i731 = getelementptr inbounds %struct.clk_hw, ptr %call.i727, i32 0, i32 1
  %34 = ptrtoint ptr %clk.i731 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk.i731, align 4
  br label %to_clk.exit734

to_clk.exit734:                                   ; preds = %if.end.i732, %to_clk.exit726.to_clk.exit734_crit_edge
  %retval.0.i733 = phi ptr [ %35, %if.end.i732 ], [ %call.i727, %to_clk.exit726.to_clk.exit734_crit_edge ]
  store ptr %retval.0.i733, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 167), align 4
  %36 = load ptr, ptr @anatop_base, align 4
  %add.ptr73 = getelementptr i8, ptr %36, i32 624
  %call74 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 7, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.13, ptr noundef %add.ptr73, i32 noundef 1) #4
  %tobool.not.i.i735 = icmp eq ptr %call74, null
  %cmp.i.i736 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i737 = or i1 %tobool.not.i.i735, %cmp.i.i736
  br i1 %spec.select.i.i737, label %to_clk.exit734.to_clk.exit741_crit_edge, label %if.end.i739

to_clk.exit734.to_clk.exit741_crit_edge:          ; preds = %to_clk.exit734
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit741

if.end.i739:                                      ; preds = %to_clk.exit734
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i738 = getelementptr inbounds %struct.clk_hw, ptr %call74, i32 0, i32 1
  %37 = ptrtoint ptr %clk.i738 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk.i738, align 4
  br label %to_clk.exit741

to_clk.exit741:                                   ; preds = %if.end.i739, %to_clk.exit734.to_clk.exit741_crit_edge
  %retval.0.i740 = phi ptr [ %38, %if.end.i739 ], [ %call74, %to_clk.exit734.to_clk.exit741_crit_edge ]
  store ptr %retval.0.i740, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 168), align 4
  %39 = load ptr, ptr @anatop_base, align 4
  %add.ptr76 = getelementptr i8, ptr %39, i32 48
  %call77 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 7, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.14, ptr noundef %add.ptr76, i32 noundef 1) #4
  %tobool.not.i.i742 = icmp eq ptr %call77, null
  %cmp.i.i743 = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i744 = or i1 %tobool.not.i.i742, %cmp.i.i743
  br i1 %spec.select.i.i744, label %to_clk.exit741.to_clk.exit748_crit_edge, label %if.end.i746

to_clk.exit741.to_clk.exit748_crit_edge:          ; preds = %to_clk.exit741
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit748

if.end.i746:                                      ; preds = %to_clk.exit741
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i745 = getelementptr inbounds %struct.clk_hw, ptr %call77, i32 0, i32 1
  %40 = ptrtoint ptr %clk.i745 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk.i745, align 4
  br label %to_clk.exit748

to_clk.exit748:                                   ; preds = %if.end.i746, %to_clk.exit741.to_clk.exit748_crit_edge
  %retval.0.i747 = phi ptr [ %41, %if.end.i746 ], [ %call77, %to_clk.exit741.to_clk.exit748_crit_edge ]
  store ptr %retval.0.i747, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 169), align 4
  %42 = load ptr, ptr @anatop_base, align 4
  %add.ptr79 = getelementptr i8, ptr %42, i32 16
  %call80 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 3, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.15, ptr noundef %add.ptr79, i32 noundef 2) #4
  %tobool.not.i.i749 = icmp eq ptr %call80, null
  %cmp.i.i750 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i751 = or i1 %tobool.not.i.i749, %cmp.i.i750
  br i1 %spec.select.i.i751, label %to_clk.exit748.to_clk.exit755_crit_edge, label %if.end.i753

to_clk.exit748.to_clk.exit755_crit_edge:          ; preds = %to_clk.exit748
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit755

if.end.i753:                                      ; preds = %to_clk.exit748
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i752 = getelementptr inbounds %struct.clk_hw, ptr %call80, i32 0, i32 1
  %43 = ptrtoint ptr %clk.i752 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk.i752, align 4
  br label %to_clk.exit755

to_clk.exit755:                                   ; preds = %if.end.i753, %to_clk.exit748.to_clk.exit755_crit_edge
  %retval.0.i754 = phi ptr [ %44, %if.end.i753 ], [ %call80, %to_clk.exit748.to_clk.exit755_crit_edge ]
  store ptr %retval.0.i754, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 170), align 4
  %45 = load ptr, ptr @anatop_base, align 4
  %add.ptr82 = getelementptr i8, ptr %45, i32 112
  %call83 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.16, ptr noundef %add.ptr82, i32 noundef 127) #4
  %tobool.not.i.i756 = icmp eq ptr %call83, null
  %cmp.i.i757 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i758 = or i1 %tobool.not.i.i756, %cmp.i.i757
  br i1 %spec.select.i.i758, label %to_clk.exit755.to_clk.exit762_crit_edge, label %if.end.i760

to_clk.exit755.to_clk.exit762_crit_edge:          ; preds = %to_clk.exit755
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit762

if.end.i760:                                      ; preds = %to_clk.exit755
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i759 = getelementptr inbounds %struct.clk_hw, ptr %call83, i32 0, i32 1
  %46 = ptrtoint ptr %clk.i759 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk.i759, align 4
  br label %to_clk.exit762

to_clk.exit762:                                   ; preds = %if.end.i760, %to_clk.exit755.to_clk.exit762_crit_edge
  %retval.0.i761 = phi ptr [ %47, %if.end.i760 ], [ %call83, %to_clk.exit755.to_clk.exit762_crit_edge ]
  store ptr %retval.0.i761, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 171), align 4
  %48 = load ptr, ptr @anatop_base, align 4
  %add.ptr85 = getelementptr i8, ptr %48, i32 224
  %call86 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 5, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.17, ptr noundef %add.ptr85, i32 noundef 3) #4
  %tobool.not.i.i763 = icmp eq ptr %call86, null
  %cmp.i.i764 = icmp ugt ptr %call86, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i765 = or i1 %tobool.not.i.i763, %cmp.i.i764
  br i1 %spec.select.i.i765, label %to_clk.exit762.to_clk.exit769_crit_edge, label %if.end.i767

to_clk.exit762.to_clk.exit769_crit_edge:          ; preds = %to_clk.exit762
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit769

if.end.i767:                                      ; preds = %to_clk.exit762
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i766 = getelementptr inbounds %struct.clk_hw, ptr %call86, i32 0, i32 1
  %49 = ptrtoint ptr %clk.i766 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clk.i766, align 4
  br label %to_clk.exit769

to_clk.exit769:                                   ; preds = %if.end.i767, %to_clk.exit762.to_clk.exit769_crit_edge
  %retval.0.i768 = phi ptr [ %50, %if.end.i767 ], [ %call86, %to_clk.exit762.to_clk.exit769_crit_edge ]
  store ptr %retval.0.i768, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 172), align 4
  %51 = load ptr, ptr @anatop_base, align 4
  %add.ptr88 = getelementptr i8, ptr %51, i32 160
  %call89 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.18, ptr noundef %add.ptr88, i32 noundef 127) #4
  %tobool.not.i.i770 = icmp eq ptr %call89, null
  %cmp.i.i771 = icmp ugt ptr %call89, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i772 = or i1 %tobool.not.i.i770, %cmp.i.i771
  br i1 %spec.select.i.i772, label %to_clk.exit769.to_clk.exit776_crit_edge, label %if.end.i774

to_clk.exit769.to_clk.exit776_crit_edge:          ; preds = %to_clk.exit769
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit776

if.end.i774:                                      ; preds = %to_clk.exit769
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i773 = getelementptr inbounds %struct.clk_hw, ptr %call89, i32 0, i32 1
  %52 = ptrtoint ptr %clk.i773 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk.i773, align 4
  br label %to_clk.exit776

to_clk.exit776:                                   ; preds = %if.end.i774, %to_clk.exit769.to_clk.exit776_crit_edge
  %retval.0.i775 = phi ptr [ %53, %if.end.i774 ], [ %call89, %to_clk.exit769.to_clk.exit776_crit_edge ]
  store ptr %retval.0.i775, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 173), align 4
  %54 = load ptr, ptr @anatop_base, align 4
  %add.ptr91 = getelementptr i8, ptr %54, i32 32
  %call92 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 3, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.19, ptr noundef %add.ptr91, i32 noundef 2) #4
  %tobool.not.i.i777 = icmp eq ptr %call92, null
  %cmp.i.i778 = icmp ugt ptr %call92, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i779 = or i1 %tobool.not.i.i777, %cmp.i.i778
  br i1 %spec.select.i.i779, label %to_clk.exit776.to_clk.exit783_crit_edge, label %if.end.i781

to_clk.exit776.to_clk.exit783_crit_edge:          ; preds = %to_clk.exit776
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit783

if.end.i781:                                      ; preds = %to_clk.exit776
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i780 = getelementptr inbounds %struct.clk_hw, ptr %call92, i32 0, i32 1
  %55 = ptrtoint ptr %clk.i780 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk.i780, align 4
  br label %to_clk.exit783

to_clk.exit783:                                   ; preds = %if.end.i781, %to_clk.exit776.to_clk.exit783_crit_edge
  %retval.0.i782 = phi ptr [ %56, %if.end.i781 ], [ %call92, %to_clk.exit776.to_clk.exit783_crit_edge ]
  store ptr %retval.0.i782, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 174), align 4
  %57 = load ptr, ptr @anatop_base, align 4
  %add.ptr94 = getelementptr i8, ptr %57, i32 624
  %call.i784 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, i8 noundef zeroext 2, ptr noundef nonnull @pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr94, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i785 = icmp eq ptr %call.i784, null
  %cmp.i.i786 = icmp ugt ptr %call.i784, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i787 = or i1 %tobool.not.i.i785, %cmp.i.i786
  br i1 %spec.select.i.i787, label %to_clk.exit783.to_clk.exit791_crit_edge, label %if.end.i789

to_clk.exit783.to_clk.exit791_crit_edge:          ; preds = %to_clk.exit783
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit791

if.end.i789:                                      ; preds = %to_clk.exit783
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i788 = getelementptr inbounds %struct.clk_hw, ptr %call.i784, i32 0, i32 1
  %58 = ptrtoint ptr %clk.i788 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk.i788, align 4
  br label %to_clk.exit791

to_clk.exit791:                                   ; preds = %if.end.i789, %to_clk.exit783.to_clk.exit791_crit_edge
  %retval.0.i790 = phi ptr [ %59, %if.end.i789 ], [ %call.i784, %to_clk.exit783.to_clk.exit791_crit_edge ]
  store ptr %retval.0.i790, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 175), align 4
  %60 = load ptr, ptr @anatop_base, align 4
  %add.ptr97 = getelementptr i8, ptr %60, i32 48
  %call.i792 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, i8 noundef zeroext 2, ptr noundef nonnull @pll2_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr97, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i793 = icmp eq ptr %call.i792, null
  %cmp.i.i794 = icmp ugt ptr %call.i792, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i795 = or i1 %tobool.not.i.i793, %cmp.i.i794
  br i1 %spec.select.i.i795, label %to_clk.exit791.to_clk.exit799_crit_edge, label %if.end.i797

to_clk.exit791.to_clk.exit799_crit_edge:          ; preds = %to_clk.exit791
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit799

if.end.i797:                                      ; preds = %to_clk.exit791
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i796 = getelementptr inbounds %struct.clk_hw, ptr %call.i792, i32 0, i32 1
  %61 = ptrtoint ptr %clk.i796 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clk.i796, align 4
  br label %to_clk.exit799

to_clk.exit799:                                   ; preds = %if.end.i797, %to_clk.exit791.to_clk.exit799_crit_edge
  %retval.0.i798 = phi ptr [ %62, %if.end.i797 ], [ %call.i792, %to_clk.exit791.to_clk.exit799_crit_edge ]
  store ptr %retval.0.i798, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 176), align 4
  %63 = load ptr, ptr @anatop_base, align 4
  %add.ptr100 = getelementptr i8, ptr %63, i32 16
  %call.i800 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, i8 noundef zeroext 2, ptr noundef nonnull @pll3_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr100, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i801 = icmp eq ptr %call.i800, null
  %cmp.i.i802 = icmp ugt ptr %call.i800, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i803 = or i1 %tobool.not.i.i801, %cmp.i.i802
  br i1 %spec.select.i.i803, label %to_clk.exit799.to_clk.exit807_crit_edge, label %if.end.i805

to_clk.exit799.to_clk.exit807_crit_edge:          ; preds = %to_clk.exit799
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit807

if.end.i805:                                      ; preds = %to_clk.exit799
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i804 = getelementptr inbounds %struct.clk_hw, ptr %call.i800, i32 0, i32 1
  %64 = ptrtoint ptr %clk.i804 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk.i804, align 4
  br label %to_clk.exit807

to_clk.exit807:                                   ; preds = %if.end.i805, %to_clk.exit799.to_clk.exit807_crit_edge
  %retval.0.i806 = phi ptr [ %65, %if.end.i805 ], [ %call.i800, %to_clk.exit799.to_clk.exit807_crit_edge ]
  store ptr %retval.0.i806, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 177), align 4
  %66 = load ptr, ptr @anatop_base, align 4
  %add.ptr103 = getelementptr i8, ptr %66, i32 112
  %call.i808 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, i8 noundef zeroext 2, ptr noundef nonnull @pll4_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr103, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i809 = icmp eq ptr %call.i808, null
  %cmp.i.i810 = icmp ugt ptr %call.i808, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i811 = or i1 %tobool.not.i.i809, %cmp.i.i810
  br i1 %spec.select.i.i811, label %to_clk.exit807.to_clk.exit815_crit_edge, label %if.end.i813

to_clk.exit807.to_clk.exit815_crit_edge:          ; preds = %to_clk.exit807
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit815

if.end.i813:                                      ; preds = %to_clk.exit807
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i812 = getelementptr inbounds %struct.clk_hw, ptr %call.i808, i32 0, i32 1
  %67 = ptrtoint ptr %clk.i812 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clk.i812, align 4
  br label %to_clk.exit815

to_clk.exit815:                                   ; preds = %if.end.i813, %to_clk.exit807.to_clk.exit815_crit_edge
  %retval.0.i814 = phi ptr [ %68, %if.end.i813 ], [ %call.i808, %to_clk.exit807.to_clk.exit815_crit_edge ]
  store ptr %retval.0.i814, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 178), align 4
  %69 = load ptr, ptr @anatop_base, align 4
  %add.ptr106 = getelementptr i8, ptr %69, i32 224
  %call.i816 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, i8 noundef zeroext 2, ptr noundef nonnull @pll5_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr106, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i817 = icmp eq ptr %call.i816, null
  %cmp.i.i818 = icmp ugt ptr %call.i816, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i819 = or i1 %tobool.not.i.i817, %cmp.i.i818
  br i1 %spec.select.i.i819, label %to_clk.exit815.to_clk.exit823_crit_edge, label %if.end.i821

to_clk.exit815.to_clk.exit823_crit_edge:          ; preds = %to_clk.exit815
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit823

if.end.i821:                                      ; preds = %to_clk.exit815
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i820 = getelementptr inbounds %struct.clk_hw, ptr %call.i816, i32 0, i32 1
  %70 = ptrtoint ptr %clk.i820 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clk.i820, align 4
  br label %to_clk.exit823

to_clk.exit823:                                   ; preds = %if.end.i821, %to_clk.exit815.to_clk.exit823_crit_edge
  %retval.0.i822 = phi ptr [ %71, %if.end.i821 ], [ %call.i816, %to_clk.exit815.to_clk.exit823_crit_edge ]
  store ptr %retval.0.i822, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 179), align 4
  %72 = load ptr, ptr @anatop_base, align 4
  %add.ptr109 = getelementptr i8, ptr %72, i32 160
  %call.i824 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, i8 noundef zeroext 2, ptr noundef nonnull @pll6_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr109, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i825 = icmp eq ptr %call.i824, null
  %cmp.i.i826 = icmp ugt ptr %call.i824, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i827 = or i1 %tobool.not.i.i825, %cmp.i.i826
  br i1 %spec.select.i.i827, label %to_clk.exit823.to_clk.exit831_crit_edge, label %if.end.i829

to_clk.exit823.to_clk.exit831_crit_edge:          ; preds = %to_clk.exit823
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit831

if.end.i829:                                      ; preds = %to_clk.exit823
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i828 = getelementptr inbounds %struct.clk_hw, ptr %call.i824, i32 0, i32 1
  %73 = ptrtoint ptr %clk.i828 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %clk.i828, align 4
  br label %to_clk.exit831

to_clk.exit831:                                   ; preds = %if.end.i829, %to_clk.exit823.to_clk.exit831_crit_edge
  %retval.0.i830 = phi ptr [ %74, %if.end.i829 ], [ %call.i824, %to_clk.exit823.to_clk.exit831_crit_edge ]
  store ptr %retval.0.i830, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 180), align 4
  %75 = load ptr, ptr @anatop_base, align 4
  %add.ptr112 = getelementptr i8, ptr %75, i32 32
  %call.i832 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, i8 noundef zeroext 2, ptr noundef nonnull @pll7_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr112, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i833 = icmp eq ptr %call.i832, null
  %cmp.i.i834 = icmp ugt ptr %call.i832, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i835 = or i1 %tobool.not.i.i833, %cmp.i.i834
  br i1 %spec.select.i.i835, label %to_clk.exit831.to_clk.exit839_crit_edge, label %if.end.i837

to_clk.exit831.to_clk.exit839_crit_edge:          ; preds = %to_clk.exit831
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit839

if.end.i837:                                      ; preds = %to_clk.exit831
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i836 = getelementptr inbounds %struct.clk_hw, ptr %call.i832, i32 0, i32 1
  %76 = ptrtoint ptr %clk.i836 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %clk.i836, align 4
  br label %to_clk.exit839

to_clk.exit839:                                   ; preds = %if.end.i837, %to_clk.exit831.to_clk.exit839_crit_edge
  %retval.0.i838 = phi ptr [ %77, %if.end.i837 ], [ %call.i832, %to_clk.exit831.to_clk.exit839_crit_edge ]
  store ptr %retval.0.i838, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 181), align 4
  %78 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 175), align 4
  %79 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 168), align 4
  %call115 = tail call i32 @clk_set_parent(ptr noundef %78, ptr noundef %79) #4
  %80 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 176), align 4
  %81 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 169), align 4
  %call116 = tail call i32 @clk_set_parent(ptr noundef %80, ptr noundef %81) #4
  %82 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 177), align 4
  %83 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 170), align 4
  %call117 = tail call i32 @clk_set_parent(ptr noundef %82, ptr noundef %83) #4
  %84 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 178), align 4
  %85 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 171), align 4
  %call118 = tail call i32 @clk_set_parent(ptr noundef %84, ptr noundef %85) #4
  %86 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 179), align 4
  %87 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 172), align 4
  %call119 = tail call i32 @clk_set_parent(ptr noundef %86, ptr noundef %87) #4
  %88 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 180), align 4
  %89 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 173), align 4
  %call120 = tail call i32 @clk_set_parent(ptr noundef %88, ptr noundef %89) #4
  %90 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 181), align 4
  %91 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 174), align 4
  %call121 = tail call i32 @clk_set_parent(ptr noundef %90, ptr noundef %91) #4
  %92 = load ptr, ptr @anatop_base, align 4
  %add.ptr122 = getelementptr i8, ptr %92, i32 624
  %call.i840 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr122, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i841 = icmp eq ptr %call.i840, null
  %cmp.i.i842 = icmp ugt ptr %call.i840, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i843 = or i1 %tobool.not.i.i841, %cmp.i.i842
  br i1 %spec.select.i.i843, label %to_clk.exit839.to_clk.exit847_crit_edge, label %if.end.i845

to_clk.exit839.to_clk.exit847_crit_edge:          ; preds = %to_clk.exit839
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit847

if.end.i845:                                      ; preds = %to_clk.exit839
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i844 = getelementptr inbounds %struct.clk_hw, ptr %call.i840, i32 0, i32 1
  %93 = ptrtoint ptr %clk.i844 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %clk.i844, align 4
  br label %to_clk.exit847

to_clk.exit847:                                   ; preds = %if.end.i845, %to_clk.exit839.to_clk.exit847_crit_edge
  %retval.0.i846 = phi ptr [ %94, %if.end.i845 ], [ %call.i840, %to_clk.exit839.to_clk.exit847_crit_edge ]
  store ptr %retval.0.i846, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 11), align 4
  %95 = load ptr, ptr @anatop_base, align 4
  %add.ptr125 = getelementptr i8, ptr %95, i32 48
  %call.i848 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr125, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i849 = icmp eq ptr %call.i848, null
  %cmp.i.i850 = icmp ugt ptr %call.i848, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i851 = or i1 %tobool.not.i.i849, %cmp.i.i850
  br i1 %spec.select.i.i851, label %to_clk.exit847.to_clk.exit855_crit_edge, label %if.end.i853

to_clk.exit847.to_clk.exit855_crit_edge:          ; preds = %to_clk.exit847
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit855

if.end.i853:                                      ; preds = %to_clk.exit847
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i852 = getelementptr inbounds %struct.clk_hw, ptr %call.i848, i32 0, i32 1
  %96 = ptrtoint ptr %clk.i852 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %clk.i852, align 4
  br label %to_clk.exit855

to_clk.exit855:                                   ; preds = %if.end.i853, %to_clk.exit847.to_clk.exit855_crit_edge
  %retval.0.i854 = phi ptr [ %97, %if.end.i853 ], [ %call.i848, %to_clk.exit847.to_clk.exit855_crit_edge ]
  store ptr %retval.0.i854, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 16), align 4
  %98 = load ptr, ptr @anatop_base, align 4
  %add.ptr128 = getelementptr i8, ptr %98, i32 16
  %call.i856 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr128, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i857 = icmp eq ptr %call.i856, null
  %cmp.i.i858 = icmp ugt ptr %call.i856, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i859 = or i1 %tobool.not.i.i857, %cmp.i.i858
  br i1 %spec.select.i.i859, label %to_clk.exit855.to_clk.exit863_crit_edge, label %if.end.i861

to_clk.exit855.to_clk.exit863_crit_edge:          ; preds = %to_clk.exit855
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit863

if.end.i861:                                      ; preds = %to_clk.exit855
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i860 = getelementptr inbounds %struct.clk_hw, ptr %call.i856, i32 0, i32 1
  %99 = ptrtoint ptr %clk.i860 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %clk.i860, align 4
  br label %to_clk.exit863

to_clk.exit863:                                   ; preds = %if.end.i861, %to_clk.exit855.to_clk.exit863_crit_edge
  %retval.0.i862 = phi ptr [ %100, %if.end.i861 ], [ %call.i856, %to_clk.exit855.to_clk.exit863_crit_edge ]
  store ptr %retval.0.i862, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 21), align 4
  %101 = load ptr, ptr @anatop_base, align 4
  %add.ptr131 = getelementptr i8, ptr %101, i32 112
  %call.i864 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.30, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i865 = icmp eq ptr %call.i864, null
  %cmp.i.i866 = icmp ugt ptr %call.i864, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i867 = or i1 %tobool.not.i.i865, %cmp.i.i866
  br i1 %spec.select.i.i867, label %to_clk.exit863.to_clk.exit871_crit_edge, label %if.end.i869

to_clk.exit863.to_clk.exit871_crit_edge:          ; preds = %to_clk.exit863
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit871

if.end.i869:                                      ; preds = %to_clk.exit863
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i868 = getelementptr inbounds %struct.clk_hw, ptr %call.i864, i32 0, i32 1
  %102 = ptrtoint ptr %clk.i868 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %clk.i868, align 4
  br label %to_clk.exit871

to_clk.exit871:                                   ; preds = %if.end.i869, %to_clk.exit863.to_clk.exit871_crit_edge
  %retval.0.i870 = phi ptr [ %103, %if.end.i869 ], [ %call.i864, %to_clk.exit863.to_clk.exit871_crit_edge ]
  store ptr %retval.0.i870, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 26), align 4
  %104 = load ptr, ptr @anatop_base, align 4
  %add.ptr134 = getelementptr i8, ptr %104, i32 224
  %call.i872 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr134, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i873 = icmp eq ptr %call.i872, null
  %cmp.i.i874 = icmp ugt ptr %call.i872, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i875 = or i1 %tobool.not.i.i873, %cmp.i.i874
  br i1 %spec.select.i.i875, label %to_clk.exit871.to_clk.exit879_crit_edge, label %if.end.i877

to_clk.exit871.to_clk.exit879_crit_edge:          ; preds = %to_clk.exit871
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit879

if.end.i877:                                      ; preds = %to_clk.exit871
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i876 = getelementptr inbounds %struct.clk_hw, ptr %call.i872, i32 0, i32 1
  %105 = ptrtoint ptr %clk.i876 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %clk.i876, align 4
  br label %to_clk.exit879

to_clk.exit879:                                   ; preds = %if.end.i877, %to_clk.exit871.to_clk.exit879_crit_edge
  %retval.0.i878 = phi ptr [ %106, %if.end.i877 ], [ %call.i872, %to_clk.exit871.to_clk.exit879_crit_edge ]
  store ptr %retval.0.i878, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 27), align 4
  %107 = load ptr, ptr @anatop_base, align 4
  %add.ptr137 = getelementptr i8, ptr %107, i32 160
  %call.i880 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr137, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i881 = icmp eq ptr %call.i880, null
  %cmp.i.i882 = icmp ugt ptr %call.i880, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i883 = or i1 %tobool.not.i.i881, %cmp.i.i882
  br i1 %spec.select.i.i883, label %to_clk.exit879.to_clk.exit887_crit_edge, label %if.end.i885

to_clk.exit879.to_clk.exit887_crit_edge:          ; preds = %to_clk.exit879
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit887

if.end.i885:                                      ; preds = %to_clk.exit879
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i884 = getelementptr inbounds %struct.clk_hw, ptr %call.i880, i32 0, i32 1
  %108 = ptrtoint ptr %clk.i884 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %clk.i884, align 4
  br label %to_clk.exit887

to_clk.exit887:                                   ; preds = %if.end.i885, %to_clk.exit879.to_clk.exit887_crit_edge
  %retval.0.i886 = phi ptr [ %109, %if.end.i885 ], [ %call.i880, %to_clk.exit879.to_clk.exit887_crit_edge ]
  store ptr %retval.0.i886, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 28), align 4
  %110 = load ptr, ptr @anatop_base, align 4
  %add.ptr140 = getelementptr i8, ptr %110, i32 32
  %call.i888 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr140, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i889 = icmp eq ptr %call.i888, null
  %cmp.i.i890 = icmp ugt ptr %call.i888, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i891 = or i1 %tobool.not.i.i889, %cmp.i.i890
  br i1 %spec.select.i.i891, label %to_clk.exit887.to_clk.exit895_crit_edge, label %if.end.i893

to_clk.exit887.to_clk.exit895_crit_edge:          ; preds = %to_clk.exit887
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit895

if.end.i893:                                      ; preds = %to_clk.exit887
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i892 = getelementptr inbounds %struct.clk_hw, ptr %call.i888, i32 0, i32 1
  %111 = ptrtoint ptr %clk.i892 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %clk.i892, align 4
  br label %to_clk.exit895

to_clk.exit895:                                   ; preds = %if.end.i893, %to_clk.exit887.to_clk.exit895_crit_edge
  %retval.0.i894 = phi ptr [ %112, %if.end.i893 ], [ %call.i888, %to_clk.exit887.to_clk.exit895_crit_edge ]
  store ptr %retval.0.i894, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 156), align 4
  %113 = load ptr, ptr @anatop_base, align 4
  %add.ptr143 = getelementptr i8, ptr %113, i32 352
  %call144 = tail call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.8, ptr noundef %add.ptr143, i8 noundef zeroext 12, i32 noundef 1024) #4
  %tobool.not.i.i896 = icmp eq ptr %call144, null
  %cmp.i.i897 = icmp ugt ptr %call144, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i898 = or i1 %tobool.not.i.i896, %cmp.i.i897
  br i1 %spec.select.i.i898, label %to_clk.exit895.to_clk.exit902_crit_edge, label %if.end.i900

to_clk.exit895.to_clk.exit902_crit_edge:          ; preds = %to_clk.exit895
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit902

if.end.i900:                                      ; preds = %to_clk.exit895
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i899 = getelementptr inbounds %struct.clk_hw, ptr %call144, i32 0, i32 1
  %114 = ptrtoint ptr %clk.i899 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %clk.i899, align 4
  br label %to_clk.exit902

to_clk.exit902:                                   ; preds = %if.end.i900, %to_clk.exit895.to_clk.exit902_crit_edge
  %retval.0.i901 = phi ptr [ %115, %if.end.i900 ], [ %call144, %to_clk.exit895.to_clk.exit902_crit_edge ]
  store ptr %retval.0.i901, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 159), align 4
  %116 = load ptr, ptr @anatop_base, align 4
  %add.ptr146 = getelementptr i8, ptr %116, i32 688
  %call147 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.34, ptr noundef %add.ptr146, i8 noundef zeroext 0) #4
  %tobool.not.i.i903 = icmp eq ptr %call147, null
  %cmp.i.i904 = icmp ugt ptr %call147, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i905 = or i1 %tobool.not.i.i903, %cmp.i.i904
  br i1 %spec.select.i.i905, label %to_clk.exit902.to_clk.exit909_crit_edge, label %if.end.i907

to_clk.exit902.to_clk.exit909_crit_edge:          ; preds = %to_clk.exit902
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit909

if.end.i907:                                      ; preds = %to_clk.exit902
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i906 = getelementptr inbounds %struct.clk_hw, ptr %call147, i32 0, i32 1
  %117 = ptrtoint ptr %clk.i906 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %clk.i906, align 4
  br label %to_clk.exit909

to_clk.exit909:                                   ; preds = %if.end.i907, %to_clk.exit902.to_clk.exit909_crit_edge
  %retval.0.i908 = phi ptr [ %118, %if.end.i907 ], [ %call147, %to_clk.exit902.to_clk.exit909_crit_edge ]
  store ptr %retval.0.i908, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 12), align 4
  %119 = load ptr, ptr @anatop_base, align 4
  %add.ptr149 = getelementptr i8, ptr %119, i32 688
  %call150 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.34, ptr noundef %add.ptr149, i8 noundef zeroext 1) #4
  %tobool.not.i.i910 = icmp eq ptr %call150, null
  %cmp.i.i911 = icmp ugt ptr %call150, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i912 = or i1 %tobool.not.i.i910, %cmp.i.i911
  br i1 %spec.select.i.i912, label %to_clk.exit909.to_clk.exit916_crit_edge, label %if.end.i914

to_clk.exit909.to_clk.exit916_crit_edge:          ; preds = %to_clk.exit909
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit916

if.end.i914:                                      ; preds = %to_clk.exit909
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i913 = getelementptr inbounds %struct.clk_hw, ptr %call150, i32 0, i32 1
  %120 = ptrtoint ptr %clk.i913 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %clk.i913, align 4
  br label %to_clk.exit916

to_clk.exit916:                                   ; preds = %if.end.i914, %to_clk.exit909.to_clk.exit916_crit_edge
  %retval.0.i915 = phi ptr [ %121, %if.end.i914 ], [ %call150, %to_clk.exit909.to_clk.exit916_crit_edge ]
  store ptr %retval.0.i915, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 13), align 4
  %122 = load ptr, ptr @anatop_base, align 4
  %add.ptr152 = getelementptr i8, ptr %122, i32 688
  %call153 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.34, ptr noundef %add.ptr152, i8 noundef zeroext 2) #4
  %tobool.not.i.i917 = icmp eq ptr %call153, null
  %cmp.i.i918 = icmp ugt ptr %call153, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i919 = or i1 %tobool.not.i.i917, %cmp.i.i918
  br i1 %spec.select.i.i919, label %to_clk.exit916.to_clk.exit923_crit_edge, label %if.end.i921

to_clk.exit916.to_clk.exit923_crit_edge:          ; preds = %to_clk.exit916
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit923

if.end.i921:                                      ; preds = %to_clk.exit916
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i920 = getelementptr inbounds %struct.clk_hw, ptr %call153, i32 0, i32 1
  %123 = ptrtoint ptr %clk.i920 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %clk.i920, align 4
  br label %to_clk.exit923

to_clk.exit923:                                   ; preds = %if.end.i921, %to_clk.exit916.to_clk.exit923_crit_edge
  %retval.0.i922 = phi ptr [ %124, %if.end.i921 ], [ %call153, %to_clk.exit916.to_clk.exit923_crit_edge ]
  store ptr %retval.0.i922, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 14), align 4
  %125 = load ptr, ptr @anatop_base, align 4
  %add.ptr155 = getelementptr i8, ptr %125, i32 688
  %call156 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.34, ptr noundef %add.ptr155, i8 noundef zeroext 3) #4
  %tobool.not.i.i924 = icmp eq ptr %call156, null
  %cmp.i.i925 = icmp ugt ptr %call156, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i926 = or i1 %tobool.not.i.i924, %cmp.i.i925
  br i1 %spec.select.i.i926, label %to_clk.exit923.to_clk.exit930_crit_edge, label %if.end.i928

to_clk.exit923.to_clk.exit930_crit_edge:          ; preds = %to_clk.exit923
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit930

if.end.i928:                                      ; preds = %to_clk.exit923
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i927 = getelementptr inbounds %struct.clk_hw, ptr %call156, i32 0, i32 1
  %126 = ptrtoint ptr %clk.i927 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %clk.i927, align 4
  br label %to_clk.exit930

to_clk.exit930:                                   ; preds = %if.end.i928, %to_clk.exit923.to_clk.exit930_crit_edge
  %retval.0.i929 = phi ptr [ %127, %if.end.i928 ], [ %call156, %to_clk.exit923.to_clk.exit930_crit_edge ]
  store ptr %retval.0.i929, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 15), align 4
  %128 = load ptr, ptr @anatop_base, align 4
  %add.ptr158 = getelementptr i8, ptr %128, i32 256
  %call159 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.35, ptr noundef %add.ptr158, i8 noundef zeroext 0) #4
  %tobool.not.i.i931 = icmp eq ptr %call159, null
  %cmp.i.i932 = icmp ugt ptr %call159, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i933 = or i1 %tobool.not.i.i931, %cmp.i.i932
  br i1 %spec.select.i.i933, label %to_clk.exit930.to_clk.exit937_crit_edge, label %if.end.i935

to_clk.exit930.to_clk.exit937_crit_edge:          ; preds = %to_clk.exit930
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit937

if.end.i935:                                      ; preds = %to_clk.exit930
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i934 = getelementptr inbounds %struct.clk_hw, ptr %call159, i32 0, i32 1
  %129 = ptrtoint ptr %clk.i934 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %clk.i934, align 4
  br label %to_clk.exit937

to_clk.exit937:                                   ; preds = %if.end.i935, %to_clk.exit930.to_clk.exit937_crit_edge
  %retval.0.i936 = phi ptr [ %130, %if.end.i935 ], [ %call159, %to_clk.exit930.to_clk.exit937_crit_edge ]
  store ptr %retval.0.i936, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 17), align 4
  %131 = load ptr, ptr @anatop_base, align 4
  %add.ptr161 = getelementptr i8, ptr %131, i32 256
  %call162 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.35, ptr noundef %add.ptr161, i8 noundef zeroext 1) #4
  %tobool.not.i.i938 = icmp eq ptr %call162, null
  %cmp.i.i939 = icmp ugt ptr %call162, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i940 = or i1 %tobool.not.i.i938, %cmp.i.i939
  br i1 %spec.select.i.i940, label %to_clk.exit937.to_clk.exit944_crit_edge, label %if.end.i942

to_clk.exit937.to_clk.exit944_crit_edge:          ; preds = %to_clk.exit937
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit944

if.end.i942:                                      ; preds = %to_clk.exit937
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i941 = getelementptr inbounds %struct.clk_hw, ptr %call162, i32 0, i32 1
  %132 = ptrtoint ptr %clk.i941 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %clk.i941, align 4
  br label %to_clk.exit944

to_clk.exit944:                                   ; preds = %if.end.i942, %to_clk.exit937.to_clk.exit944_crit_edge
  %retval.0.i943 = phi ptr [ %133, %if.end.i942 ], [ %call162, %to_clk.exit937.to_clk.exit944_crit_edge ]
  store ptr %retval.0.i943, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 18), align 4
  %134 = load ptr, ptr @anatop_base, align 4
  %add.ptr164 = getelementptr i8, ptr %134, i32 256
  %call165 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.35, ptr noundef %add.ptr164, i8 noundef zeroext 2) #4
  %tobool.not.i.i945 = icmp eq ptr %call165, null
  %cmp.i.i946 = icmp ugt ptr %call165, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i947 = or i1 %tobool.not.i.i945, %cmp.i.i946
  br i1 %spec.select.i.i947, label %to_clk.exit944.to_clk.exit951_crit_edge, label %if.end.i949

to_clk.exit944.to_clk.exit951_crit_edge:          ; preds = %to_clk.exit944
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit951

if.end.i949:                                      ; preds = %to_clk.exit944
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i948 = getelementptr inbounds %struct.clk_hw, ptr %call165, i32 0, i32 1
  %135 = ptrtoint ptr %clk.i948 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %clk.i948, align 4
  br label %to_clk.exit951

to_clk.exit951:                                   ; preds = %if.end.i949, %to_clk.exit944.to_clk.exit951_crit_edge
  %retval.0.i950 = phi ptr [ %136, %if.end.i949 ], [ %call165, %to_clk.exit944.to_clk.exit951_crit_edge ]
  store ptr %retval.0.i950, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 19), align 4
  %137 = load ptr, ptr @anatop_base, align 4
  %add.ptr167 = getelementptr i8, ptr %137, i32 256
  %call168 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.35, ptr noundef %add.ptr167, i8 noundef zeroext 3) #4
  %tobool.not.i.i952 = icmp eq ptr %call168, null
  %cmp.i.i953 = icmp ugt ptr %call168, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i954 = or i1 %tobool.not.i.i952, %cmp.i.i953
  br i1 %spec.select.i.i954, label %to_clk.exit951.to_clk.exit958_crit_edge, label %if.end.i956

to_clk.exit951.to_clk.exit958_crit_edge:          ; preds = %to_clk.exit951
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit958

if.end.i956:                                      ; preds = %to_clk.exit951
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i955 = getelementptr inbounds %struct.clk_hw, ptr %call168, i32 0, i32 1
  %138 = ptrtoint ptr %clk.i955 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %clk.i955, align 4
  br label %to_clk.exit958

to_clk.exit958:                                   ; preds = %if.end.i956, %to_clk.exit951.to_clk.exit958_crit_edge
  %retval.0.i957 = phi ptr [ %139, %if.end.i956 ], [ %call168, %to_clk.exit951.to_clk.exit958_crit_edge ]
  store ptr %retval.0.i957, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 20), align 4
  %140 = load ptr, ptr @anatop_base, align 4
  %add.ptr170 = getelementptr i8, ptr %140, i32 240
  %call171 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.36, ptr noundef %add.ptr170, i8 noundef zeroext 0) #4
  %tobool.not.i.i959 = icmp eq ptr %call171, null
  %cmp.i.i960 = icmp ugt ptr %call171, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i961 = or i1 %tobool.not.i.i959, %cmp.i.i960
  br i1 %spec.select.i.i961, label %to_clk.exit958.to_clk.exit965_crit_edge, label %if.end.i963

to_clk.exit958.to_clk.exit965_crit_edge:          ; preds = %to_clk.exit958
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit965

if.end.i963:                                      ; preds = %to_clk.exit958
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i962 = getelementptr inbounds %struct.clk_hw, ptr %call171, i32 0, i32 1
  %141 = ptrtoint ptr %clk.i962 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %clk.i962, align 4
  br label %to_clk.exit965

to_clk.exit965:                                   ; preds = %if.end.i963, %to_clk.exit958.to_clk.exit965_crit_edge
  %retval.0.i964 = phi ptr [ %142, %if.end.i963 ], [ %call171, %to_clk.exit958.to_clk.exit965_crit_edge ]
  store ptr %retval.0.i964, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 22), align 4
  %143 = load ptr, ptr @anatop_base, align 4
  %add.ptr173 = getelementptr i8, ptr %143, i32 240
  %call174 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.36, ptr noundef %add.ptr173, i8 noundef zeroext 1) #4
  %tobool.not.i.i966 = icmp eq ptr %call174, null
  %cmp.i.i967 = icmp ugt ptr %call174, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i968 = or i1 %tobool.not.i.i966, %cmp.i.i967
  br i1 %spec.select.i.i968, label %to_clk.exit965.to_clk.exit972_crit_edge, label %if.end.i970

to_clk.exit965.to_clk.exit972_crit_edge:          ; preds = %to_clk.exit965
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit972

if.end.i970:                                      ; preds = %to_clk.exit965
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i969 = getelementptr inbounds %struct.clk_hw, ptr %call174, i32 0, i32 1
  %144 = ptrtoint ptr %clk.i969 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %clk.i969, align 4
  br label %to_clk.exit972

to_clk.exit972:                                   ; preds = %if.end.i970, %to_clk.exit965.to_clk.exit972_crit_edge
  %retval.0.i971 = phi ptr [ %145, %if.end.i970 ], [ %call174, %to_clk.exit965.to_clk.exit972_crit_edge ]
  store ptr %retval.0.i971, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 23), align 4
  %146 = load ptr, ptr @anatop_base, align 4
  %add.ptr176 = getelementptr i8, ptr %146, i32 240
  %call177 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.36, ptr noundef %add.ptr176, i8 noundef zeroext 2) #4
  %tobool.not.i.i973 = icmp eq ptr %call177, null
  %cmp.i.i974 = icmp ugt ptr %call177, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i975 = or i1 %tobool.not.i.i973, %cmp.i.i974
  br i1 %spec.select.i.i975, label %to_clk.exit972.to_clk.exit979_crit_edge, label %if.end.i977

to_clk.exit972.to_clk.exit979_crit_edge:          ; preds = %to_clk.exit972
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit979

if.end.i977:                                      ; preds = %to_clk.exit972
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i976 = getelementptr inbounds %struct.clk_hw, ptr %call177, i32 0, i32 1
  %147 = ptrtoint ptr %clk.i976 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %clk.i976, align 4
  br label %to_clk.exit979

to_clk.exit979:                                   ; preds = %if.end.i977, %to_clk.exit972.to_clk.exit979_crit_edge
  %retval.0.i978 = phi ptr [ %148, %if.end.i977 ], [ %call177, %to_clk.exit972.to_clk.exit979_crit_edge ]
  store ptr %retval.0.i978, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 24), align 4
  %149 = load ptr, ptr @anatop_base, align 4
  %add.ptr179 = getelementptr i8, ptr %149, i32 240
  %call180 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.36, ptr noundef %add.ptr179, i8 noundef zeroext 3) #4
  %tobool.not.i.i980 = icmp eq ptr %call180, null
  %cmp.i.i981 = icmp ugt ptr %call180, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i982 = or i1 %tobool.not.i.i980, %cmp.i.i981
  br i1 %spec.select.i.i982, label %to_clk.exit979.to_clk.exit986_crit_edge, label %if.end.i984

to_clk.exit979.to_clk.exit986_crit_edge:          ; preds = %to_clk.exit979
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit986

if.end.i984:                                      ; preds = %to_clk.exit979
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i983 = getelementptr inbounds %struct.clk_hw, ptr %call180, i32 0, i32 1
  %150 = ptrtoint ptr %clk.i983 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %clk.i983, align 4
  br label %to_clk.exit986

to_clk.exit986:                                   ; preds = %if.end.i984, %to_clk.exit979.to_clk.exit986_crit_edge
  %retval.0.i985 = phi ptr [ %151, %if.end.i984 ], [ %call180, %to_clk.exit979.to_clk.exit986_crit_edge ]
  store ptr %retval.0.i985, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 25), align 4
  %152 = load ptr, ptr @ccm_base, align 4
  %add.ptr182 = getelementptr i8, ptr %152, i32 8
  %call.i987 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.54, i8 noundef zeroext 5, ptr noundef nonnull @pll1_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr182, i8 noundef zeroext 16, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i988 = icmp eq ptr %call.i987, null
  %cmp.i.i989 = icmp ugt ptr %call.i987, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i990 = or i1 %tobool.not.i.i988, %cmp.i.i989
  br i1 %spec.select.i.i990, label %to_clk.exit986.to_clk.exit994_crit_edge, label %if.end.i992

to_clk.exit986.to_clk.exit994_crit_edge:          ; preds = %to_clk.exit986
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit994

if.end.i992:                                      ; preds = %to_clk.exit986
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i991 = getelementptr inbounds %struct.clk_hw, ptr %call.i987, i32 0, i32 1
  %153 = ptrtoint ptr %clk.i991 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %clk.i991, align 4
  br label %to_clk.exit994

to_clk.exit994:                                   ; preds = %if.end.i992, %to_clk.exit986.to_clk.exit994_crit_edge
  %retval.0.i993 = phi ptr [ %154, %if.end.i992 ], [ %call.i987, %to_clk.exit986.to_clk.exit994_crit_edge ]
  store ptr %retval.0.i993, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 32), align 4
  %155 = load ptr, ptr @ccm_base, align 4
  %add.ptr185 = getelementptr i8, ptr %155, i32 8
  %call.i995 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.55, i8 noundef zeroext 5, ptr noundef nonnull @pll2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr185, i8 noundef zeroext 19, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i996 = icmp eq ptr %call.i995, null
  %cmp.i.i997 = icmp ugt ptr %call.i995, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i998 = or i1 %tobool.not.i.i996, %cmp.i.i997
  br i1 %spec.select.i.i998, label %to_clk.exit994.to_clk.exit1002_crit_edge, label %if.end.i1000

to_clk.exit994.to_clk.exit1002_crit_edge:         ; preds = %to_clk.exit994
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1002

if.end.i1000:                                     ; preds = %to_clk.exit994
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i999 = getelementptr inbounds %struct.clk_hw, ptr %call.i995, i32 0, i32 1
  %156 = ptrtoint ptr %clk.i999 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %clk.i999, align 4
  br label %to_clk.exit1002

to_clk.exit1002:                                  ; preds = %if.end.i1000, %to_clk.exit994.to_clk.exit1002_crit_edge
  %retval.0.i1001 = phi ptr [ %157, %if.end.i1000 ], [ %call.i995, %to_clk.exit994.to_clk.exit1002_crit_edge ]
  store ptr %retval.0.i1001, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 33), align 4
  %158 = load ptr, ptr @ccm_base, align 4
  %add.ptr188 = getelementptr i8, ptr %158, i32 8
  %call.i1003 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.56, i8 noundef zeroext 6, ptr noundef nonnull @sys_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr188, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1004 = icmp eq ptr %call.i1003, null
  %cmp.i.i1005 = icmp ugt ptr %call.i1003, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1006 = or i1 %tobool.not.i.i1004, %cmp.i.i1005
  br i1 %spec.select.i.i1006, label %to_clk.exit1002.to_clk.exit1010_crit_edge, label %if.end.i1008

to_clk.exit1002.to_clk.exit1010_crit_edge:        ; preds = %to_clk.exit1002
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1010

if.end.i1008:                                     ; preds = %to_clk.exit1002
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1007 = getelementptr inbounds %struct.clk_hw, ptr %call.i1003, i32 0, i32 1
  %159 = ptrtoint ptr %clk.i1007 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %clk.i1007, align 4
  br label %to_clk.exit1010

to_clk.exit1010:                                  ; preds = %if.end.i1008, %to_clk.exit1002.to_clk.exit1010_crit_edge
  %retval.0.i1009 = phi ptr [ %160, %if.end.i1008 ], [ %call.i1003, %to_clk.exit1002.to_clk.exit1010_crit_edge ]
  store ptr %retval.0.i1009, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 34), align 4
  %161 = load ptr, ptr @ccm_base, align 4
  %add.ptr191 = getelementptr i8, ptr %161, i32 8
  %call.i1011 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.57, i8 noundef zeroext 2, ptr noundef nonnull @ddr_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr191, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1012 = icmp eq ptr %call.i1011, null
  %cmp.i.i1013 = icmp ugt ptr %call.i1011, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1014 = or i1 %tobool.not.i.i1012, %cmp.i.i1013
  br i1 %spec.select.i.i1014, label %to_clk.exit1010.to_clk.exit1018_crit_edge, label %if.end.i1016

to_clk.exit1010.to_clk.exit1018_crit_edge:        ; preds = %to_clk.exit1010
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1018

if.end.i1016:                                     ; preds = %to_clk.exit1010
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1015 = getelementptr inbounds %struct.clk_hw, ptr %call.i1011, i32 0, i32 1
  %162 = ptrtoint ptr %clk.i1015 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %clk.i1015, align 4
  br label %to_clk.exit1018

to_clk.exit1018:                                  ; preds = %if.end.i1016, %to_clk.exit1010.to_clk.exit1018_crit_edge
  %retval.0.i1017 = phi ptr [ %163, %if.end.i1016 ], [ %call.i1011, %to_clk.exit1010.to_clk.exit1018_crit_edge ]
  store ptr %retval.0.i1017, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 35), align 4
  %164 = load ptr, ptr @ccm_base, align 4
  %add.ptr194 = getelementptr i8, ptr %164, i32 12
  %call.i1019 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr194, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1020 = icmp eq ptr %call.i1019, null
  %cmp.i.i1021 = icmp ugt ptr %call.i1019, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1022 = or i1 %tobool.not.i.i1020, %cmp.i.i1021
  br i1 %spec.select.i.i1022, label %to_clk.exit1018.to_clk.exit1026_crit_edge, label %if.end.i1024

to_clk.exit1018.to_clk.exit1026_crit_edge:        ; preds = %to_clk.exit1018
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1026

if.end.i1024:                                     ; preds = %to_clk.exit1018
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1023 = getelementptr inbounds %struct.clk_hw, ptr %call.i1019, i32 0, i32 1
  %165 = ptrtoint ptr %clk.i1023 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %clk.i1023, align 4
  br label %to_clk.exit1026

to_clk.exit1026:                                  ; preds = %if.end.i1024, %to_clk.exit1018.to_clk.exit1026_crit_edge
  %retval.0.i1025 = phi ptr [ %166, %if.end.i1024 ], [ %call.i1019, %to_clk.exit1018.to_clk.exit1026_crit_edge ]
  store ptr %retval.0.i1025, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 36), align 4
  %167 = load ptr, ptr @ccm_base, align 4
  %add.ptr197 = getelementptr i8, ptr %167, i32 12
  %call.i1027 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr197, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1028 = icmp eq ptr %call.i1027, null
  %cmp.i.i1029 = icmp ugt ptr %call.i1027, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1030 = or i1 %tobool.not.i.i1028, %cmp.i.i1029
  br i1 %spec.select.i.i1030, label %to_clk.exit1026.to_clk.exit1034_crit_edge, label %if.end.i1032

to_clk.exit1026.to_clk.exit1034_crit_edge:        ; preds = %to_clk.exit1026
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1034

if.end.i1032:                                     ; preds = %to_clk.exit1026
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1031 = getelementptr inbounds %struct.clk_hw, ptr %call.i1027, i32 0, i32 1
  %168 = ptrtoint ptr %clk.i1031 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %clk.i1031, align 4
  br label %to_clk.exit1034

to_clk.exit1034:                                  ; preds = %if.end.i1032, %to_clk.exit1026.to_clk.exit1034_crit_edge
  %retval.0.i1033 = phi ptr [ %169, %if.end.i1032 ], [ %call.i1027, %to_clk.exit1026.to_clk.exit1034_crit_edge ]
  store ptr %retval.0.i1033, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 37), align 4
  %170 = load ptr, ptr @ccm_base, align 4
  %add.ptr200 = getelementptr i8, ptr %170, i32 12
  %call.i1035 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr200, i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1036 = icmp eq ptr %call.i1035, null
  %cmp.i.i1037 = icmp ugt ptr %call.i1035, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1038 = or i1 %tobool.not.i.i1036, %cmp.i.i1037
  br i1 %spec.select.i.i1038, label %to_clk.exit1034.to_clk.exit1042_crit_edge, label %if.end.i1040

to_clk.exit1034.to_clk.exit1042_crit_edge:        ; preds = %to_clk.exit1034
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1042

if.end.i1040:                                     ; preds = %to_clk.exit1034
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1039 = getelementptr inbounds %struct.clk_hw, ptr %call.i1035, i32 0, i32 1
  %171 = ptrtoint ptr %clk.i1039 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %clk.i1039, align 4
  br label %to_clk.exit1042

to_clk.exit1042:                                  ; preds = %if.end.i1040, %to_clk.exit1034.to_clk.exit1042_crit_edge
  %retval.0.i1041 = phi ptr [ %172, %if.end.i1040 ], [ %call.i1035, %to_clk.exit1034.to_clk.exit1042_crit_edge ]
  store ptr %retval.0.i1041, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 38), align 4
  %173 = load ptr, ptr @ccm_base, align 4
  %add.ptr203 = getelementptr i8, ptr %173, i32 12
  %call.i1043 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr203, i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1044 = icmp eq ptr %call.i1043, null
  %cmp.i.i1045 = icmp ugt ptr %call.i1043, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1046 = or i1 %tobool.not.i.i1044, %cmp.i.i1045
  br i1 %spec.select.i.i1046, label %to_clk.exit1042.to_clk.exit1050_crit_edge, label %if.end.i1048

to_clk.exit1042.to_clk.exit1050_crit_edge:        ; preds = %to_clk.exit1042
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1050

if.end.i1048:                                     ; preds = %to_clk.exit1042
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1047 = getelementptr inbounds %struct.clk_hw, ptr %call.i1043, i32 0, i32 1
  %174 = ptrtoint ptr %clk.i1047 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %clk.i1047, align 4
  br label %to_clk.exit1050

to_clk.exit1050:                                  ; preds = %if.end.i1048, %to_clk.exit1042.to_clk.exit1050_crit_edge
  %retval.0.i1049 = phi ptr [ %175, %if.end.i1048 ], [ %call.i1043, %to_clk.exit1042.to_clk.exit1050_crit_edge ]
  store ptr %retval.0.i1049, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 29), align 4
  %176 = load ptr, ptr @ccm_base, align 4
  %add.ptr206 = getelementptr i8, ptr %176, i32 12
  %call207 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef %add.ptr206, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @pll4_audio_div_table, ptr noundef nonnull @imx_ccm_lock) #4
  store ptr %call207, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 30), align 4
  %177 = load ptr, ptr @ccm_base, align 4
  %add.ptr208 = getelementptr i8, ptr %177, i32 12
  %call.i1051 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.39, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr208, i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1052 = icmp eq ptr %call.i1051, null
  %cmp.i.i1053 = icmp ugt ptr %call.i1051, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1054 = or i1 %tobool.not.i.i1052, %cmp.i.i1053
  br i1 %spec.select.i.i1054, label %to_clk.exit1050.to_clk.exit1058_crit_edge, label %if.end.i1056

to_clk.exit1050.to_clk.exit1058_crit_edge:        ; preds = %to_clk.exit1050
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1058

if.end.i1056:                                     ; preds = %to_clk.exit1050
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1055 = getelementptr inbounds %struct.clk_hw, ptr %call.i1051, i32 0, i32 1
  %178 = ptrtoint ptr %clk.i1055 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %clk.i1055, align 4
  br label %to_clk.exit1058

to_clk.exit1058:                                  ; preds = %if.end.i1056, %to_clk.exit1050.to_clk.exit1058_crit_edge
  %retval.0.i1057 = phi ptr [ %179, %if.end.i1056 ], [ %call.i1051, %to_clk.exit1050.to_clk.exit1058_crit_edge ]
  store ptr %retval.0.i1057, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 31), align 4
  %180 = load ptr, ptr @ccm_base, align 4
  %add.ptr211 = getelementptr i8, ptr %180, i32 88
  %call.i1059 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.57, i32 noundef 4, ptr noundef %add.ptr211, i8 noundef zeroext 28, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1060 = icmp eq ptr %call.i1059, null
  %cmp.i.i1061 = icmp ugt ptr %call.i1059, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1062 = or i1 %tobool.not.i.i1060, %cmp.i.i1061
  br i1 %spec.select.i.i1062, label %to_clk.exit1058.to_clk.exit1066_crit_edge, label %if.end.i1064

to_clk.exit1058.to_clk.exit1066_crit_edge:        ; preds = %to_clk.exit1058
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1066

if.end.i1064:                                     ; preds = %to_clk.exit1058
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1063 = getelementptr inbounds %struct.clk_hw, ptr %call.i1059, i32 0, i32 1
  %181 = ptrtoint ptr %clk.i1063 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %clk.i1063, align 4
  br label %to_clk.exit1066

to_clk.exit1066:                                  ; preds = %if.end.i1064, %to_clk.exit1058.to_clk.exit1066_crit_edge
  %retval.0.i1065 = phi ptr [ %182, %if.end.i1064 ], [ %call.i1059, %to_clk.exit1058.to_clk.exit1066_crit_edge ]
  store ptr %retval.0.i1065, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 185), align 4
  %183 = load ptr, ptr @ccm_base, align 4
  %add.ptr214 = getelementptr i8, ptr %183, i32 80
  %call.i1067 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr214, i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1068 = icmp eq ptr %call.i1067, null
  %cmp.i.i1069 = icmp ugt ptr %call.i1067, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1070 = or i1 %tobool.not.i.i1068, %cmp.i.i1069
  br i1 %spec.select.i.i1070, label %to_clk.exit1066.to_clk.exit1074_crit_edge, label %if.end.i1072

to_clk.exit1066.to_clk.exit1074_crit_edge:        ; preds = %to_clk.exit1066
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1074

if.end.i1072:                                     ; preds = %to_clk.exit1066
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1071 = getelementptr inbounds %struct.clk_hw, ptr %call.i1067, i32 0, i32 1
  %184 = ptrtoint ptr %clk.i1071 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %clk.i1071, align 4
  br label %to_clk.exit1074

to_clk.exit1074:                                  ; preds = %if.end.i1072, %to_clk.exit1066.to_clk.exit1074_crit_edge
  %retval.0.i1073 = phi ptr [ %185, %if.end.i1072 ], [ %call.i1067, %to_clk.exit1066.to_clk.exit1074_crit_edge ]
  store ptr %retval.0.i1073, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 186), align 4
  %186 = load ptr, ptr @anatop_base, align 4
  %add.ptr217 = getelementptr i8, ptr %186, i32 16
  %call.i1075 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr217, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1076 = icmp eq ptr %call.i1075, null
  %cmp.i.i1077 = icmp ugt ptr %call.i1075, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1078 = or i1 %tobool.not.i.i1076, %cmp.i.i1077
  br i1 %spec.select.i.i1078, label %to_clk.exit1074.to_clk.exit1082_crit_edge, label %if.end.i1080

to_clk.exit1074.to_clk.exit1082_crit_edge:        ; preds = %to_clk.exit1074
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1082

if.end.i1080:                                     ; preds = %to_clk.exit1074
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1079 = getelementptr inbounds %struct.clk_hw, ptr %call.i1075, i32 0, i32 1
  %187 = ptrtoint ptr %clk.i1079 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %clk.i1079, align 4
  br label %to_clk.exit1082

to_clk.exit1082:                                  ; preds = %if.end.i1080, %to_clk.exit1074.to_clk.exit1082_crit_edge
  %retval.0.i1081 = phi ptr [ %188, %if.end.i1080 ], [ %call.i1075, %to_clk.exit1074.to_clk.exit1082_crit_edge ]
  store ptr %retval.0.i1081, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 157), align 4
  %189 = load ptr, ptr @anatop_base, align 4
  %add.ptr220 = getelementptr i8, ptr %189, i32 32
  %call.i1083 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.40, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr220, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1084 = icmp eq ptr %call.i1083, null
  %cmp.i.i1085 = icmp ugt ptr %call.i1083, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1086 = or i1 %tobool.not.i.i1084, %cmp.i.i1085
  br i1 %spec.select.i.i1086, label %to_clk.exit1082.to_clk.exit1090_crit_edge, label %if.end.i1088

to_clk.exit1082.to_clk.exit1090_crit_edge:        ; preds = %to_clk.exit1082
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1090

if.end.i1088:                                     ; preds = %to_clk.exit1082
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1087 = getelementptr inbounds %struct.clk_hw, ptr %call.i1083, i32 0, i32 1
  %190 = ptrtoint ptr %clk.i1087 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %clk.i1087, align 4
  br label %to_clk.exit1090

to_clk.exit1090:                                  ; preds = %if.end.i1088, %to_clk.exit1082.to_clk.exit1090_crit_edge
  %retval.0.i1089 = phi ptr [ %191, %if.end.i1088 ], [ %call.i1083, %to_clk.exit1082.to_clk.exit1090_crit_edge ]
  store ptr %retval.0.i1089, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 158), align 4
  %192 = load ptr, ptr @ccm_base, align 4
  %add.ptr223 = getelementptr i8, ptr %192, i32 68
  %call.i1091 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr223, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1092 = icmp eq ptr %call.i1091, null
  %cmp.i.i1093 = icmp ugt ptr %call.i1091, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1094 = or i1 %tobool.not.i.i1092, %cmp.i.i1093
  br i1 %spec.select.i.i1094, label %to_clk.exit1090.to_clk.exit1098_crit_edge, label %if.end.i1096

to_clk.exit1090.to_clk.exit1098_crit_edge:        ; preds = %to_clk.exit1090
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1098

if.end.i1096:                                     ; preds = %to_clk.exit1090
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1095 = getelementptr inbounds %struct.clk_hw, ptr %call.i1091, i32 0, i32 1
  %193 = ptrtoint ptr %clk.i1095 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %clk.i1095, align 4
  br label %to_clk.exit1098

to_clk.exit1098:                                  ; preds = %if.end.i1096, %to_clk.exit1090.to_clk.exit1098_crit_edge
  %retval.0.i1097 = phi ptr [ %194, %if.end.i1096 ], [ %call.i1091, %to_clk.exit1090.to_clk.exit1098_crit_edge ]
  store ptr %retval.0.i1097, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 113), align 4
  %195 = load ptr, ptr @ccm_base, align 4
  %add.ptr226 = getelementptr i8, ptr %195, i32 92
  %call.i1099 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr226, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1100 = icmp eq ptr %call.i1099, null
  %cmp.i.i1101 = icmp ugt ptr %call.i1099, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1102 = or i1 %tobool.not.i.i1100, %cmp.i.i1101
  br i1 %spec.select.i.i1102, label %to_clk.exit1098.to_clk.exit1106_crit_edge, label %if.end.i1104

to_clk.exit1098.to_clk.exit1106_crit_edge:        ; preds = %to_clk.exit1098
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1106

if.end.i1104:                                     ; preds = %to_clk.exit1098
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1103 = getelementptr inbounds %struct.clk_hw, ptr %call.i1099, i32 0, i32 1
  %196 = ptrtoint ptr %clk.i1103 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %clk.i1103, align 4
  br label %to_clk.exit1106

to_clk.exit1106:                                  ; preds = %if.end.i1104, %to_clk.exit1098.to_clk.exit1106_crit_edge
  %retval.0.i1105 = phi ptr [ %197, %if.end.i1104 ], [ %call.i1099, %to_clk.exit1098.to_clk.exit1106_crit_edge ]
  store ptr %retval.0.i1105, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 114), align 4
  %198 = load ptr, ptr @ccm_base, align 4
  %add.ptr229 = getelementptr i8, ptr %198, i32 16
  %call.i1107 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.70, i8 noundef zeroext 4, ptr noundef nonnull @qspi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr229, i8 noundef zeroext 22, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1108 = icmp eq ptr %call.i1107, null
  %cmp.i.i1109 = icmp ugt ptr %call.i1107, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1110 = or i1 %tobool.not.i.i1108, %cmp.i.i1109
  br i1 %spec.select.i.i1110, label %to_clk.exit1106.to_clk.exit1114_crit_edge, label %if.end.i1112

to_clk.exit1106.to_clk.exit1114_crit_edge:        ; preds = %to_clk.exit1106
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1114

if.end.i1112:                                     ; preds = %to_clk.exit1106
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1111 = getelementptr inbounds %struct.clk_hw, ptr %call.i1107, i32 0, i32 1
  %199 = ptrtoint ptr %clk.i1111 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %clk.i1111, align 4
  br label %to_clk.exit1114

to_clk.exit1114:                                  ; preds = %if.end.i1112, %to_clk.exit1106.to_clk.exit1114_crit_edge
  %retval.0.i1113 = phi ptr [ %200, %if.end.i1112 ], [ %call.i1107, %to_clk.exit1106.to_clk.exit1114_crit_edge ]
  store ptr %retval.0.i1113, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 115), align 4
  %201 = load ptr, ptr @ccm_base, align 4
  %add.ptr232 = getelementptr i8, ptr %201, i32 28
  %call.i1115 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr232, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1116 = icmp eq ptr %call.i1115, null
  %cmp.i.i1117 = icmp ugt ptr %call.i1115, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1118 = or i1 %tobool.not.i.i1116, %cmp.i.i1117
  br i1 %spec.select.i.i1118, label %to_clk.exit1114.to_clk.exit1122_crit_edge, label %if.end.i1120

to_clk.exit1114.to_clk.exit1122_crit_edge:        ; preds = %to_clk.exit1114
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1122

if.end.i1120:                                     ; preds = %to_clk.exit1114
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1119 = getelementptr inbounds %struct.clk_hw, ptr %call.i1115, i32 0, i32 1
  %202 = ptrtoint ptr %clk.i1119 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %clk.i1119, align 4
  br label %to_clk.exit1122

to_clk.exit1122:                                  ; preds = %if.end.i1120, %to_clk.exit1114.to_clk.exit1122_crit_edge
  %retval.0.i1121 = phi ptr [ %203, %if.end.i1120 ], [ %call.i1115, %to_clk.exit1114.to_clk.exit1122_crit_edge ]
  store ptr %retval.0.i1121, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 116), align 4
  %204 = load ptr, ptr @ccm_base, align 4
  %add.ptr235 = getelementptr i8, ptr %204, i32 28
  %call.i1123 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr235, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1124 = icmp eq ptr %call.i1123, null
  %cmp.i.i1125 = icmp ugt ptr %call.i1123, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1126 = or i1 %tobool.not.i.i1124, %cmp.i.i1125
  br i1 %spec.select.i.i1126, label %to_clk.exit1122.to_clk.exit1130_crit_edge, label %if.end.i1128

to_clk.exit1122.to_clk.exit1130_crit_edge:        ; preds = %to_clk.exit1122
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1130

if.end.i1128:                                     ; preds = %to_clk.exit1122
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1127 = getelementptr inbounds %struct.clk_hw, ptr %call.i1123, i32 0, i32 1
  %205 = ptrtoint ptr %clk.i1127 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %clk.i1127, align 4
  br label %to_clk.exit1130

to_clk.exit1130:                                  ; preds = %if.end.i1128, %to_clk.exit1122.to_clk.exit1130_crit_edge
  %retval.0.i1129 = phi ptr [ %206, %if.end.i1128 ], [ %call.i1123, %to_clk.exit1122.to_clk.exit1130_crit_edge ]
  store ptr %retval.0.i1129, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 117), align 4
  %207 = load ptr, ptr @ccm_base, align 4
  %add.ptr238 = getelementptr i8, ptr %207, i32 28
  %call.i1131 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr238, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1132 = icmp eq ptr %call.i1131, null
  %cmp.i.i1133 = icmp ugt ptr %call.i1131, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1134 = or i1 %tobool.not.i.i1132, %cmp.i.i1133
  br i1 %spec.select.i.i1134, label %to_clk.exit1130.to_clk.exit1138_crit_edge, label %if.end.i1136

to_clk.exit1130.to_clk.exit1138_crit_edge:        ; preds = %to_clk.exit1130
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1138

if.end.i1136:                                     ; preds = %to_clk.exit1130
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1135 = getelementptr inbounds %struct.clk_hw, ptr %call.i1131, i32 0, i32 1
  %208 = ptrtoint ptr %clk.i1135 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %clk.i1135, align 4
  br label %to_clk.exit1138

to_clk.exit1138:                                  ; preds = %if.end.i1136, %to_clk.exit1130.to_clk.exit1138_crit_edge
  %retval.0.i1137 = phi ptr [ %209, %if.end.i1136 ], [ %call.i1131, %to_clk.exit1130.to_clk.exit1138_crit_edge ]
  store ptr %retval.0.i1137, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 118), align 4
  %210 = load ptr, ptr @ccm_base, align 4
  %add.ptr241 = getelementptr i8, ptr %210, i32 28
  %call.i1139 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr241, i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1140 = icmp eq ptr %call.i1139, null
  %cmp.i.i1141 = icmp ugt ptr %call.i1139, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1142 = or i1 %tobool.not.i.i1140, %cmp.i.i1141
  br i1 %spec.select.i.i1142, label %to_clk.exit1138.to_clk.exit1146_crit_edge, label %if.end.i1144

to_clk.exit1138.to_clk.exit1146_crit_edge:        ; preds = %to_clk.exit1138
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1146

if.end.i1144:                                     ; preds = %to_clk.exit1138
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1143 = getelementptr inbounds %struct.clk_hw, ptr %call.i1139, i32 0, i32 1
  %211 = ptrtoint ptr %clk.i1143 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %clk.i1143, align 4
  br label %to_clk.exit1146

to_clk.exit1146:                                  ; preds = %if.end.i1144, %to_clk.exit1138.to_clk.exit1146_crit_edge
  %retval.0.i1145 = phi ptr [ %212, %if.end.i1144 ], [ %call.i1139, %to_clk.exit1138.to_clk.exit1146_crit_edge ]
  store ptr %retval.0.i1145, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 119), align 4
  %213 = load ptr, ptr @ccm_base, align 4
  %add.ptr244 = getelementptr i8, ptr %213, i32 72
  %call.i1147 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, i32 noundef 4, ptr noundef %add.ptr244, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1148 = icmp eq ptr %call.i1147, null
  %cmp.i.i1149 = icmp ugt ptr %call.i1147, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1150 = or i1 %tobool.not.i.i1148, %cmp.i.i1149
  br i1 %spec.select.i.i1150, label %to_clk.exit1146.to_clk.exit1154_crit_edge, label %if.end.i1152

to_clk.exit1146.to_clk.exit1154_crit_edge:        ; preds = %to_clk.exit1146
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1154

if.end.i1152:                                     ; preds = %to_clk.exit1146
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1151 = getelementptr inbounds %struct.clk_hw, ptr %call.i1147, i32 0, i32 1
  %214 = ptrtoint ptr %clk.i1151 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %clk.i1151, align 4
  br label %to_clk.exit1154

to_clk.exit1154:                                  ; preds = %if.end.i1152, %to_clk.exit1146.to_clk.exit1154_crit_edge
  %retval.0.i1153 = phi ptr [ %215, %if.end.i1152 ], [ %call.i1147, %to_clk.exit1146.to_clk.exit1154_crit_edge ]
  store ptr %retval.0.i1153, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 125), align 4
  %216 = load ptr, ptr @ccm_base, align 4
  %add.ptr247 = getelementptr i8, ptr %216, i32 16
  %call.i1155 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.76, i8 noundef zeroext 4, ptr noundef nonnull @qspi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr247, i8 noundef zeroext 24, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1156 = icmp eq ptr %call.i1155, null
  %cmp.i.i1157 = icmp ugt ptr %call.i1155, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1158 = or i1 %tobool.not.i.i1156, %cmp.i.i1157
  br i1 %spec.select.i.i1158, label %to_clk.exit1154.to_clk.exit1162_crit_edge, label %if.end.i1160

to_clk.exit1154.to_clk.exit1162_crit_edge:        ; preds = %to_clk.exit1154
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1162

if.end.i1160:                                     ; preds = %to_clk.exit1154
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1159 = getelementptr inbounds %struct.clk_hw, ptr %call.i1155, i32 0, i32 1
  %217 = ptrtoint ptr %clk.i1159 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %clk.i1159, align 4
  br label %to_clk.exit1162

to_clk.exit1162:                                  ; preds = %if.end.i1160, %to_clk.exit1154.to_clk.exit1162_crit_edge
  %retval.0.i1161 = phi ptr [ %218, %if.end.i1160 ], [ %call.i1155, %to_clk.exit1154.to_clk.exit1162_crit_edge ]
  store ptr %retval.0.i1161, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 120), align 4
  %219 = load ptr, ptr @ccm_base, align 4
  %add.ptr250 = getelementptr i8, ptr %219, i32 28
  %call.i1163 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.76, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr250, i8 noundef zeroext 12, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1164 = icmp eq ptr %call.i1163, null
  %cmp.i.i1165 = icmp ugt ptr %call.i1163, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1166 = or i1 %tobool.not.i.i1164, %cmp.i.i1165
  br i1 %spec.select.i.i1166, label %to_clk.exit1162.to_clk.exit1170_crit_edge, label %if.end.i1168

to_clk.exit1162.to_clk.exit1170_crit_edge:        ; preds = %to_clk.exit1162
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1170

if.end.i1168:                                     ; preds = %to_clk.exit1162
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1167 = getelementptr inbounds %struct.clk_hw, ptr %call.i1163, i32 0, i32 1
  %220 = ptrtoint ptr %clk.i1167 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %clk.i1167, align 4
  br label %to_clk.exit1170

to_clk.exit1170:                                  ; preds = %if.end.i1168, %to_clk.exit1162.to_clk.exit1170_crit_edge
  %retval.0.i1169 = phi ptr [ %221, %if.end.i1168 ], [ %call.i1163, %to_clk.exit1162.to_clk.exit1170_crit_edge ]
  store ptr %retval.0.i1169, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 121), align 4
  %222 = load ptr, ptr @ccm_base, align 4
  %add.ptr253 = getelementptr i8, ptr %222, i32 28
  %call.i1171 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr253, i8 noundef zeroext 8, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1172 = icmp eq ptr %call.i1171, null
  %cmp.i.i1173 = icmp ugt ptr %call.i1171, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1174 = or i1 %tobool.not.i.i1172, %cmp.i.i1173
  br i1 %spec.select.i.i1174, label %to_clk.exit1170.to_clk.exit1178_crit_edge, label %if.end.i1176

to_clk.exit1170.to_clk.exit1178_crit_edge:        ; preds = %to_clk.exit1170
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1178

if.end.i1176:                                     ; preds = %to_clk.exit1170
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1175 = getelementptr inbounds %struct.clk_hw, ptr %call.i1171, i32 0, i32 1
  %223 = ptrtoint ptr %clk.i1175 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %clk.i1175, align 4
  br label %to_clk.exit1178

to_clk.exit1178:                                  ; preds = %if.end.i1176, %to_clk.exit1170.to_clk.exit1178_crit_edge
  %retval.0.i1177 = phi ptr [ %224, %if.end.i1176 ], [ %call.i1171, %to_clk.exit1170.to_clk.exit1178_crit_edge ]
  store ptr %retval.0.i1177, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 122), align 4
  %225 = load ptr, ptr @ccm_base, align 4
  %add.ptr256 = getelementptr i8, ptr %225, i32 28
  %call.i1179 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.78, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr256, i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1180 = icmp eq ptr %call.i1179, null
  %cmp.i.i1181 = icmp ugt ptr %call.i1179, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1182 = or i1 %tobool.not.i.i1180, %cmp.i.i1181
  br i1 %spec.select.i.i1182, label %to_clk.exit1178.to_clk.exit1186_crit_edge, label %if.end.i1184

to_clk.exit1178.to_clk.exit1186_crit_edge:        ; preds = %to_clk.exit1178
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1186

if.end.i1184:                                     ; preds = %to_clk.exit1178
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1183 = getelementptr inbounds %struct.clk_hw, ptr %call.i1179, i32 0, i32 1
  %226 = ptrtoint ptr %clk.i1183 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %clk.i1183, align 4
  br label %to_clk.exit1186

to_clk.exit1186:                                  ; preds = %if.end.i1184, %to_clk.exit1178.to_clk.exit1186_crit_edge
  %retval.0.i1185 = phi ptr [ %227, %if.end.i1184 ], [ %call.i1179, %to_clk.exit1178.to_clk.exit1186_crit_edge ]
  store ptr %retval.0.i1185, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 123), align 4
  %228 = load ptr, ptr @ccm_base, align 4
  %add.ptr259 = getelementptr i8, ptr %228, i32 28
  %call.i1187 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr259, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1188 = icmp eq ptr %call.i1187, null
  %cmp.i.i1189 = icmp ugt ptr %call.i1187, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1190 = or i1 %tobool.not.i.i1188, %cmp.i.i1189
  br i1 %spec.select.i.i1190, label %to_clk.exit1186.to_clk.exit1194_crit_edge, label %if.end.i1192

to_clk.exit1186.to_clk.exit1194_crit_edge:        ; preds = %to_clk.exit1186
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1194

if.end.i1192:                                     ; preds = %to_clk.exit1186
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1191 = getelementptr inbounds %struct.clk_hw, ptr %call.i1187, i32 0, i32 1
  %229 = ptrtoint ptr %clk.i1191 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %clk.i1191, align 4
  br label %to_clk.exit1194

to_clk.exit1194:                                  ; preds = %if.end.i1192, %to_clk.exit1186.to_clk.exit1194_crit_edge
  %retval.0.i1193 = phi ptr [ %230, %if.end.i1192 ], [ %call.i1187, %to_clk.exit1186.to_clk.exit1194_crit_edge ]
  store ptr %retval.0.i1193, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 124), align 4
  %231 = load ptr, ptr @ccm_base, align 4
  %add.ptr262 = getelementptr i8, ptr %231, i32 96
  %call.i1195 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i32 noundef 4, ptr noundef %add.ptr262, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1196 = icmp eq ptr %call.i1195, null
  %cmp.i.i1197 = icmp ugt ptr %call.i1195, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1198 = or i1 %tobool.not.i.i1196, %cmp.i.i1197
  br i1 %spec.select.i.i1198, label %to_clk.exit1194.to_clk.exit1202_crit_edge, label %if.end.i1200

to_clk.exit1194.to_clk.exit1202_crit_edge:        ; preds = %to_clk.exit1194
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1202

if.end.i1200:                                     ; preds = %to_clk.exit1194
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1199 = getelementptr inbounds %struct.clk_hw, ptr %call.i1195, i32 0, i32 1
  %232 = ptrtoint ptr %clk.i1199 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %clk.i1199, align 4
  br label %to_clk.exit1202

to_clk.exit1202:                                  ; preds = %if.end.i1200, %to_clk.exit1194.to_clk.exit1202_crit_edge
  %retval.0.i1201 = phi ptr [ %233, %if.end.i1200 ], [ %call.i1195, %to_clk.exit1194.to_clk.exit1202_crit_edge ]
  store ptr %retval.0.i1201, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 126), align 4
  %call.i1203 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.38, i32 noundef 4, i32 noundef 1, i32 noundef 10) #4
  %tobool.not.i.i1204 = icmp eq ptr %call.i1203, null
  %cmp.i.i1205 = icmp ugt ptr %call.i1203, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1206 = or i1 %tobool.not.i.i1204, %cmp.i.i1205
  br i1 %spec.select.i.i1206, label %to_clk.exit1202.to_clk.exit1210_crit_edge, label %if.end.i1208

to_clk.exit1202.to_clk.exit1210_crit_edge:        ; preds = %to_clk.exit1202
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1210

if.end.i1208:                                     ; preds = %to_clk.exit1202
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1207 = getelementptr inbounds %struct.clk_hw, ptr %call.i1203, i32 0, i32 1
  %234 = ptrtoint ptr %clk.i1207 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %clk.i1207, align 4
  br label %to_clk.exit1210

to_clk.exit1210:                                  ; preds = %if.end.i1208, %to_clk.exit1202.to_clk.exit1210_crit_edge
  %retval.0.i1209 = phi ptr [ %235, %if.end.i1208 ], [ %call.i1203, %to_clk.exit1202.to_clk.exit1210_crit_edge ]
  store ptr %retval.0.i1209, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 66), align 4
  %call.i1211 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.38, i32 noundef 4, i32 noundef 1, i32 noundef 20) #4
  %tobool.not.i.i1212 = icmp eq ptr %call.i1211, null
  %cmp.i.i1213 = icmp ugt ptr %call.i1211, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1214 = or i1 %tobool.not.i.i1212, %cmp.i.i1213
  br i1 %spec.select.i.i1214, label %to_clk.exit1210.to_clk.exit1218_crit_edge, label %if.end.i1216

to_clk.exit1210.to_clk.exit1218_crit_edge:        ; preds = %to_clk.exit1210
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1218

if.end.i1216:                                     ; preds = %to_clk.exit1210
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1215 = getelementptr inbounds %struct.clk_hw, ptr %call.i1211, i32 0, i32 1
  %236 = ptrtoint ptr %clk.i1215 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %clk.i1215, align 4
  br label %to_clk.exit1218

to_clk.exit1218:                                  ; preds = %if.end.i1216, %to_clk.exit1210.to_clk.exit1218_crit_edge
  %retval.0.i1217 = phi ptr [ %237, %if.end.i1216 ], [ %call.i1211, %to_clk.exit1210.to_clk.exit1218_crit_edge ]
  store ptr %retval.0.i1217, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 67), align 4
  %238 = load ptr, ptr @ccm_base, align 4
  %add.ptr269 = getelementptr i8, ptr %238, i32 32
  %call.i1219 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84, i8 noundef zeroext 4, ptr noundef nonnull @rmii_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr269, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1220 = icmp eq ptr %call.i1219, null
  %cmp.i.i1221 = icmp ugt ptr %call.i1219, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1222 = or i1 %tobool.not.i.i1220, %cmp.i.i1221
  br i1 %spec.select.i.i1222, label %to_clk.exit1218.to_clk.exit1226_crit_edge, label %if.end.i1224

to_clk.exit1218.to_clk.exit1226_crit_edge:        ; preds = %to_clk.exit1218
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1226

if.end.i1224:                                     ; preds = %to_clk.exit1218
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1223 = getelementptr inbounds %struct.clk_hw, ptr %call.i1219, i32 0, i32 1
  %239 = ptrtoint ptr %clk.i1223 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %clk.i1223, align 4
  br label %to_clk.exit1226

to_clk.exit1226:                                  ; preds = %if.end.i1224, %to_clk.exit1218.to_clk.exit1226_crit_edge
  %retval.0.i1225 = phi ptr [ %240, %if.end.i1224 ], [ %call.i1219, %to_clk.exit1218.to_clk.exit1226_crit_edge ]
  store ptr %retval.0.i1225, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 68), align 4
  %241 = load ptr, ptr @ccm_base, align 4
  %add.ptr272 = getelementptr i8, ptr %241, i32 32
  %call.i1227 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.85, i8 noundef zeroext 7, ptr noundef nonnull @enet_ts_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr272, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1228 = icmp eq ptr %call.i1227, null
  %cmp.i.i1229 = icmp ugt ptr %call.i1227, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1230 = or i1 %tobool.not.i.i1228, %cmp.i.i1229
  br i1 %spec.select.i.i1230, label %to_clk.exit1226.to_clk.exit1234_crit_edge, label %if.end.i1232

to_clk.exit1226.to_clk.exit1234_crit_edge:        ; preds = %to_clk.exit1226
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1234

if.end.i1232:                                     ; preds = %to_clk.exit1226
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1231 = getelementptr inbounds %struct.clk_hw, ptr %call.i1227, i32 0, i32 1
  %242 = ptrtoint ptr %clk.i1231 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %clk.i1231, align 4
  br label %to_clk.exit1234

to_clk.exit1234:                                  ; preds = %if.end.i1232, %to_clk.exit1226.to_clk.exit1234_crit_edge
  %retval.0.i1233 = phi ptr [ %243, %if.end.i1232 ], [ %call.i1227, %to_clk.exit1226.to_clk.exit1234_crit_edge ]
  store ptr %retval.0.i1233, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 70), align 4
  %244 = load ptr, ptr @ccm_base, align 4
  %add.ptr275 = getelementptr i8, ptr %244, i32 20
  %call.i1235 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.84, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr275, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1236 = icmp eq ptr %call.i1235, null
  %cmp.i.i1237 = icmp ugt ptr %call.i1235, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1238 = or i1 %tobool.not.i.i1236, %cmp.i.i1237
  br i1 %spec.select.i.i1238, label %to_clk.exit1234.to_clk.exit1242_crit_edge, label %if.end.i1240

to_clk.exit1234.to_clk.exit1242_crit_edge:        ; preds = %to_clk.exit1234
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1242

if.end.i1240:                                     ; preds = %to_clk.exit1234
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1239 = getelementptr inbounds %struct.clk_hw, ptr %call.i1235, i32 0, i32 1
  %245 = ptrtoint ptr %clk.i1239 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %clk.i1239, align 4
  br label %to_clk.exit1242

to_clk.exit1242:                                  ; preds = %if.end.i1240, %to_clk.exit1234.to_clk.exit1242_crit_edge
  %retval.0.i1241 = phi ptr [ %246, %if.end.i1240 ], [ %call.i1235, %to_clk.exit1234.to_clk.exit1242_crit_edge ]
  store ptr %retval.0.i1241, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 69), align 4
  %247 = load ptr, ptr @ccm_base, align 4
  %add.ptr278 = getelementptr i8, ptr %247, i32 20
  %call.i1243 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr278, i8 noundef zeroext 23, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1244 = icmp eq ptr %call.i1243, null
  %cmp.i.i1245 = icmp ugt ptr %call.i1243, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1246 = or i1 %tobool.not.i.i1244, %cmp.i.i1245
  br i1 %spec.select.i.i1246, label %to_clk.exit1242.to_clk.exit1250_crit_edge, label %if.end.i1248

to_clk.exit1242.to_clk.exit1250_crit_edge:        ; preds = %to_clk.exit1242
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1250

if.end.i1248:                                     ; preds = %to_clk.exit1242
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1247 = getelementptr inbounds %struct.clk_hw, ptr %call.i1243, i32 0, i32 1
  %248 = ptrtoint ptr %clk.i1247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %clk.i1247, align 4
  br label %to_clk.exit1250

to_clk.exit1250:                                  ; preds = %if.end.i1248, %to_clk.exit1242.to_clk.exit1250_crit_edge
  %retval.0.i1249 = phi ptr [ %249, %if.end.i1248 ], [ %call.i1243, %to_clk.exit1242.to_clk.exit1250_crit_edge ]
  store ptr %retval.0.i1249, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 71), align 4
  %250 = load ptr, ptr @ccm_base, align 4
  %add.ptr281 = getelementptr i8, ptr %250, i32 100
  %call.i1251 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr281, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1252 = icmp eq ptr %call.i1251, null
  %cmp.i.i1253 = icmp ugt ptr %call.i1251, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1254 = or i1 %tobool.not.i.i1252, %cmp.i.i1253
  br i1 %spec.select.i.i1254, label %to_clk.exit1250.to_clk.exit1258_crit_edge, label %if.end.i1256

to_clk.exit1250.to_clk.exit1258_crit_edge:        ; preds = %to_clk.exit1250
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1258

if.end.i1256:                                     ; preds = %to_clk.exit1250
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1255 = getelementptr inbounds %struct.clk_hw, ptr %call.i1251, i32 0, i32 1
  %251 = ptrtoint ptr %clk.i1255 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %clk.i1255, align 4
  br label %to_clk.exit1258

to_clk.exit1258:                                  ; preds = %if.end.i1256, %to_clk.exit1250.to_clk.exit1258_crit_edge
  %retval.0.i1257 = phi ptr [ %252, %if.end.i1256 ], [ %call.i1251, %to_clk.exit1250.to_clk.exit1258_crit_edge ]
  store ptr %retval.0.i1257, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 148), align 4
  %253 = load ptr, ptr @ccm_base, align 4
  %add.ptr284 = getelementptr i8, ptr %253, i32 100
  %call.i1259 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr284, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1260 = icmp eq ptr %call.i1259, null
  %cmp.i.i1261 = icmp ugt ptr %call.i1259, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1262 = or i1 %tobool.not.i.i1260, %cmp.i.i1261
  br i1 %spec.select.i.i1262, label %to_clk.exit1258.to_clk.exit1266_crit_edge, label %if.end.i1264

to_clk.exit1258.to_clk.exit1266_crit_edge:        ; preds = %to_clk.exit1258
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1266

if.end.i1264:                                     ; preds = %to_clk.exit1258
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1263 = getelementptr inbounds %struct.clk_hw, ptr %call.i1259, i32 0, i32 1
  %254 = ptrtoint ptr %clk.i1263 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %clk.i1263, align 4
  br label %to_clk.exit1266

to_clk.exit1266:                                  ; preds = %if.end.i1264, %to_clk.exit1258.to_clk.exit1266_crit_edge
  %retval.0.i1265 = phi ptr [ %255, %if.end.i1264 ], [ %call.i1259, %to_clk.exit1258.to_clk.exit1266_crit_edge ]
  store ptr %retval.0.i1265, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 149), align 4
  %256 = load ptr, ptr @ccm_base, align 4
  %add.ptr287 = getelementptr i8, ptr %256, i32 68
  %call.i1267 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr287, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1268 = icmp eq ptr %call.i1267, null
  %cmp.i.i1269 = icmp ugt ptr %call.i1267, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1270 = or i1 %tobool.not.i.i1268, %cmp.i.i1269
  br i1 %spec.select.i.i1270, label %to_clk.exit1266.to_clk.exit1274_crit_edge, label %if.end.i1272

to_clk.exit1266.to_clk.exit1274_crit_edge:        ; preds = %to_clk.exit1266
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1274

if.end.i1272:                                     ; preds = %to_clk.exit1266
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1271 = getelementptr inbounds %struct.clk_hw, ptr %call.i1267, i32 0, i32 1
  %257 = ptrtoint ptr %clk.i1271 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %clk.i1271, align 4
  br label %to_clk.exit1274

to_clk.exit1274:                                  ; preds = %if.end.i1272, %to_clk.exit1266.to_clk.exit1274_crit_edge
  %retval.0.i1273 = phi ptr [ %258, %if.end.i1272 ], [ %call.i1267, %to_clk.exit1266.to_clk.exit1274_crit_edge ]
  store ptr %retval.0.i1273, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 45), align 4
  %259 = load ptr, ptr @ccm_base, align 4
  %add.ptr290 = getelementptr i8, ptr %259, i32 64
  %call.i1275 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr290, i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1276 = icmp eq ptr %call.i1275, null
  %cmp.i.i1277 = icmp ugt ptr %call.i1275, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1278 = or i1 %tobool.not.i.i1276, %cmp.i.i1277
  br i1 %spec.select.i.i1278, label %to_clk.exit1274.to_clk.exit1282_crit_edge, label %if.end.i1280

to_clk.exit1274.to_clk.exit1282_crit_edge:        ; preds = %to_clk.exit1274
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1282

if.end.i1280:                                     ; preds = %to_clk.exit1274
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1279 = getelementptr inbounds %struct.clk_hw, ptr %call.i1275, i32 0, i32 1
  %260 = ptrtoint ptr %clk.i1279 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %clk.i1279, align 4
  br label %to_clk.exit1282

to_clk.exit1282:                                  ; preds = %if.end.i1280, %to_clk.exit1274.to_clk.exit1282_crit_edge
  %retval.0.i1281 = phi ptr [ %261, %if.end.i1280 ], [ %call.i1275, %to_clk.exit1274.to_clk.exit1282_crit_edge ]
  store ptr %retval.0.i1281, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 39), align 4
  %262 = load ptr, ptr @ccm_base, align 4
  %add.ptr293 = getelementptr i8, ptr %262, i32 64
  %call.i1283 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr293, i8 noundef zeroext 16, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1284 = icmp eq ptr %call.i1283, null
  %cmp.i.i1285 = icmp ugt ptr %call.i1283, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1286 = or i1 %tobool.not.i.i1284, %cmp.i.i1285
  br i1 %spec.select.i.i1286, label %to_clk.exit1282.to_clk.exit1290_crit_edge, label %if.end.i1288

to_clk.exit1282.to_clk.exit1290_crit_edge:        ; preds = %to_clk.exit1282
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1290

if.end.i1288:                                     ; preds = %to_clk.exit1282
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1287 = getelementptr inbounds %struct.clk_hw, ptr %call.i1283, i32 0, i32 1
  %263 = ptrtoint ptr %clk.i1287 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %clk.i1287, align 4
  br label %to_clk.exit1290

to_clk.exit1290:                                  ; preds = %if.end.i1288, %to_clk.exit1282.to_clk.exit1290_crit_edge
  %retval.0.i1289 = phi ptr [ %264, %if.end.i1288 ], [ %call.i1283, %to_clk.exit1282.to_clk.exit1290_crit_edge ]
  store ptr %retval.0.i1289, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 40), align 4
  %265 = load ptr, ptr @ccm_base, align 4
  %add.ptr296 = getelementptr i8, ptr %265, i32 64
  %call.i1291 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr296, i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1292 = icmp eq ptr %call.i1291, null
  %cmp.i.i1293 = icmp ugt ptr %call.i1291, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1294 = or i1 %tobool.not.i.i1292, %cmp.i.i1293
  br i1 %spec.select.i.i1294, label %to_clk.exit1290.to_clk.exit1298_crit_edge, label %if.end.i1296

to_clk.exit1290.to_clk.exit1298_crit_edge:        ; preds = %to_clk.exit1290
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1298

if.end.i1296:                                     ; preds = %to_clk.exit1290
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1295 = getelementptr inbounds %struct.clk_hw, ptr %call.i1291, i32 0, i32 1
  %266 = ptrtoint ptr %clk.i1295 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %clk.i1295, align 4
  br label %to_clk.exit1298

to_clk.exit1298:                                  ; preds = %if.end.i1296, %to_clk.exit1290.to_clk.exit1298_crit_edge
  %retval.0.i1297 = phi ptr [ %267, %if.end.i1296 ], [ %call.i1291, %to_clk.exit1290.to_clk.exit1298_crit_edge ]
  store ptr %retval.0.i1297, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 41), align 4
  %268 = load ptr, ptr @ccm_base, align 4
  %add.ptr299 = getelementptr i8, ptr %268, i32 64
  %call.i1299 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr299, i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1300 = icmp eq ptr %call.i1299, null
  %cmp.i.i1301 = icmp ugt ptr %call.i1299, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1302 = or i1 %tobool.not.i.i1300, %cmp.i.i1301
  br i1 %spec.select.i.i1302, label %to_clk.exit1298.to_clk.exit1306_crit_edge, label %if.end.i1304

to_clk.exit1298.to_clk.exit1306_crit_edge:        ; preds = %to_clk.exit1298
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1306

if.end.i1304:                                     ; preds = %to_clk.exit1298
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1303 = getelementptr inbounds %struct.clk_hw, ptr %call.i1299, i32 0, i32 1
  %269 = ptrtoint ptr %clk.i1303 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %clk.i1303, align 4
  br label %to_clk.exit1306

to_clk.exit1306:                                  ; preds = %if.end.i1304, %to_clk.exit1298.to_clk.exit1306_crit_edge
  %retval.0.i1305 = phi ptr [ %270, %if.end.i1304 ], [ %call.i1299, %to_clk.exit1298.to_clk.exit1306_crit_edge ]
  store ptr %retval.0.i1305, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 42), align 4
  %271 = load ptr, ptr @ccm_base, align 4
  %add.ptr302 = getelementptr i8, ptr %271, i32 88
  %call.i1307 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr302, i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1308 = icmp eq ptr %call.i1307, null
  %cmp.i.i1309 = icmp ugt ptr %call.i1307, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1310 = or i1 %tobool.not.i.i1308, %cmp.i.i1309
  br i1 %spec.select.i.i1310, label %to_clk.exit1306.to_clk.exit1314_crit_edge, label %if.end.i1312

to_clk.exit1306.to_clk.exit1314_crit_edge:        ; preds = %to_clk.exit1306
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1314

if.end.i1312:                                     ; preds = %to_clk.exit1306
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1311 = getelementptr inbounds %struct.clk_hw, ptr %call.i1307, i32 0, i32 1
  %272 = ptrtoint ptr %clk.i1311 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %clk.i1311, align 4
  br label %to_clk.exit1314

to_clk.exit1314:                                  ; preds = %if.end.i1312, %to_clk.exit1306.to_clk.exit1314_crit_edge
  %retval.0.i1313 = phi ptr [ %273, %if.end.i1312 ], [ %call.i1307, %to_clk.exit1306.to_clk.exit1314_crit_edge ]
  store ptr %retval.0.i1313, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 43), align 4
  %274 = load ptr, ptr @ccm_base, align 4
  %add.ptr305 = getelementptr i8, ptr %274, i32 88
  %call.i1315 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr305, i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1316 = icmp eq ptr %call.i1315, null
  %cmp.i.i1317 = icmp ugt ptr %call.i1315, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1318 = or i1 %tobool.not.i.i1316, %cmp.i.i1317
  br i1 %spec.select.i.i1318, label %to_clk.exit1314.to_clk.exit1322_crit_edge, label %if.end.i1320

to_clk.exit1314.to_clk.exit1322_crit_edge:        ; preds = %to_clk.exit1314
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1322

if.end.i1320:                                     ; preds = %to_clk.exit1314
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1319 = getelementptr inbounds %struct.clk_hw, ptr %call.i1315, i32 0, i32 1
  %275 = ptrtoint ptr %clk.i1319 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %clk.i1319, align 4
  br label %to_clk.exit1322

to_clk.exit1322:                                  ; preds = %if.end.i1320, %to_clk.exit1314.to_clk.exit1322_crit_edge
  %retval.0.i1321 = phi ptr [ %276, %if.end.i1320 ], [ %call.i1315, %to_clk.exit1314.to_clk.exit1322_crit_edge ]
  store ptr %retval.0.i1321, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 44), align 4
  %277 = load ptr, ptr @ccm_base, align 4
  %add.ptr308 = getelementptr i8, ptr %277, i32 80
  %call.i1323 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr308, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1324 = icmp eq ptr %call.i1323, null
  %cmp.i.i1325 = icmp ugt ptr %call.i1323, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1326 = or i1 %tobool.not.i.i1324, %cmp.i.i1325
  br i1 %spec.select.i.i1326, label %to_clk.exit1322.to_clk.exit1330_crit_edge, label %if.end.i1328

to_clk.exit1322.to_clk.exit1330_crit_edge:        ; preds = %to_clk.exit1322
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1330

if.end.i1328:                                     ; preds = %to_clk.exit1322
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1327 = getelementptr inbounds %struct.clk_hw, ptr %call.i1323, i32 0, i32 1
  %278 = ptrtoint ptr %clk.i1327 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %clk.i1327, align 4
  br label %to_clk.exit1330

to_clk.exit1330:                                  ; preds = %if.end.i1328, %to_clk.exit1322.to_clk.exit1330_crit_edge
  %retval.0.i1329 = phi ptr [ %279, %if.end.i1328 ], [ %call.i1323, %to_clk.exit1322.to_clk.exit1330_crit_edge ]
  store ptr %retval.0.i1329, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 46), align 4
  %280 = load ptr, ptr @ccm_base, align 4
  %add.ptr311 = getelementptr i8, ptr %280, i32 80
  %call.i1331 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr311, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1332 = icmp eq ptr %call.i1331, null
  %cmp.i.i1333 = icmp ugt ptr %call.i1331, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1334 = or i1 %tobool.not.i.i1332, %cmp.i.i1333
  br i1 %spec.select.i.i1334, label %to_clk.exit1330.to_clk.exit1338_crit_edge, label %if.end.i1336

to_clk.exit1330.to_clk.exit1338_crit_edge:        ; preds = %to_clk.exit1330
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1338

if.end.i1336:                                     ; preds = %to_clk.exit1330
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1335 = getelementptr inbounds %struct.clk_hw, ptr %call.i1331, i32 0, i32 1
  %281 = ptrtoint ptr %clk.i1335 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %clk.i1335, align 4
  br label %to_clk.exit1338

to_clk.exit1338:                                  ; preds = %if.end.i1336, %to_clk.exit1330.to_clk.exit1338_crit_edge
  %retval.0.i1337 = phi ptr [ %282, %if.end.i1336 ], [ %call.i1331, %to_clk.exit1330.to_clk.exit1338_crit_edge ]
  store ptr %retval.0.i1337, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 47), align 4
  %283 = load ptr, ptr @ccm_base, align 4
  %add.ptr314 = getelementptr i8, ptr %283, i32 104
  %call.i1339 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr314, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1340 = icmp eq ptr %call.i1339, null
  %cmp.i.i1341 = icmp ugt ptr %call.i1339, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1342 = or i1 %tobool.not.i.i1340, %cmp.i.i1341
  br i1 %spec.select.i.i1342, label %to_clk.exit1338.to_clk.exit1346_crit_edge, label %if.end.i1344

to_clk.exit1338.to_clk.exit1346_crit_edge:        ; preds = %to_clk.exit1338
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1346

if.end.i1344:                                     ; preds = %to_clk.exit1338
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1343 = getelementptr inbounds %struct.clk_hw, ptr %call.i1339, i32 0, i32 1
  %284 = ptrtoint ptr %clk.i1343 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %clk.i1343, align 4
  br label %to_clk.exit1346

to_clk.exit1346:                                  ; preds = %if.end.i1344, %to_clk.exit1338.to_clk.exit1346_crit_edge
  %retval.0.i1345 = phi ptr [ %285, %if.end.i1344 ], [ %call.i1339, %to_clk.exit1338.to_clk.exit1346_crit_edge ]
  store ptr %retval.0.i1345, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 48), align 4
  %286 = load ptr, ptr @ccm_base, align 4
  %add.ptr317 = getelementptr i8, ptr %286, i32 104
  %call.i1347 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr317, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1348 = icmp eq ptr %call.i1347, null
  %cmp.i.i1349 = icmp ugt ptr %call.i1347, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1350 = or i1 %tobool.not.i.i1348, %cmp.i.i1349
  br i1 %spec.select.i.i1350, label %to_clk.exit1346.to_clk.exit1354_crit_edge, label %if.end.i1352

to_clk.exit1346.to_clk.exit1354_crit_edge:        ; preds = %to_clk.exit1346
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1354

if.end.i1352:                                     ; preds = %to_clk.exit1346
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1351 = getelementptr inbounds %struct.clk_hw, ptr %call.i1347, i32 0, i32 1
  %287 = ptrtoint ptr %clk.i1351 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %clk.i1351, align 4
  br label %to_clk.exit1354

to_clk.exit1354:                                  ; preds = %if.end.i1352, %to_clk.exit1346.to_clk.exit1354_crit_edge
  %retval.0.i1353 = phi ptr [ %288, %if.end.i1352 ], [ %call.i1347, %to_clk.exit1346.to_clk.exit1354_crit_edge ]
  store ptr %retval.0.i1353, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 49), align 4
  %289 = load ptr, ptr @ccm_base, align 4
  %add.ptr320 = getelementptr i8, ptr %289, i32 64
  %call.i1355 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr320, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1356 = icmp eq ptr %call.i1355, null
  %cmp.i.i1357 = icmp ugt ptr %call.i1355, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1358 = or i1 %tobool.not.i.i1356, %cmp.i.i1357
  br i1 %spec.select.i.i1358, label %to_clk.exit1354.to_clk.exit1362_crit_edge, label %if.end.i1360

to_clk.exit1354.to_clk.exit1362_crit_edge:        ; preds = %to_clk.exit1354
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1362

if.end.i1360:                                     ; preds = %to_clk.exit1354
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1359 = getelementptr inbounds %struct.clk_hw, ptr %call.i1355, i32 0, i32 1
  %290 = ptrtoint ptr %clk.i1359 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %clk.i1359, align 4
  br label %to_clk.exit1362

to_clk.exit1362:                                  ; preds = %if.end.i1360, %to_clk.exit1354.to_clk.exit1362_crit_edge
  %retval.0.i1361 = phi ptr [ %291, %if.end.i1360 ], [ %call.i1355, %to_clk.exit1354.to_clk.exit1362_crit_edge ]
  store ptr %retval.0.i1361, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 72), align 4
  %292 = load ptr, ptr @ccm_base, align 4
  %add.ptr323 = getelementptr i8, ptr %292, i32 64
  %call.i1363 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr323, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1364 = icmp eq ptr %call.i1363, null
  %cmp.i.i1365 = icmp ugt ptr %call.i1363, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1366 = or i1 %tobool.not.i.i1364, %cmp.i.i1365
  br i1 %spec.select.i.i1366, label %to_clk.exit1362.to_clk.exit1370_crit_edge, label %if.end.i1368

to_clk.exit1362.to_clk.exit1370_crit_edge:        ; preds = %to_clk.exit1362
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1370

if.end.i1368:                                     ; preds = %to_clk.exit1362
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1367 = getelementptr inbounds %struct.clk_hw, ptr %call.i1363, i32 0, i32 1
  %293 = ptrtoint ptr %clk.i1367 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %clk.i1367, align 4
  br label %to_clk.exit1370

to_clk.exit1370:                                  ; preds = %if.end.i1368, %to_clk.exit1362.to_clk.exit1370_crit_edge
  %retval.0.i1369 = phi ptr [ %294, %if.end.i1368 ], [ %call.i1363, %to_clk.exit1362.to_clk.exit1370_crit_edge ]
  store ptr %retval.0.i1369, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 73), align 4
  %295 = load ptr, ptr @ccm_base, align 4
  %add.ptr326 = getelementptr i8, ptr %295, i32 88
  %call.i1371 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr326, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1372 = icmp eq ptr %call.i1371, null
  %cmp.i.i1373 = icmp ugt ptr %call.i1371, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1374 = or i1 %tobool.not.i.i1372, %cmp.i.i1373
  br i1 %spec.select.i.i1374, label %to_clk.exit1370.to_clk.exit1378_crit_edge, label %if.end.i1376

to_clk.exit1370.to_clk.exit1378_crit_edge:        ; preds = %to_clk.exit1370
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1378

if.end.i1376:                                     ; preds = %to_clk.exit1370
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1375 = getelementptr inbounds %struct.clk_hw, ptr %call.i1371, i32 0, i32 1
  %296 = ptrtoint ptr %clk.i1375 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %clk.i1375, align 4
  br label %to_clk.exit1378

to_clk.exit1378:                                  ; preds = %if.end.i1376, %to_clk.exit1370.to_clk.exit1378_crit_edge
  %retval.0.i1377 = phi ptr [ %297, %if.end.i1376 ], [ %call.i1371, %to_clk.exit1370.to_clk.exit1378_crit_edge ]
  store ptr %retval.0.i1377, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 74), align 4
  %298 = load ptr, ptr @ccm_base, align 4
  %add.ptr329 = getelementptr i8, ptr %298, i32 88
  %call.i1379 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr329, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1380 = icmp eq ptr %call.i1379, null
  %cmp.i.i1381 = icmp ugt ptr %call.i1379, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1382 = or i1 %tobool.not.i.i1380, %cmp.i.i1381
  br i1 %spec.select.i.i1382, label %to_clk.exit1378.to_clk.exit1386_crit_edge, label %if.end.i1384

to_clk.exit1378.to_clk.exit1386_crit_edge:        ; preds = %to_clk.exit1378
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1386

if.end.i1384:                                     ; preds = %to_clk.exit1378
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1383 = getelementptr inbounds %struct.clk_hw, ptr %call.i1379, i32 0, i32 1
  %299 = ptrtoint ptr %clk.i1383 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %clk.i1383, align 4
  br label %to_clk.exit1386

to_clk.exit1386:                                  ; preds = %if.end.i1384, %to_clk.exit1378.to_clk.exit1386_crit_edge
  %retval.0.i1385 = phi ptr [ %300, %if.end.i1384 ], [ %call.i1379, %to_clk.exit1378.to_clk.exit1386_crit_edge ]
  store ptr %retval.0.i1385, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 75), align 4
  %301 = load ptr, ptr @ccm_base, align 4
  %add.ptr332 = getelementptr i8, ptr %301, i32 68
  %call.i1387 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr332, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1388 = icmp eq ptr %call.i1387, null
  %cmp.i.i1389 = icmp ugt ptr %call.i1387, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1390 = or i1 %tobool.not.i.i1388, %cmp.i.i1389
  br i1 %spec.select.i.i1390, label %to_clk.exit1386.to_clk.exit1394_crit_edge, label %if.end.i1392

to_clk.exit1386.to_clk.exit1394_crit_edge:        ; preds = %to_clk.exit1386
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1394

if.end.i1392:                                     ; preds = %to_clk.exit1386
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1391 = getelementptr inbounds %struct.clk_hw, ptr %call.i1387, i32 0, i32 1
  %302 = ptrtoint ptr %clk.i1391 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %clk.i1391, align 4
  br label %to_clk.exit1394

to_clk.exit1394:                                  ; preds = %if.end.i1392, %to_clk.exit1386.to_clk.exit1394_crit_edge
  %retval.0.i1393 = phi ptr [ %303, %if.end.i1392 ], [ %call.i1387, %to_clk.exit1386.to_clk.exit1394_crit_edge ]
  store ptr %retval.0.i1393, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 190), align 4
  %304 = load ptr, ptr @ccm_base, align 4
  %add.ptr335 = getelementptr i8, ptr %304, i32 68
  %call.i1395 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr335, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1396 = icmp eq ptr %call.i1395, null
  %cmp.i.i1397 = icmp ugt ptr %call.i1395, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1398 = or i1 %tobool.not.i.i1396, %cmp.i.i1397
  br i1 %spec.select.i.i1398, label %to_clk.exit1394.to_clk.exit1402_crit_edge, label %if.end.i1400

to_clk.exit1394.to_clk.exit1402_crit_edge:        ; preds = %to_clk.exit1394
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1402

if.end.i1400:                                     ; preds = %to_clk.exit1394
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1399 = getelementptr inbounds %struct.clk_hw, ptr %call.i1395, i32 0, i32 1
  %305 = ptrtoint ptr %clk.i1399 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %clk.i1399, align 4
  br label %to_clk.exit1402

to_clk.exit1402:                                  ; preds = %if.end.i1400, %to_clk.exit1394.to_clk.exit1402_crit_edge
  %retval.0.i1401 = phi ptr [ %306, %if.end.i1400 ], [ %call.i1395, %to_clk.exit1394.to_clk.exit1402_crit_edge ]
  store ptr %retval.0.i1401, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 76), align 4
  %307 = load ptr, ptr @ccm_base, align 4
  %add.ptr338 = getelementptr i8, ptr %307, i32 16
  %call.i1403 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.107, i8 noundef zeroext 4, ptr noundef nonnull @esdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr338, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1404 = icmp eq ptr %call.i1403, null
  %cmp.i.i1405 = icmp ugt ptr %call.i1403, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1406 = or i1 %tobool.not.i.i1404, %cmp.i.i1405
  br i1 %spec.select.i.i1406, label %to_clk.exit1402.to_clk.exit1410_crit_edge, label %if.end.i1408

to_clk.exit1402.to_clk.exit1410_crit_edge:        ; preds = %to_clk.exit1402
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1410

if.end.i1408:                                     ; preds = %to_clk.exit1402
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1407 = getelementptr inbounds %struct.clk_hw, ptr %call.i1403, i32 0, i32 1
  %308 = ptrtoint ptr %clk.i1407 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %clk.i1407, align 4
  br label %to_clk.exit1410

to_clk.exit1410:                                  ; preds = %if.end.i1408, %to_clk.exit1402.to_clk.exit1410_crit_edge
  %retval.0.i1409 = phi ptr [ %309, %if.end.i1408 ], [ %call.i1403, %to_clk.exit1402.to_clk.exit1410_crit_edge ]
  store ptr %retval.0.i1409, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 77), align 4
  %310 = load ptr, ptr @ccm_base, align 4
  %add.ptr341 = getelementptr i8, ptr %310, i32 24
  %call.i1411 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr341, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1412 = icmp eq ptr %call.i1411, null
  %cmp.i.i1413 = icmp ugt ptr %call.i1411, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1414 = or i1 %tobool.not.i.i1412, %cmp.i.i1413
  br i1 %spec.select.i.i1414, label %to_clk.exit1410.to_clk.exit1418_crit_edge, label %if.end.i1416

to_clk.exit1410.to_clk.exit1418_crit_edge:        ; preds = %to_clk.exit1410
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1418

if.end.i1416:                                     ; preds = %to_clk.exit1410
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1415 = getelementptr inbounds %struct.clk_hw, ptr %call.i1411, i32 0, i32 1
  %311 = ptrtoint ptr %clk.i1415 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %clk.i1415, align 4
  br label %to_clk.exit1418

to_clk.exit1418:                                  ; preds = %if.end.i1416, %to_clk.exit1410.to_clk.exit1418_crit_edge
  %retval.0.i1417 = phi ptr [ %312, %if.end.i1416 ], [ %call.i1411, %to_clk.exit1410.to_clk.exit1418_crit_edge ]
  store ptr %retval.0.i1417, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 78), align 4
  %313 = load ptr, ptr @ccm_base, align 4
  %add.ptr344 = getelementptr i8, ptr %313, i32 24
  %call.i1419 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.108, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr344, i8 noundef zeroext 16, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1420 = icmp eq ptr %call.i1419, null
  %cmp.i.i1421 = icmp ugt ptr %call.i1419, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1422 = or i1 %tobool.not.i.i1420, %cmp.i.i1421
  br i1 %spec.select.i.i1422, label %to_clk.exit1418.to_clk.exit1426_crit_edge, label %if.end.i1424

to_clk.exit1418.to_clk.exit1426_crit_edge:        ; preds = %to_clk.exit1418
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1426

if.end.i1424:                                     ; preds = %to_clk.exit1418
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1423 = getelementptr inbounds %struct.clk_hw, ptr %call.i1419, i32 0, i32 1
  %314 = ptrtoint ptr %clk.i1423 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %clk.i1423, align 4
  br label %to_clk.exit1426

to_clk.exit1426:                                  ; preds = %if.end.i1424, %to_clk.exit1418.to_clk.exit1426_crit_edge
  %retval.0.i1425 = phi ptr [ %315, %if.end.i1424 ], [ %call.i1419, %to_clk.exit1418.to_clk.exit1426_crit_edge ]
  store ptr %retval.0.i1425, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 79), align 4
  %316 = load ptr, ptr @ccm_base, align 4
  %add.ptr347 = getelementptr i8, ptr %316, i32 92
  %call.i1427 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109, i32 noundef 4, ptr noundef %add.ptr347, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1428 = icmp eq ptr %call.i1427, null
  %cmp.i.i1429 = icmp ugt ptr %call.i1427, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1430 = or i1 %tobool.not.i.i1428, %cmp.i.i1429
  br i1 %spec.select.i.i1430, label %to_clk.exit1426.to_clk.exit1434_crit_edge, label %if.end.i1432

to_clk.exit1426.to_clk.exit1434_crit_edge:        ; preds = %to_clk.exit1426
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1434

if.end.i1432:                                     ; preds = %to_clk.exit1426
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1431 = getelementptr inbounds %struct.clk_hw, ptr %call.i1427, i32 0, i32 1
  %317 = ptrtoint ptr %clk.i1431 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %clk.i1431, align 4
  br label %to_clk.exit1434

to_clk.exit1434:                                  ; preds = %if.end.i1432, %to_clk.exit1426.to_clk.exit1434_crit_edge
  %retval.0.i1433 = phi ptr [ %318, %if.end.i1432 ], [ %call.i1427, %to_clk.exit1426.to_clk.exit1434_crit_edge ]
  store ptr %retval.0.i1433, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 80), align 4
  %319 = load ptr, ptr @ccm_base, align 4
  %add.ptr350 = getelementptr i8, ptr %319, i32 16
  %call.i1435 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, i8 noundef zeroext 4, ptr noundef nonnull @esdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr350, i8 noundef zeroext 18, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1436 = icmp eq ptr %call.i1435, null
  %cmp.i.i1437 = icmp ugt ptr %call.i1435, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1438 = or i1 %tobool.not.i.i1436, %cmp.i.i1437
  br i1 %spec.select.i.i1438, label %to_clk.exit1434.to_clk.exit1442_crit_edge, label %if.end.i1440

to_clk.exit1434.to_clk.exit1442_crit_edge:        ; preds = %to_clk.exit1434
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1442

if.end.i1440:                                     ; preds = %to_clk.exit1434
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1439 = getelementptr inbounds %struct.clk_hw, ptr %call.i1435, i32 0, i32 1
  %320 = ptrtoint ptr %clk.i1439 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %clk.i1439, align 4
  br label %to_clk.exit1442

to_clk.exit1442:                                  ; preds = %if.end.i1440, %to_clk.exit1434.to_clk.exit1442_crit_edge
  %retval.0.i1441 = phi ptr [ %321, %if.end.i1440 ], [ %call.i1435, %to_clk.exit1434.to_clk.exit1442_crit_edge ]
  store ptr %retval.0.i1441, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 81), align 4
  %322 = load ptr, ptr @ccm_base, align 4
  %add.ptr353 = getelementptr i8, ptr %322, i32 24
  %call.i1443 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.111, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr353, i8 noundef zeroext 29, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1444 = icmp eq ptr %call.i1443, null
  %cmp.i.i1445 = icmp ugt ptr %call.i1443, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1446 = or i1 %tobool.not.i.i1444, %cmp.i.i1445
  br i1 %spec.select.i.i1446, label %to_clk.exit1442.to_clk.exit1450_crit_edge, label %if.end.i1448

to_clk.exit1442.to_clk.exit1450_crit_edge:        ; preds = %to_clk.exit1442
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1450

if.end.i1448:                                     ; preds = %to_clk.exit1442
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1447 = getelementptr inbounds %struct.clk_hw, ptr %call.i1443, i32 0, i32 1
  %323 = ptrtoint ptr %clk.i1447 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %clk.i1447, align 4
  br label %to_clk.exit1450

to_clk.exit1450:                                  ; preds = %if.end.i1448, %to_clk.exit1442.to_clk.exit1450_crit_edge
  %retval.0.i1449 = phi ptr [ %324, %if.end.i1448 ], [ %call.i1443, %to_clk.exit1442.to_clk.exit1450_crit_edge ]
  store ptr %retval.0.i1449, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 82), align 4
  %325 = load ptr, ptr @ccm_base, align 4
  %add.ptr356 = getelementptr i8, ptr %325, i32 24
  %call.i1451 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.112, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr356, i8 noundef zeroext 20, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1452 = icmp eq ptr %call.i1451, null
  %cmp.i.i1453 = icmp ugt ptr %call.i1451, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1454 = or i1 %tobool.not.i.i1452, %cmp.i.i1453
  br i1 %spec.select.i.i1454, label %to_clk.exit1450.to_clk.exit1458_crit_edge, label %if.end.i1456

to_clk.exit1450.to_clk.exit1458_crit_edge:        ; preds = %to_clk.exit1450
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1458

if.end.i1456:                                     ; preds = %to_clk.exit1450
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1455 = getelementptr inbounds %struct.clk_hw, ptr %call.i1451, i32 0, i32 1
  %326 = ptrtoint ptr %clk.i1455 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %clk.i1455, align 4
  br label %to_clk.exit1458

to_clk.exit1458:                                  ; preds = %if.end.i1456, %to_clk.exit1450.to_clk.exit1458_crit_edge
  %retval.0.i1457 = phi ptr [ %327, %if.end.i1456 ], [ %call.i1451, %to_clk.exit1450.to_clk.exit1458_crit_edge ]
  store ptr %retval.0.i1457, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 83), align 4
  %328 = load ptr, ptr @ccm_base, align 4
  %add.ptr359 = getelementptr i8, ptr %328, i32 92
  %call.i1459 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.113, i32 noundef 4, ptr noundef %add.ptr359, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1460 = icmp eq ptr %call.i1459, null
  %cmp.i.i1461 = icmp ugt ptr %call.i1459, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1462 = or i1 %tobool.not.i.i1460, %cmp.i.i1461
  br i1 %spec.select.i.i1462, label %to_clk.exit1458.to_clk.exit1466_crit_edge, label %if.end.i1464

to_clk.exit1458.to_clk.exit1466_crit_edge:        ; preds = %to_clk.exit1458
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1466

if.end.i1464:                                     ; preds = %to_clk.exit1458
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1463 = getelementptr inbounds %struct.clk_hw, ptr %call.i1459, i32 0, i32 1
  %329 = ptrtoint ptr %clk.i1463 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %clk.i1463, align 4
  br label %to_clk.exit1466

to_clk.exit1466:                                  ; preds = %if.end.i1464, %to_clk.exit1458.to_clk.exit1466_crit_edge
  %retval.0.i1465 = phi ptr [ %330, %if.end.i1464 ], [ %call.i1459, %to_clk.exit1458.to_clk.exit1466_crit_edge ]
  store ptr %retval.0.i1465, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 84), align 4
  %331 = load ptr, ptr @ccm_base, align 4
  %add.ptr362 = getelementptr i8, ptr %331, i32 32
  %call.i1467 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.115, i8 noundef zeroext 4, ptr noundef nonnull @ftm_ext_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr362, i8 noundef zeroext 6, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1468 = icmp eq ptr %call.i1467, null
  %cmp.i.i1469 = icmp ugt ptr %call.i1467, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1470 = or i1 %tobool.not.i.i1468, %cmp.i.i1469
  br i1 %spec.select.i.i1470, label %to_clk.exit1466.to_clk.exit1474_crit_edge, label %if.end.i1472

to_clk.exit1466.to_clk.exit1474_crit_edge:        ; preds = %to_clk.exit1466
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1474

if.end.i1472:                                     ; preds = %to_clk.exit1466
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1471 = getelementptr inbounds %struct.clk_hw, ptr %call.i1467, i32 0, i32 1
  %332 = ptrtoint ptr %clk.i1471 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %clk.i1471, align 4
  br label %to_clk.exit1474

to_clk.exit1474:                                  ; preds = %if.end.i1472, %to_clk.exit1466.to_clk.exit1474_crit_edge
  %retval.0.i1473 = phi ptr [ %333, %if.end.i1472 ], [ %call.i1467, %to_clk.exit1466.to_clk.exit1474_crit_edge ]
  store ptr %retval.0.i1473, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 50), align 4
  %334 = load ptr, ptr @ccm_base, align 4
  %add.ptr365 = getelementptr i8, ptr %334, i32 32
  %call.i1475 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.116, i8 noundef zeroext 2, ptr noundef nonnull @ftm_fix_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr365, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1476 = icmp eq ptr %call.i1475, null
  %cmp.i.i1477 = icmp ugt ptr %call.i1475, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1478 = or i1 %tobool.not.i.i1476, %cmp.i.i1477
  br i1 %spec.select.i.i1478, label %to_clk.exit1474.to_clk.exit1482_crit_edge, label %if.end.i1480

to_clk.exit1474.to_clk.exit1482_crit_edge:        ; preds = %to_clk.exit1474
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1482

if.end.i1480:                                     ; preds = %to_clk.exit1474
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1479 = getelementptr inbounds %struct.clk_hw, ptr %call.i1475, i32 0, i32 1
  %335 = ptrtoint ptr %clk.i1479 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %clk.i1479, align 4
  br label %to_clk.exit1482

to_clk.exit1482:                                  ; preds = %if.end.i1480, %to_clk.exit1474.to_clk.exit1482_crit_edge
  %retval.0.i1481 = phi ptr [ %336, %if.end.i1480 ], [ %call.i1475, %to_clk.exit1474.to_clk.exit1482_crit_edge ]
  store ptr %retval.0.i1481, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 51), align 4
  %337 = load ptr, ptr @ccm_base, align 4
  %add.ptr368 = getelementptr i8, ptr %337, i32 20
  %call.i1483 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr368, i8 noundef zeroext 25, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1484 = icmp eq ptr %call.i1483, null
  %cmp.i.i1485 = icmp ugt ptr %call.i1483, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1486 = or i1 %tobool.not.i.i1484, %cmp.i.i1485
  br i1 %spec.select.i.i1486, label %to_clk.exit1482.to_clk.exit1490_crit_edge, label %if.end.i1488

to_clk.exit1482.to_clk.exit1490_crit_edge:        ; preds = %to_clk.exit1482
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1490

if.end.i1488:                                     ; preds = %to_clk.exit1482
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1487 = getelementptr inbounds %struct.clk_hw, ptr %call.i1483, i32 0, i32 1
  %338 = ptrtoint ptr %clk.i1487 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %clk.i1487, align 4
  br label %to_clk.exit1490

to_clk.exit1490:                                  ; preds = %if.end.i1488, %to_clk.exit1482.to_clk.exit1490_crit_edge
  %retval.0.i1489 = phi ptr [ %339, %if.end.i1488 ], [ %call.i1483, %to_clk.exit1482.to_clk.exit1490_crit_edge ]
  store ptr %retval.0.i1489, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 52), align 4
  %340 = load ptr, ptr @ccm_base, align 4
  %add.ptr371 = getelementptr i8, ptr %340, i32 32
  %call.i1491 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.118, i8 noundef zeroext 4, ptr noundef nonnull @ftm_ext_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr371, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1492 = icmp eq ptr %call.i1491, null
  %cmp.i.i1493 = icmp ugt ptr %call.i1491, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1494 = or i1 %tobool.not.i.i1492, %cmp.i.i1493
  br i1 %spec.select.i.i1494, label %to_clk.exit1490.to_clk.exit1498_crit_edge, label %if.end.i1496

to_clk.exit1490.to_clk.exit1498_crit_edge:        ; preds = %to_clk.exit1490
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1498

if.end.i1496:                                     ; preds = %to_clk.exit1490
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1495 = getelementptr inbounds %struct.clk_hw, ptr %call.i1491, i32 0, i32 1
  %341 = ptrtoint ptr %clk.i1495 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %clk.i1495, align 4
  br label %to_clk.exit1498

to_clk.exit1498:                                  ; preds = %if.end.i1496, %to_clk.exit1490.to_clk.exit1498_crit_edge
  %retval.0.i1497 = phi ptr [ %342, %if.end.i1496 ], [ %call.i1491, %to_clk.exit1490.to_clk.exit1498_crit_edge ]
  store ptr %retval.0.i1497, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 53), align 4
  %343 = load ptr, ptr @ccm_base, align 4
  %add.ptr374 = getelementptr i8, ptr %343, i32 32
  %call.i1499 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.119, i8 noundef zeroext 2, ptr noundef nonnull @ftm_fix_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr374, i8 noundef zeroext 15, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1500 = icmp eq ptr %call.i1499, null
  %cmp.i.i1501 = icmp ugt ptr %call.i1499, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1502 = or i1 %tobool.not.i.i1500, %cmp.i.i1501
  br i1 %spec.select.i.i1502, label %to_clk.exit1498.to_clk.exit1506_crit_edge, label %if.end.i1504

to_clk.exit1498.to_clk.exit1506_crit_edge:        ; preds = %to_clk.exit1498
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1506

if.end.i1504:                                     ; preds = %to_clk.exit1498
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1503 = getelementptr inbounds %struct.clk_hw, ptr %call.i1499, i32 0, i32 1
  %344 = ptrtoint ptr %clk.i1503 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %clk.i1503, align 4
  br label %to_clk.exit1506

to_clk.exit1506:                                  ; preds = %if.end.i1504, %to_clk.exit1498.to_clk.exit1506_crit_edge
  %retval.0.i1505 = phi ptr [ %345, %if.end.i1504 ], [ %call.i1499, %to_clk.exit1498.to_clk.exit1506_crit_edge ]
  store ptr %retval.0.i1505, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 54), align 4
  %346 = load ptr, ptr @ccm_base, align 4
  %add.ptr377 = getelementptr i8, ptr %346, i32 20
  %call.i1507 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr377, i8 noundef zeroext 26, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1508 = icmp eq ptr %call.i1507, null
  %cmp.i.i1509 = icmp ugt ptr %call.i1507, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1510 = or i1 %tobool.not.i.i1508, %cmp.i.i1509
  br i1 %spec.select.i.i1510, label %to_clk.exit1506.to_clk.exit1514_crit_edge, label %if.end.i1512

to_clk.exit1506.to_clk.exit1514_crit_edge:        ; preds = %to_clk.exit1506
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1514

if.end.i1512:                                     ; preds = %to_clk.exit1506
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1511 = getelementptr inbounds %struct.clk_hw, ptr %call.i1507, i32 0, i32 1
  %347 = ptrtoint ptr %clk.i1511 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %clk.i1511, align 4
  br label %to_clk.exit1514

to_clk.exit1514:                                  ; preds = %if.end.i1512, %to_clk.exit1506.to_clk.exit1514_crit_edge
  %retval.0.i1513 = phi ptr [ %348, %if.end.i1512 ], [ %call.i1507, %to_clk.exit1506.to_clk.exit1514_crit_edge ]
  store ptr %retval.0.i1513, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 55), align 4
  %349 = load ptr, ptr @ccm_base, align 4
  %add.ptr380 = getelementptr i8, ptr %349, i32 32
  %call.i1515 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.121, i8 noundef zeroext 4, ptr noundef nonnull @ftm_ext_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr380, i8 noundef zeroext 10, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1516 = icmp eq ptr %call.i1515, null
  %cmp.i.i1517 = icmp ugt ptr %call.i1515, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1518 = or i1 %tobool.not.i.i1516, %cmp.i.i1517
  br i1 %spec.select.i.i1518, label %to_clk.exit1514.to_clk.exit1522_crit_edge, label %if.end.i1520

to_clk.exit1514.to_clk.exit1522_crit_edge:        ; preds = %to_clk.exit1514
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1522

if.end.i1520:                                     ; preds = %to_clk.exit1514
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1519 = getelementptr inbounds %struct.clk_hw, ptr %call.i1515, i32 0, i32 1
  %350 = ptrtoint ptr %clk.i1519 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %clk.i1519, align 4
  br label %to_clk.exit1522

to_clk.exit1522:                                  ; preds = %if.end.i1520, %to_clk.exit1514.to_clk.exit1522_crit_edge
  %retval.0.i1521 = phi ptr [ %351, %if.end.i1520 ], [ %call.i1515, %to_clk.exit1514.to_clk.exit1522_crit_edge ]
  store ptr %retval.0.i1521, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 56), align 4
  %352 = load ptr, ptr @ccm_base, align 4
  %add.ptr383 = getelementptr i8, ptr %352, i32 32
  %call.i1523 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.122, i8 noundef zeroext 2, ptr noundef nonnull @ftm_fix_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr383, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1524 = icmp eq ptr %call.i1523, null
  %cmp.i.i1525 = icmp ugt ptr %call.i1523, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1526 = or i1 %tobool.not.i.i1524, %cmp.i.i1525
  br i1 %spec.select.i.i1526, label %to_clk.exit1522.to_clk.exit1530_crit_edge, label %if.end.i1528

to_clk.exit1522.to_clk.exit1530_crit_edge:        ; preds = %to_clk.exit1522
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1530

if.end.i1528:                                     ; preds = %to_clk.exit1522
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1527 = getelementptr inbounds %struct.clk_hw, ptr %call.i1523, i32 0, i32 1
  %353 = ptrtoint ptr %clk.i1527 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %clk.i1527, align 4
  br label %to_clk.exit1530

to_clk.exit1530:                                  ; preds = %if.end.i1528, %to_clk.exit1522.to_clk.exit1530_crit_edge
  %retval.0.i1529 = phi ptr [ %354, %if.end.i1528 ], [ %call.i1523, %to_clk.exit1522.to_clk.exit1530_crit_edge ]
  store ptr %retval.0.i1529, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 57), align 4
  %355 = load ptr, ptr @ccm_base, align 4
  %add.ptr386 = getelementptr i8, ptr %355, i32 20
  %call.i1531 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr386, i8 noundef zeroext 27, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1532 = icmp eq ptr %call.i1531, null
  %cmp.i.i1533 = icmp ugt ptr %call.i1531, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1534 = or i1 %tobool.not.i.i1532, %cmp.i.i1533
  br i1 %spec.select.i.i1534, label %to_clk.exit1530.to_clk.exit1538_crit_edge, label %if.end.i1536

to_clk.exit1530.to_clk.exit1538_crit_edge:        ; preds = %to_clk.exit1530
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1538

if.end.i1536:                                     ; preds = %to_clk.exit1530
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1535 = getelementptr inbounds %struct.clk_hw, ptr %call.i1531, i32 0, i32 1
  %356 = ptrtoint ptr %clk.i1535 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %clk.i1535, align 4
  br label %to_clk.exit1538

to_clk.exit1538:                                  ; preds = %if.end.i1536, %to_clk.exit1530.to_clk.exit1538_crit_edge
  %retval.0.i1537 = phi ptr [ %357, %if.end.i1536 ], [ %call.i1531, %to_clk.exit1530.to_clk.exit1538_crit_edge ]
  store ptr %retval.0.i1537, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 58), align 4
  %358 = load ptr, ptr @ccm_base, align 4
  %add.ptr389 = getelementptr i8, ptr %358, i32 32
  %call.i1539 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.124, i8 noundef zeroext 4, ptr noundef nonnull @ftm_ext_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr389, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1540 = icmp eq ptr %call.i1539, null
  %cmp.i.i1541 = icmp ugt ptr %call.i1539, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1542 = or i1 %tobool.not.i.i1540, %cmp.i.i1541
  br i1 %spec.select.i.i1542, label %to_clk.exit1538.to_clk.exit1546_crit_edge, label %if.end.i1544

to_clk.exit1538.to_clk.exit1546_crit_edge:        ; preds = %to_clk.exit1538
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1546

if.end.i1544:                                     ; preds = %to_clk.exit1538
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1543 = getelementptr inbounds %struct.clk_hw, ptr %call.i1539, i32 0, i32 1
  %359 = ptrtoint ptr %clk.i1543 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %clk.i1543, align 4
  br label %to_clk.exit1546

to_clk.exit1546:                                  ; preds = %if.end.i1544, %to_clk.exit1538.to_clk.exit1546_crit_edge
  %retval.0.i1545 = phi ptr [ %360, %if.end.i1544 ], [ %call.i1539, %to_clk.exit1538.to_clk.exit1546_crit_edge ]
  store ptr %retval.0.i1545, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 59), align 4
  %361 = load ptr, ptr @ccm_base, align 4
  %add.ptr392 = getelementptr i8, ptr %361, i32 32
  %call.i1547 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.125, i8 noundef zeroext 2, ptr noundef nonnull @ftm_fix_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr392, i8 noundef zeroext 17, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1548 = icmp eq ptr %call.i1547, null
  %cmp.i.i1549 = icmp ugt ptr %call.i1547, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1550 = or i1 %tobool.not.i.i1548, %cmp.i.i1549
  br i1 %spec.select.i.i1550, label %to_clk.exit1546.to_clk.exit1554_crit_edge, label %if.end.i1552

to_clk.exit1546.to_clk.exit1554_crit_edge:        ; preds = %to_clk.exit1546
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1554

if.end.i1552:                                     ; preds = %to_clk.exit1546
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1551 = getelementptr inbounds %struct.clk_hw, ptr %call.i1547, i32 0, i32 1
  %362 = ptrtoint ptr %clk.i1551 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %clk.i1551, align 4
  br label %to_clk.exit1554

to_clk.exit1554:                                  ; preds = %if.end.i1552, %to_clk.exit1546.to_clk.exit1554_crit_edge
  %retval.0.i1553 = phi ptr [ %363, %if.end.i1552 ], [ %call.i1547, %to_clk.exit1546.to_clk.exit1554_crit_edge ]
  store ptr %retval.0.i1553, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 60), align 4
  %364 = load ptr, ptr @ccm_base, align 4
  %add.ptr395 = getelementptr i8, ptr %364, i32 20
  %call.i1555 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr395, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1556 = icmp eq ptr %call.i1555, null
  %cmp.i.i1557 = icmp ugt ptr %call.i1555, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1558 = or i1 %tobool.not.i.i1556, %cmp.i.i1557
  br i1 %spec.select.i.i1558, label %to_clk.exit1554.to_clk.exit1562_crit_edge, label %if.end.i1560

to_clk.exit1554.to_clk.exit1562_crit_edge:        ; preds = %to_clk.exit1554
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1562

if.end.i1560:                                     ; preds = %to_clk.exit1554
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1559 = getelementptr inbounds %struct.clk_hw, ptr %call.i1555, i32 0, i32 1
  %365 = ptrtoint ptr %clk.i1559 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %clk.i1559, align 4
  br label %to_clk.exit1562

to_clk.exit1562:                                  ; preds = %if.end.i1560, %to_clk.exit1554.to_clk.exit1562_crit_edge
  %retval.0.i1561 = phi ptr [ %366, %if.end.i1560 ], [ %call.i1555, %to_clk.exit1554.to_clk.exit1562_crit_edge ]
  store ptr %retval.0.i1561, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 61), align 4
  %367 = load ptr, ptr @ccm_base, align 4
  %add.ptr398 = getelementptr i8, ptr %367, i32 68
  %call.i1563 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr398, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1564 = icmp eq ptr %call.i1563, null
  %cmp.i.i1565 = icmp ugt ptr %call.i1563, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1566 = or i1 %tobool.not.i.i1564, %cmp.i.i1565
  br i1 %spec.select.i.i1566, label %to_clk.exit1562.to_clk.exit1570_crit_edge, label %if.end.i1568

to_clk.exit1562.to_clk.exit1570_crit_edge:        ; preds = %to_clk.exit1562
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1570

if.end.i1568:                                     ; preds = %to_clk.exit1562
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1567 = getelementptr inbounds %struct.clk_hw, ptr %call.i1563, i32 0, i32 1
  %368 = ptrtoint ptr %clk.i1567 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %clk.i1567, align 4
  br label %to_clk.exit1570

to_clk.exit1570:                                  ; preds = %if.end.i1568, %to_clk.exit1562.to_clk.exit1570_crit_edge
  %retval.0.i1569 = phi ptr [ %369, %if.end.i1568 ], [ %call.i1563, %to_clk.exit1562.to_clk.exit1570_crit_edge ]
  store ptr %retval.0.i1569, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 62), align 4
  %370 = load ptr, ptr @ccm_base, align 4
  %add.ptr401 = getelementptr i8, ptr %370, i32 68
  %call.i1571 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr401, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1572 = icmp eq ptr %call.i1571, null
  %cmp.i.i1573 = icmp ugt ptr %call.i1571, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1574 = or i1 %tobool.not.i.i1572, %cmp.i.i1573
  br i1 %spec.select.i.i1574, label %to_clk.exit1570.to_clk.exit1578_crit_edge, label %if.end.i1576

to_clk.exit1570.to_clk.exit1578_crit_edge:        ; preds = %to_clk.exit1570
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1578

if.end.i1576:                                     ; preds = %to_clk.exit1570
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1575 = getelementptr inbounds %struct.clk_hw, ptr %call.i1571, i32 0, i32 1
  %371 = ptrtoint ptr %clk.i1575 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %clk.i1575, align 4
  br label %to_clk.exit1578

to_clk.exit1578:                                  ; preds = %if.end.i1576, %to_clk.exit1570.to_clk.exit1578_crit_edge
  %retval.0.i1577 = phi ptr [ %372, %if.end.i1576 ], [ %call.i1571, %to_clk.exit1570.to_clk.exit1578_crit_edge ]
  store ptr %retval.0.i1577, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 63), align 4
  %373 = load ptr, ptr @ccm_base, align 4
  %add.ptr404 = getelementptr i8, ptr %373, i32 92
  %call.i1579 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr404, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1580 = icmp eq ptr %call.i1579, null
  %cmp.i.i1581 = icmp ugt ptr %call.i1579, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1582 = or i1 %tobool.not.i.i1580, %cmp.i.i1581
  br i1 %spec.select.i.i1582, label %to_clk.exit1578.to_clk.exit1586_crit_edge, label %if.end.i1584

to_clk.exit1578.to_clk.exit1586_crit_edge:        ; preds = %to_clk.exit1578
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1586

if.end.i1584:                                     ; preds = %to_clk.exit1578
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1583 = getelementptr inbounds %struct.clk_hw, ptr %call.i1579, i32 0, i32 1
  %374 = ptrtoint ptr %clk.i1583 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %clk.i1583, align 4
  br label %to_clk.exit1586

to_clk.exit1586:                                  ; preds = %if.end.i1584, %to_clk.exit1578.to_clk.exit1586_crit_edge
  %retval.0.i1585 = phi ptr [ %375, %if.end.i1584 ], [ %call.i1579, %to_clk.exit1578.to_clk.exit1586_crit_edge ]
  store ptr %retval.0.i1585, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 64), align 4
  %376 = load ptr, ptr @ccm_base, align 4
  %add.ptr407 = getelementptr i8, ptr %376, i32 92
  %call.i1587 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr407, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1588 = icmp eq ptr %call.i1587, null
  %cmp.i.i1589 = icmp ugt ptr %call.i1587, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1590 = or i1 %tobool.not.i.i1588, %cmp.i.i1589
  br i1 %spec.select.i.i1590, label %to_clk.exit1586.to_clk.exit1594_crit_edge, label %if.end.i1592

to_clk.exit1586.to_clk.exit1594_crit_edge:        ; preds = %to_clk.exit1586
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1594

if.end.i1592:                                     ; preds = %to_clk.exit1586
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1591 = getelementptr inbounds %struct.clk_hw, ptr %call.i1587, i32 0, i32 1
  %377 = ptrtoint ptr %clk.i1591 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %clk.i1591, align 4
  br label %to_clk.exit1594

to_clk.exit1594:                                  ; preds = %if.end.i1592, %to_clk.exit1586.to_clk.exit1594_crit_edge
  %retval.0.i1593 = phi ptr [ %378, %if.end.i1592 ], [ %call.i1587, %to_clk.exit1586.to_clk.exit1594_crit_edge ]
  store ptr %retval.0.i1593, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 65), align 4
  %379 = load ptr, ptr @ccm_base, align 4
  %add.ptr410 = getelementptr i8, ptr %379, i32 16
  %call.i1595 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.131, i8 noundef zeroext 2, ptr noundef nonnull @dcu_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr410, i8 noundef zeroext 28, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1596 = icmp eq ptr %call.i1595, null
  %cmp.i.i1597 = icmp ugt ptr %call.i1595, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1598 = or i1 %tobool.not.i.i1596, %cmp.i.i1597
  br i1 %spec.select.i.i1598, label %to_clk.exit1594.to_clk.exit1602_crit_edge, label %if.end.i1600

to_clk.exit1594.to_clk.exit1602_crit_edge:        ; preds = %to_clk.exit1594
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1602

if.end.i1600:                                     ; preds = %to_clk.exit1594
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1599 = getelementptr inbounds %struct.clk_hw, ptr %call.i1595, i32 0, i32 1
  %380 = ptrtoint ptr %clk.i1599 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %clk.i1599, align 4
  br label %to_clk.exit1602

to_clk.exit1602:                                  ; preds = %if.end.i1600, %to_clk.exit1594.to_clk.exit1602_crit_edge
  %retval.0.i1601 = phi ptr [ %381, %if.end.i1600 ], [ %call.i1595, %to_clk.exit1594.to_clk.exit1602_crit_edge ]
  store ptr %retval.0.i1601, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 85), align 4
  %382 = load ptr, ptr @ccm_base, align 4
  %add.ptr413 = getelementptr i8, ptr %382, i32 28
  %call.i1603 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.131, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr413, i8 noundef zeroext 19, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1604 = icmp eq ptr %call.i1603, null
  %cmp.i.i1605 = icmp ugt ptr %call.i1603, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1606 = or i1 %tobool.not.i.i1604, %cmp.i.i1605
  br i1 %spec.select.i.i1606, label %to_clk.exit1602.to_clk.exit1610_crit_edge, label %if.end.i1608

to_clk.exit1602.to_clk.exit1610_crit_edge:        ; preds = %to_clk.exit1602
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1610

if.end.i1608:                                     ; preds = %to_clk.exit1602
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1607 = getelementptr inbounds %struct.clk_hw, ptr %call.i1603, i32 0, i32 1
  %383 = ptrtoint ptr %clk.i1607 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %clk.i1607, align 4
  br label %to_clk.exit1610

to_clk.exit1610:                                  ; preds = %if.end.i1608, %to_clk.exit1602.to_clk.exit1610_crit_edge
  %retval.0.i1609 = phi ptr [ %384, %if.end.i1608 ], [ %call.i1603, %to_clk.exit1602.to_clk.exit1610_crit_edge ]
  store ptr %retval.0.i1609, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 86), align 4
  %385 = load ptr, ptr @ccm_base, align 4
  %add.ptr416 = getelementptr i8, ptr %385, i32 28
  %call.i1611 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.132, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr416, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1612 = icmp eq ptr %call.i1611, null
  %cmp.i.i1613 = icmp ugt ptr %call.i1611, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1614 = or i1 %tobool.not.i.i1612, %cmp.i.i1613
  br i1 %spec.select.i.i1614, label %to_clk.exit1610.to_clk.exit1618_crit_edge, label %if.end.i1616

to_clk.exit1610.to_clk.exit1618_crit_edge:        ; preds = %to_clk.exit1610
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1618

if.end.i1616:                                     ; preds = %to_clk.exit1610
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1615 = getelementptr inbounds %struct.clk_hw, ptr %call.i1611, i32 0, i32 1
  %386 = ptrtoint ptr %clk.i1615 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %clk.i1615, align 4
  br label %to_clk.exit1618

to_clk.exit1618:                                  ; preds = %if.end.i1616, %to_clk.exit1610.to_clk.exit1618_crit_edge
  %retval.0.i1617 = phi ptr [ %387, %if.end.i1616 ], [ %call.i1611, %to_clk.exit1610.to_clk.exit1618_crit_edge ]
  store ptr %retval.0.i1617, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 87), align 4
  %388 = load ptr, ptr @ccm_base, align 4
  %add.ptr419 = getelementptr i8, ptr %388, i32 76
  %call.i1619 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr419, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1620 = icmp eq ptr %call.i1619, null
  %cmp.i.i1621 = icmp ugt ptr %call.i1619, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1622 = or i1 %tobool.not.i.i1620, %cmp.i.i1621
  br i1 %spec.select.i.i1622, label %to_clk.exit1618.to_clk.exit1626_crit_edge, label %if.end.i1624

to_clk.exit1618.to_clk.exit1626_crit_edge:        ; preds = %to_clk.exit1618
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1626

if.end.i1624:                                     ; preds = %to_clk.exit1618
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1623 = getelementptr inbounds %struct.clk_hw, ptr %call.i1619, i32 0, i32 1
  %389 = ptrtoint ptr %clk.i1623 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %clk.i1623, align 4
  br label %to_clk.exit1626

to_clk.exit1626:                                  ; preds = %if.end.i1624, %to_clk.exit1618.to_clk.exit1626_crit_edge
  %retval.0.i1625 = phi ptr [ %390, %if.end.i1624 ], [ %call.i1619, %to_clk.exit1618.to_clk.exit1626_crit_edge ]
  store ptr %retval.0.i1625, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 88), align 4
  %391 = load ptr, ptr @ccm_base, align 4
  %add.ptr422 = getelementptr i8, ptr %391, i32 16
  %call.i1627 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.135, i8 noundef zeroext 2, ptr noundef nonnull @dcu_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr422, i8 noundef zeroext 29, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1628 = icmp eq ptr %call.i1627, null
  %cmp.i.i1629 = icmp ugt ptr %call.i1627, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1630 = or i1 %tobool.not.i.i1628, %cmp.i.i1629
  br i1 %spec.select.i.i1630, label %to_clk.exit1626.to_clk.exit1634_crit_edge, label %if.end.i1632

to_clk.exit1626.to_clk.exit1634_crit_edge:        ; preds = %to_clk.exit1626
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1634

if.end.i1632:                                     ; preds = %to_clk.exit1626
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1631 = getelementptr inbounds %struct.clk_hw, ptr %call.i1627, i32 0, i32 1
  %392 = ptrtoint ptr %clk.i1631 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %clk.i1631, align 4
  br label %to_clk.exit1634

to_clk.exit1634:                                  ; preds = %if.end.i1632, %to_clk.exit1626.to_clk.exit1634_crit_edge
  %retval.0.i1633 = phi ptr [ %393, %if.end.i1632 ], [ %call.i1627, %to_clk.exit1626.to_clk.exit1634_crit_edge ]
  store ptr %retval.0.i1633, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 89), align 4
  %394 = load ptr, ptr @ccm_base, align 4
  %add.ptr425 = getelementptr i8, ptr %394, i32 28
  %call.i1635 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.135, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr425, i8 noundef zeroext 23, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1636 = icmp eq ptr %call.i1635, null
  %cmp.i.i1637 = icmp ugt ptr %call.i1635, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1638 = or i1 %tobool.not.i.i1636, %cmp.i.i1637
  br i1 %spec.select.i.i1638, label %to_clk.exit1634.to_clk.exit1642_crit_edge, label %if.end.i1640

to_clk.exit1634.to_clk.exit1642_crit_edge:        ; preds = %to_clk.exit1634
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1642

if.end.i1640:                                     ; preds = %to_clk.exit1634
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1639 = getelementptr inbounds %struct.clk_hw, ptr %call.i1635, i32 0, i32 1
  %395 = ptrtoint ptr %clk.i1639 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %clk.i1639, align 4
  br label %to_clk.exit1642

to_clk.exit1642:                                  ; preds = %if.end.i1640, %to_clk.exit1634.to_clk.exit1642_crit_edge
  %retval.0.i1641 = phi ptr [ %396, %if.end.i1640 ], [ %call.i1635, %to_clk.exit1634.to_clk.exit1642_crit_edge ]
  store ptr %retval.0.i1641, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 90), align 4
  %397 = load ptr, ptr @ccm_base, align 4
  %add.ptr428 = getelementptr i8, ptr %397, i32 28
  %call.i1643 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.136, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr428, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1644 = icmp eq ptr %call.i1643, null
  %cmp.i.i1645 = icmp ugt ptr %call.i1643, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1646 = or i1 %tobool.not.i.i1644, %cmp.i.i1645
  br i1 %spec.select.i.i1646, label %to_clk.exit1642.to_clk.exit1650_crit_edge, label %if.end.i1648

to_clk.exit1642.to_clk.exit1650_crit_edge:        ; preds = %to_clk.exit1642
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1650

if.end.i1648:                                     ; preds = %to_clk.exit1642
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1647 = getelementptr inbounds %struct.clk_hw, ptr %call.i1643, i32 0, i32 1
  %398 = ptrtoint ptr %clk.i1647 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %clk.i1647, align 4
  br label %to_clk.exit1650

to_clk.exit1650:                                  ; preds = %if.end.i1648, %to_clk.exit1642.to_clk.exit1650_crit_edge
  %retval.0.i1649 = phi ptr [ %399, %if.end.i1648 ], [ %call.i1643, %to_clk.exit1642.to_clk.exit1650_crit_edge ]
  store ptr %retval.0.i1649, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 91), align 4
  %400 = load ptr, ptr @ccm_base, align 4
  %add.ptr431 = getelementptr i8, ptr %400, i32 100
  %call.i1651 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr431, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1652 = icmp eq ptr %call.i1651, null
  %cmp.i.i1653 = icmp ugt ptr %call.i1651, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1654 = or i1 %tobool.not.i.i1652, %cmp.i.i1653
  br i1 %spec.select.i.i1654, label %to_clk.exit1650.to_clk.exit1658_crit_edge, label %if.end.i1656

to_clk.exit1650.to_clk.exit1658_crit_edge:        ; preds = %to_clk.exit1650
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1658

if.end.i1656:                                     ; preds = %to_clk.exit1650
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1655 = getelementptr inbounds %struct.clk_hw, ptr %call.i1651, i32 0, i32 1
  %401 = ptrtoint ptr %clk.i1655 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %clk.i1655, align 4
  br label %to_clk.exit1658

to_clk.exit1658:                                  ; preds = %if.end.i1656, %to_clk.exit1650.to_clk.exit1658_crit_edge
  %retval.0.i1657 = phi ptr [ %402, %if.end.i1656 ], [ %call.i1651, %to_clk.exit1650.to_clk.exit1658_crit_edge ]
  store ptr %retval.0.i1657, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 92), align 4
  %403 = load ptr, ptr @ccm_base, align 4
  %add.ptr434 = getelementptr i8, ptr %403, i32 68
  %call.i1659 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.59, i32 noundef 4, ptr noundef %add.ptr434, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1660 = icmp eq ptr %call.i1659, null
  %cmp.i.i1661 = icmp ugt ptr %call.i1659, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1662 = or i1 %tobool.not.i.i1660, %cmp.i.i1661
  br i1 %spec.select.i.i1662, label %to_clk.exit1658.to_clk.exit1666_crit_edge, label %if.end.i1664

to_clk.exit1658.to_clk.exit1666_crit_edge:        ; preds = %to_clk.exit1658
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1666

if.end.i1664:                                     ; preds = %to_clk.exit1658
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1663 = getelementptr inbounds %struct.clk_hw, ptr %call.i1659, i32 0, i32 1
  %404 = ptrtoint ptr %clk.i1663 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %clk.i1663, align 4
  br label %to_clk.exit1666

to_clk.exit1666:                                  ; preds = %if.end.i1664, %to_clk.exit1658.to_clk.exit1666_crit_edge
  %retval.0.i1665 = phi ptr [ %405, %if.end.i1664 ], [ %call.i1659, %to_clk.exit1658.to_clk.exit1666_crit_edge ]
  store ptr %retval.0.i1665, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 187), align 4
  %406 = load ptr, ptr @ccm_base, align 4
  %add.ptr437 = getelementptr i8, ptr %406, i32 92
  %call.i1667 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.59, i32 noundef 4, ptr noundef %add.ptr437, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1668 = icmp eq ptr %call.i1667, null
  %cmp.i.i1669 = icmp ugt ptr %call.i1667, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1670 = or i1 %tobool.not.i.i1668, %cmp.i.i1669
  br i1 %spec.select.i.i1670, label %to_clk.exit1666.to_clk.exit1674_crit_edge, label %if.end.i1672

to_clk.exit1666.to_clk.exit1674_crit_edge:        ; preds = %to_clk.exit1666
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1674

if.end.i1672:                                     ; preds = %to_clk.exit1666
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1671 = getelementptr inbounds %struct.clk_hw, ptr %call.i1667, i32 0, i32 1
  %407 = ptrtoint ptr %clk.i1671 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %clk.i1671, align 4
  br label %to_clk.exit1674

to_clk.exit1674:                                  ; preds = %if.end.i1672, %to_clk.exit1666.to_clk.exit1674_crit_edge
  %retval.0.i1673 = phi ptr [ %408, %if.end.i1672 ], [ %call.i1667, %to_clk.exit1666.to_clk.exit1674_crit_edge ]
  store ptr %retval.0.i1673, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 188), align 4
  %409 = load ptr, ptr @ccm_base, align 4
  %add.ptr440 = getelementptr i8, ptr %409, i32 16
  %call.i1675 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.141, i8 noundef zeroext 4, ptr noundef nonnull @esai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr440, i8 noundef zeroext 20, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1676 = icmp eq ptr %call.i1675, null
  %cmp.i.i1677 = icmp ugt ptr %call.i1675, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1678 = or i1 %tobool.not.i.i1676, %cmp.i.i1677
  br i1 %spec.select.i.i1678, label %to_clk.exit1674.to_clk.exit1682_crit_edge, label %if.end.i1680

to_clk.exit1674.to_clk.exit1682_crit_edge:        ; preds = %to_clk.exit1674
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1682

if.end.i1680:                                     ; preds = %to_clk.exit1674
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1679 = getelementptr inbounds %struct.clk_hw, ptr %call.i1675, i32 0, i32 1
  %410 = ptrtoint ptr %clk.i1679 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %clk.i1679, align 4
  br label %to_clk.exit1682

to_clk.exit1682:                                  ; preds = %if.end.i1680, %to_clk.exit1674.to_clk.exit1682_crit_edge
  %retval.0.i1681 = phi ptr [ %411, %if.end.i1680 ], [ %call.i1675, %to_clk.exit1674.to_clk.exit1682_crit_edge ]
  store ptr %retval.0.i1681, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 93), align 4
  %412 = load ptr, ptr @ccm_base, align 4
  %add.ptr443 = getelementptr i8, ptr %412, i32 24
  %call.i1683 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr443, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1684 = icmp eq ptr %call.i1683, null
  %cmp.i.i1685 = icmp ugt ptr %call.i1683, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1686 = or i1 %tobool.not.i.i1684, %cmp.i.i1685
  br i1 %spec.select.i.i1686, label %to_clk.exit1682.to_clk.exit1690_crit_edge, label %if.end.i1688

to_clk.exit1682.to_clk.exit1690_crit_edge:        ; preds = %to_clk.exit1682
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1690

if.end.i1688:                                     ; preds = %to_clk.exit1682
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1687 = getelementptr inbounds %struct.clk_hw, ptr %call.i1683, i32 0, i32 1
  %413 = ptrtoint ptr %clk.i1687 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %clk.i1687, align 4
  br label %to_clk.exit1690

to_clk.exit1690:                                  ; preds = %if.end.i1688, %to_clk.exit1682.to_clk.exit1690_crit_edge
  %retval.0.i1689 = phi ptr [ %414, %if.end.i1688 ], [ %call.i1683, %to_clk.exit1682.to_clk.exit1690_crit_edge ]
  store ptr %retval.0.i1689, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 94), align 4
  %415 = load ptr, ptr @ccm_base, align 4
  %add.ptr446 = getelementptr i8, ptr %415, i32 24
  %call.i1691 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.142, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr446, i8 noundef zeroext 24, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1692 = icmp eq ptr %call.i1691, null
  %cmp.i.i1693 = icmp ugt ptr %call.i1691, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1694 = or i1 %tobool.not.i.i1692, %cmp.i.i1693
  br i1 %spec.select.i.i1694, label %to_clk.exit1690.to_clk.exit1698_crit_edge, label %if.end.i1696

to_clk.exit1690.to_clk.exit1698_crit_edge:        ; preds = %to_clk.exit1690
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1698

if.end.i1696:                                     ; preds = %to_clk.exit1690
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1695 = getelementptr inbounds %struct.clk_hw, ptr %call.i1691, i32 0, i32 1
  %416 = ptrtoint ptr %clk.i1695 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %clk.i1695, align 4
  br label %to_clk.exit1698

to_clk.exit1698:                                  ; preds = %if.end.i1696, %to_clk.exit1690.to_clk.exit1698_crit_edge
  %retval.0.i1697 = phi ptr [ %417, %if.end.i1696 ], [ %call.i1691, %to_clk.exit1690.to_clk.exit1698_crit_edge ]
  store ptr %retval.0.i1697, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 95), align 4
  %418 = load ptr, ptr @ccm_base, align 4
  %add.ptr449 = getelementptr i8, ptr %418, i32 80
  %call.i1699 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.143, i32 noundef 4, ptr noundef %add.ptr449, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1700 = icmp eq ptr %call.i1699, null
  %cmp.i.i1701 = icmp ugt ptr %call.i1699, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1702 = or i1 %tobool.not.i.i1700, %cmp.i.i1701
  br i1 %spec.select.i.i1702, label %to_clk.exit1698.to_clk.exit1706_crit_edge, label %if.end.i1704

to_clk.exit1698.to_clk.exit1706_crit_edge:        ; preds = %to_clk.exit1698
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1706

if.end.i1704:                                     ; preds = %to_clk.exit1698
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1703 = getelementptr inbounds %struct.clk_hw, ptr %call.i1699, i32 0, i32 1
  %419 = ptrtoint ptr %clk.i1703 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %clk.i1703, align 4
  br label %to_clk.exit1706

to_clk.exit1706:                                  ; preds = %if.end.i1704, %to_clk.exit1698.to_clk.exit1706_crit_edge
  %retval.0.i1705 = phi ptr [ %420, %if.end.i1704 ], [ %call.i1699, %to_clk.exit1698.to_clk.exit1706_crit_edge ]
  store ptr %retval.0.i1705, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 96), align 4
  %421 = load ptr, ptr @ccm_base, align 4
  %add.ptr452 = getelementptr i8, ptr %421, i32 16
  %call.i1707 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.145, i8 noundef zeroext 4, ptr noundef nonnull @sai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr452, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1708 = icmp eq ptr %call.i1707, null
  %cmp.i.i1709 = icmp ugt ptr %call.i1707, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1710 = or i1 %tobool.not.i.i1708, %cmp.i.i1709
  br i1 %spec.select.i.i1710, label %to_clk.exit1706.to_clk.exit1714_crit_edge, label %if.end.i1712

to_clk.exit1706.to_clk.exit1714_crit_edge:        ; preds = %to_clk.exit1706
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1714

if.end.i1712:                                     ; preds = %to_clk.exit1706
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1711 = getelementptr inbounds %struct.clk_hw, ptr %call.i1707, i32 0, i32 1
  %422 = ptrtoint ptr %clk.i1711 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %clk.i1711, align 4
  br label %to_clk.exit1714

to_clk.exit1714:                                  ; preds = %if.end.i1712, %to_clk.exit1706.to_clk.exit1714_crit_edge
  %retval.0.i1713 = phi ptr [ %423, %if.end.i1712 ], [ %call.i1707, %to_clk.exit1706.to_clk.exit1714_crit_edge ]
  store ptr %retval.0.i1713, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 97), align 4
  %424 = load ptr, ptr @ccm_base, align 4
  %add.ptr455 = getelementptr i8, ptr %424, i32 20
  %call.i1715 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.145, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr455, i8 noundef zeroext 16, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1716 = icmp eq ptr %call.i1715, null
  %cmp.i.i1717 = icmp ugt ptr %call.i1715, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1718 = or i1 %tobool.not.i.i1716, %cmp.i.i1717
  br i1 %spec.select.i.i1718, label %to_clk.exit1714.to_clk.exit1722_crit_edge, label %if.end.i1720

to_clk.exit1714.to_clk.exit1722_crit_edge:        ; preds = %to_clk.exit1714
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1722

if.end.i1720:                                     ; preds = %to_clk.exit1714
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1719 = getelementptr inbounds %struct.clk_hw, ptr %call.i1715, i32 0, i32 1
  %425 = ptrtoint ptr %clk.i1719 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %clk.i1719, align 4
  br label %to_clk.exit1722

to_clk.exit1722:                                  ; preds = %if.end.i1720, %to_clk.exit1714.to_clk.exit1722_crit_edge
  %retval.0.i1721 = phi ptr [ %426, %if.end.i1720 ], [ %call.i1715, %to_clk.exit1714.to_clk.exit1722_crit_edge ]
  store ptr %retval.0.i1721, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 98), align 4
  %427 = load ptr, ptr @ccm_base, align 4
  %add.ptr458 = getelementptr i8, ptr %427, i32 20
  %call.i1723 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.146, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr458, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1724 = icmp eq ptr %call.i1723, null
  %cmp.i.i1725 = icmp ugt ptr %call.i1723, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1726 = or i1 %tobool.not.i.i1724, %cmp.i.i1725
  br i1 %spec.select.i.i1726, label %to_clk.exit1722.to_clk.exit1730_crit_edge, label %if.end.i1728

to_clk.exit1722.to_clk.exit1730_crit_edge:        ; preds = %to_clk.exit1722
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1730

if.end.i1728:                                     ; preds = %to_clk.exit1722
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1727 = getelementptr inbounds %struct.clk_hw, ptr %call.i1723, i32 0, i32 1
  %428 = ptrtoint ptr %clk.i1727 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %clk.i1727, align 4
  br label %to_clk.exit1730

to_clk.exit1730:                                  ; preds = %if.end.i1728, %to_clk.exit1722.to_clk.exit1730_crit_edge
  %retval.0.i1729 = phi ptr [ %429, %if.end.i1728 ], [ %call.i1723, %to_clk.exit1722.to_clk.exit1730_crit_edge ]
  store ptr %retval.0.i1729, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 99), align 4
  %430 = load ptr, ptr @ccm_base, align 4
  %add.ptr461 = getelementptr i8, ptr %430, i32 64
  %call.i1731 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr461, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1732 = icmp eq ptr %call.i1731, null
  %cmp.i.i1733 = icmp ugt ptr %call.i1731, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1734 = or i1 %tobool.not.i.i1732, %cmp.i.i1733
  br i1 %spec.select.i.i1734, label %to_clk.exit1730.to_clk.exit1738_crit_edge, label %if.end.i1736

to_clk.exit1730.to_clk.exit1738_crit_edge:        ; preds = %to_clk.exit1730
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1738

if.end.i1736:                                     ; preds = %to_clk.exit1730
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1735 = getelementptr inbounds %struct.clk_hw, ptr %call.i1731, i32 0, i32 1
  %431 = ptrtoint ptr %clk.i1735 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %clk.i1735, align 4
  br label %to_clk.exit1738

to_clk.exit1738:                                  ; preds = %if.end.i1736, %to_clk.exit1730.to_clk.exit1738_crit_edge
  %retval.0.i1737 = phi ptr [ %432, %if.end.i1736 ], [ %call.i1731, %to_clk.exit1730.to_clk.exit1738_crit_edge ]
  store ptr %retval.0.i1737, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 100), align 4
  %433 = load ptr, ptr @ccm_base, align 4
  %add.ptr464 = getelementptr i8, ptr %433, i32 16
  %call.i1739 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.149, i8 noundef zeroext 4, ptr noundef nonnull @sai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr464, i8 noundef zeroext 2, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1740 = icmp eq ptr %call.i1739, null
  %cmp.i.i1741 = icmp ugt ptr %call.i1739, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1742 = or i1 %tobool.not.i.i1740, %cmp.i.i1741
  br i1 %spec.select.i.i1742, label %to_clk.exit1738.to_clk.exit1746_crit_edge, label %if.end.i1744

to_clk.exit1738.to_clk.exit1746_crit_edge:        ; preds = %to_clk.exit1738
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1746

if.end.i1744:                                     ; preds = %to_clk.exit1738
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1743 = getelementptr inbounds %struct.clk_hw, ptr %call.i1739, i32 0, i32 1
  %434 = ptrtoint ptr %clk.i1743 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %clk.i1743, align 4
  br label %to_clk.exit1746

to_clk.exit1746:                                  ; preds = %if.end.i1744, %to_clk.exit1738.to_clk.exit1746_crit_edge
  %retval.0.i1745 = phi ptr [ %435, %if.end.i1744 ], [ %call.i1739, %to_clk.exit1738.to_clk.exit1746_crit_edge ]
  store ptr %retval.0.i1745, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 101), align 4
  %436 = load ptr, ptr @ccm_base, align 4
  %add.ptr467 = getelementptr i8, ptr %436, i32 20
  %call.i1747 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.149, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr467, i8 noundef zeroext 17, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1748 = icmp eq ptr %call.i1747, null
  %cmp.i.i1749 = icmp ugt ptr %call.i1747, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1750 = or i1 %tobool.not.i.i1748, %cmp.i.i1749
  br i1 %spec.select.i.i1750, label %to_clk.exit1746.to_clk.exit1754_crit_edge, label %if.end.i1752

to_clk.exit1746.to_clk.exit1754_crit_edge:        ; preds = %to_clk.exit1746
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1754

if.end.i1752:                                     ; preds = %to_clk.exit1746
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1751 = getelementptr inbounds %struct.clk_hw, ptr %call.i1747, i32 0, i32 1
  %437 = ptrtoint ptr %clk.i1751 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %clk.i1751, align 4
  br label %to_clk.exit1754

to_clk.exit1754:                                  ; preds = %if.end.i1752, %to_clk.exit1746.to_clk.exit1754_crit_edge
  %retval.0.i1753 = phi ptr [ %438, %if.end.i1752 ], [ %call.i1747, %to_clk.exit1746.to_clk.exit1754_crit_edge ]
  store ptr %retval.0.i1753, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 102), align 4
  %439 = load ptr, ptr @ccm_base, align 4
  %add.ptr470 = getelementptr i8, ptr %439, i32 20
  %call.i1755 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.150, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr470, i8 noundef zeroext 4, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1756 = icmp eq ptr %call.i1755, null
  %cmp.i.i1757 = icmp ugt ptr %call.i1755, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1758 = or i1 %tobool.not.i.i1756, %cmp.i.i1757
  br i1 %spec.select.i.i1758, label %to_clk.exit1754.to_clk.exit1762_crit_edge, label %if.end.i1760

to_clk.exit1754.to_clk.exit1762_crit_edge:        ; preds = %to_clk.exit1754
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1762

if.end.i1760:                                     ; preds = %to_clk.exit1754
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1759 = getelementptr inbounds %struct.clk_hw, ptr %call.i1755, i32 0, i32 1
  %440 = ptrtoint ptr %clk.i1759 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %clk.i1759, align 4
  br label %to_clk.exit1762

to_clk.exit1762:                                  ; preds = %if.end.i1760, %to_clk.exit1754.to_clk.exit1762_crit_edge
  %retval.0.i1761 = phi ptr [ %441, %if.end.i1760 ], [ %call.i1755, %to_clk.exit1754.to_clk.exit1762_crit_edge ]
  store ptr %retval.0.i1761, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 103), align 4
  %442 = load ptr, ptr @ccm_base, align 4
  %add.ptr473 = getelementptr i8, ptr %442, i32 68
  %call.i1763 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr473, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1764 = icmp eq ptr %call.i1763, null
  %cmp.i.i1765 = icmp ugt ptr %call.i1763, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1766 = or i1 %tobool.not.i.i1764, %cmp.i.i1765
  br i1 %spec.select.i.i1766, label %to_clk.exit1762.to_clk.exit1770_crit_edge, label %if.end.i1768

to_clk.exit1762.to_clk.exit1770_crit_edge:        ; preds = %to_clk.exit1762
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1770

if.end.i1768:                                     ; preds = %to_clk.exit1762
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1767 = getelementptr inbounds %struct.clk_hw, ptr %call.i1763, i32 0, i32 1
  %443 = ptrtoint ptr %clk.i1767 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %clk.i1767, align 4
  br label %to_clk.exit1770

to_clk.exit1770:                                  ; preds = %if.end.i1768, %to_clk.exit1762.to_clk.exit1770_crit_edge
  %retval.0.i1769 = phi ptr [ %444, %if.end.i1768 ], [ %call.i1763, %to_clk.exit1762.to_clk.exit1770_crit_edge ]
  store ptr %retval.0.i1769, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 104), align 4
  %445 = load ptr, ptr @ccm_base, align 4
  %add.ptr476 = getelementptr i8, ptr %445, i32 16
  %call.i1771 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.153, i8 noundef zeroext 4, ptr noundef nonnull @sai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr476, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1772 = icmp eq ptr %call.i1771, null
  %cmp.i.i1773 = icmp ugt ptr %call.i1771, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1774 = or i1 %tobool.not.i.i1772, %cmp.i.i1773
  br i1 %spec.select.i.i1774, label %to_clk.exit1770.to_clk.exit1778_crit_edge, label %if.end.i1776

to_clk.exit1770.to_clk.exit1778_crit_edge:        ; preds = %to_clk.exit1770
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1778

if.end.i1776:                                     ; preds = %to_clk.exit1770
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1775 = getelementptr inbounds %struct.clk_hw, ptr %call.i1771, i32 0, i32 1
  %446 = ptrtoint ptr %clk.i1775 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %clk.i1775, align 4
  br label %to_clk.exit1778

to_clk.exit1778:                                  ; preds = %if.end.i1776, %to_clk.exit1770.to_clk.exit1778_crit_edge
  %retval.0.i1777 = phi ptr [ %447, %if.end.i1776 ], [ %call.i1771, %to_clk.exit1770.to_clk.exit1778_crit_edge ]
  store ptr %retval.0.i1777, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 105), align 4
  %448 = load ptr, ptr @ccm_base, align 4
  %add.ptr479 = getelementptr i8, ptr %448, i32 20
  %call.i1779 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.153, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr479, i8 noundef zeroext 18, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1780 = icmp eq ptr %call.i1779, null
  %cmp.i.i1781 = icmp ugt ptr %call.i1779, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1782 = or i1 %tobool.not.i.i1780, %cmp.i.i1781
  br i1 %spec.select.i.i1782, label %to_clk.exit1778.to_clk.exit1786_crit_edge, label %if.end.i1784

to_clk.exit1778.to_clk.exit1786_crit_edge:        ; preds = %to_clk.exit1778
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1786

if.end.i1784:                                     ; preds = %to_clk.exit1778
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1783 = getelementptr inbounds %struct.clk_hw, ptr %call.i1779, i32 0, i32 1
  %449 = ptrtoint ptr %clk.i1783 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %clk.i1783, align 4
  br label %to_clk.exit1786

to_clk.exit1786:                                  ; preds = %if.end.i1784, %to_clk.exit1778.to_clk.exit1786_crit_edge
  %retval.0.i1785 = phi ptr [ %450, %if.end.i1784 ], [ %call.i1779, %to_clk.exit1778.to_clk.exit1786_crit_edge ]
  store ptr %retval.0.i1785, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 106), align 4
  %451 = load ptr, ptr @ccm_base, align 4
  %add.ptr482 = getelementptr i8, ptr %451, i32 20
  %call.i1787 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.154, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr482, i8 noundef zeroext 8, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1788 = icmp eq ptr %call.i1787, null
  %cmp.i.i1789 = icmp ugt ptr %call.i1787, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1790 = or i1 %tobool.not.i.i1788, %cmp.i.i1789
  br i1 %spec.select.i.i1790, label %to_clk.exit1786.to_clk.exit1794_crit_edge, label %if.end.i1792

to_clk.exit1786.to_clk.exit1794_crit_edge:        ; preds = %to_clk.exit1786
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1794

if.end.i1792:                                     ; preds = %to_clk.exit1786
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1791 = getelementptr inbounds %struct.clk_hw, ptr %call.i1787, i32 0, i32 1
  %452 = ptrtoint ptr %clk.i1791 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %clk.i1791, align 4
  br label %to_clk.exit1794

to_clk.exit1794:                                  ; preds = %if.end.i1792, %to_clk.exit1786.to_clk.exit1794_crit_edge
  %retval.0.i1793 = phi ptr [ %453, %if.end.i1792 ], [ %call.i1787, %to_clk.exit1786.to_clk.exit1794_crit_edge ]
  store ptr %retval.0.i1793, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 107), align 4
  %454 = load ptr, ptr @ccm_base, align 4
  %add.ptr485 = getelementptr i8, ptr %454, i32 68
  %call.i1795 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr485, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1796 = icmp eq ptr %call.i1795, null
  %cmp.i.i1797 = icmp ugt ptr %call.i1795, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1798 = or i1 %tobool.not.i.i1796, %cmp.i.i1797
  br i1 %spec.select.i.i1798, label %to_clk.exit1794.to_clk.exit1802_crit_edge, label %if.end.i1800

to_clk.exit1794.to_clk.exit1802_crit_edge:        ; preds = %to_clk.exit1794
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1802

if.end.i1800:                                     ; preds = %to_clk.exit1794
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1799 = getelementptr inbounds %struct.clk_hw, ptr %call.i1795, i32 0, i32 1
  %455 = ptrtoint ptr %clk.i1799 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %clk.i1799, align 4
  br label %to_clk.exit1802

to_clk.exit1802:                                  ; preds = %if.end.i1800, %to_clk.exit1794.to_clk.exit1802_crit_edge
  %retval.0.i1801 = phi ptr [ %456, %if.end.i1800 ], [ %call.i1795, %to_clk.exit1794.to_clk.exit1802_crit_edge ]
  store ptr %retval.0.i1801, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 108), align 4
  %457 = load ptr, ptr @ccm_base, align 4
  %add.ptr488 = getelementptr i8, ptr %457, i32 16
  %call.i1803 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.157, i8 noundef zeroext 4, ptr noundef nonnull @sai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr488, i8 noundef zeroext 6, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1804 = icmp eq ptr %call.i1803, null
  %cmp.i.i1805 = icmp ugt ptr %call.i1803, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1806 = or i1 %tobool.not.i.i1804, %cmp.i.i1805
  br i1 %spec.select.i.i1806, label %to_clk.exit1802.to_clk.exit1810_crit_edge, label %if.end.i1808

to_clk.exit1802.to_clk.exit1810_crit_edge:        ; preds = %to_clk.exit1802
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1810

if.end.i1808:                                     ; preds = %to_clk.exit1802
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1807 = getelementptr inbounds %struct.clk_hw, ptr %call.i1803, i32 0, i32 1
  %458 = ptrtoint ptr %clk.i1807 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %clk.i1807, align 4
  br label %to_clk.exit1810

to_clk.exit1810:                                  ; preds = %if.end.i1808, %to_clk.exit1802.to_clk.exit1810_crit_edge
  %retval.0.i1809 = phi ptr [ %459, %if.end.i1808 ], [ %call.i1803, %to_clk.exit1802.to_clk.exit1810_crit_edge ]
  store ptr %retval.0.i1809, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 109), align 4
  %460 = load ptr, ptr @ccm_base, align 4
  %add.ptr491 = getelementptr i8, ptr %460, i32 20
  %call.i1811 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.157, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr491, i8 noundef zeroext 19, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1812 = icmp eq ptr %call.i1811, null
  %cmp.i.i1813 = icmp ugt ptr %call.i1811, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1814 = or i1 %tobool.not.i.i1812, %cmp.i.i1813
  br i1 %spec.select.i.i1814, label %to_clk.exit1810.to_clk.exit1818_crit_edge, label %if.end.i1816

to_clk.exit1810.to_clk.exit1818_crit_edge:        ; preds = %to_clk.exit1810
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1818

if.end.i1816:                                     ; preds = %to_clk.exit1810
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1815 = getelementptr inbounds %struct.clk_hw, ptr %call.i1811, i32 0, i32 1
  %461 = ptrtoint ptr %clk.i1815 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %clk.i1815, align 4
  br label %to_clk.exit1818

to_clk.exit1818:                                  ; preds = %if.end.i1816, %to_clk.exit1810.to_clk.exit1818_crit_edge
  %retval.0.i1817 = phi ptr [ %462, %if.end.i1816 ], [ %call.i1811, %to_clk.exit1810.to_clk.exit1818_crit_edge ]
  store ptr %retval.0.i1817, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 110), align 4
  %463 = load ptr, ptr @ccm_base, align 4
  %add.ptr494 = getelementptr i8, ptr %463, i32 20
  %call.i1819 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.158, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr494, i8 noundef zeroext 12, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1820 = icmp eq ptr %call.i1819, null
  %cmp.i.i1821 = icmp ugt ptr %call.i1819, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1822 = or i1 %tobool.not.i.i1820, %cmp.i.i1821
  br i1 %spec.select.i.i1822, label %to_clk.exit1818.to_clk.exit1826_crit_edge, label %if.end.i1824

to_clk.exit1818.to_clk.exit1826_crit_edge:        ; preds = %to_clk.exit1818
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1826

if.end.i1824:                                     ; preds = %to_clk.exit1818
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1823 = getelementptr inbounds %struct.clk_hw, ptr %call.i1819, i32 0, i32 1
  %464 = ptrtoint ptr %clk.i1823 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %clk.i1823, align 4
  br label %to_clk.exit1826

to_clk.exit1826:                                  ; preds = %if.end.i1824, %to_clk.exit1818.to_clk.exit1826_crit_edge
  %retval.0.i1825 = phi ptr [ %465, %if.end.i1824 ], [ %call.i1819, %to_clk.exit1818.to_clk.exit1826_crit_edge ]
  store ptr %retval.0.i1825, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 111), align 4
  %466 = load ptr, ptr @ccm_base, align 4
  %add.ptr497 = getelementptr i8, ptr %466, i32 68
  %call.i1827 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr497, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1828 = icmp eq ptr %call.i1827, null
  %cmp.i.i1829 = icmp ugt ptr %call.i1827, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1830 = or i1 %tobool.not.i.i1828, %cmp.i.i1829
  br i1 %spec.select.i.i1830, label %to_clk.exit1826.to_clk.exit1834_crit_edge, label %if.end.i1832

to_clk.exit1826.to_clk.exit1834_crit_edge:        ; preds = %to_clk.exit1826
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1834

if.end.i1832:                                     ; preds = %to_clk.exit1826
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1831 = getelementptr inbounds %struct.clk_hw, ptr %call.i1827, i32 0, i32 1
  %467 = ptrtoint ptr %clk.i1831 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %clk.i1831, align 4
  br label %to_clk.exit1834

to_clk.exit1834:                                  ; preds = %if.end.i1832, %to_clk.exit1826.to_clk.exit1834_crit_edge
  %retval.0.i1833 = phi ptr [ %468, %if.end.i1832 ], [ %call.i1827, %to_clk.exit1826.to_clk.exit1834_crit_edge ]
  store ptr %retval.0.i1833, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 112), align 4
  %469 = load ptr, ptr @ccm_base, align 4
  %add.ptr500 = getelementptr i8, ptr %469, i32 16
  %call.i1835 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.161, i8 noundef zeroext 4, ptr noundef nonnull @nfc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr500, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1836 = icmp eq ptr %call.i1835, null
  %cmp.i.i1837 = icmp ugt ptr %call.i1835, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1838 = or i1 %tobool.not.i.i1836, %cmp.i.i1837
  br i1 %spec.select.i.i1838, label %to_clk.exit1834.to_clk.exit1842_crit_edge, label %if.end.i1840

to_clk.exit1834.to_clk.exit1842_crit_edge:        ; preds = %to_clk.exit1834
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1842

if.end.i1840:                                     ; preds = %to_clk.exit1834
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1839 = getelementptr inbounds %struct.clk_hw, ptr %call.i1835, i32 0, i32 1
  %470 = ptrtoint ptr %clk.i1839 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %clk.i1839, align 4
  br label %to_clk.exit1842

to_clk.exit1842:                                  ; preds = %if.end.i1840, %to_clk.exit1834.to_clk.exit1842_crit_edge
  %retval.0.i1841 = phi ptr [ %471, %if.end.i1840 ], [ %call.i1835, %to_clk.exit1834.to_clk.exit1842_crit_edge ]
  store ptr %retval.0.i1841, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 127), align 4
  %472 = load ptr, ptr @ccm_base, align 4
  %add.ptr503 = getelementptr i8, ptr %472, i32 24
  %call.i1843 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.161, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr503, i8 noundef zeroext 9, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1844 = icmp eq ptr %call.i1843, null
  %cmp.i.i1845 = icmp ugt ptr %call.i1843, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1846 = or i1 %tobool.not.i.i1844, %cmp.i.i1845
  br i1 %spec.select.i.i1846, label %to_clk.exit1842.to_clk.exit1850_crit_edge, label %if.end.i1848

to_clk.exit1842.to_clk.exit1850_crit_edge:        ; preds = %to_clk.exit1842
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1850

if.end.i1848:                                     ; preds = %to_clk.exit1842
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1847 = getelementptr inbounds %struct.clk_hw, ptr %call.i1843, i32 0, i32 1
  %473 = ptrtoint ptr %clk.i1847 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %clk.i1847, align 4
  br label %to_clk.exit1850

to_clk.exit1850:                                  ; preds = %if.end.i1848, %to_clk.exit1842.to_clk.exit1850_crit_edge
  %retval.0.i1849 = phi ptr [ %474, %if.end.i1848 ], [ %call.i1843, %to_clk.exit1842.to_clk.exit1850_crit_edge ]
  store ptr %retval.0.i1849, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 128), align 4
  %475 = load ptr, ptr @ccm_base, align 4
  %add.ptr506 = getelementptr i8, ptr %475, i32 28
  %call.i1851 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.162, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr506, i8 noundef zeroext 13, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1852 = icmp eq ptr %call.i1851, null
  %cmp.i.i1853 = icmp ugt ptr %call.i1851, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1854 = or i1 %tobool.not.i.i1852, %cmp.i.i1853
  br i1 %spec.select.i.i1854, label %to_clk.exit1850.to_clk.exit1858_crit_edge, label %if.end.i1856

to_clk.exit1850.to_clk.exit1858_crit_edge:        ; preds = %to_clk.exit1850
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1858

if.end.i1856:                                     ; preds = %to_clk.exit1850
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1855 = getelementptr inbounds %struct.clk_hw, ptr %call.i1851, i32 0, i32 1
  %476 = ptrtoint ptr %clk.i1855 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %clk.i1855, align 4
  br label %to_clk.exit1858

to_clk.exit1858:                                  ; preds = %if.end.i1856, %to_clk.exit1850.to_clk.exit1858_crit_edge
  %retval.0.i1857 = phi ptr [ %477, %if.end.i1856 ], [ %call.i1851, %to_clk.exit1850.to_clk.exit1858_crit_edge ]
  store ptr %retval.0.i1857, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 129), align 4
  %478 = load ptr, ptr @ccm_base, align 4
  %add.ptr509 = getelementptr i8, ptr %478, i32 24
  %call.i1859 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.163, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr509, i8 noundef zeroext 4, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1860 = icmp eq ptr %call.i1859, null
  %cmp.i.i1861 = icmp ugt ptr %call.i1859, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1862 = or i1 %tobool.not.i.i1860, %cmp.i.i1861
  br i1 %spec.select.i.i1862, label %to_clk.exit1858.to_clk.exit1866_crit_edge, label %if.end.i1864

to_clk.exit1858.to_clk.exit1866_crit_edge:        ; preds = %to_clk.exit1858
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1866

if.end.i1864:                                     ; preds = %to_clk.exit1858
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1863 = getelementptr inbounds %struct.clk_hw, ptr %call.i1859, i32 0, i32 1
  %479 = ptrtoint ptr %clk.i1863 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %clk.i1863, align 4
  br label %to_clk.exit1866

to_clk.exit1866:                                  ; preds = %if.end.i1864, %to_clk.exit1858.to_clk.exit1866_crit_edge
  %retval.0.i1865 = phi ptr [ %480, %if.end.i1864 ], [ %call.i1859, %to_clk.exit1858.to_clk.exit1866_crit_edge ]
  store ptr %retval.0.i1865, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 130), align 4
  %481 = load ptr, ptr @ccm_base, align 4
  %add.ptr512 = getelementptr i8, ptr %481, i32 104
  %call.i1867 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.164, i32 noundef 4, ptr noundef %add.ptr512, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1868 = icmp eq ptr %call.i1867, null
  %cmp.i.i1869 = icmp ugt ptr %call.i1867, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1870 = or i1 %tobool.not.i.i1868, %cmp.i.i1869
  br i1 %spec.select.i.i1870, label %to_clk.exit1866.to_clk.exit1874_crit_edge, label %if.end.i1872

to_clk.exit1866.to_clk.exit1874_crit_edge:        ; preds = %to_clk.exit1866
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1874

if.end.i1872:                                     ; preds = %to_clk.exit1866
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1871 = getelementptr inbounds %struct.clk_hw, ptr %call.i1867, i32 0, i32 1
  %482 = ptrtoint ptr %clk.i1871 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %clk.i1871, align 4
  br label %to_clk.exit1874

to_clk.exit1874:                                  ; preds = %if.end.i1872, %to_clk.exit1866.to_clk.exit1874_crit_edge
  %retval.0.i1873 = phi ptr [ %483, %if.end.i1872 ], [ %call.i1867, %to_clk.exit1866.to_clk.exit1874_crit_edge ]
  store ptr %retval.0.i1873, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 132), align 4
  %484 = load ptr, ptr @ccm_base, align 4
  %add.ptr515 = getelementptr i8, ptr %484, i32 16
  %call.i1875 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.166, i8 noundef zeroext 2, ptr noundef nonnull @gpu_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr515, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1876 = icmp eq ptr %call.i1875, null
  %cmp.i.i1877 = icmp ugt ptr %call.i1875, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1878 = or i1 %tobool.not.i.i1876, %cmp.i.i1877
  br i1 %spec.select.i.i1878, label %to_clk.exit1874.to_clk.exit1882_crit_edge, label %if.end.i1880

to_clk.exit1874.to_clk.exit1882_crit_edge:        ; preds = %to_clk.exit1874
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1882

if.end.i1880:                                     ; preds = %to_clk.exit1874
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1879 = getelementptr inbounds %struct.clk_hw, ptr %call.i1875, i32 0, i32 1
  %485 = ptrtoint ptr %clk.i1879 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %clk.i1879, align 4
  br label %to_clk.exit1882

to_clk.exit1882:                                  ; preds = %if.end.i1880, %to_clk.exit1874.to_clk.exit1882_crit_edge
  %retval.0.i1881 = phi ptr [ %486, %if.end.i1880 ], [ %call.i1875, %to_clk.exit1874.to_clk.exit1882_crit_edge ]
  store ptr %retval.0.i1881, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 145), align 4
  %487 = load ptr, ptr @ccm_base, align 4
  %add.ptr518 = getelementptr i8, ptr %487, i32 24
  %call.i1883 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.166, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr518, i8 noundef zeroext 10, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1884 = icmp eq ptr %call.i1883, null
  %cmp.i.i1885 = icmp ugt ptr %call.i1883, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1886 = or i1 %tobool.not.i.i1884, %cmp.i.i1885
  br i1 %spec.select.i.i1886, label %to_clk.exit1882.to_clk.exit1890_crit_edge, label %if.end.i1888

to_clk.exit1882.to_clk.exit1890_crit_edge:        ; preds = %to_clk.exit1882
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1890

if.end.i1888:                                     ; preds = %to_clk.exit1882
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1887 = getelementptr inbounds %struct.clk_hw, ptr %call.i1883, i32 0, i32 1
  %488 = ptrtoint ptr %clk.i1887 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %clk.i1887, align 4
  br label %to_clk.exit1890

to_clk.exit1890:                                  ; preds = %if.end.i1888, %to_clk.exit1882.to_clk.exit1890_crit_edge
  %retval.0.i1889 = phi ptr [ %489, %if.end.i1888 ], [ %call.i1883, %to_clk.exit1882.to_clk.exit1890_crit_edge ]
  store ptr %retval.0.i1889, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 146), align 4
  %490 = load ptr, ptr @ccm_base, align 4
  %add.ptr521 = getelementptr i8, ptr %490, i32 96
  %call.i1891 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.167, i32 noundef 4, ptr noundef %add.ptr521, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1892 = icmp eq ptr %call.i1891, null
  %cmp.i.i1893 = icmp ugt ptr %call.i1891, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1894 = or i1 %tobool.not.i.i1892, %cmp.i.i1893
  br i1 %spec.select.i.i1894, label %to_clk.exit1890.to_clk.exit1898_crit_edge, label %if.end.i1896

to_clk.exit1890.to_clk.exit1898_crit_edge:        ; preds = %to_clk.exit1890
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1898

if.end.i1896:                                     ; preds = %to_clk.exit1890
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1895 = getelementptr inbounds %struct.clk_hw, ptr %call.i1891, i32 0, i32 1
  %491 = ptrtoint ptr %clk.i1895 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %clk.i1895, align 4
  br label %to_clk.exit1898

to_clk.exit1898:                                  ; preds = %if.end.i1896, %to_clk.exit1890.to_clk.exit1898_crit_edge
  %retval.0.i1897 = phi ptr [ %492, %if.end.i1896 ], [ %call.i1891, %to_clk.exit1890.to_clk.exit1898_crit_edge ]
  store ptr %retval.0.i1897, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 147), align 4
  %493 = load ptr, ptr @ccm_base, align 4
  %add.ptr524 = getelementptr i8, ptr %493, i32 16
  %call.i1899 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.169, i8 noundef zeroext 3, ptr noundef nonnull @vadc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr524, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1900 = icmp eq ptr %call.i1899, null
  %cmp.i.i1901 = icmp ugt ptr %call.i1899, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1902 = or i1 %tobool.not.i.i1900, %cmp.i.i1901
  br i1 %spec.select.i.i1902, label %to_clk.exit1898.to_clk.exit1906_crit_edge, label %if.end.i1904

to_clk.exit1898.to_clk.exit1906_crit_edge:        ; preds = %to_clk.exit1898
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1906

if.end.i1904:                                     ; preds = %to_clk.exit1898
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1903 = getelementptr inbounds %struct.clk_hw, ptr %call.i1899, i32 0, i32 1
  %494 = ptrtoint ptr %clk.i1903 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %clk.i1903, align 4
  br label %to_clk.exit1906

to_clk.exit1906:                                  ; preds = %if.end.i1904, %to_clk.exit1898.to_clk.exit1906_crit_edge
  %retval.0.i1905 = phi ptr [ %495, %if.end.i1904 ], [ %call.i1899, %to_clk.exit1898.to_clk.exit1906_crit_edge ]
  store ptr %retval.0.i1905, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 133), align 4
  %496 = load ptr, ptr @ccm_base, align 4
  %add.ptr527 = getelementptr i8, ptr %496, i32 20
  %call.i1907 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.169, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr527, i8 noundef zeroext 22, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1908 = icmp eq ptr %call.i1907, null
  %cmp.i.i1909 = icmp ugt ptr %call.i1907, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1910 = or i1 %tobool.not.i.i1908, %cmp.i.i1909
  br i1 %spec.select.i.i1910, label %to_clk.exit1906.to_clk.exit1914_crit_edge, label %if.end.i1912

to_clk.exit1906.to_clk.exit1914_crit_edge:        ; preds = %to_clk.exit1906
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1914

if.end.i1912:                                     ; preds = %to_clk.exit1906
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1911 = getelementptr inbounds %struct.clk_hw, ptr %call.i1907, i32 0, i32 1
  %497 = ptrtoint ptr %clk.i1911 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %clk.i1911, align 4
  br label %to_clk.exit1914

to_clk.exit1914:                                  ; preds = %if.end.i1912, %to_clk.exit1906.to_clk.exit1914_crit_edge
  %retval.0.i1913 = phi ptr [ %498, %if.end.i1912 ], [ %call.i1907, %to_clk.exit1906.to_clk.exit1914_crit_edge ]
  store ptr %retval.0.i1913, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 134), align 4
  %499 = load ptr, ptr @ccm_base, align 4
  %add.ptr530 = getelementptr i8, ptr %499, i32 20
  %call.i1915 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.170, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr530, i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1916 = icmp eq ptr %call.i1915, null
  %cmp.i.i1917 = icmp ugt ptr %call.i1915, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1918 = or i1 %tobool.not.i.i1916, %cmp.i.i1917
  br i1 %spec.select.i.i1918, label %to_clk.exit1914.to_clk.exit1922_crit_edge, label %if.end.i1920

to_clk.exit1914.to_clk.exit1922_crit_edge:        ; preds = %to_clk.exit1914
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1922

if.end.i1920:                                     ; preds = %to_clk.exit1914
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1919 = getelementptr inbounds %struct.clk_hw, ptr %call.i1915, i32 0, i32 1
  %500 = ptrtoint ptr %clk.i1919 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %clk.i1919, align 4
  br label %to_clk.exit1922

to_clk.exit1922:                                  ; preds = %if.end.i1920, %to_clk.exit1914.to_clk.exit1922_crit_edge
  %retval.0.i1921 = phi ptr [ %501, %if.end.i1920 ], [ %call.i1915, %to_clk.exit1914.to_clk.exit1922_crit_edge ]
  store ptr %retval.0.i1921, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 135), align 4
  %call.i1923 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.171, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %tobool.not.i.i1924 = icmp eq ptr %call.i1923, null
  %cmp.i.i1925 = icmp ugt ptr %call.i1923, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1926 = or i1 %tobool.not.i.i1924, %cmp.i.i1925
  br i1 %spec.select.i.i1926, label %to_clk.exit1922.to_clk.exit1930_crit_edge, label %if.end.i1928

to_clk.exit1922.to_clk.exit1930_crit_edge:        ; preds = %to_clk.exit1922
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1930

if.end.i1928:                                     ; preds = %to_clk.exit1922
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1927 = getelementptr inbounds %struct.clk_hw, ptr %call.i1923, i32 0, i32 1
  %502 = ptrtoint ptr %clk.i1927 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %clk.i1927, align 4
  br label %to_clk.exit1930

to_clk.exit1930:                                  ; preds = %if.end.i1928, %to_clk.exit1922.to_clk.exit1930_crit_edge
  %retval.0.i1929 = phi ptr [ %503, %if.end.i1928 ], [ %call.i1923, %to_clk.exit1922.to_clk.exit1930_crit_edge ]
  store ptr %retval.0.i1929, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 136), align 4
  %504 = load ptr, ptr @ccm_base, align 4
  %add.ptr535 = getelementptr i8, ptr %504, i32 96
  %call.i1931 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.171, i32 noundef 4, ptr noundef %add.ptr535, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1932 = icmp eq ptr %call.i1931, null
  %cmp.i.i1933 = icmp ugt ptr %call.i1931, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1934 = or i1 %tobool.not.i.i1932, %cmp.i.i1933
  br i1 %spec.select.i.i1934, label %to_clk.exit1930.to_clk.exit1938_crit_edge, label %if.end.i1936

to_clk.exit1930.to_clk.exit1938_crit_edge:        ; preds = %to_clk.exit1930
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1938

if.end.i1936:                                     ; preds = %to_clk.exit1930
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1935 = getelementptr inbounds %struct.clk_hw, ptr %call.i1931, i32 0, i32 1
  %505 = ptrtoint ptr %clk.i1935 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %clk.i1935, align 4
  br label %to_clk.exit1938

to_clk.exit1938:                                  ; preds = %if.end.i1936, %to_clk.exit1930.to_clk.exit1938_crit_edge
  %retval.0.i1937 = phi ptr [ %506, %if.end.i1936 ], [ %call.i1931, %to_clk.exit1930.to_clk.exit1938_crit_edge ]
  store ptr %retval.0.i1937, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 137), align 4
  %507 = load ptr, ptr @ccm_base, align 4
  %add.ptr538 = getelementptr i8, ptr %507, i32 68
  %call.i1939 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr538, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1940 = icmp eq ptr %call.i1939, null
  %cmp.i.i1941 = icmp ugt ptr %call.i1939, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1942 = or i1 %tobool.not.i.i1940, %cmp.i.i1941
  br i1 %spec.select.i.i1942, label %to_clk.exit1938.to_clk.exit1946_crit_edge, label %if.end.i1944

to_clk.exit1938.to_clk.exit1946_crit_edge:        ; preds = %to_clk.exit1938
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1946

if.end.i1944:                                     ; preds = %to_clk.exit1938
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1943 = getelementptr inbounds %struct.clk_hw, ptr %call.i1939, i32 0, i32 1
  %508 = ptrtoint ptr %clk.i1943 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %clk.i1943, align 4
  br label %to_clk.exit1946

to_clk.exit1946:                                  ; preds = %if.end.i1944, %to_clk.exit1938.to_clk.exit1946_crit_edge
  %retval.0.i1945 = phi ptr [ %509, %if.end.i1944 ], [ %call.i1939, %to_clk.exit1938.to_clk.exit1946_crit_edge ]
  store ptr %retval.0.i1945, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 138), align 4
  %510 = load ptr, ptr @ccm_base, align 4
  %add.ptr541 = getelementptr i8, ptr %510, i32 92
  %call.i1947 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr541, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1948 = icmp eq ptr %call.i1947, null
  %cmp.i.i1949 = icmp ugt ptr %call.i1947, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1950 = or i1 %tobool.not.i.i1948, %cmp.i.i1949
  br i1 %spec.select.i.i1950, label %to_clk.exit1946.to_clk.exit1954_crit_edge, label %if.end.i1952

to_clk.exit1946.to_clk.exit1954_crit_edge:        ; preds = %to_clk.exit1946
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1954

if.end.i1952:                                     ; preds = %to_clk.exit1946
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1951 = getelementptr inbounds %struct.clk_hw, ptr %call.i1947, i32 0, i32 1
  %511 = ptrtoint ptr %clk.i1951 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %clk.i1951, align 4
  br label %to_clk.exit1954

to_clk.exit1954:                                  ; preds = %if.end.i1952, %to_clk.exit1946.to_clk.exit1954_crit_edge
  %retval.0.i1953 = phi ptr [ %512, %if.end.i1952 ], [ %call.i1947, %to_clk.exit1946.to_clk.exit1954_crit_edge ]
  store ptr %retval.0.i1953, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 139), align 4
  %513 = load ptr, ptr @ccm_base, align 4
  %add.ptr544 = getelementptr i8, ptr %513, i32 96
  %call.i1955 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr544, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1956 = icmp eq ptr %call.i1955, null
  %cmp.i.i1957 = icmp ugt ptr %call.i1955, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1958 = or i1 %tobool.not.i.i1956, %cmp.i.i1957
  br i1 %spec.select.i.i1958, label %to_clk.exit1954.to_clk.exit1962_crit_edge, label %if.end.i1960

to_clk.exit1954.to_clk.exit1962_crit_edge:        ; preds = %to_clk.exit1954
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1962

if.end.i1960:                                     ; preds = %to_clk.exit1954
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1959 = getelementptr inbounds %struct.clk_hw, ptr %call.i1955, i32 0, i32 1
  %514 = ptrtoint ptr %clk.i1959 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %clk.i1959, align 4
  br label %to_clk.exit1962

to_clk.exit1962:                                  ; preds = %if.end.i1960, %to_clk.exit1954.to_clk.exit1962_crit_edge
  %retval.0.i1961 = phi ptr [ %515, %if.end.i1960 ], [ %call.i1955, %to_clk.exit1954.to_clk.exit1962_crit_edge ]
  store ptr %retval.0.i1961, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 140), align 4
  %516 = load ptr, ptr @ccm_base, align 4
  %add.ptr547 = getelementptr i8, ptr %516, i32 96
  %call.i1963 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr547, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1964 = icmp eq ptr %call.i1963, null
  %cmp.i.i1965 = icmp ugt ptr %call.i1963, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1966 = or i1 %tobool.not.i.i1964, %cmp.i.i1965
  br i1 %spec.select.i.i1966, label %to_clk.exit1962.to_clk.exit1970_crit_edge, label %if.end.i1968

to_clk.exit1962.to_clk.exit1970_crit_edge:        ; preds = %to_clk.exit1962
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1970

if.end.i1968:                                     ; preds = %to_clk.exit1962
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1967 = getelementptr inbounds %struct.clk_hw, ptr %call.i1963, i32 0, i32 1
  %517 = ptrtoint ptr %clk.i1967 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %clk.i1967, align 4
  br label %to_clk.exit1970

to_clk.exit1970:                                  ; preds = %if.end.i1968, %to_clk.exit1962.to_clk.exit1970_crit_edge
  %retval.0.i1969 = phi ptr [ %518, %if.end.i1968 ], [ %call.i1963, %to_clk.exit1962.to_clk.exit1970_crit_edge ]
  store ptr %retval.0.i1969, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 141), align 4
  %519 = load ptr, ptr @ccm_base, align 4
  %add.ptr550 = getelementptr i8, ptr %519, i32 80
  %call.i1971 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr550, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1972 = icmp eq ptr %call.i1971, null
  %cmp.i.i1973 = icmp ugt ptr %call.i1971, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1974 = or i1 %tobool.not.i.i1972, %cmp.i.i1973
  br i1 %spec.select.i.i1974, label %to_clk.exit1970.to_clk.exit1978_crit_edge, label %if.end.i1976

to_clk.exit1970.to_clk.exit1978_crit_edge:        ; preds = %to_clk.exit1970
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1978

if.end.i1976:                                     ; preds = %to_clk.exit1970
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1975 = getelementptr inbounds %struct.clk_hw, ptr %call.i1971, i32 0, i32 1
  %520 = ptrtoint ptr %clk.i1975 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %clk.i1975, align 4
  br label %to_clk.exit1978

to_clk.exit1978:                                  ; preds = %if.end.i1976, %to_clk.exit1970.to_clk.exit1978_crit_edge
  %retval.0.i1977 = phi ptr [ %521, %if.end.i1976 ], [ %call.i1971, %to_clk.exit1970.to_clk.exit1978_crit_edge ]
  store ptr %retval.0.i1977, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 144), align 4
  %522 = load ptr, ptr @ccm_base, align 4
  %add.ptr553 = getelementptr i8, ptr %522, i32 24
  %call.i1979 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.60, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr553, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1980 = icmp eq ptr %call.i1979, null
  %cmp.i.i1981 = icmp ugt ptr %call.i1979, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1982 = or i1 %tobool.not.i.i1980, %cmp.i.i1981
  br i1 %spec.select.i.i1982, label %to_clk.exit1978.to_clk.exit1986_crit_edge, label %if.end.i1984

to_clk.exit1978.to_clk.exit1986_crit_edge:        ; preds = %to_clk.exit1978
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1986

if.end.i1984:                                     ; preds = %to_clk.exit1978
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1983 = getelementptr inbounds %struct.clk_hw, ptr %call.i1979, i32 0, i32 1
  %523 = ptrtoint ptr %clk.i1983 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %clk.i1983, align 4
  br label %to_clk.exit1986

to_clk.exit1986:                                  ; preds = %if.end.i1984, %to_clk.exit1978.to_clk.exit1986_crit_edge
  %retval.0.i1985 = phi ptr [ %524, %if.end.i1984 ], [ %call.i1979, %to_clk.exit1978.to_clk.exit1986_crit_edge ]
  store ptr %retval.0.i1985, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 154), align 4
  %525 = load ptr, ptr @ccm_base, align 4
  %add.ptr556 = getelementptr i8, ptr %525, i32 64
  %call.i1987 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.179, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i1988 = icmp eq ptr %call.i1987, null
  %cmp.i.i1989 = icmp ugt ptr %call.i1987, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1990 = or i1 %tobool.not.i.i1988, %cmp.i.i1989
  br i1 %spec.select.i.i1990, label %to_clk.exit1986.to_clk.exit1994_crit_edge, label %if.end.i1992

to_clk.exit1986.to_clk.exit1994_crit_edge:        ; preds = %to_clk.exit1986
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit1994

if.end.i1992:                                     ; preds = %to_clk.exit1986
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1991 = getelementptr inbounds %struct.clk_hw, ptr %call.i1987, i32 0, i32 1
  %526 = ptrtoint ptr %clk.i1991 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %clk.i1991, align 4
  br label %to_clk.exit1994

to_clk.exit1994:                                  ; preds = %if.end.i1992, %to_clk.exit1986.to_clk.exit1994_crit_edge
  %retval.0.i1993 = phi ptr [ %527, %if.end.i1992 ], [ %call.i1987, %to_clk.exit1986.to_clk.exit1994_crit_edge ]
  store ptr %retval.0.i1993, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 142), align 4
  %528 = load ptr, ptr @ccm_base, align 4
  %add.ptr559 = getelementptr i8, ptr %528, i32 24
  %call.i1995 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.60, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr559, i8 noundef zeroext 12, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i1996 = icmp eq ptr %call.i1995, null
  %cmp.i.i1997 = icmp ugt ptr %call.i1995, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1998 = or i1 %tobool.not.i.i1996, %cmp.i.i1997
  br i1 %spec.select.i.i1998, label %to_clk.exit1994.to_clk.exit2002_crit_edge, label %if.end.i2000

to_clk.exit1994.to_clk.exit2002_crit_edge:        ; preds = %to_clk.exit1994
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit2002

if.end.i2000:                                     ; preds = %to_clk.exit1994
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i1999 = getelementptr inbounds %struct.clk_hw, ptr %call.i1995, i32 0, i32 1
  %529 = ptrtoint ptr %clk.i1999 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %clk.i1999, align 4
  br label %to_clk.exit2002

to_clk.exit2002:                                  ; preds = %if.end.i2000, %to_clk.exit1994.to_clk.exit2002_crit_edge
  %retval.0.i2001 = phi ptr [ %530, %if.end.i2000 ], [ %call.i1995, %to_clk.exit1994.to_clk.exit2002_crit_edge ]
  store ptr %retval.0.i2001, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 155), align 4
  %531 = load ptr, ptr @ccm_base, align 4
  %add.ptr562 = getelementptr i8, ptr %531, i32 100
  %call.i2003 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.181, i32 noundef 4, ptr noundef %add.ptr562, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i2004 = icmp eq ptr %call.i2003, null
  %cmp.i.i2005 = icmp ugt ptr %call.i2003, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i2006 = or i1 %tobool.not.i.i2004, %cmp.i.i2005
  br i1 %spec.select.i.i2006, label %to_clk.exit2002.to_clk.exit2010_crit_edge, label %if.end.i2008

to_clk.exit2002.to_clk.exit2010_crit_edge:        ; preds = %to_clk.exit2002
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit2010

if.end.i2008:                                     ; preds = %to_clk.exit2002
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i2007 = getelementptr inbounds %struct.clk_hw, ptr %call.i2003, i32 0, i32 1
  %532 = ptrtoint ptr %clk.i2007 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %clk.i2007, align 4
  br label %to_clk.exit2010

to_clk.exit2010:                                  ; preds = %if.end.i2008, %to_clk.exit2002.to_clk.exit2010_crit_edge
  %retval.0.i2009 = phi ptr [ %533, %if.end.i2008 ], [ %call.i2003, %to_clk.exit2002.to_clk.exit2010_crit_edge ]
  store ptr %retval.0.i2009, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 143), align 4
  %534 = load ptr, ptr @ccm_base, align 4
  %add.ptr565 = getelementptr i8, ptr %534, i32 64
  %call.i2011 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.59, i32 noundef 4, ptr noundef %add.ptr565, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i2012 = icmp eq ptr %call.i2011, null
  %cmp.i.i2013 = icmp ugt ptr %call.i2011, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i2014 = or i1 %tobool.not.i.i2012, %cmp.i.i2013
  br i1 %spec.select.i.i2014, label %to_clk.exit2010.to_clk.exit2018_crit_edge, label %if.end.i2016

to_clk.exit2010.to_clk.exit2018_crit_edge:        ; preds = %to_clk.exit2010
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit2018

if.end.i2016:                                     ; preds = %to_clk.exit2010
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i2015 = getelementptr inbounds %struct.clk_hw, ptr %call.i2011, i32 0, i32 1
  %535 = ptrtoint ptr %clk.i2015 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %clk.i2015, align 4
  br label %to_clk.exit2018

to_clk.exit2018:                                  ; preds = %if.end.i2016, %to_clk.exit2010.to_clk.exit2018_crit_edge
  %retval.0.i2017 = phi ptr [ %536, %if.end.i2016 ], [ %call.i2011, %to_clk.exit2010.to_clk.exit2018_crit_edge ]
  store ptr %retval.0.i2017, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 150), align 4
  %537 = load ptr, ptr @ccm_base, align 4
  %add.ptr568 = getelementptr i8, ptr %537, i32 64
  %call.i2019 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.59, i32 noundef 4, ptr noundef %add.ptr568, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i2020 = icmp eq ptr %call.i2019, null
  %cmp.i.i2021 = icmp ugt ptr %call.i2019, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i2022 = or i1 %tobool.not.i.i2020, %cmp.i.i2021
  br i1 %spec.select.i.i2022, label %to_clk.exit2018.to_clk.exit2026_crit_edge, label %if.end.i2024

to_clk.exit2018.to_clk.exit2026_crit_edge:        ; preds = %to_clk.exit2018
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit2026

if.end.i2024:                                     ; preds = %to_clk.exit2018
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i2023 = getelementptr inbounds %struct.clk_hw, ptr %call.i2019, i32 0, i32 1
  %538 = ptrtoint ptr %clk.i2023 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %clk.i2023, align 4
  br label %to_clk.exit2026

to_clk.exit2026:                                  ; preds = %if.end.i2024, %to_clk.exit2018.to_clk.exit2026_crit_edge
  %retval.0.i2025 = phi ptr [ %539, %if.end.i2024 ], [ %call.i2019, %to_clk.exit2018.to_clk.exit2026_crit_edge ]
  store ptr %retval.0.i2025, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 151), align 4
  %540 = load ptr, ptr @ccm_base, align 4
  %add.ptr571 = getelementptr i8, ptr %540, i32 88
  %call.i2027 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.59, i32 noundef 4, ptr noundef %add.ptr571, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i2028 = icmp eq ptr %call.i2027, null
  %cmp.i.i2029 = icmp ugt ptr %call.i2027, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i2030 = or i1 %tobool.not.i.i2028, %cmp.i.i2029
  br i1 %spec.select.i.i2030, label %to_clk.exit2026.to_clk.exit2034_crit_edge, label %if.end.i2032

to_clk.exit2026.to_clk.exit2034_crit_edge:        ; preds = %to_clk.exit2026
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit2034

if.end.i2032:                                     ; preds = %to_clk.exit2026
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i2031 = getelementptr inbounds %struct.clk_hw, ptr %call.i2027, i32 0, i32 1
  %541 = ptrtoint ptr %clk.i2031 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %clk.i2031, align 4
  br label %to_clk.exit2034

to_clk.exit2034:                                  ; preds = %if.end.i2032, %to_clk.exit2026.to_clk.exit2034_crit_edge
  %retval.0.i2033 = phi ptr [ %542, %if.end.i2032 ], [ %call.i2027, %to_clk.exit2026.to_clk.exit2034_crit_edge ]
  store ptr %retval.0.i2033, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 152), align 4
  %543 = load ptr, ptr @ccm_base, align 4
  %add.ptr574 = getelementptr i8, ptr %543, i32 88
  %call.i2035 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.59, i32 noundef 4, ptr noundef %add.ptr574, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i2036 = icmp eq ptr %call.i2035, null
  %cmp.i.i2037 = icmp ugt ptr %call.i2035, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i2038 = or i1 %tobool.not.i.i2036, %cmp.i.i2037
  br i1 %spec.select.i.i2038, label %to_clk.exit2034.to_clk.exit2042_crit_edge, label %if.end.i2040

to_clk.exit2034.to_clk.exit2042_crit_edge:        ; preds = %to_clk.exit2034
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit2042

if.end.i2040:                                     ; preds = %to_clk.exit2034
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i2039 = getelementptr inbounds %struct.clk_hw, ptr %call.i2035, i32 0, i32 1
  %544 = ptrtoint ptr %clk.i2039 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %clk.i2039, align 4
  br label %to_clk.exit2042

to_clk.exit2042:                                  ; preds = %if.end.i2040, %to_clk.exit2034.to_clk.exit2042_crit_edge
  %retval.0.i2041 = phi ptr [ %545, %if.end.i2040 ], [ %call.i2035, %to_clk.exit2034.to_clk.exit2042_crit_edge ]
  store ptr %retval.0.i2041, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 153), align 4
  %546 = load ptr, ptr @ccm_base, align 4
  %add.ptr577 = getelementptr i8, ptr %546, i32 88
  %call.i2043 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr577, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i2044 = icmp eq ptr %call.i2043, null
  %cmp.i.i2045 = icmp ugt ptr %call.i2043, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i2046 = or i1 %tobool.not.i.i2044, %cmp.i.i2045
  br i1 %spec.select.i.i2046, label %to_clk.exit2042.to_clk.exit2050_crit_edge, label %if.end.i2048

to_clk.exit2042.to_clk.exit2050_crit_edge:        ; preds = %to_clk.exit2042
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit2050

if.end.i2048:                                     ; preds = %to_clk.exit2042
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i2047 = getelementptr inbounds %struct.clk_hw, ptr %call.i2043, i32 0, i32 1
  %547 = ptrtoint ptr %clk.i2047 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %clk.i2047, align 4
  br label %to_clk.exit2050

to_clk.exit2050:                                  ; preds = %if.end.i2048, %to_clk.exit2042.to_clk.exit2050_crit_edge
  %retval.0.i2049 = phi ptr [ %548, %if.end.i2048 ], [ %call.i2043, %to_clk.exit2042.to_clk.exit2050_crit_edge ]
  store ptr %retval.0.i2049, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 182), align 4
  %549 = load ptr, ptr @ccm_base, align 4
  %add.ptr580 = getelementptr i8, ptr %549, i32 8
  %call.i2051 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.59, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr580, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i2052 = icmp eq ptr %call.i2051, null
  %cmp.i.i2053 = icmp ugt ptr %call.i2051, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i2054 = or i1 %tobool.not.i.i2052, %cmp.i.i2053
  br i1 %spec.select.i.i2054, label %to_clk.exit2050.to_clk.exit2058_crit_edge, label %if.end.i2056

to_clk.exit2050.to_clk.exit2058_crit_edge:        ; preds = %to_clk.exit2050
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit2058

if.end.i2056:                                     ; preds = %to_clk.exit2050
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i2055 = getelementptr inbounds %struct.clk_hw, ptr %call.i2051, i32 0, i32 1
  %550 = ptrtoint ptr %clk.i2055 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %clk.i2055, align 4
  br label %to_clk.exit2058

to_clk.exit2058:                                  ; preds = %if.end.i2056, %to_clk.exit2050.to_clk.exit2058_crit_edge
  %retval.0.i2057 = phi ptr [ %551, %if.end.i2056 ], [ %call.i2051, %to_clk.exit2050.to_clk.exit2058_crit_edge ]
  store ptr %retval.0.i2057, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 183), align 4
  %552 = load ptr, ptr @ccm_base, align 4
  %add.ptr583 = getelementptr i8, ptr %552, i32 88
  %call.i2059 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.60, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr583, i8 noundef zeroext 10, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i2060 = icmp eq ptr %call.i2059, null
  %cmp.i.i2061 = icmp ugt ptr %call.i2059, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i2062 = or i1 %tobool.not.i.i2060, %cmp.i.i2061
  br i1 %spec.select.i.i2062, label %to_clk.exit2058.to_clk.exit2066_crit_edge, label %if.end.i2064

to_clk.exit2058.to_clk.exit2066_crit_edge:        ; preds = %to_clk.exit2058
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit2066

if.end.i2064:                                     ; preds = %to_clk.exit2058
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i2063 = getelementptr inbounds %struct.clk_hw, ptr %call.i2059, i32 0, i32 1
  %553 = ptrtoint ptr %clk.i2063 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %clk.i2063, align 4
  br label %to_clk.exit2066

to_clk.exit2066:                                  ; preds = %if.end.i2064, %to_clk.exit2058.to_clk.exit2066_crit_edge
  %retval.0.i2065 = phi ptr [ %554, %if.end.i2064 ], [ %call.i2059, %to_clk.exit2058.to_clk.exit2066_crit_edge ]
  store ptr %retval.0.i2065, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 184), align 4
  %555 = load ptr, ptr @ccm_base, align 4
  %add.ptr586 = getelementptr i8, ptr %555, i32 108
  %call.i2067 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %add.ptr586, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i2068 = icmp eq ptr %call.i2067, null
  %cmp.i.i2069 = icmp ugt ptr %call.i2067, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i2070 = or i1 %tobool.not.i.i2068, %cmp.i.i2069
  br i1 %spec.select.i.i2070, label %to_clk.exit2066.to_clk.exit2074_crit_edge, label %if.end.i2072

to_clk.exit2066.to_clk.exit2074_crit_edge:        ; preds = %to_clk.exit2066
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit2074

if.end.i2072:                                     ; preds = %to_clk.exit2066
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i2071 = getelementptr inbounds %struct.clk_hw, ptr %call.i2067, i32 0, i32 1
  %556 = ptrtoint ptr %clk.i2071 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %clk.i2071, align 4
  br label %to_clk.exit2074

to_clk.exit2074:                                  ; preds = %if.end.i2072, %to_clk.exit2066.to_clk.exit2074_crit_edge
  %retval.0.i2073 = phi ptr [ %557, %if.end.i2072 ], [ %call.i2067, %to_clk.exit2066.to_clk.exit2074_crit_edge ]
  store ptr %retval.0.i2073, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 189), align 4
  tail call void @imx_check_clocks(ptr noundef nonnull @clk, i32 noundef 191) #4
  %558 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 115), align 4
  %559 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 15), align 4
  %call589 = tail call i32 @clk_set_parent(ptr noundef %558, ptr noundef %559) #4
  %560 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 117), align 4
  %561 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 115), align 4
  %call590 = tail call i32 @clk_get_rate(ptr noundef %561) #4
  %div625 = lshr i32 %call590, 1
  %call591 = tail call i32 @clk_set_rate(ptr noundef %560, i32 noundef %div625) #4
  %562 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 118), align 4
  %563 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 117), align 4
  %call592 = tail call i32 @clk_get_rate(ptr noundef %563) #4
  %div593626 = lshr i32 %call592, 1
  %call594 = tail call i32 @clk_set_rate(ptr noundef %562, i32 noundef %div593626) #4
  %564 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 119), align 4
  %565 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 118), align 4
  %call595 = tail call i32 @clk_get_rate(ptr noundef %565) #4
  %div596627 = lshr i32 %call595, 1
  %call597 = tail call i32 @clk_set_rate(ptr noundef %564, i32 noundef %div596627) #4
  %566 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 120), align 4
  %567 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 15), align 4
  %call598 = tail call i32 @clk_set_parent(ptr noundef %566, ptr noundef %567) #4
  %568 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 122), align 4
  %569 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 120), align 4
  %call599 = tail call i32 @clk_get_rate(ptr noundef %569) #4
  %div600628 = lshr i32 %call599, 1
  %call601 = tail call i32 @clk_set_rate(ptr noundef %568, i32 noundef %div600628) #4
  %570 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 123), align 4
  %571 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 122), align 4
  %call602 = tail call i32 @clk_get_rate(ptr noundef %571) #4
  %div603629 = lshr i32 %call602, 1
  %call604 = tail call i32 @clk_set_rate(ptr noundef %570, i32 noundef %div603629) #4
  %572 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 124), align 4
  %573 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 123), align 4
  %call605 = tail call i32 @clk_get_rate(ptr noundef %573) #4
  %div606630 = lshr i32 %call605, 1
  %call607 = tail call i32 @clk_set_rate(ptr noundef %572, i32 noundef %div606630) #4
  %574 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 97), align 4
  %575 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 9), align 4
  %call608 = tail call i32 @clk_set_parent(ptr noundef %574, ptr noundef %575) #4
  %576 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 101), align 4
  %577 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 9), align 4
  %call609 = tail call i32 @clk_set_parent(ptr noundef %576, ptr noundef %577) #4
  %578 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 105), align 4
  %579 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 9), align 4
  %call610 = tail call i32 @clk_set_parent(ptr noundef %578, ptr noundef %579) #4
  %580 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 109), align 4
  %581 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 9), align 4
  %call611 = tail call i32 @clk_set_parent(ptr noundef %580, ptr noundef %581) #4
  br label %for.body

for.body:                                         ; preds = %clk_prepare_enable.exit.for.body_crit_edge, %to_clk.exit2074
  %i.02077 = phi i32 [ 0, %to_clk.exit2074 ], [ %inc, %clk_prepare_enable.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x i32], ptr @clks_init_on, i32 0, i32 %i.02077
  %582 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %arrayidx, align 4
  %arrayidx612 = getelementptr [191 x ptr], ptr @clk, i32 0, i32 %583
  %584 = ptrtoint ptr %arrayidx612 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %arrayidx612, align 4
  %call.i2075 = tail call i32 @clk_prepare(ptr noundef %585) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2075)
  %tobool.not.i = icmp eq i32 %call.i2075, 0
  br i1 %tobool.not.i, label %if.end.i2076, label %for.body.clk_prepare_enable.exit_crit_edge

for.body.clk_prepare_enable.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i2076:                                     ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %585) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i2076.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i2076.clk_prepare_enable.exit_crit_edge:   ; preds = %if.end.i2076
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i2076
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %585) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i2076.clk_prepare_enable.exit_crit_edge, %for.body.clk_prepare_enable.exit_crit_edge
  %inc = add nuw nsw i32 %i.02077, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %clk_prepare_enable.exit.for.body_crit_edge

clk_prepare_enable.exit.for.body_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @register_syscore_ops(ptr noundef nonnull @vf610_clk_syscore_ops) #4
  store ptr @clk, ptr @clk_data, align 4
  store i32 191, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %call614 = tail call i32 @of_clk_add_provider(ptr noundef %ccm_node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vf610_get_fixed_clock(ptr noundef %ccm_node, ptr noundef %name) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_clk_get_by_name(ptr noundef %ccm_node, ptr noundef %name) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call ptr @imx_obtain_fixed_clock(ptr noundef %name, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk.0 = phi ptr [ %call2, %if.then ], [ %call, %entry.if.end_crit_edge ]
  ret ptr %clk.0
}

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
declare dso_local ptr @imx_clk_hw_pfd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clocks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_obtain_fixed_clock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_gate2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_clk_suspend() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ccm_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 16
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !480
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %2, ptr @cscmr1, align 4
  %3 = load ptr, ptr @ccm_base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #4, !srcloc !480
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  store i32 %5, ptr @cscmr2, align 4
  %6 = load ptr, ptr @ccm_base, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #4, !srcloc !480
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  store i32 %8, ptr @cscdr1, align 4
  %9 = load ptr, ptr @ccm_base, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #4, !srcloc !480
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  store i32 %11, ptr @cscdr2, align 4
  %12 = load ptr, ptr @ccm_base, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 28
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #4, !srcloc !480
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  store i32 %14, ptr @cscdr3, align 4
  %15 = load ptr, ptr @ccm_base, align 4
  %add.ptr18 = getelementptr i8, ptr %15, i32 64
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #4, !srcloc !480
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  store i32 %17, ptr @ccgr.0, align 4
  %18 = load ptr, ptr @ccm_base, align 4
  %add.ptr19.1 = getelementptr i8, ptr %18, i32 68
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.1) #4, !srcloc !480
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  store i32 %20, ptr @ccgr.1, align 4
  %21 = load ptr, ptr @ccm_base, align 4
  %add.ptr19.2 = getelementptr i8, ptr %21, i32 72
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.2) #4, !srcloc !480
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  store i32 %23, ptr @ccgr.2, align 4
  %24 = load ptr, ptr @ccm_base, align 4
  %add.ptr19.3 = getelementptr i8, ptr %24, i32 76
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.3) #4, !srcloc !480
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  store i32 %26, ptr @ccgr.3, align 4
  %27 = load ptr, ptr @ccm_base, align 4
  %add.ptr19.4 = getelementptr i8, ptr %27, i32 80
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.4) #4, !srcloc !480
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  store i32 %29, ptr @ccgr.4, align 4
  %30 = load ptr, ptr @ccm_base, align 4
  %add.ptr19.5 = getelementptr i8, ptr %30, i32 84
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.5) #4, !srcloc !480
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  store i32 %32, ptr @ccgr.5, align 4
  %33 = load ptr, ptr @ccm_base, align 4
  %add.ptr19.6 = getelementptr i8, ptr %33, i32 88
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.6) #4, !srcloc !480
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  store i32 %35, ptr @ccgr.6, align 4
  %36 = load ptr, ptr @ccm_base, align 4
  %add.ptr19.7 = getelementptr i8, ptr %36, i32 92
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.7) #4, !srcloc !480
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  store i32 %38, ptr @ccgr.7, align 4
  %39 = load ptr, ptr @ccm_base, align 4
  %add.ptr19.8 = getelementptr i8, ptr %39, i32 96
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.8) #4, !srcloc !480
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  store i32 %41, ptr @ccgr.8, align 4
  %42 = load ptr, ptr @ccm_base, align 4
  %add.ptr19.9 = getelementptr i8, ptr %42, i32 100
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.9) #4, !srcloc !480
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  store i32 %44, ptr @ccgr.9, align 4
  %45 = load ptr, ptr @ccm_base, align 4
  %add.ptr19.10 = getelementptr i8, ptr %45, i32 104
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.10) #4, !srcloc !480
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  store i32 %47, ptr @ccgr.10, align 4
  %48 = load ptr, ptr @ccm_base, align 4
  %add.ptr19.11 = getelementptr i8, ptr %48, i32 108
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.11) #4, !srcloc !480
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  store i32 %50, ptr @ccgr.11, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vf610_clk_resume() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cscmr1, align 4
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %2 = load ptr, ptr @ccm_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !481
  %3 = load i32, ptr @cscmr2, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = load ptr, ptr @ccm_base, align 4
  %add.ptr1 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %4) #4, !srcloc !481
  %6 = load i32, ptr @cscdr1, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = load ptr, ptr @ccm_base, align 4
  %add.ptr2 = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %7) #4, !srcloc !481
  %9 = load i32, ptr @cscdr2, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = load ptr, ptr @ccm_base, align 4
  %add.ptr3 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %10) #4, !srcloc !481
  %12 = load i32, ptr @cscdr3, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = load ptr, ptr @ccm_base, align 4
  %add.ptr4 = getelementptr i8, ptr %14, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %13) #4, !srcloc !481
  %15 = load i32, ptr @ccgr.0, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = load ptr, ptr @ccm_base, align 4
  %add.ptr5 = getelementptr i8, ptr %17, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %16) #4, !srcloc !481
  %18 = load i32, ptr @ccgr.1, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = load ptr, ptr @ccm_base, align 4
  %add.ptr6.1 = getelementptr i8, ptr %20, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.1, i32 %19) #4, !srcloc !481
  %21 = load i32, ptr @ccgr.2, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = load ptr, ptr @ccm_base, align 4
  %add.ptr6.2 = getelementptr i8, ptr %23, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.2, i32 %22) #4, !srcloc !481
  %24 = load i32, ptr @ccgr.3, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = load ptr, ptr @ccm_base, align 4
  %add.ptr6.3 = getelementptr i8, ptr %26, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.3, i32 %25) #4, !srcloc !481
  %27 = load i32, ptr @ccgr.4, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = load ptr, ptr @ccm_base, align 4
  %add.ptr6.4 = getelementptr i8, ptr %29, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.4, i32 %28) #4, !srcloc !481
  %30 = load i32, ptr @ccgr.5, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = load ptr, ptr @ccm_base, align 4
  %add.ptr6.5 = getelementptr i8, ptr %32, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.5, i32 %31) #4, !srcloc !481
  %33 = load i32, ptr @ccgr.6, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = load ptr, ptr @ccm_base, align 4
  %add.ptr6.6 = getelementptr i8, ptr %35, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.6, i32 %34) #4, !srcloc !481
  %36 = load i32, ptr @ccgr.7, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = load ptr, ptr @ccm_base, align 4
  %add.ptr6.7 = getelementptr i8, ptr %38, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.7, i32 %37) #4, !srcloc !481
  %39 = load i32, ptr @ccgr.8, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = load ptr, ptr @ccm_base, align 4
  %add.ptr6.8 = getelementptr i8, ptr %41, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.8, i32 %40) #4, !srcloc !481
  %42 = load i32, ptr @ccgr.9, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %44 = load ptr, ptr @ccm_base, align 4
  %add.ptr6.9 = getelementptr i8, ptr %44, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.9, i32 %43) #4, !srcloc !481
  %45 = load i32, ptr @ccgr.10, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = load ptr, ptr @ccm_base, align 4
  %add.ptr6.10 = getelementptr i8, ptr %47, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.10, i32 %46) #4, !srcloc !481
  %48 = load i32, ptr @ccgr.11, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = load ptr, ptr @ccm_base, align 4
  %add.ptr6.11 = getelementptr i8, ptr %50, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.11, i32 %49) #4, !srcloc !481
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 243)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 243)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466}
!llvm.module.flags = !{!468, !469, !470, !471, !472, !473, !474, !475}
!llvm.ident = !{!476}

!0 = !{ptr @__of_table_vf610, !1, !"__of_table_vf610", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-vf610.c", i32 472, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-vf610.c", i32 184, i32 25}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-vf610.c", i32 185, i32 29}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/imx/clk-vf610.c", i32 186, i32 28}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/imx/clk-vf610.c", i32 187, i32 24}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-vf610.c", i32 189, i32 57}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/imx/clk-vf610.c", i32 190, i32 57}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/imx/clk-vf610.c", i32 191, i32 61}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/imx/clk-vf610.c", i32 192, i32 60}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/imx/clk-vf610.c", i32 195, i32 59}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/imx/clk-vf610.c", i32 197, i32 30}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/imx/clk-vf610.c", i32 199, i32 43}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/imx/clk-vf610.c", i32 208, i32 32}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/imx/clk-vf610.c", i32 209, i32 32}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/imx/clk-vf610.c", i32 211, i32 35}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/imx/clk-vf610.c", i32 212, i32 35}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/imx/clk-vf610.c", i32 213, i32 35}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/imx/clk-vf610.c", i32 214, i32 35}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/imx/clk-vf610.c", i32 215, i32 35}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/imx/clk-vf610.c", i32 216, i32 35}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/imx/clk-vf610.c", i32 217, i32 35}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/imx/clk-vf610.c", i32 219, i32 24}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/imx/clk-vf610.c", i32 220, i32 24}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/imx/clk-vf610.c", i32 221, i32 24}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/imx/clk-vf610.c", i32 222, i32 24}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/imx/clk-vf610.c", i32 223, i32 24}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/imx/clk-vf610.c", i32 224, i32 24}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/imx/clk-vf610.c", i32 225, i32 24}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/imx/clk-vf610.c", i32 227, i32 27}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/imx/clk-vf610.c", i32 228, i32 27}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/imx/clk-vf610.c", i32 229, i32 27}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/imx/clk-vf610.c", i32 230, i32 27}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/imx/clk-vf610.c", i32 231, i32 27}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/imx/clk-vf610.c", i32 232, i32 27}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/imx/clk-vf610.c", i32 233, i32 27}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/imx/clk-vf610.c", i32 244, i32 33}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/imx/clk-vf610.c", i32 245, i32 33}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/imx/clk-vf610.c", i32 246, i32 33}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/imx/clk-vf610.c", i32 247, i32 33}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/imx/clk-vf610.c", i32 248, i32 33}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/imx/clk-vf610.c", i32 249, i32 33}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/imx/clk-vf610.c", i32 250, i32 33}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/imx/clk-vf610.c", i32 252, i32 29}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/imx/clk-vf610.c", i32 254, i32 29}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/imx/clk-vf610.c", i32 255, i32 29}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/imx/clk-vf610.c", i32 256, i32 29}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/imx/clk-vf610.c", i32 257, i32 29}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/imx/clk-vf610.c", i32 259, i32 29}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/imx/clk-vf610.c", i32 260, i32 29}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/imx/clk-vf610.c", i32 261, i32 29}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/imx/clk-vf610.c", i32 262, i32 29}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/imx/clk-vf610.c", i32 264, i32 29}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/imx/clk-vf610.c", i32 265, i32 29}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/imx/clk-vf610.c", i32 266, i32 29}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/imx/clk-vf610.c", i32 267, i32 29}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/imx/clk-vf610.c", i32 269, i32 32}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/imx/clk-vf610.c", i32 270, i32 32}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/imx/clk-vf610.c", i32 271, i32 27}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/imx/clk-vf610.c", i32 272, i32 27}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/imx/clk-vf610.c", i32 273, i32 27}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/imx/clk-vf610.c", i32 274, i32 32}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/imx/clk-vf610.c", i32 275, i32 27}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/imx/clk-vf610.c", i32 277, i32 33}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/imx/clk-vf610.c", i32 278, i32 66}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/imx/clk-vf610.c", i32 279, i32 33}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/imx/clk-vf610.c", i32 281, i32 25}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/imx/clk-vf610.c", i32 282, i32 24}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/imx/clk-vf610.c", i32 284, i32 27}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/imx/clk-vf610.c", i32 285, i32 27}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/imx/clk-vf610.c", i32 287, i32 25}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/imx/clk-vf610.c", i32 288, i32 25}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/imx/clk-vf610.c", i32 290, i32 29}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/imx/clk-vf610.c", i32 291, i32 28}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/imx/clk-vf610.c", i32 292, i32 32}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/imx/clk-vf610.c", i32 293, i32 32}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/imx/clk-vf610.c", i32 294, i32 32}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/imx/clk-vf610.c", i32 295, i32 25}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/imx/clk-vf610.c", i32 297, i32 29}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/imx/clk-vf610.c", i32 298, i32 28}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/imx/clk-vf610.c", i32 299, i32 32}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/imx/clk-vf610.c", i32 300, i32 32}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/imx/clk-vf610.c", i32 301, i32 32}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/imx/clk-vf610.c", i32 302, i32 25}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/imx/clk-vf610.c", i32 304, i32 28}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/imx/clk-vf610.c", i32 305, i32 28}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/imx/clk-vf610.c", i32 306, i32 28}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/imx/clk-vf610.c", i32 307, i32 31}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/imx/clk-vf610.c", i32 308, i32 24}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/imx/clk-vf610.c", i32 309, i32 27}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/imx/clk-vf610.c", i32 310, i32 25}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/imx/clk-vf610.c", i32 311, i32 25}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/imx/clk-vf610.c", i32 313, i32 23}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/imx/clk-vf610.c", i32 315, i32 25}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/imx/clk-vf610.c", i32 316, i32 25}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/imx/clk-vf610.c", i32 317, i32 25}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/imx/clk-vf610.c", i32 318, i32 25}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/imx/clk-vf610.c", i32 319, i32 25}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/imx/clk-vf610.c", i32 320, i32 25}
!196 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/imx/clk-vf610.c", i32 322, i32 24}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/imx/clk-vf610.c", i32 323, i32 24}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/imx/clk-vf610.c", i32 324, i32 24}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/imx/clk-vf610.c", i32 325, i32 24}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/imx/clk-vf610.c", i32 327, i32 25}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/imx/clk-vf610.c", i32 328, i32 25}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/imx/clk-vf610.c", i32 329, i32 25}
!210 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/imx/clk-vf610.c", i32 330, i32 25}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/imx/clk-vf610.c", i32 332, i32 23}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/imx/clk-vf610.c", i32 333, i32 23}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/imx/clk-vf610.c", i32 335, i32 30}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/imx/clk-vf610.c", i32 336, i32 29}
!220 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/imx/clk-vf610.c", i32 337, i32 30}
!222 = !{ptr @.str.110, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/imx/clk-vf610.c", i32 338, i32 26}
!224 = !{ptr @.str.111, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/imx/clk-vf610.c", i32 340, i32 30}
!226 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/imx/clk-vf610.c", i32 341, i32 29}
!228 = !{ptr @.str.113, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/imx/clk-vf610.c", i32 342, i32 30}
!230 = !{ptr @.str.114, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/imx/clk-vf610.c", i32 343, i32 26}
!232 = !{ptr @.str.115, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/imx/clk-vf610.c", i32 351, i32 32}
!234 = !{ptr @.str.116, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/imx/clk-vf610.c", i32 352, i32 32}
!236 = !{ptr @.str.117, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/imx/clk-vf610.c", i32 353, i32 35}
!238 = !{ptr @.str.118, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/imx/clk-vf610.c", i32 354, i32 32}
!240 = !{ptr @.str.119, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/imx/clk-vf610.c", i32 355, i32 32}
!242 = !{ptr @.str.120, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/imx/clk-vf610.c", i32 356, i32 35}
!244 = !{ptr @.str.121, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/imx/clk-vf610.c", i32 357, i32 32}
!246 = !{ptr @.str.122, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/imx/clk-vf610.c", i32 358, i32 32}
!248 = !{ptr @.str.123, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/imx/clk-vf610.c", i32 359, i32 35}
!250 = !{ptr @.str.124, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/imx/clk-vf610.c", i32 360, i32 32}
!252 = !{ptr @.str.125, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/imx/clk-vf610.c", i32 361, i32 32}
!254 = !{ptr @.str.126, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/imx/clk-vf610.c", i32 362, i32 35}
!256 = !{ptr @.str.127, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/imx/clk-vf610.c", i32 365, i32 24}
!258 = !{ptr @.str.128, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/imx/clk-vf610.c", i32 366, i32 24}
!260 = !{ptr @.str.129, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/imx/clk-vf610.c", i32 367, i32 24}
!262 = !{ptr @.str.130, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/imx/clk-vf610.c", i32 368, i32 24}
!264 = !{ptr @.str.131, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/imx/clk-vf610.c", i32 370, i32 28}
!266 = !{ptr @.str.132, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/imx/clk-vf610.c", i32 371, i32 27}
!268 = !{ptr @.str.133, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/imx/clk-vf610.c", i32 372, i32 28}
!270 = !{ptr @.str.134, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/imx/clk-vf610.c", i32 373, i32 24}
!272 = !{ptr @.str.135, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/imx/clk-vf610.c", i32 374, i32 28}
!274 = !{ptr @.str.136, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/imx/clk-vf610.c", i32 375, i32 27}
!276 = !{ptr @.str.137, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/imx/clk-vf610.c", i32 376, i32 28}
!278 = !{ptr @.str.138, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/imx/clk-vf610.c", i32 377, i32 24}
!280 = !{ptr @.str.139, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/imx/clk-vf610.c", i32 379, i32 25}
!282 = !{ptr @.str.140, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/clk/imx/clk-vf610.c", i32 380, i32 25}
!284 = !{ptr @.str.141, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/imx/clk-vf610.c", i32 382, i32 28}
!286 = !{ptr @.str.142, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/imx/clk-vf610.c", i32 383, i32 27}
!288 = !{ptr @.str.143, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/imx/clk-vf610.c", i32 384, i32 28}
!290 = !{ptr @.str.144, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/imx/clk-vf610.c", i32 385, i32 24}
!292 = !{ptr @.str.145, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/imx/clk-vf610.c", i32 387, i32 28}
!294 = !{ptr @.str.146, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/imx/clk-vf610.c", i32 388, i32 27}
!296 = !{ptr @.str.147, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/imx/clk-vf610.c", i32 389, i32 28}
!298 = !{ptr @.str.148, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/imx/clk-vf610.c", i32 390, i32 24}
!300 = !{ptr @.str.149, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/imx/clk-vf610.c", i32 392, i32 28}
!302 = !{ptr @.str.150, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/imx/clk-vf610.c", i32 393, i32 27}
!304 = !{ptr @.str.151, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/imx/clk-vf610.c", i32 394, i32 28}
!306 = !{ptr @.str.152, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/imx/clk-vf610.c", i32 395, i32 24}
!308 = !{ptr @.str.153, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/imx/clk-vf610.c", i32 397, i32 28}
!310 = !{ptr @.str.154, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/imx/clk-vf610.c", i32 398, i32 27}
!312 = !{ptr @.str.155, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/clk/imx/clk-vf610.c", i32 399, i32 28}
!314 = !{ptr @.str.156, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/imx/clk-vf610.c", i32 400, i32 24}
!316 = !{ptr @.str.157, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/imx/clk-vf610.c", i32 402, i32 28}
!318 = !{ptr @.str.158, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/clk/imx/clk-vf610.c", i32 403, i32 27}
!320 = !{ptr @.str.159, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/imx/clk-vf610.c", i32 404, i32 28}
!322 = !{ptr @.str.160, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/clk/imx/clk-vf610.c", i32 405, i32 24}
!324 = !{ptr @.str.161, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/clk/imx/clk-vf610.c", i32 407, i32 27}
!326 = !{ptr @.str.162, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/imx/clk-vf610.c", i32 408, i32 26}
!328 = !{ptr @.str.163, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/clk/imx/clk-vf610.c", i32 409, i32 31}
!330 = !{ptr @.str.164, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/imx/clk-vf610.c", i32 410, i32 32}
!332 = !{ptr @.str.165, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/imx/clk-vf610.c", i32 411, i32 23}
!334 = !{ptr @.str.166, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/imx/clk-vf610.c", i32 413, i32 27}
!336 = !{ptr @.str.167, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/clk/imx/clk-vf610.c", i32 414, i32 26}
!338 = !{ptr @.str.168, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/imx/clk-vf610.c", i32 415, i32 25}
!340 = !{ptr @.str.169, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/imx/clk-vf610.c", i32 417, i32 28}
!342 = !{ptr @.str.170, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/imx/clk-vf610.c", i32 418, i32 27}
!344 = !{ptr @.str.171, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/imx/clk-vf610.c", i32 419, i32 28}
!346 = !{ptr @.str.172, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/clk/imx/clk-vf610.c", i32 420, i32 33}
!348 = !{ptr @.str.173, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/clk/imx/clk-vf610.c", i32 421, i32 24}
!350 = !{ptr @.str.174, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/imx/clk-vf610.c", i32 423, i32 24}
!352 = !{ptr @.str.175, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/imx/clk-vf610.c", i32 424, i32 24}
!354 = !{ptr @.str.176, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/clk/imx/clk-vf610.c", i32 425, i32 24}
!356 = !{ptr @.str.177, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/clk/imx/clk-vf610.c", i32 426, i32 24}
!358 = !{ptr @.str.178, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/clk/imx/clk-vf610.c", i32 428, i32 24}
!360 = !{ptr @.str.179, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/clk/imx/clk-vf610.c", i32 430, i32 31}
!362 = !{ptr @.str.180, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/imx/clk-vf610.c", i32 431, i32 28}
!364 = !{ptr @.str.181, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/clk/imx/clk-vf610.c", i32 432, i32 31}
!366 = !{ptr @.str.182, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/clk/imx/clk-vf610.c", i32 433, i32 28}
!368 = !{ptr @.str.183, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/clk/imx/clk-vf610.c", i32 435, i32 27}
!370 = !{ptr @.str.184, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/clk/imx/clk-vf610.c", i32 436, i32 27}
!372 = !{ptr @.str.185, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/clk/imx/clk-vf610.c", i32 437, i32 27}
!374 = !{ptr @.str.186, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/clk/imx/clk-vf610.c", i32 438, i32 27}
!376 = !{ptr @.str.187, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/clk/imx/clk-vf610.c", i32 440, i32 24}
!378 = !{ptr @.str.188, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/clk/imx/clk-vf610.c", i32 441, i32 23}
!380 = !{ptr @.str.189, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/clk/imx/clk-vf610.c", i32 442, i32 25}
!382 = !{ptr @.str.190, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/clk/imx/clk-vf610.c", i32 443, i32 24}
!384 = !{ptr @clk, !385, !"clk", i1 false, i1 false}
!385 = !{!"../drivers/clk/imx/clk-vf610.c", i32 113, i32 20}
!386 = !{ptr @anatop_base, !387, !"anatop_base", i1 false, i1 false}
!387 = !{!"../drivers/clk/imx/clk-vf610.c", i32 68, i32 22}
!388 = !{ptr @ccm_base, !389, !"ccm_base", i1 false, i1 false}
!389 = !{!"../drivers/clk/imx/clk-vf610.c", i32 69, i32 22}
!390 = !{ptr @slow_sels, !391, !"slow_sels", i1 false, i1 false}
!391 = !{!"../drivers/clk/imx/clk-vf610.c", i32 73, i32 20}
!392 = !{ptr @fast_sels, !393, !"fast_sels", i1 false, i1 false}
!393 = !{!"../drivers/clk/imx/clk-vf610.c", i32 72, i32 20}
!394 = !{ptr @pll_bypass_src_sels, !395, !"pll_bypass_src_sels", i1 false, i1 false}
!395 = !{!"../drivers/clk/imx/clk-vf610.c", i32 76, i32 20}
!396 = !{ptr @pll1_bypass_sels, !397, !"pll1_bypass_sels", i1 false, i1 false}
!397 = !{!"../drivers/clk/imx/clk-vf610.c", i32 77, i32 20}
!398 = !{ptr @pll2_bypass_sels, !399, !"pll2_bypass_sels", i1 false, i1 false}
!399 = !{!"../drivers/clk/imx/clk-vf610.c", i32 78, i32 20}
!400 = !{ptr @pll3_bypass_sels, !401, !"pll3_bypass_sels", i1 false, i1 false}
!401 = !{!"../drivers/clk/imx/clk-vf610.c", i32 79, i32 20}
!402 = !{ptr @pll4_bypass_sels, !403, !"pll4_bypass_sels", i1 false, i1 false}
!403 = !{!"../drivers/clk/imx/clk-vf610.c", i32 80, i32 20}
!404 = !{ptr @pll5_bypass_sels, !405, !"pll5_bypass_sels", i1 false, i1 false}
!405 = !{!"../drivers/clk/imx/clk-vf610.c", i32 81, i32 20}
!406 = !{ptr @pll6_bypass_sels, !407, !"pll6_bypass_sels", i1 false, i1 false}
!407 = !{!"../drivers/clk/imx/clk-vf610.c", i32 82, i32 20}
!408 = !{ptr @pll7_bypass_sels, !409, !"pll7_bypass_sels", i1 false, i1 false}
!409 = !{!"../drivers/clk/imx/clk-vf610.c", i32 83, i32 20}
!410 = !{ptr @pll1_sels, !411, !"pll1_sels", i1 false, i1 false}
!411 = !{!"../drivers/clk/imx/clk-vf610.c", i32 74, i32 20}
!412 = !{ptr @pll2_sels, !413, !"pll2_sels", i1 false, i1 false}
!413 = !{!"../drivers/clk/imx/clk-vf610.c", i32 75, i32 20}
!414 = !{ptr @sys_sels, !415, !"sys_sels", i1 false, i1 false}
!415 = !{!"../drivers/clk/imx/clk-vf610.c", i32 84, i32 20}
!416 = !{ptr @ddr_sels, !417, !"ddr_sels", i1 false, i1 false}
!417 = !{!"../drivers/clk/imx/clk-vf610.c", i32 85, i32 20}
!418 = !{ptr @pll4_audio_div_table, !419, !"pll4_audio_div_table", i1 false, i1 false}
!419 = !{!"../drivers/clk/imx/clk-vf610.c", i32 101, i32 35}
!420 = !{ptr @qspi_sels, !421, !"qspi_sels", i1 false, i1 false}
!421 = !{!"../drivers/clk/imx/clk-vf610.c", i32 91, i32 20}
!422 = !{ptr @rmii_sels, !423, !"rmii_sels", i1 false, i1 false}
!423 = !{!"../drivers/clk/imx/clk-vf610.c", i32 86, i32 20}
!424 = !{ptr @.str.191, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/clk/imx/clk-vf610.c", i32 87, i32 73}
!426 = !{ptr @enet_ts_sels, !427, !"enet_ts_sels", i1 false, i1 false}
!427 = !{!"../drivers/clk/imx/clk-vf610.c", i32 87, i32 20}
!428 = !{ptr @esdhc_sels, !429, !"esdhc_sels", i1 false, i1 false}
!429 = !{!"../drivers/clk/imx/clk-vf610.c", i32 92, i32 20}
!430 = !{ptr @ftm_ext_sels, !431, !"ftm_ext_sels", i1 false, i1 false}
!431 = !{!"../drivers/clk/imx/clk-vf610.c", i32 97, i32 20}
!432 = !{ptr @ftm_fix_sels, !433, !"ftm_fix_sels", i1 false, i1 false}
!433 = !{!"../drivers/clk/imx/clk-vf610.c", i32 98, i32 20}
!434 = !{ptr @dcu_sels, !435, !"dcu_sels", i1 false, i1 false}
!435 = !{!"../drivers/clk/imx/clk-vf610.c", i32 93, i32 20}
!436 = !{ptr @.str.192, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/clk/imx/clk-vf610.c", i32 88, i32 49}
!438 = !{ptr @.str.193, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/clk/imx/clk-vf610.c", i32 88, i32 56}
!440 = !{ptr @esai_sels, !441, !"esai_sels", i1 false, i1 false}
!441 = !{!"../drivers/clk/imx/clk-vf610.c", i32 88, i32 20}
!442 = !{ptr @sai_sels, !443, !"sai_sels", i1 false, i1 false}
!443 = !{!"../drivers/clk/imx/clk-vf610.c", i32 89, i32 20}
!444 = !{ptr @nfc_sels, !445, !"nfc_sels", i1 false, i1 false}
!445 = !{!"../drivers/clk/imx/clk-vf610.c", i32 90, i32 20}
!446 = !{ptr @gpu_sels, !447, !"gpu_sels", i1 false, i1 false}
!447 = !{!"../drivers/clk/imx/clk-vf610.c", i32 94, i32 20}
!448 = !{ptr @vadc_sels, !449, !"vadc_sels", i1 false, i1 false}
!449 = !{!"../drivers/clk/imx/clk-vf610.c", i32 95, i32 20}
!450 = !{ptr @clks_init_on, !451, !"clks_init_on", i1 false, i1 false}
!451 = !{!"../drivers/clk/imx/clk-vf610.c", i32 123, i32 27}
!452 = !{ptr @vf610_clk_syscore_ops, !453, !"vf610_clk_syscore_ops", i1 false, i1 false}
!453 = !{!"../drivers/clk/imx/clk-vf610.c", i32 174, i32 27}
!454 = !{ptr @cscmr1, !455, !"cscmr1", i1 false, i1 false}
!455 = !{!"../drivers/clk/imx/clk-vf610.c", i32 116, i32 12}
!456 = !{ptr @cscmr2, !457, !"cscmr2", i1 false, i1 false}
!457 = !{!"../drivers/clk/imx/clk-vf610.c", i32 117, i32 12}
!458 = !{ptr @cscdr1, !459, !"cscdr1", i1 false, i1 false}
!459 = !{!"../drivers/clk/imx/clk-vf610.c", i32 118, i32 12}
!460 = !{ptr @cscdr2, !461, !"cscdr2", i1 false, i1 false}
!461 = !{!"../drivers/clk/imx/clk-vf610.c", i32 119, i32 12}
!462 = !{ptr @cscdr3, !463, !"cscdr3", i1 false, i1 false}
!463 = !{!"../drivers/clk/imx/clk-vf610.c", i32 120, i32 12}
!464 = distinct !{null, !465, !"ccgr", i1 false, i1 false}
!465 = !{!"../drivers/clk/imx/clk-vf610.c", i32 121, i32 12}
!466 = !{ptr @clk_data, !467, !"clk_data", i1 false, i1 false}
!467 = !{!"../drivers/clk/imx/clk-vf610.c", i32 114, i32 32}
!468 = !{i32 1, !"wchar_size", i32 2}
!469 = !{i32 1, !"min_enum_size", i32 4}
!470 = !{i32 8, !"branch-target-enforcement", i32 0}
!471 = !{i32 8, !"sign-return-address", i32 0}
!472 = !{i32 8, !"sign-return-address-all", i32 0}
!473 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!474 = !{i32 7, !"uwtable", i32 1}
!475 = !{i32 7, !"frame-pointer", i32 2}
!476 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!477 = !{!"branch_weights", i32 1, i32 2000}
!478 = !{i64 2151695054, i64 2151695546, i64 2151695091, i64 2151695147, i64 2151695181, i64 2151695205, i64 2151695246, i64 2151695267, i64 2151695295, i64 2151695329}
!479 = !{i64 2151696652, i64 2151697144, i64 2151696689, i64 2151696745, i64 2151696779, i64 2151696803, i64 2151696844, i64 2151696865, i64 2151696893, i64 2151696927}
!480 = !{i64 4014875}
!481 = !{i64 4014457}
