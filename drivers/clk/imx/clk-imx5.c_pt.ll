; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-imx5.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_imx50_ccm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx50-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mx50_clocks_init }, section "__clk_of_table", align 4
@__of_table_imx51_ccm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx51-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mx51_clocks_init }, section "__clk_of_table", align 4
@__of_table_imx53_ccm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mx53_clocks_init }, section "__clk_of_table", align 4
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/imx/clk-imx5.c\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll1_sw\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osc\00", [28 x i8] zeroinitializer }, align 32
@clk = internal global { [206 x ptr], [200 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll2_sw\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll3_sw\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"main_bus\00", [23 x i8] zeroinitializer }, align 32
@standard_pll_sel = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.6], [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lp_apm\00", [25 x i8] zeroinitializer }, align 32
@lp_apm_sel = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"esdhc_a_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"esdhc_b_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"esdhc_c_sel\00", [20 x i8] zeroinitializer }, align 32
@esdhc_c_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.12, ptr @.str.15], [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"esdhc_d_sel\00", [20 x i8] zeroinitializer }, align 32
@esdhc_d_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.12, ptr @.str.15], [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"esdhc1_per_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"esdhc_a_podf\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"esdhc2_per_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"esdhc3_per_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"esdhc_b_podf\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"esdhc4_per_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb_phy1_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_phy_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb_phy2_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c3_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_root\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart4_ipg_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart4_per_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart_root\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart5_ipg_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart5_per_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cko1_sel\00", [23 x i8] zeroinitializer }, align 32
@mx53_cko1_sel = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.70, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.58, ptr @.str.160, ptr @.str.59, ptr @.str.35, ptr @.str.71, ptr @.str.35, ptr @.str.35, ptr @.str.43, ptr @.str.23, ptr @.str.21, ptr @.str.36, ptr @.str.35], [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cko1_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cko1\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cko2_sel\00", [23 x i8] zeroinitializer }, align 32
@mx53_cko2_sel = internal global { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.12, ptr @.str.65, ptr @.str.35, ptr @.str.62, ptr @.str.35, ptr @.str.15, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.117, ptr @.str.105, ptr @.str.2, ptr @.str.37, ptr @.str.35, ptr @.str.9, ptr @.str.130, ptr @.str.132, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.18, ptr @.str.161, ptr @.str.6, ptr @.str.25, ptr @.str.35, ptr @.str.35, ptr @.str.35], [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cko2_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cko2\00", [27 x i8] zeroinitializer }, align 32
@clk_data = internal global { %struct.clk_onecell_data, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX50\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ckil\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ckih1\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ckih2\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"per_lp_apm\00", [21 x i8] zeroinitializer }, align 32
@per_lp_apm_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.5, ptr @.str.6], [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_pred1\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_pred2\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_podf\00", [23 x i8] zeroinitializer }, align 32
@per_root_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.42, ptr @.str.23], [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ahb_max\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aips_tz1\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aips_tz2\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tmax1\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tmax2\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tmax3\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spba\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"axi_a\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"axi_b\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"esdhc_a_pred\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"esdhc_b_pred\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"emi_sel\00", [24 x i8] zeroinitializer }, align 32
@emi_slow_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.5, ptr @.str.43], [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emi_slow_podf\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nfc_podf\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ecspi_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ecspi_pred\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ecspi_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usboh3_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usboh3_pred\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usboh3_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb_phy_pred\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb_phy_podf\00", [19 x i8] zeroinitializer }, align 32
@usb_phy_sel_str = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.67], [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"step_sel\00", [23 x i8] zeroinitializer }, align 32
@step_sels = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpu_podf_sel\00", [19 x i8] zeroinitializer }, align 32
@cpu_podf_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.68], [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu_podf\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"di_pred\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iim_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart1_ipg_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart1_per_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart2_ipg_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart2_per_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart3_ipg_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart3_per_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c1_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c2_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm1_ipg_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm1_hf_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm2_ipg_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm2_hf_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpt_ipg_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpt_hf_gate\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fec_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usboh3_gate\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usboh3_per_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"esdhc1_ipg_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"esdhc2_ipg_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"esdhc3_ipg_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"esdhc4_ipg_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi1_ipg_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi2_ipg_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi3_ipg_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecspi1_ipg_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecspi1_per_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecspi2_ipg_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecspi2_per_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cspi_ipg_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdma_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emi_fast_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emi_slow_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipu_sel\00", [24 x i8] zeroinitializer }, align 32
@ipu_sel = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.104, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipu_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nfc_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipu_di0_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ipu_di0_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipu_di1_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ipu_di1_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpu3d_sel\00", [22 x i8] zeroinitializer }, align 32
@gpu3d_sel = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.104, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpu2d_sel\00", [22 x i8] zeroinitializer }, align 32
@gpu2d_sel = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.104, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpu3d_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"garb_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpu2d_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vpu_sel\00", [24 x i8] zeroinitializer }, align 32
@vpu_sel = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.104, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpu_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vpu_reference_gate\00", [45 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpc_dvfs\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ssi_apm\00", [24 x i8] zeroinitializer }, align 32
@ssi_apm_sels = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.37, ptr @.str.158, ptr @.str.38], [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi1_root_sel\00", [18 x i8] zeroinitializer }, align 32
@ssi_clk_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.121], [16 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi2_root_sel\00", [18 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi3_root_sel\00", [18 x i8] zeroinitializer }, align 32
@ssi3_clk_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.137, ptr @.str.138], [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssi_ext1_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssi_ext2_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssi_ext1_com_sel\00", [47 x i8] zeroinitializer }, align 32
@ssi_ext1_com_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.134, ptr @.str.137], [24 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssi_ext2_com_sel\00", [47 x i8] zeroinitializer }, align 32
@ssi_ext2_com_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.136, ptr @.str.138], [24 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssi1_root_pred\00", [17 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssi1_root_podf\00", [17 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssi2_root_pred\00", [17 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssi2_root_podf\00", [17 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi_ext1_pred\00", [18 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi_ext1_podf\00", [18 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi_ext2_pred\00", [18 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi_ext2_podf\00", [18 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssi1_root_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssi2_root_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssi3_root_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi_ext1_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi_ext2_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"epit1_ipg_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"epit1_hf_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"epit2_ipg_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"epit2_hf_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"owire_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"srtc_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pata_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif0_sel\00", [21 x i8] zeroinitializer }, align 32
@spdif_sel = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.159], [16 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spdif0_pred\00", [20 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spdif0_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spdif0_com_sel\00", [17 x i8] zeroinitializer }, align 32
@spdif0_com_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.151, ptr @.str.137], [24 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spdif0_gate\00", [20 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spdif_ipg_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sahara_ipg_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata_ref\00", [23 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpu0\00", [27 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lp_amp\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spdif_xtal_sel\00", [17 x i8] zeroinitializer }, align 32
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.160 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll4_sw\00", [24 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tve_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"periph_apm\00", [21 x i8] zeroinitializer }, align 32
@periph_apm_sel = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.1, ptr @.str.4, ptr @.str.6], [20 x i8] zeroinitializer }, align 32
@main_bus_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.162], [24 x i8] zeroinitializer }, align 32
@mx51_ipu_di0_sel = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.71, ptr @.str.2, ptr @.str.37, ptr @.str.179], [16 x i8] zeroinitializer }, align 32
@mx51_ipu_di1_sel = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.71, ptr @.str.2, ptr @.str.37, ptr @.str.179, ptr @.str.180], [44 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tve_ext_sel\00", [20 x i8] zeroinitializer }, align 32
@mx51_tve_ext_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.37], [24 x i8] zeroinitializer }, align 32
@mx51_tve_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.165, ptr @.str.163], [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tve_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tve_pred\00", [23 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb_phy_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hsi2c_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"scc2_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mipi_hsc1_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mipi_hsc2_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mipi_esc_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mipi_hsp_gate\00", [18 x i8] zeroinitializer }, align 32
@mx51_spdif_xtal_sel = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.2, ptr @.str.181, ptr @.str.38], [20 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif1_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spdif1_pred\00", [20 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spdif1_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spdif1_com_sel\00", [17 x i8] zeroinitializer }, align 32
@mx51_spdif1_com_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.175, ptr @.str.138], [24 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spdif1_gate\00", [20 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX51\00", [25 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tve_di\00", [25 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipp_di1\00", [24 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ckih\00", [27 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ldb_di1_div_3_5\00", [16 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldb_di1_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldb_di1_div\00", [20 x i8] zeroinitializer }, align 32
@mx53_ldb_di1_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.160], [24 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"di_pll4_podf\00", [19 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ldb_di0_div_3_5\00", [16 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldb_di0_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldb_di0_div\00", [20 x i8] zeroinitializer }, align 32
@mx53_ldb_di0_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.160], [24 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ldb_di0_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ldb_di1_gate\00", [19 x i8] zeroinitializer }, align 32
@mx53_ipu_di0_sel = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.71, ptr @.str.2, ptr @.str.37, ptr @.str.185, ptr @.str.35, ptr @.str.189], [40 x i8] zeroinitializer }, align 32
@mx53_ipu_di1_sel = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.71, ptr @.str.2, ptr @.str.37, ptr @.str.179, ptr @.str.180, ptr @.str.190], [40 x i8] zeroinitializer }, align 32
@mx53_tve_ext_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.160, ptr @.str.37], [24 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"can_sel\00", [24 x i8] zeroinitializer }, align 32
@mx53_can_sel = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.23, ptr @.str.37, ptr @.str.38, ptr @.str.6], [16 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"can1_serial_gate\00", [47 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"can1_ipg_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocram\00", [26 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"can2_serial_gate\00", [47 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"can2_ipg_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sata_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firi_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"firi_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"firi_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firi_serial_gate\00", [47 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firi_ipg_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"csi0_mclk1_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csi0_mclk1_pred\00", [16 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csi0_mclk1_podf\00", [16 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"csi0_mclk1_serial_gate\00", [41 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ieee1588_sel\00", [19 x i8] zeroinitializer }, align 32
@ieee1588_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.160, ptr @.str.35, ptr @.str.35], [16 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ieee1588_pred\00", [18 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ieee1588_podf\00", [18 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ieee1588_serial_gate\00", [43 x i8] zeroinitializer }, align 32
@mx53_spdif_xtal_sel = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.2, ptr @.str.181, ptr @.str.38, ptr @.str.160], [16 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arm\00", [28 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX53\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 287, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 288, i32 27 }
@___asan_gen_.222 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 128, i32 20 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 292, i32 27 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 296, i32 27 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 307, i32 36 }
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"standard_pll_sel\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 69, i32 20 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 310, i32 26 }
@___asan_gen_.240 = private unnamed_addr constant [11 x i8] c"lp_apm_sel\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 66, i32 20 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 312, i32 30 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 314, i32 30 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 316, i32 30 }
@___asan_gen_.252 = private unnamed_addr constant [12 x i8] c"esdhc_c_sel\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 74, i32 20 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 317, i32 30 }
@___asan_gen_.258 = private unnamed_addr constant [12 x i8] c"esdhc_d_sel\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 75, i32 20 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 318, i32 34 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 319, i32 34 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 320, i32 34 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 321, i32 34 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 322, i32 32 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 323, i32 32 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 324, i32 29 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 325, i32 33 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 326, i32 33 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 327, i32 33 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 328, i32 33 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 330, i32 28 }
@___asan_gen_.315 = private unnamed_addr constant [14 x i8] c"mx53_cko1_sel\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 97, i32 20 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 332, i32 29 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 333, i32 24 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 335, i32 28 }
@___asan_gen_.327 = private unnamed_addr constant [14 x i8] c"mx53_cko2_sel\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 102, i32 20 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 337, i32 29 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 338, i32 24 }
@___asan_gen_.336 = private unnamed_addr constant [9 x i8] c"clk_data\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 129, i32 32 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 355, i32 24 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 133, i32 25 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 134, i32 47 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 136, i32 48 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 137, i32 48 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 139, i32 29 }
@___asan_gen_.357 = private unnamed_addr constant [15 x i8] c"per_lp_apm_sel\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 72, i32 20 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 141, i32 29 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 142, i32 29 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 143, i32 28 }
@___asan_gen_.369 = private unnamed_addr constant [13 x i8] c"per_root_sel\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 73, i32 20 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 146, i32 23 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 147, i32 27 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 148, i32 28 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 149, i32 28 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 150, i32 25 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 151, i32 25 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 152, i32 25 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 153, i32 24 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 155, i32 25 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 156, i32 25 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 157, i32 28 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 159, i32 29 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 162, i32 31 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 164, i32 31 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 167, i32 27 }
@___asan_gen_.417 = private unnamed_addr constant [13 x i8] c"emi_slow_sel\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 81, i32 20 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 169, i32 32 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 170, i32 28 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 171, i32 29 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 173, i32 29 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 174, i32 29 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 175, i32 29 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 177, i32 30 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 178, i32 30 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 179, i32 31 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 180, i32 31 }
@___asan_gen_.450 = private unnamed_addr constant [16 x i8] c"usb_phy_sel_str\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 82, i32 20 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 183, i32 28 }
@___asan_gen_.456 = private unnamed_addr constant [10 x i8] c"step_sels\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 124, i32 20 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 184, i32 31 }
@___asan_gen_.462 = private unnamed_addr constant [14 x i8] c"cpu_podf_sels\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 125, i32 20 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 185, i32 28 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 186, i32 27 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 187, i32 28 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 188, i32 33 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 189, i32 33 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 190, i32 33 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 191, i32 33 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 192, i32 33 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 193, i32 33 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 194, i32 29 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 195, i32 29 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 196, i32 32 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 197, i32 31 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 198, i32 32 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 199, i32 31 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 200, i32 31 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 201, i32 30 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 202, i32 28 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 203, i32 30 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 204, i32 34 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 205, i32 34 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 206, i32 34 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 207, i32 34 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 208, i32 34 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 209, i32 32 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 210, i32 32 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 211, i32 32 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 212, i32 34 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 213, i32 34 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 214, i32 34 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 215, i32 34 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 216, i32 32 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 217, i32 29 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 218, i32 32 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 219, i32 32 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 220, i32 27 }
@___asan_gen_.573 = private unnamed_addr constant [8 x i8] c"ipu_sel\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 92, i32 20 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 221, i32 28 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 222, i32 28 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 223, i32 31 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 224, i32 31 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 225, i32 29 }
@___asan_gen_.597 = private unnamed_addr constant [10 x i8] c"gpu3d_sel\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 93, i32 20 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 226, i32 29 }
@___asan_gen_.603 = private unnamed_addr constant [10 x i8] c"gpu2d_sel\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 94, i32 20 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 227, i32 29 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 228, i32 29 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 229, i32 29 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 230, i32 27 }
@___asan_gen_.618 = private unnamed_addr constant [8 x i8] c"vpu_sel\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 95, i32 20 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 231, i32 28 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 232, i32 37 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 233, i32 28 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 235, i32 27 }
@___asan_gen_.633 = private unnamed_addr constant [13 x i8] c"ssi_apm_sels\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 76, i32 20 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 236, i32 32 }
@___asan_gen_.639 = private unnamed_addr constant [13 x i8] c"ssi_clk_sels\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 77, i32 20 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 237, i32 32 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 238, i32 32 }
@___asan_gen_.648 = private unnamed_addr constant [14 x i8] c"ssi3_clk_sels\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 78, i32 20 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 239, i32 31 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 240, i32 31 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 241, i32 35 }
@___asan_gen_.660 = private unnamed_addr constant [18 x i8] c"ssi_ext1_com_sels\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 79, i32 20 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 242, i32 35 }
@___asan_gen_.666 = private unnamed_addr constant [18 x i8] c"ssi_ext2_com_sels\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 80, i32 20 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 243, i32 33 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 244, i32 33 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 245, i32 33 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 246, i32 33 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 247, i32 32 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 248, i32 32 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 249, i32 32 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 250, i32 32 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 251, i32 33 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 252, i32 33 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 253, i32 33 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 254, i32 32 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 255, i32 32 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 256, i32 33 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 257, i32 32 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 258, i32 33 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 259, i32 32 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 260, i32 29 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 261, i32 29 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 262, i32 29 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 263, i32 29 }
@___asan_gen_.732 = private unnamed_addr constant [10 x i8] c"spdif_sel\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 121, i32 20 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 264, i32 30 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 265, i32 30 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 266, i32 33 }
@___asan_gen_.744 = private unnamed_addr constant [15 x i8] c"spdif0_com_sel\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 122, i32 20 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 268, i32 30 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 269, i32 33 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 270, i32 34 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 271, i32 28 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 273, i32 52 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 76, i32 48 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 121, i32 69 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 99, i32 19 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 116, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 388, i32 29 }
@___asan_gen_.777 = private unnamed_addr constant [15 x i8] c"periph_apm_sel\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 70, i32 20 }
@___asan_gen_.780 = private unnamed_addr constant [13 x i8] c"main_bus_sel\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 71, i32 20 }
@___asan_gen_.783 = private unnamed_addr constant [17 x i8] c"mx51_ipu_di0_sel\00", align 1
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 83, i32 20 }
@___asan_gen_.786 = private unnamed_addr constant [17 x i8] c"mx51_ipu_di1_sel\00", align 1
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 86, i32 20 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 398, i32 30 }
@___asan_gen_.792 = private unnamed_addr constant [17 x i8] c"mx51_tve_ext_sel\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 89, i32 20 }
@___asan_gen_.795 = private unnamed_addr constant [13 x i8] c"mx51_tve_sel\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 91, i32 20 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 402, i32 28 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 403, i32 28 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 414, i32 31 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 415, i32 29 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 416, i32 32 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 417, i32 33 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 418, i32 33 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 419, i32 32 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 420, i32 32 }
@___asan_gen_.825 = private unnamed_addr constant [20 x i8] c"mx51_spdif_xtal_sel\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 119, i32 20 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 423, i32 29 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 425, i32 30 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 426, i32 30 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 427, i32 33 }
@___asan_gen_.840 = private unnamed_addr constant [20 x i8] c"mx51_spdif1_com_sel\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 123, i32 20 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 429, i32 30 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 449, i32 24 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 83, i32 70 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 86, i32 80 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 119, i32 53 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 504, i32 34 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 505, i32 30 }
@___asan_gen_.867 = private unnamed_addr constant [17 x i8] c"mx53_ldb_di1_sel\00", align 1
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 88, i32 20 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 508, i32 31 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 509, i32 34 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 510, i32 30 }
@___asan_gen_.882 = private unnamed_addr constant [17 x i8] c"mx53_ldb_di0_sel\00", align 1
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 85, i32 20 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 513, i32 31 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 514, i32 31 }
@___asan_gen_.891 = private unnamed_addr constant [17 x i8] c"mx53_ipu_di0_sel\00", align 1
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 84, i32 20 }
@___asan_gen_.894 = private unnamed_addr constant [17 x i8] c"mx53_ipu_di1_sel\00", align 1
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 87, i32 20 }
@___asan_gen_.897 = private unnamed_addr constant [17 x i8] c"mx53_tve_ext_sel\00", align 1
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 90, i32 20 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 535, i32 27 }
@___asan_gen_.903 = private unnamed_addr constant [13 x i8] c"mx53_can_sel\00", align 1
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 96, i32 20 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 537, i32 35 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 538, i32 32 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 539, i32 25 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 540, i32 35 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 541, i32 32 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 543, i32 29 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 545, i32 28 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 547, i32 29 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 548, i32 29 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 549, i32 35 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 550, i32 32 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 552, i32 33 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 554, i32 34 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 555, i32 34 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 556, i32 34 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 558, i32 31 }
@___asan_gen_.954 = private unnamed_addr constant [14 x i8] c"ieee1588_sels\00", align 1
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 126, i32 20 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 560, i32 32 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 561, i32 32 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 562, i32 32 }
@___asan_gen_.966 = private unnamed_addr constant [20 x i8] c"mx53_spdif_xtal_sel\00", align 1
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 120, i32 20 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 579, i32 23 }
@___asan_gen_.972 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.973 = private constant [30 x i8] c"../drivers/clk/imx/clk-imx5.c\00", align 1
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.973, i32 606, i32 24 }
@llvm.compiler.used = appending global [257 x ptr] [ptr @__of_table_imx50_ccm, ptr @__of_table_imx51_ccm, ptr @__of_table_imx53_ccm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @clk, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @standard_pll_sel, ptr @.str.6, ptr @lp_apm_sel, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @esdhc_c_sel, ptr @.str.10, ptr @esdhc_d_sel, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @mx53_cko1_sel, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @mx53_cko2_sel, ptr @.str.32, ptr @.str.33, ptr @clk_data, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @per_lp_apm_sel, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @per_root_sel, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @emi_slow_sel, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @usb_phy_sel_str, ptr @.str.68, ptr @step_sels, ptr @.str.69, ptr @cpu_podf_sels, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @ipu_sel, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @gpu3d_sel, ptr @.str.113, ptr @gpu2d_sel, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @vpu_sel, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @ssi_apm_sels, ptr @.str.122, ptr @ssi_clk_sels, ptr @.str.123, ptr @.str.124, ptr @ssi3_clk_sels, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @ssi_ext1_com_sels, ptr @.str.128, ptr @ssi_ext2_com_sels, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @spdif_sel, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @spdif0_com_sel, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @periph_apm_sel, ptr @main_bus_sel, ptr @mx51_ipu_di0_sel, ptr @mx51_ipu_di1_sel, ptr @.str.163, ptr @mx51_tve_ext_sel, ptr @mx51_tve_sel, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @mx51_spdif_xtal_sel, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @mx51_spdif1_com_sel, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @mx53_ldb_di1_sel, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @mx53_ldb_di0_sel, ptr @.str.189, ptr @.str.190, ptr @mx53_ipu_di0_sel, ptr @mx53_ipu_di1_sel, ptr @mx53_tve_ext_sel, ptr @.str.191, ptr @mx53_can_sel, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @ieee1588_sels, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @mx53_spdif_xtal_sel, ptr @.str.211, ptr @.str.212], section "llvm.metadata"
@0 = internal global [254 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk to i32), i32 824, i32 1024, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @standard_pll_sel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_apm_sel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_c_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_d_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx53_cko1_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx53_cko2_sel to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_lp_apm_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_root_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emi_slow_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_phy_sel_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @step_sels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_podf_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_sel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu3d_sel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu2d_sel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_sel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_apm_sels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_clk_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi3_clk_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_ext1_com_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_ext2_com_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_sel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif0_com_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_apm_sel to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_bus_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx51_ipu_di0_sel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx51_ipu_di1_sel to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx51_tve_ext_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx51_tve_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx51_spdif_xtal_sel to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx51_spdif1_com_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx53_ldb_di1_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx53_ldb_di0_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx53_ipu_di0_sel to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx53_ipu_di1_sel to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx53_tve_ext_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx53_can_sel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee1588_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx53_spdif_xtal_sel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mx50_clocks_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef 1677197312, i32 noundef 16384) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !512

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef null) #2
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call21 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %call) #2
  %tobool.not.i.i = icmp eq ptr %call21, null
  %cmp.i.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.to_clk.exit_crit_edge, label %if.end.i

if.end.to_clk.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %call21, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  br label %to_clk.exit

to_clk.exit:                                      ; preds = %if.end.i, %if.end.to_clk.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ %call21, %if.end.to_clk.exit_crit_edge ]
  store ptr %retval.0.i, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 112), align 4
  %call23 = tail call ptr @ioremap(i32 noundef 1677213696, i32 noundef 16384) #2
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %do.end43, label %to_clk.exit.if.end49_crit_edge, !prof !512

to_clk.exit.if.end49_crit_edge:                   ; preds = %to_clk.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end49

do.end43:                                         ; preds = %to_clk.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #2
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %to_clk.exit.if.end49_crit_edge
  %call57 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef %call23) #2
  %tobool.not.i.i239 = icmp eq ptr %call57, null
  %cmp.i.i240 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i241 = or i1 %tobool.not.i.i239, %cmp.i.i240
  br i1 %spec.select.i.i241, label %if.end49.to_clk.exit245_crit_edge, label %if.end.i243

if.end49.to_clk.exit245_crit_edge:                ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit245

if.end.i243:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i242 = getelementptr inbounds %struct.clk_hw, ptr %call57, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i242 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i242, align 4
  br label %to_clk.exit245

to_clk.exit245:                                   ; preds = %if.end.i243, %if.end49.to_clk.exit245_crit_edge
  %retval.0.i244 = phi ptr [ %3, %if.end.i243 ], [ %call57, %if.end49.to_clk.exit245_crit_edge ]
  store ptr %retval.0.i244, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %call59 = tail call ptr @ioremap(i32 noundef 1677230080, i32 noundef 16384) #2
  %tobool61.not = icmp eq ptr %call59, null
  br i1 %tobool61.not, label %do.end79, label %to_clk.exit245.if.end85_crit_edge, !prof !512

to_clk.exit245.if.end85_crit_edge:                ; preds = %to_clk.exit245
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end85

do.end79:                                         ; preds = %to_clk.exit245
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef null) #2
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %to_clk.exit245.if.end85_crit_edge
  %call93 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %call59) #2
  %tobool.not.i.i246 = icmp eq ptr %call93, null
  %cmp.i.i247 = icmp ugt ptr %call93, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i248 = or i1 %tobool.not.i.i246, %cmp.i.i247
  br i1 %spec.select.i.i248, label %if.end85.to_clk.exit252_crit_edge, label %if.end.i250

if.end85.to_clk.exit252_crit_edge:                ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit252

if.end.i250:                                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i249 = getelementptr inbounds %struct.clk_hw, ptr %call93, i32 0, i32 1
  %4 = ptrtoint ptr %clk.i249 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i249, align 4
  br label %to_clk.exit252

to_clk.exit252:                                   ; preds = %if.end.i250, %if.end85.to_clk.exit252_crit_edge
  %retval.0.i251 = phi ptr [ %5, %if.end.i250 ], [ %call93, %if.end85.to_clk.exit252_crit_edge ]
  store ptr %retval.0.i251, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 114), align 4
  %call95 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #2
  %tobool97.not = icmp eq ptr %call95, null
  br i1 %tobool97.not, label %do.end115, label %to_clk.exit252.if.end121_crit_edge, !prof !512

to_clk.exit252.if.end121_crit_edge:               ; preds = %to_clk.exit252
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end121

do.end115:                                        ; preds = %to_clk.exit252
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 299, i32 noundef 9, ptr noundef null) #2
  br label %if.end121

if.end121:                                        ; preds = %do.end115, %to_clk.exit252.if.end121_crit_edge
  tail call fastcc void @mx5_clocks_common_init(ptr noundef %call95) #5
  %add.ptr = getelementptr i8, ptr %call95, i32 20
  %call.i = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr, i8 noundef zeroext 25, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i253 = icmp eq ptr %call.i, null
  %cmp.i.i254 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i255 = or i1 %tobool.not.i.i253, %cmp.i.i254
  br i1 %spec.select.i.i255, label %if.end121.to_clk.exit259_crit_edge, label %if.end.i257

if.end121.to_clk.exit259_crit_edge:               ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit259

if.end.i257:                                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i256 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %clk.i256 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i256, align 4
  br label %to_clk.exit259

to_clk.exit259:                                   ; preds = %if.end.i257, %if.end121.to_clk.exit259_crit_edge
  %retval.0.i258 = phi ptr [ %7, %if.end.i257 ], [ %call.i, %if.end121.to_clk.exit259_crit_edge ]
  store ptr %retval.0.i258, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 91), align 4
  %add.ptr131 = getelementptr i8, ptr %call95, i32 12
  %call.i260 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6, i8 noundef zeroext 1, ptr noundef nonnull @lp_apm_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr131, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i261 = icmp eq ptr %call.i260, null
  %cmp.i.i262 = icmp ugt ptr %call.i260, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i263 = or i1 %tobool.not.i.i261, %cmp.i.i262
  br i1 %spec.select.i.i263, label %to_clk.exit259.to_clk.exit267_crit_edge, label %if.end.i265

to_clk.exit259.to_clk.exit267_crit_edge:          ; preds = %to_clk.exit259
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit267

if.end.i265:                                      ; preds = %to_clk.exit259
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i264 = getelementptr inbounds %struct.clk_hw, ptr %call.i260, i32 0, i32 1
  %8 = ptrtoint ptr %clk.i264 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i264, align 4
  br label %to_clk.exit267

to_clk.exit267:                                   ; preds = %if.end.i265, %to_clk.exit259.to_clk.exit267_crit_edge
  %retval.0.i266 = phi ptr [ %9, %if.end.i265 ], [ %call.i260, %to_clk.exit259.to_clk.exit267_crit_edge ]
  store ptr %retval.0.i266, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 89), align 4
  %add.ptr134 = getelementptr i8, ptr %call95, i32 28
  %call.i268 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr134, i8 noundef zeroext 21, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i269 = icmp eq ptr %call.i268, null
  %cmp.i.i270 = icmp ugt ptr %call.i268, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i271 = or i1 %tobool.not.i.i269, %cmp.i.i270
  br i1 %spec.select.i.i271, label %to_clk.exit267.to_clk.exit275_crit_edge, label %if.end.i273

to_clk.exit267.to_clk.exit275_crit_edge:          ; preds = %to_clk.exit267
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit275

if.end.i273:                                      ; preds = %to_clk.exit267
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i272 = getelementptr inbounds %struct.clk_hw, ptr %call.i268, i32 0, i32 1
  %10 = ptrtoint ptr %clk.i272 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i272, align 4
  br label %to_clk.exit275

to_clk.exit275:                                   ; preds = %if.end.i273, %to_clk.exit267.to_clk.exit275_crit_edge
  %retval.0.i274 = phi ptr [ %11, %if.end.i273 ], [ %call.i268, %to_clk.exit267.to_clk.exit275_crit_edge ]
  store ptr %retval.0.i274, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 100), align 4
  %call.i276 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr134, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i277 = icmp eq ptr %call.i276, null
  %cmp.i.i278 = icmp ugt ptr %call.i276, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i279 = or i1 %tobool.not.i.i277, %cmp.i.i278
  br i1 %spec.select.i.i279, label %to_clk.exit275.to_clk.exit283_crit_edge, label %if.end.i281

to_clk.exit275.to_clk.exit283_crit_edge:          ; preds = %to_clk.exit275
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit283

if.end.i281:                                      ; preds = %to_clk.exit275
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i280 = getelementptr inbounds %struct.clk_hw, ptr %call.i276, i32 0, i32 1
  %12 = ptrtoint ptr %clk.i280 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i280, align 4
  br label %to_clk.exit283

to_clk.exit283:                                   ; preds = %if.end.i281, %to_clk.exit275.to_clk.exit283_crit_edge
  %retval.0.i282 = phi ptr [ %13, %if.end.i281 ], [ %call.i276, %to_clk.exit275.to_clk.exit283_crit_edge ]
  store ptr %retval.0.i282, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 101), align 4
  %call.i284 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, ptr noundef nonnull @esdhc_c_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr134, i8 noundef zeroext 20, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i285 = icmp eq ptr %call.i284, null
  %cmp.i.i286 = icmp ugt ptr %call.i284, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i287 = or i1 %tobool.not.i.i285, %cmp.i.i286
  br i1 %spec.select.i.i287, label %to_clk.exit283.to_clk.exit291_crit_edge, label %if.end.i289

to_clk.exit283.to_clk.exit291_crit_edge:          ; preds = %to_clk.exit283
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit291

if.end.i289:                                      ; preds = %to_clk.exit283
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i288 = getelementptr inbounds %struct.clk_hw, ptr %call.i284, i32 0, i32 1
  %14 = ptrtoint ptr %clk.i288 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk.i288, align 4
  br label %to_clk.exit291

to_clk.exit291:                                   ; preds = %if.end.i289, %to_clk.exit283.to_clk.exit291_crit_edge
  %retval.0.i290 = phi ptr [ %15, %if.end.i289 ], [ %call.i284, %to_clk.exit283.to_clk.exit291_crit_edge ]
  store ptr %retval.0.i290, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 13), align 4
  %call.i292 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, ptr noundef nonnull @esdhc_d_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr134, i8 noundef zeroext 19, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i293 = icmp eq ptr %call.i292, null
  %cmp.i.i294 = icmp ugt ptr %call.i292, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i295 = or i1 %tobool.not.i.i293, %cmp.i.i294
  br i1 %spec.select.i.i295, label %to_clk.exit291.to_clk.exit299_crit_edge, label %if.end.i297

to_clk.exit291.to_clk.exit299_crit_edge:          ; preds = %to_clk.exit291
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit299

if.end.i297:                                      ; preds = %to_clk.exit291
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i296 = getelementptr inbounds %struct.clk_hw, ptr %call.i292, i32 0, i32 1
  %16 = ptrtoint ptr %clk.i296 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk.i296, align 4
  br label %to_clk.exit299

to_clk.exit299:                                   ; preds = %if.end.i297, %to_clk.exit291.to_clk.exit299_crit_edge
  %retval.0.i298 = phi ptr [ %17, %if.end.i297 ], [ %call.i292, %to_clk.exit291.to_clk.exit299_crit_edge ]
  store ptr %retval.0.i298, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 14), align 4
  %add.ptr146 = getelementptr i8, ptr %call95, i32 116
  %call.i300 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 4, ptr noundef %add.ptr146, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i301 = icmp eq ptr %call.i300, null
  %cmp.i.i302 = icmp ugt ptr %call.i300, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i303 = or i1 %tobool.not.i.i301, %cmp.i.i302
  br i1 %spec.select.i.i303, label %to_clk.exit299.to_clk.exit307_crit_edge, label %if.end.i305

to_clk.exit299.to_clk.exit307_crit_edge:          ; preds = %to_clk.exit299
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit307

if.end.i305:                                      ; preds = %to_clk.exit299
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i304 = getelementptr inbounds %struct.clk_hw, ptr %call.i300, i32 0, i32 1
  %18 = ptrtoint ptr %clk.i304 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk.i304, align 4
  br label %to_clk.exit307

to_clk.exit307:                                   ; preds = %if.end.i305, %to_clk.exit299.to_clk.exit307_crit_edge
  %retval.0.i306 = phi ptr [ %19, %if.end.i305 ], [ %call.i300, %to_clk.exit299.to_clk.exit307_crit_edge ]
  store ptr %retval.0.i306, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 71), align 4
  %call.i308 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.9, i32 noundef 4, ptr noundef %add.ptr146, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i309 = icmp eq ptr %call.i308, null
  %cmp.i.i310 = icmp ugt ptr %call.i308, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i311 = or i1 %tobool.not.i.i309, %cmp.i.i310
  br i1 %spec.select.i.i311, label %to_clk.exit307.to_clk.exit315_crit_edge, label %if.end.i313

to_clk.exit307.to_clk.exit315_crit_edge:          ; preds = %to_clk.exit307
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit315

if.end.i313:                                      ; preds = %to_clk.exit307
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i312 = getelementptr inbounds %struct.clk_hw, ptr %call.i308, i32 0, i32 1
  %20 = ptrtoint ptr %clk.i312 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk.i312, align 4
  br label %to_clk.exit315

to_clk.exit315:                                   ; preds = %if.end.i313, %to_clk.exit307.to_clk.exit315_crit_edge
  %retval.0.i314 = phi ptr [ %21, %if.end.i313 ], [ %call.i308, %to_clk.exit307.to_clk.exit315_crit_edge ]
  store ptr %retval.0.i314, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 72), align 4
  %call.i316 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 4, ptr noundef %add.ptr146, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i317 = icmp eq ptr %call.i316, null
  %cmp.i.i318 = icmp ugt ptr %call.i316, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i319 = or i1 %tobool.not.i.i317, %cmp.i.i318
  br i1 %spec.select.i.i319, label %to_clk.exit315.to_clk.exit323_crit_edge, label %if.end.i321

to_clk.exit315.to_clk.exit323_crit_edge:          ; preds = %to_clk.exit315
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit323

if.end.i321:                                      ; preds = %to_clk.exit315
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i320 = getelementptr inbounds %struct.clk_hw, ptr %call.i316, i32 0, i32 1
  %22 = ptrtoint ptr %clk.i320 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i320, align 4
  br label %to_clk.exit323

to_clk.exit323:                                   ; preds = %if.end.i321, %to_clk.exit315.to_clk.exit323_crit_edge
  %retval.0.i322 = phi ptr [ %23, %if.end.i321 ], [ %call.i316, %to_clk.exit315.to_clk.exit323_crit_edge ]
  store ptr %retval.0.i322, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 73), align 4
  %call.i324 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef 4, ptr noundef %add.ptr146, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i325 = icmp eq ptr %call.i324, null
  %cmp.i.i326 = icmp ugt ptr %call.i324, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i327 = or i1 %tobool.not.i.i325, %cmp.i.i326
  br i1 %spec.select.i.i327, label %to_clk.exit323.to_clk.exit331_crit_edge, label %if.end.i329

to_clk.exit323.to_clk.exit331_crit_edge:          ; preds = %to_clk.exit323
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit331

if.end.i329:                                      ; preds = %to_clk.exit323
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i328 = getelementptr inbounds %struct.clk_hw, ptr %call.i324, i32 0, i32 1
  %24 = ptrtoint ptr %clk.i328 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk.i328, align 4
  br label %to_clk.exit331

to_clk.exit331:                                   ; preds = %if.end.i329, %to_clk.exit323.to_clk.exit331_crit_edge
  %retval.0.i330 = phi ptr [ %25, %if.end.i329 ], [ %call.i324, %to_clk.exit323.to_clk.exit331_crit_edge ]
  store ptr %retval.0.i330, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 74), align 4
  %add.ptr158 = getelementptr i8, ptr %call95, i32 120
  %call.i332 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 4, ptr noundef %add.ptr158, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i333 = icmp eq ptr %call.i332, null
  %cmp.i.i334 = icmp ugt ptr %call.i332, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i335 = or i1 %tobool.not.i.i333, %cmp.i.i334
  br i1 %spec.select.i.i335, label %to_clk.exit331.to_clk.exit339_crit_edge, label %if.end.i337

to_clk.exit331.to_clk.exit339_crit_edge:          ; preds = %to_clk.exit331
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit339

if.end.i337:                                      ; preds = %to_clk.exit331
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i336 = getelementptr inbounds %struct.clk_hw, ptr %call.i332, i32 0, i32 1
  %26 = ptrtoint ptr %clk.i336 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk.i336, align 4
  br label %to_clk.exit339

to_clk.exit339:                                   ; preds = %if.end.i337, %to_clk.exit331.to_clk.exit339_crit_edge
  %retval.0.i338 = phi ptr [ %27, %if.end.i337 ], [ %call.i332, %to_clk.exit331.to_clk.exit339_crit_edge ]
  store ptr %retval.0.i338, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 124), align 4
  %call.i340 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 4, ptr noundef %add.ptr158, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i341 = icmp eq ptr %call.i340, null
  %cmp.i.i342 = icmp ugt ptr %call.i340, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i343 = or i1 %tobool.not.i.i341, %cmp.i.i342
  br i1 %spec.select.i.i343, label %to_clk.exit339.to_clk.exit347_crit_edge, label %if.end.i345

to_clk.exit339.to_clk.exit347_crit_edge:          ; preds = %to_clk.exit339
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit347

if.end.i345:                                      ; preds = %to_clk.exit339
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i344 = getelementptr inbounds %struct.clk_hw, ptr %call.i340, i32 0, i32 1
  %28 = ptrtoint ptr %clk.i344 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk.i344, align 4
  br label %to_clk.exit347

to_clk.exit347:                                   ; preds = %if.end.i345, %to_clk.exit339.to_clk.exit347_crit_edge
  %retval.0.i346 = phi ptr [ %29, %if.end.i345 ], [ %call.i340, %to_clk.exit339.to_clk.exit347_crit_edge ]
  store ptr %retval.0.i346, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 125), align 4
  %add.ptr164 = getelementptr i8, ptr %call95, i32 108
  %call.i348 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %add.ptr164, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i349 = icmp eq ptr %call.i348, null
  %cmp.i.i350 = icmp ugt ptr %call.i348, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i351 = or i1 %tobool.not.i.i349, %cmp.i.i350
  br i1 %spec.select.i.i351, label %to_clk.exit347.to_clk.exit355_crit_edge, label %if.end.i353

to_clk.exit347.to_clk.exit355_crit_edge:          ; preds = %to_clk.exit347
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit355

if.end.i353:                                      ; preds = %to_clk.exit347
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i352 = getelementptr inbounds %struct.clk_hw, ptr %call.i348, i32 0, i32 1
  %30 = ptrtoint ptr %clk.i352 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk.i352, align 4
  br label %to_clk.exit355

to_clk.exit355:                                   ; preds = %if.end.i353, %to_clk.exit347.to_clk.exit355_crit_edge
  %retval.0.i354 = phi ptr [ %31, %if.end.i353 ], [ %call.i348, %to_clk.exit347.to_clk.exit355_crit_edge ]
  store ptr %retval.0.i354, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 88), align 4
  %add.ptr167 = getelementptr i8, ptr %call95, i32 132
  %call.i356 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr167, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i357 = icmp eq ptr %call.i356, null
  %cmp.i.i358 = icmp ugt ptr %call.i356, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i359 = or i1 %tobool.not.i.i357, %cmp.i.i358
  br i1 %spec.select.i.i359, label %to_clk.exit355.to_clk.exit363_crit_edge, label %if.end.i361

to_clk.exit355.to_clk.exit363_crit_edge:          ; preds = %to_clk.exit355
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit363

if.end.i361:                                      ; preds = %to_clk.exit355
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i360 = getelementptr inbounds %struct.clk_hw, ptr %call.i356, i32 0, i32 1
  %32 = ptrtoint ptr %clk.i360 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk.i360, align 4
  br label %to_clk.exit363

to_clk.exit363:                                   ; preds = %if.end.i361, %to_clk.exit355.to_clk.exit363_crit_edge
  %retval.0.i362 = phi ptr [ %33, %if.end.i361 ], [ %call.i356, %to_clk.exit355.to_clk.exit363_crit_edge ]
  store ptr %retval.0.i362, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 65), align 4
  %call.i364 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 4, ptr noundef %add.ptr167, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i365 = icmp eq ptr %call.i364, null
  %cmp.i.i366 = icmp ugt ptr %call.i364, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i367 = or i1 %tobool.not.i.i365, %cmp.i.i366
  br i1 %spec.select.i.i367, label %to_clk.exit363.to_clk.exit371_crit_edge, label %if.end.i369

to_clk.exit363.to_clk.exit371_crit_edge:          ; preds = %to_clk.exit363
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit371

if.end.i369:                                      ; preds = %to_clk.exit363
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i368 = getelementptr inbounds %struct.clk_hw, ptr %call.i364, i32 0, i32 1
  %34 = ptrtoint ptr %clk.i368 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk.i368, align 4
  br label %to_clk.exit371

to_clk.exit371:                                   ; preds = %if.end.i369, %to_clk.exit363.to_clk.exit371_crit_edge
  %retval.0.i370 = phi ptr [ %35, %if.end.i369 ], [ %call.i364, %to_clk.exit363.to_clk.exit371_crit_edge ]
  store ptr %retval.0.i370, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 66), align 4
  %call.i372 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr167, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i373 = icmp eq ptr %call.i372, null
  %cmp.i.i374 = icmp ugt ptr %call.i372, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i375 = or i1 %tobool.not.i.i373, %cmp.i.i374
  br i1 %spec.select.i.i375, label %to_clk.exit371.to_clk.exit379_crit_edge, label %if.end.i377

to_clk.exit371.to_clk.exit379_crit_edge:          ; preds = %to_clk.exit371
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit379

if.end.i377:                                      ; preds = %to_clk.exit371
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i376 = getelementptr inbounds %struct.clk_hw, ptr %call.i372, i32 0, i32 1
  %36 = ptrtoint ptr %clk.i376 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk.i376, align 4
  br label %to_clk.exit379

to_clk.exit379:                                   ; preds = %if.end.i377, %to_clk.exit371.to_clk.exit379_crit_edge
  %retval.0.i378 = phi ptr [ %37, %if.end.i377 ], [ %call.i372, %to_clk.exit371.to_clk.exit379_crit_edge ]
  store ptr %retval.0.i378, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 67), align 4
  %call.i380 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 4, ptr noundef %add.ptr167, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i381 = icmp eq ptr %call.i380, null
  %cmp.i.i382 = icmp ugt ptr %call.i380, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i383 = or i1 %tobool.not.i.i381, %cmp.i.i382
  br i1 %spec.select.i.i383, label %to_clk.exit379.to_clk.exit387_crit_edge, label %if.end.i385

to_clk.exit379.to_clk.exit387_crit_edge:          ; preds = %to_clk.exit379
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit387

if.end.i385:                                      ; preds = %to_clk.exit379
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i384 = getelementptr inbounds %struct.clk_hw, ptr %call.i380, i32 0, i32 1
  %38 = ptrtoint ptr %clk.i384 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk.i384, align 4
  br label %to_clk.exit387

to_clk.exit387:                                   ; preds = %if.end.i385, %to_clk.exit379.to_clk.exit387_crit_edge
  %retval.0.i386 = phi ptr [ %39, %if.end.i385 ], [ %call.i380, %to_clk.exit379.to_clk.exit387_crit_edge ]
  store ptr %retval.0.i386, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 68), align 4
  %add.ptr179 = getelementptr i8, ptr %call95, i32 96
  %call.i388 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, i8 noundef zeroext 16, ptr noundef nonnull @mx53_cko1_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr179, i8 noundef zeroext 0, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i389 = icmp eq ptr %call.i388, null
  %cmp.i.i390 = icmp ugt ptr %call.i388, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i391 = or i1 %tobool.not.i.i389, %cmp.i.i390
  br i1 %spec.select.i.i391, label %to_clk.exit387.to_clk.exit395_crit_edge, label %if.end.i393

to_clk.exit387.to_clk.exit395_crit_edge:          ; preds = %to_clk.exit387
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit395

if.end.i393:                                      ; preds = %to_clk.exit387
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i392 = getelementptr inbounds %struct.clk_hw, ptr %call.i388, i32 0, i32 1
  %40 = ptrtoint ptr %clk.i392 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk.i392, align 4
  br label %to_clk.exit395

to_clk.exit395:                                   ; preds = %if.end.i393, %to_clk.exit387.to_clk.exit395_crit_edge
  %retval.0.i394 = phi ptr [ %41, %if.end.i393 ], [ %call.i388, %to_clk.exit387.to_clk.exit395_crit_edge ]
  store ptr %retval.0.i394, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 165), align 4
  %call.i396 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i397 = icmp eq ptr %call.i396, null
  %cmp.i.i398 = icmp ugt ptr %call.i396, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i399 = or i1 %tobool.not.i.i397, %cmp.i.i398
  br i1 %spec.select.i.i399, label %to_clk.exit395.to_clk.exit403_crit_edge, label %if.end.i401

to_clk.exit395.to_clk.exit403_crit_edge:          ; preds = %to_clk.exit395
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit403

if.end.i401:                                      ; preds = %to_clk.exit395
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i400 = getelementptr inbounds %struct.clk_hw, ptr %call.i396, i32 0, i32 1
  %42 = ptrtoint ptr %clk.i400 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk.i400, align 4
  br label %to_clk.exit403

to_clk.exit403:                                   ; preds = %if.end.i401, %to_clk.exit395.to_clk.exit403_crit_edge
  %retval.0.i402 = phi ptr [ %43, %if.end.i401 ], [ %call.i396, %to_clk.exit395.to_clk.exit403_crit_edge ]
  store ptr %retval.0.i402, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 166), align 4
  %call.i404 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 7, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i405 = icmp eq ptr %call.i404, null
  %cmp.i.i406 = icmp ugt ptr %call.i404, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i407 = or i1 %tobool.not.i.i405, %cmp.i.i406
  br i1 %spec.select.i.i407, label %to_clk.exit403.to_clk.exit411_crit_edge, label %if.end.i409

to_clk.exit403.to_clk.exit411_crit_edge:          ; preds = %to_clk.exit403
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit411

if.end.i409:                                      ; preds = %to_clk.exit403
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i408 = getelementptr inbounds %struct.clk_hw, ptr %call.i404, i32 0, i32 1
  %44 = ptrtoint ptr %clk.i408 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk.i408, align 4
  br label %to_clk.exit411

to_clk.exit411:                                   ; preds = %if.end.i409, %to_clk.exit403.to_clk.exit411_crit_edge
  %retval.0.i410 = phi ptr [ %45, %if.end.i409 ], [ %call.i404, %to_clk.exit403.to_clk.exit411_crit_edge ]
  store ptr %retval.0.i410, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 167), align 4
  %call.i412 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, i8 noundef zeroext 32, ptr noundef nonnull @mx53_cko2_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr179, i8 noundef zeroext 16, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i413 = icmp eq ptr %call.i412, null
  %cmp.i.i414 = icmp ugt ptr %call.i412, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i415 = or i1 %tobool.not.i.i413, %cmp.i.i414
  br i1 %spec.select.i.i415, label %to_clk.exit411.to_clk.exit419_crit_edge, label %if.end.i417

to_clk.exit411.to_clk.exit419_crit_edge:          ; preds = %to_clk.exit411
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit419

if.end.i417:                                      ; preds = %to_clk.exit411
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i416 = getelementptr inbounds %struct.clk_hw, ptr %call.i412, i32 0, i32 1
  %46 = ptrtoint ptr %clk.i416 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk.i416, align 4
  br label %to_clk.exit419

to_clk.exit419:                                   ; preds = %if.end.i417, %to_clk.exit411.to_clk.exit419_crit_edge
  %retval.0.i418 = phi ptr [ %47, %if.end.i417 ], [ %call.i412, %to_clk.exit411.to_clk.exit419_crit_edge ]
  store ptr %retval.0.i418, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 168), align 4
  %call.i420 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i421 = icmp eq ptr %call.i420, null
  %cmp.i.i422 = icmp ugt ptr %call.i420, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i423 = or i1 %tobool.not.i.i421, %cmp.i.i422
  br i1 %spec.select.i.i423, label %to_clk.exit419.to_clk.exit427_crit_edge, label %if.end.i425

to_clk.exit419.to_clk.exit427_crit_edge:          ; preds = %to_clk.exit419
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit427

if.end.i425:                                      ; preds = %to_clk.exit419
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i424 = getelementptr inbounds %struct.clk_hw, ptr %call.i420, i32 0, i32 1
  %48 = ptrtoint ptr %clk.i424 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk.i424, align 4
  br label %to_clk.exit427

to_clk.exit427:                                   ; preds = %if.end.i425, %to_clk.exit419.to_clk.exit427_crit_edge
  %retval.0.i426 = phi ptr [ %49, %if.end.i425 ], [ %call.i420, %to_clk.exit419.to_clk.exit427_crit_edge ]
  store ptr %retval.0.i426, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 169), align 4
  %call.i428 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i429 = icmp eq ptr %call.i428, null
  %cmp.i.i430 = icmp ugt ptr %call.i428, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i431 = or i1 %tobool.not.i.i429, %cmp.i.i430
  br i1 %spec.select.i.i431, label %to_clk.exit427.to_clk.exit435_crit_edge, label %if.end.i433

to_clk.exit427.to_clk.exit435_crit_edge:          ; preds = %to_clk.exit427
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit435

if.end.i433:                                      ; preds = %to_clk.exit427
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i432 = getelementptr inbounds %struct.clk_hw, ptr %call.i428, i32 0, i32 1
  %50 = ptrtoint ptr %clk.i432 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk.i432, align 4
  br label %to_clk.exit435

to_clk.exit435:                                   ; preds = %if.end.i433, %to_clk.exit427.to_clk.exit435_crit_edge
  %retval.0.i434 = phi ptr [ %51, %if.end.i433 ], [ %call.i428, %to_clk.exit427.to_clk.exit435_crit_edge ]
  store ptr %retval.0.i434, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 170), align 4
  tail call void @imx_check_clocks(ptr noundef nonnull @clk, i32 noundef 206) #2
  store ptr @clk, ptr @clk_data, align 4
  store i32 206, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %call197 = tail call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #2
  %52 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 100), align 4
  %53 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %call198 = tail call i32 @clk_set_parent(ptr noundef %52, ptr noundef %53) #2
  %54 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 101), align 4
  %55 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %call199 = tail call i32 @clk_set_parent(ptr noundef %54, ptr noundef %55) #2
  %56 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 102), align 4
  %call200 = tail call i32 @clk_set_rate(ptr noundef %56, i32 noundef 200000000) #2
  %57 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 103), align 4
  %call201 = tail call i32 @clk_set_rate(ptr noundef %57, i32 noundef 200000000) #2
  %58 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 107), align 4
  %call.i436 = tail call i32 @clk_prepare(ptr noundef %58) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i436)
  %tobool.not.i = icmp eq i32 %call.i436, 0
  br i1 %tobool.not.i, label %if.end.i437, label %to_clk.exit435.clk_prepare_enable.exit_crit_edge

to_clk.exit435.clk_prepare_enable.exit_crit_edge: ; preds = %to_clk.exit435
  call void @__sanitizer_cov_trace_pc() #4
  br label %clk_prepare_enable.exit

if.end.i437:                                      ; preds = %to_clk.exit435
  %call1.i = tail call i32 @clk_enable(ptr noundef %58) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i437.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i437.clk_prepare_enable.exit_crit_edge:    ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #4
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @clk_unprepare(ptr noundef %58) #2
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i437.clk_prepare_enable.exit_crit_edge, %to_clk.exit435.clk_prepare_enable.exit_crit_edge
  tail call void @imx_print_silicon_rev(ptr noundef nonnull @.str.34, i32 noundef 17) #2
  %59 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 107), align 4
  tail call void @clk_disable(ptr noundef %59) #2
  tail call void @clk_unprepare(ptr noundef %59) #2
  %60 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 43), align 4
  %call203 = tail call i32 @clk_round_rate(ptr noundef %60, i32 noundef 54000000) #2
  %61 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 43), align 4
  %call204 = tail call i32 @clk_set_rate(ptr noundef %61, i32 noundef %call203) #2
  tail call void @imx_register_uart_clocks(i32 noundef 5) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mx51_clocks_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef -2080899072, i32 noundef 16384) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !512

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 372, i32 noundef 9, ptr noundef null) #2
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call21 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %call) #2
  %tobool.not.i.i = icmp eq ptr %call21, null
  %cmp.i.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.to_clk.exit_crit_edge, label %if.end.i

if.end.to_clk.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %call21, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  br label %to_clk.exit

to_clk.exit:                                      ; preds = %if.end.i, %if.end.to_clk.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ %call21, %if.end.to_clk.exit_crit_edge ]
  store ptr %retval.0.i, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 112), align 4
  %call23 = tail call ptr @ioremap(i32 noundef -2080882688, i32 noundef 16384) #2
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %do.end43, label %to_clk.exit.if.end49_crit_edge, !prof !512

to_clk.exit.if.end49_crit_edge:                   ; preds = %to_clk.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end49

do.end43:                                         ; preds = %to_clk.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 376, i32 noundef 9, ptr noundef null) #2
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %to_clk.exit.if.end49_crit_edge
  %call57 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef %call23) #2
  %tobool.not.i.i293 = icmp eq ptr %call57, null
  %cmp.i.i294 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i295 = or i1 %tobool.not.i.i293, %cmp.i.i294
  br i1 %spec.select.i.i295, label %if.end49.to_clk.exit299_crit_edge, label %if.end.i297

if.end49.to_clk.exit299_crit_edge:                ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit299

if.end.i297:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i296 = getelementptr inbounds %struct.clk_hw, ptr %call57, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i296 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i296, align 4
  br label %to_clk.exit299

to_clk.exit299:                                   ; preds = %if.end.i297, %if.end49.to_clk.exit299_crit_edge
  %retval.0.i298 = phi ptr [ %3, %if.end.i297 ], [ %call57, %if.end49.to_clk.exit299_crit_edge ]
  store ptr %retval.0.i298, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %call59 = tail call ptr @ioremap(i32 noundef -2080866304, i32 noundef 16384) #2
  %tobool61.not = icmp eq ptr %call59, null
  br i1 %tobool61.not, label %do.end79, label %to_clk.exit299.if.end85_crit_edge, !prof !512

to_clk.exit299.if.end85_crit_edge:                ; preds = %to_clk.exit299
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end85

do.end79:                                         ; preds = %to_clk.exit299
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 380, i32 noundef 9, ptr noundef null) #2
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %to_clk.exit299.if.end85_crit_edge
  %call93 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %call59) #2
  %tobool.not.i.i300 = icmp eq ptr %call93, null
  %cmp.i.i301 = icmp ugt ptr %call93, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i302 = or i1 %tobool.not.i.i300, %cmp.i.i301
  br i1 %spec.select.i.i302, label %if.end85.to_clk.exit306_crit_edge, label %if.end.i304

if.end85.to_clk.exit306_crit_edge:                ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit306

if.end.i304:                                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i303 = getelementptr inbounds %struct.clk_hw, ptr %call93, i32 0, i32 1
  %4 = ptrtoint ptr %clk.i303 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i303, align 4
  br label %to_clk.exit306

to_clk.exit306:                                   ; preds = %if.end.i304, %if.end85.to_clk.exit306_crit_edge
  %retval.0.i305 = phi ptr [ %5, %if.end.i304 ], [ %call93, %if.end85.to_clk.exit306_crit_edge ]
  store ptr %retval.0.i305, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 114), align 4
  %call95 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #2
  %tobool97.not = icmp eq ptr %call95, null
  br i1 %tobool97.not, label %do.end115, label %to_clk.exit306.if.end121_crit_edge, !prof !512

to_clk.exit306.if.end121_crit_edge:               ; preds = %to_clk.exit306
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end121

do.end115:                                        ; preds = %to_clk.exit306
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 384, i32 noundef 9, ptr noundef null) #2
  br label %if.end121

if.end121:                                        ; preds = %do.end115, %to_clk.exit306.if.end121_crit_edge
  tail call fastcc void @mx5_clocks_common_init(ptr noundef %call95) #5
  %add.ptr = getelementptr i8, ptr %call95, i32 24
  %call.i = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.162, i8 noundef zeroext 3, ptr noundef nonnull @periph_apm_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i307 = icmp eq ptr %call.i, null
  %cmp.i.i308 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i309 = or i1 %tobool.not.i.i307, %cmp.i.i308
  br i1 %spec.select.i.i309, label %if.end121.to_clk.exit313_crit_edge, label %if.end.i311

if.end121.to_clk.exit313_crit_edge:               ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit313

if.end.i311:                                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i310 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %clk.i310 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i310, align 4
  br label %to_clk.exit313

to_clk.exit313:                                   ; preds = %if.end.i311, %if.end121.to_clk.exit313_crit_edge
  %retval.0.i312 = phi ptr [ %7, %if.end.i311 ], [ %call.i, %if.end121.to_clk.exit313_crit_edge ]
  store ptr %retval.0.i312, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 90), align 4
  %add.ptr131 = getelementptr i8, ptr %call95, i32 20
  %call.i314 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5, i8 noundef zeroext 2, ptr noundef nonnull @main_bus_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr131, i8 noundef zeroext 25, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i315 = icmp eq ptr %call.i314, null
  %cmp.i.i316 = icmp ugt ptr %call.i314, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i317 = or i1 %tobool.not.i.i315, %cmp.i.i316
  br i1 %spec.select.i.i317, label %to_clk.exit313.to_clk.exit321_crit_edge, label %if.end.i319

to_clk.exit313.to_clk.exit321_crit_edge:          ; preds = %to_clk.exit313
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit321

if.end.i319:                                      ; preds = %to_clk.exit313
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i318 = getelementptr inbounds %struct.clk_hw, ptr %call.i314, i32 0, i32 1
  %8 = ptrtoint ptr %clk.i318 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i318, align 4
  br label %to_clk.exit321

to_clk.exit321:                                   ; preds = %if.end.i319, %to_clk.exit313.to_clk.exit321_crit_edge
  %retval.0.i320 = phi ptr [ %9, %if.end.i319 ], [ %call.i314, %to_clk.exit313.to_clk.exit321_crit_edge ]
  store ptr %retval.0.i320, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 91), align 4
  %add.ptr134 = getelementptr i8, ptr %call95, i32 12
  %call.i322 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6, i8 noundef zeroext 1, ptr noundef nonnull @lp_apm_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr134, i8 noundef zeroext 9, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i323 = icmp eq ptr %call.i322, null
  %cmp.i.i324 = icmp ugt ptr %call.i322, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i325 = or i1 %tobool.not.i.i323, %cmp.i.i324
  br i1 %spec.select.i.i325, label %to_clk.exit321.to_clk.exit329_crit_edge, label %if.end.i327

to_clk.exit321.to_clk.exit329_crit_edge:          ; preds = %to_clk.exit321
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit329

if.end.i327:                                      ; preds = %to_clk.exit321
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i326 = getelementptr inbounds %struct.clk_hw, ptr %call.i322, i32 0, i32 1
  %10 = ptrtoint ptr %clk.i326 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i326, align 4
  br label %to_clk.exit329

to_clk.exit329:                                   ; preds = %if.end.i327, %to_clk.exit321.to_clk.exit329_crit_edge
  %retval.0.i328 = phi ptr [ %11, %if.end.i327 ], [ %call.i322, %to_clk.exit321.to_clk.exit329_crit_edge ]
  store ptr %retval.0.i328, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 89), align 4
  %add.ptr137 = getelementptr i8, ptr %call95, i32 32
  %call.i330 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.109, i8 noundef zeroext 4, ptr noundef nonnull @mx51_ipu_di0_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr137, i8 noundef zeroext 26, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i331 = icmp eq ptr %call.i330, null
  %cmp.i.i332 = icmp ugt ptr %call.i330, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i333 = or i1 %tobool.not.i.i331, %cmp.i.i332
  br i1 %spec.select.i.i333, label %to_clk.exit329.to_clk.exit337_crit_edge, label %if.end.i335

to_clk.exit329.to_clk.exit337_crit_edge:          ; preds = %to_clk.exit329
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit337

if.end.i335:                                      ; preds = %to_clk.exit329
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i334 = getelementptr inbounds %struct.clk_hw, ptr %call.i330, i32 0, i32 1
  %12 = ptrtoint ptr %clk.i334 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i334, align 4
  br label %to_clk.exit337

to_clk.exit337:                                   ; preds = %if.end.i335, %to_clk.exit329.to_clk.exit337_crit_edge
  %retval.0.i336 = phi ptr [ %13, %if.end.i335 ], [ %call.i330, %to_clk.exit329.to_clk.exit337_crit_edge ]
  store ptr %retval.0.i336, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 115), align 4
  %call.i338 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, i8 noundef zeroext 5, ptr noundef nonnull @mx51_ipu_di1_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr137, i8 noundef zeroext 29, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i339 = icmp eq ptr %call.i338, null
  %cmp.i.i340 = icmp ugt ptr %call.i338, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i341 = or i1 %tobool.not.i.i339, %cmp.i.i340
  br i1 %spec.select.i.i341, label %to_clk.exit337.to_clk.exit345_crit_edge, label %if.end.i343

to_clk.exit337.to_clk.exit345_crit_edge:          ; preds = %to_clk.exit337
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit345

if.end.i343:                                      ; preds = %to_clk.exit337
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i342 = getelementptr inbounds %struct.clk_hw, ptr %call.i338, i32 0, i32 1
  %14 = ptrtoint ptr %clk.i342 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk.i342, align 4
  br label %to_clk.exit345

to_clk.exit345:                                   ; preds = %if.end.i343, %to_clk.exit337.to_clk.exit345_crit_edge
  %retval.0.i344 = phi ptr [ %15, %if.end.i343 ], [ %call.i338, %to_clk.exit337.to_clk.exit345_crit_edge ]
  store ptr %retval.0.i344, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 116), align 4
  %add.ptr143 = getelementptr i8, ptr %call95, i32 28
  %call.i346 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.163, i8 noundef zeroext 2, ptr noundef nonnull @mx51_tve_ext_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr143, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i347 = icmp eq ptr %call.i346, null
  %cmp.i.i348 = icmp ugt ptr %call.i346, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i349 = or i1 %tobool.not.i.i347, %cmp.i.i348
  br i1 %spec.select.i.i349, label %to_clk.exit345.to_clk.exit353_crit_edge, label %if.end.i351

to_clk.exit345.to_clk.exit353_crit_edge:          ; preds = %to_clk.exit345
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit353

if.end.i351:                                      ; preds = %to_clk.exit345
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i350 = getelementptr inbounds %struct.clk_hw, ptr %call.i346, i32 0, i32 1
  %16 = ptrtoint ptr %clk.i350 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk.i350, align 4
  br label %to_clk.exit353

to_clk.exit353:                                   ; preds = %if.end.i351, %to_clk.exit345.to_clk.exit353_crit_edge
  %retval.0.i352 = phi ptr [ %17, %if.end.i351 ], [ %call.i346, %to_clk.exit345.to_clk.exit353_crit_edge ]
  store ptr %retval.0.i352, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 117), align 4
  %call.i354 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.161, i8 noundef zeroext 2, ptr noundef nonnull @mx51_tve_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr143, i8 noundef zeroext 7, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i355 = icmp eq ptr %call.i354, null
  %cmp.i.i356 = icmp ugt ptr %call.i354, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i357 = or i1 %tobool.not.i.i355, %cmp.i.i356
  br i1 %spec.select.i.i357, label %to_clk.exit353.to_clk.exit361_crit_edge, label %if.end.i359

to_clk.exit353.to_clk.exit361_crit_edge:          ; preds = %to_clk.exit353
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit361

if.end.i359:                                      ; preds = %to_clk.exit353
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i358 = getelementptr inbounds %struct.clk_hw, ptr %call.i354, i32 0, i32 1
  %18 = ptrtoint ptr %clk.i358 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk.i358, align 4
  br label %to_clk.exit361

to_clk.exit361:                                   ; preds = %if.end.i359, %to_clk.exit353.to_clk.exit361_crit_edge
  %retval.0.i360 = phi ptr [ %19, %if.end.i359 ], [ %call.i354, %to_clk.exit353.to_clk.exit361_crit_edge ]
  store ptr %retval.0.i360, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 27), align 4
  %add.ptr149 = getelementptr i8, ptr %call95, i32 112
  %call.i362 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.161, i32 noundef 4, ptr noundef %add.ptr149, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i363 = icmp eq ptr %call.i362, null
  %cmp.i.i364 = icmp ugt ptr %call.i362, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i365 = or i1 %tobool.not.i.i363, %cmp.i.i364
  br i1 %spec.select.i.i365, label %to_clk.exit361.to_clk.exit369_crit_edge, label %if.end.i367

to_clk.exit361.to_clk.exit369_crit_edge:          ; preds = %to_clk.exit361
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit369

if.end.i367:                                      ; preds = %to_clk.exit361
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i366 = getelementptr inbounds %struct.clk_hw, ptr %call.i362, i32 0, i32 1
  %20 = ptrtoint ptr %clk.i366 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk.i366, align 4
  br label %to_clk.exit369

to_clk.exit369:                                   ; preds = %if.end.i367, %to_clk.exit361.to_clk.exit369_crit_edge
  %retval.0.i368 = phi ptr [ %21, %if.end.i367 ], [ %call.i362, %to_clk.exit361.to_clk.exit369_crit_edge ]
  store ptr %retval.0.i368, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 69), align 4
  %add.ptr152 = getelementptr i8, ptr %call95, i32 48
  %call.i370 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr152, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i371 = icmp eq ptr %call.i370, null
  %cmp.i.i372 = icmp ugt ptr %call.i370, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i373 = or i1 %tobool.not.i.i371, %cmp.i.i372
  br i1 %spec.select.i.i373, label %to_clk.exit369.to_clk.exit377_crit_edge, label %if.end.i375

to_clk.exit369.to_clk.exit377_crit_edge:          ; preds = %to_clk.exit369
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit377

if.end.i375:                                      ; preds = %to_clk.exit369
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i374 = getelementptr inbounds %struct.clk_hw, ptr %call.i370, i32 0, i32 1
  %22 = ptrtoint ptr %clk.i374 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i374, align 4
  br label %to_clk.exit377

to_clk.exit377:                                   ; preds = %if.end.i375, %to_clk.exit369.to_clk.exit377_crit_edge
  %retval.0.i376 = phi ptr [ %23, %if.end.i375 ], [ %call.i370, %to_clk.exit369.to_clk.exit377_crit_edge ]
  store ptr %retval.0.i376, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 70), align 4
  %call.i378 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr143, i8 noundef zeroext 20, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i379 = icmp eq ptr %call.i378, null
  %cmp.i.i380 = icmp ugt ptr %call.i378, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i381 = or i1 %tobool.not.i.i379, %cmp.i.i380
  br i1 %spec.select.i.i381, label %to_clk.exit377.to_clk.exit385_crit_edge, label %if.end.i383

to_clk.exit377.to_clk.exit385_crit_edge:          ; preds = %to_clk.exit377
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit385

if.end.i383:                                      ; preds = %to_clk.exit377
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i382 = getelementptr inbounds %struct.clk_hw, ptr %call.i378, i32 0, i32 1
  %24 = ptrtoint ptr %clk.i382 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk.i382, align 4
  br label %to_clk.exit385

to_clk.exit385:                                   ; preds = %if.end.i383, %to_clk.exit377.to_clk.exit385_crit_edge
  %retval.0.i384 = phi ptr [ %25, %if.end.i383 ], [ %call.i378, %to_clk.exit377.to_clk.exit385_crit_edge ]
  store ptr %retval.0.i384, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 100), align 4
  %call.i386 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr143, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i387 = icmp eq ptr %call.i386, null
  %cmp.i.i388 = icmp ugt ptr %call.i386, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i389 = or i1 %tobool.not.i.i387, %cmp.i.i388
  br i1 %spec.select.i.i389, label %to_clk.exit385.to_clk.exit393_crit_edge, label %if.end.i391

to_clk.exit385.to_clk.exit393_crit_edge:          ; preds = %to_clk.exit385
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit393

if.end.i391:                                      ; preds = %to_clk.exit385
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i390 = getelementptr inbounds %struct.clk_hw, ptr %call.i386, i32 0, i32 1
  %26 = ptrtoint ptr %clk.i390 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk.i390, align 4
  br label %to_clk.exit393

to_clk.exit393:                                   ; preds = %if.end.i391, %to_clk.exit385.to_clk.exit393_crit_edge
  %retval.0.i392 = phi ptr [ %27, %if.end.i391 ], [ %call.i386, %to_clk.exit385.to_clk.exit393_crit_edge ]
  store ptr %retval.0.i392, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 101), align 4
  %call.i394 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, ptr noundef nonnull @esdhc_c_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr143, i8 noundef zeroext 19, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i395 = icmp eq ptr %call.i394, null
  %cmp.i.i396 = icmp ugt ptr %call.i394, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i397 = or i1 %tobool.not.i.i395, %cmp.i.i396
  br i1 %spec.select.i.i397, label %to_clk.exit393.to_clk.exit401_crit_edge, label %if.end.i399

to_clk.exit393.to_clk.exit401_crit_edge:          ; preds = %to_clk.exit393
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit401

if.end.i399:                                      ; preds = %to_clk.exit393
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i398 = getelementptr inbounds %struct.clk_hw, ptr %call.i394, i32 0, i32 1
  %28 = ptrtoint ptr %clk.i398 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk.i398, align 4
  br label %to_clk.exit401

to_clk.exit401:                                   ; preds = %if.end.i399, %to_clk.exit393.to_clk.exit401_crit_edge
  %retval.0.i400 = phi ptr [ %29, %if.end.i399 ], [ %call.i394, %to_clk.exit393.to_clk.exit401_crit_edge ]
  store ptr %retval.0.i400, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 13), align 4
  %call.i402 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, ptr noundef nonnull @esdhc_d_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr143, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i403 = icmp eq ptr %call.i402, null
  %cmp.i.i404 = icmp ugt ptr %call.i402, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i405 = or i1 %tobool.not.i.i403, %cmp.i.i404
  br i1 %spec.select.i.i405, label %to_clk.exit401.to_clk.exit409_crit_edge, label %if.end.i407

to_clk.exit401.to_clk.exit409_crit_edge:          ; preds = %to_clk.exit401
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit409

if.end.i407:                                      ; preds = %to_clk.exit401
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i406 = getelementptr inbounds %struct.clk_hw, ptr %call.i402, i32 0, i32 1
  %30 = ptrtoint ptr %clk.i406 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk.i406, align 4
  br label %to_clk.exit409

to_clk.exit409:                                   ; preds = %if.end.i407, %to_clk.exit401.to_clk.exit409_crit_edge
  %retval.0.i408 = phi ptr [ %31, %if.end.i407 ], [ %call.i402, %to_clk.exit401.to_clk.exit409_crit_edge ]
  store ptr %retval.0.i408, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 14), align 4
  %add.ptr167 = getelementptr i8, ptr %call95, i32 116
  %call.i410 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 4, ptr noundef %add.ptr167, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i411 = icmp eq ptr %call.i410, null
  %cmp.i.i412 = icmp ugt ptr %call.i410, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i413 = or i1 %tobool.not.i.i411, %cmp.i.i412
  br i1 %spec.select.i.i413, label %to_clk.exit409.to_clk.exit417_crit_edge, label %if.end.i415

to_clk.exit409.to_clk.exit417_crit_edge:          ; preds = %to_clk.exit409
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit417

if.end.i415:                                      ; preds = %to_clk.exit409
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i414 = getelementptr inbounds %struct.clk_hw, ptr %call.i410, i32 0, i32 1
  %32 = ptrtoint ptr %clk.i414 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk.i414, align 4
  br label %to_clk.exit417

to_clk.exit417:                                   ; preds = %if.end.i415, %to_clk.exit409.to_clk.exit417_crit_edge
  %retval.0.i416 = phi ptr [ %33, %if.end.i415 ], [ %call.i410, %to_clk.exit409.to_clk.exit417_crit_edge ]
  store ptr %retval.0.i416, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 71), align 4
  %call.i418 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, i32 noundef 4, ptr noundef %add.ptr167, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i419 = icmp eq ptr %call.i418, null
  %cmp.i.i420 = icmp ugt ptr %call.i418, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i421 = or i1 %tobool.not.i.i419, %cmp.i.i420
  br i1 %spec.select.i.i421, label %to_clk.exit417.to_clk.exit425_crit_edge, label %if.end.i423

to_clk.exit417.to_clk.exit425_crit_edge:          ; preds = %to_clk.exit417
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit425

if.end.i423:                                      ; preds = %to_clk.exit417
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i422 = getelementptr inbounds %struct.clk_hw, ptr %call.i418, i32 0, i32 1
  %34 = ptrtoint ptr %clk.i422 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk.i422, align 4
  br label %to_clk.exit425

to_clk.exit425:                                   ; preds = %if.end.i423, %to_clk.exit417.to_clk.exit425_crit_edge
  %retval.0.i424 = phi ptr [ %35, %if.end.i423 ], [ %call.i418, %to_clk.exit417.to_clk.exit425_crit_edge ]
  store ptr %retval.0.i424, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 72), align 4
  %call.i426 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 4, ptr noundef %add.ptr167, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i427 = icmp eq ptr %call.i426, null
  %cmp.i.i428 = icmp ugt ptr %call.i426, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i429 = or i1 %tobool.not.i.i427, %cmp.i.i428
  br i1 %spec.select.i.i429, label %to_clk.exit425.to_clk.exit433_crit_edge, label %if.end.i431

to_clk.exit425.to_clk.exit433_crit_edge:          ; preds = %to_clk.exit425
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit433

if.end.i431:                                      ; preds = %to_clk.exit425
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i430 = getelementptr inbounds %struct.clk_hw, ptr %call.i426, i32 0, i32 1
  %36 = ptrtoint ptr %clk.i430 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk.i430, align 4
  br label %to_clk.exit433

to_clk.exit433:                                   ; preds = %if.end.i431, %to_clk.exit425.to_clk.exit433_crit_edge
  %retval.0.i432 = phi ptr [ %37, %if.end.i431 ], [ %call.i426, %to_clk.exit425.to_clk.exit433_crit_edge ]
  store ptr %retval.0.i432, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 73), align 4
  %call.i434 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef 4, ptr noundef %add.ptr167, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i435 = icmp eq ptr %call.i434, null
  %cmp.i.i436 = icmp ugt ptr %call.i434, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i437 = or i1 %tobool.not.i.i435, %cmp.i.i436
  br i1 %spec.select.i.i437, label %to_clk.exit433.to_clk.exit441_crit_edge, label %if.end.i439

to_clk.exit433.to_clk.exit441_crit_edge:          ; preds = %to_clk.exit433
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit441

if.end.i439:                                      ; preds = %to_clk.exit433
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i438 = getelementptr inbounds %struct.clk_hw, ptr %call.i434, i32 0, i32 1
  %38 = ptrtoint ptr %clk.i438 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk.i438, align 4
  br label %to_clk.exit441

to_clk.exit441:                                   ; preds = %if.end.i439, %to_clk.exit433.to_clk.exit441_crit_edge
  %retval.0.i440 = phi ptr [ %39, %if.end.i439 ], [ %call.i434, %to_clk.exit433.to_clk.exit441_crit_edge ]
  store ptr %retval.0.i440, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 74), align 4
  %call.i442 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.18, i32 noundef 4, ptr noundef %add.ptr149, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i443 = icmp eq ptr %call.i442, null
  %cmp.i.i444 = icmp ugt ptr %call.i442, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i445 = or i1 %tobool.not.i.i443, %cmp.i.i444
  br i1 %spec.select.i.i445, label %to_clk.exit441.to_clk.exit449_crit_edge, label %if.end.i447

to_clk.exit441.to_clk.exit449_crit_edge:          ; preds = %to_clk.exit441
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit449

if.end.i447:                                      ; preds = %to_clk.exit441
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i446 = getelementptr inbounds %struct.clk_hw, ptr %call.i442, i32 0, i32 1
  %40 = ptrtoint ptr %clk.i446 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk.i446, align 4
  br label %to_clk.exit449

to_clk.exit449:                                   ; preds = %if.end.i447, %to_clk.exit441.to_clk.exit449_crit_edge
  %retval.0.i448 = phi ptr [ %41, %if.end.i447 ], [ %call.i442, %to_clk.exit441.to_clk.exit449_crit_edge ]
  store ptr %retval.0.i448, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 75), align 4
  %add.ptr182 = getelementptr i8, ptr %call95, i32 108
  %call.i450 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr182, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i451 = icmp eq ptr %call.i450, null
  %cmp.i.i452 = icmp ugt ptr %call.i450, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i453 = or i1 %tobool.not.i.i451, %cmp.i.i452
  br i1 %spec.select.i.i453, label %to_clk.exit449.to_clk.exit457_crit_edge, label %if.end.i455

to_clk.exit449.to_clk.exit457_crit_edge:          ; preds = %to_clk.exit449
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit457

if.end.i455:                                      ; preds = %to_clk.exit449
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i454 = getelementptr inbounds %struct.clk_hw, ptr %call.i450, i32 0, i32 1
  %42 = ptrtoint ptr %clk.i454 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk.i454, align 4
  br label %to_clk.exit457

to_clk.exit457:                                   ; preds = %if.end.i455, %to_clk.exit449.to_clk.exit457_crit_edge
  %retval.0.i456 = phi ptr [ %43, %if.end.i455 ], [ %call.i450, %to_clk.exit449.to_clk.exit457_crit_edge ]
  store ptr %retval.0.i456, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 76), align 4
  %call.i458 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr182, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i459 = icmp eq ptr %call.i458, null
  %cmp.i.i460 = icmp ugt ptr %call.i458, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i461 = or i1 %tobool.not.i.i459, %cmp.i.i460
  br i1 %spec.select.i.i461, label %to_clk.exit457.to_clk.exit465_crit_edge, label %if.end.i463

to_clk.exit457.to_clk.exit465_crit_edge:          ; preds = %to_clk.exit457
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit465

if.end.i463:                                      ; preds = %to_clk.exit457
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i462 = getelementptr inbounds %struct.clk_hw, ptr %call.i458, i32 0, i32 1
  %44 = ptrtoint ptr %clk.i462 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk.i462, align 4
  br label %to_clk.exit465

to_clk.exit465:                                   ; preds = %if.end.i463, %to_clk.exit457.to_clk.exit465_crit_edge
  %retval.0.i464 = phi ptr [ %45, %if.end.i463 ], [ %call.i458, %to_clk.exit457.to_clk.exit465_crit_edge ]
  store ptr %retval.0.i464, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 205), align 4
  %add.ptr188 = getelementptr i8, ptr %call95, i32 120
  %call.i466 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.23, i32 noundef 2052, ptr noundef %add.ptr188, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i467 = icmp eq ptr %call.i466, null
  %cmp.i.i468 = icmp ugt ptr %call.i466, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i469 = or i1 %tobool.not.i.i467, %cmp.i.i468
  br i1 %spec.select.i.i469, label %to_clk.exit465.to_clk.exit473_crit_edge, label %if.end.i471

to_clk.exit465.to_clk.exit473_crit_edge:          ; preds = %to_clk.exit465
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit473

if.end.i471:                                      ; preds = %to_clk.exit465
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i470 = getelementptr inbounds %struct.clk_hw, ptr %call.i466, i32 0, i32 1
  %46 = ptrtoint ptr %clk.i470 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk.i470, align 4
  br label %to_clk.exit473

to_clk.exit473:                                   ; preds = %if.end.i471, %to_clk.exit465.to_clk.exit473_crit_edge
  %retval.0.i472 = phi ptr [ %47, %if.end.i471 ], [ %call.i466, %to_clk.exit465.to_clk.exit473_crit_edge ]
  store ptr %retval.0.i472, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 77), align 4
  %call.i474 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.23, i32 noundef 2052, ptr noundef %add.ptr188, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i475 = icmp eq ptr %call.i474, null
  %cmp.i.i476 = icmp ugt ptr %call.i474, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i477 = or i1 %tobool.not.i.i475, %cmp.i.i476
  br i1 %spec.select.i.i477, label %to_clk.exit473.to_clk.exit481_crit_edge, label %if.end.i479

to_clk.exit473.to_clk.exit481_crit_edge:          ; preds = %to_clk.exit473
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit481

if.end.i479:                                      ; preds = %to_clk.exit473
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i478 = getelementptr inbounds %struct.clk_hw, ptr %call.i474, i32 0, i32 1
  %48 = ptrtoint ptr %clk.i478 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk.i478, align 4
  br label %to_clk.exit481

to_clk.exit481:                                   ; preds = %if.end.i479, %to_clk.exit473.to_clk.exit481_crit_edge
  %retval.0.i480 = phi ptr [ %49, %if.end.i479 ], [ %call.i474, %to_clk.exit473.to_clk.exit481_crit_edge ]
  store ptr %retval.0.i480, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 78), align 4
  %call.i482 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.23, i32 noundef 2052, ptr noundef %add.ptr188, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i483 = icmp eq ptr %call.i482, null
  %cmp.i.i484 = icmp ugt ptr %call.i482, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i485 = or i1 %tobool.not.i.i483, %cmp.i.i484
  br i1 %spec.select.i.i485, label %to_clk.exit481.to_clk.exit489_crit_edge, label %if.end.i487

to_clk.exit481.to_clk.exit489_crit_edge:          ; preds = %to_clk.exit481
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit489

if.end.i487:                                      ; preds = %to_clk.exit481
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i486 = getelementptr inbounds %struct.clk_hw, ptr %call.i482, i32 0, i32 1
  %50 = ptrtoint ptr %clk.i486 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk.i486, align 4
  br label %to_clk.exit489

to_clk.exit489:                                   ; preds = %if.end.i487, %to_clk.exit481.to_clk.exit489_crit_edge
  %retval.0.i488 = phi ptr [ %51, %if.end.i487 ], [ %call.i482, %to_clk.exit481.to_clk.exit489_crit_edge ]
  store ptr %retval.0.i488, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 79), align 4
  %call.i490 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.23, i32 noundef 2052, ptr noundef %add.ptr188, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i491 = icmp eq ptr %call.i490, null
  %cmp.i.i492 = icmp ugt ptr %call.i490, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i493 = or i1 %tobool.not.i.i491, %cmp.i.i492
  br i1 %spec.select.i.i493, label %to_clk.exit489.to_clk.exit497_crit_edge, label %if.end.i495

to_clk.exit489.to_clk.exit497_crit_edge:          ; preds = %to_clk.exit489
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit497

if.end.i495:                                      ; preds = %to_clk.exit489
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i494 = getelementptr inbounds %struct.clk_hw, ptr %call.i490, i32 0, i32 1
  %52 = ptrtoint ptr %clk.i494 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk.i494, align 4
  br label %to_clk.exit497

to_clk.exit497:                                   ; preds = %if.end.i495, %to_clk.exit489.to_clk.exit497_crit_edge
  %retval.0.i496 = phi ptr [ %53, %if.end.i495 ], [ %call.i490, %to_clk.exit489.to_clk.exit497_crit_edge ]
  store ptr %retval.0.i496, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 80), align 4
  %call.i498 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.159, i8 noundef zeroext 3, ptr noundef nonnull @mx51_spdif_xtal_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr143, i8 noundef zeroext 2, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i499 = icmp eq ptr %call.i498, null
  %cmp.i.i500 = icmp ugt ptr %call.i498, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i501 = or i1 %tobool.not.i.i499, %cmp.i.i500
  br i1 %spec.select.i.i501, label %to_clk.exit497.to_clk.exit505_crit_edge, label %if.end.i503

to_clk.exit497.to_clk.exit505_crit_edge:          ; preds = %to_clk.exit497
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit505

if.end.i503:                                      ; preds = %to_clk.exit497
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i502 = getelementptr inbounds %struct.clk_hw, ptr %call.i498, i32 0, i32 1
  %54 = ptrtoint ptr %clk.i502 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clk.i502, align 4
  br label %to_clk.exit505

to_clk.exit505:                                   ; preds = %if.end.i503, %to_clk.exit497.to_clk.exit505_crit_edge
  %retval.0.i504 = phi ptr [ %55, %if.end.i503 ], [ %call.i498, %to_clk.exit497.to_clk.exit505_crit_edge ]
  store ptr %retval.0.i504, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 174), align 4
  %call.i506 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.173, i8 noundef zeroext 4, ptr noundef nonnull @spdif_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr137, i8 noundef zeroext 2, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i507 = icmp eq ptr %call.i506, null
  %cmp.i.i508 = icmp ugt ptr %call.i506, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i509 = or i1 %tobool.not.i.i507, %cmp.i.i508
  br i1 %spec.select.i.i509, label %to_clk.exit505.to_clk.exit513_crit_edge, label %if.end.i511

to_clk.exit505.to_clk.exit513_crit_edge:          ; preds = %to_clk.exit505
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit513

if.end.i511:                                      ; preds = %to_clk.exit505
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i510 = getelementptr inbounds %struct.clk_hw, ptr %call.i506, i32 0, i32 1
  %56 = ptrtoint ptr %clk.i510 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk.i510, align 4
  br label %to_clk.exit513

to_clk.exit513:                                   ; preds = %if.end.i511, %to_clk.exit505.to_clk.exit513_crit_edge
  %retval.0.i512 = phi ptr [ %57, %if.end.i511 ], [ %call.i506, %to_clk.exit505.to_clk.exit513_crit_edge ]
  store ptr %retval.0.i512, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 176), align 4
  %call.i514 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.173, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr152, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i515 = icmp eq ptr %call.i514, null
  %cmp.i.i516 = icmp ugt ptr %call.i514, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i517 = or i1 %tobool.not.i.i515, %cmp.i.i516
  br i1 %spec.select.i.i517, label %to_clk.exit513.to_clk.exit521_crit_edge, label %if.end.i519

to_clk.exit513.to_clk.exit521_crit_edge:          ; preds = %to_clk.exit513
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit521

if.end.i519:                                      ; preds = %to_clk.exit513
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i518 = getelementptr inbounds %struct.clk_hw, ptr %call.i514, i32 0, i32 1
  %58 = ptrtoint ptr %clk.i518 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk.i518, align 4
  br label %to_clk.exit521

to_clk.exit521:                                   ; preds = %if.end.i519, %to_clk.exit513.to_clk.exit521_crit_edge
  %retval.0.i520 = phi ptr [ %59, %if.end.i519 ], [ %call.i514, %to_clk.exit513.to_clk.exit521_crit_edge ]
  store ptr %retval.0.i520, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 179), align 4
  %call.i522 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.174, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr152, i8 noundef zeroext 9, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i523 = icmp eq ptr %call.i522, null
  %cmp.i.i524 = icmp ugt ptr %call.i522, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i525 = or i1 %tobool.not.i.i523, %cmp.i.i524
  br i1 %spec.select.i.i525, label %to_clk.exit521.to_clk.exit529_crit_edge, label %if.end.i527

to_clk.exit521.to_clk.exit529_crit_edge:          ; preds = %to_clk.exit521
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit529

if.end.i527:                                      ; preds = %to_clk.exit521
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i526 = getelementptr inbounds %struct.clk_hw, ptr %call.i522, i32 0, i32 1
  %60 = ptrtoint ptr %clk.i526 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk.i526, align 4
  br label %to_clk.exit529

to_clk.exit529:                                   ; preds = %if.end.i527, %to_clk.exit521.to_clk.exit529_crit_edge
  %retval.0.i528 = phi ptr [ %61, %if.end.i527 ], [ %call.i522, %to_clk.exit521.to_clk.exit529_crit_edge ]
  store ptr %retval.0.i528, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 180), align 4
  %call.i530 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.176, i8 noundef zeroext 2, ptr noundef nonnull @mx51_spdif1_com_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr137, i8 noundef zeroext 5, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i531 = icmp eq ptr %call.i530, null
  %cmp.i.i532 = icmp ugt ptr %call.i530, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i533 = or i1 %tobool.not.i.i531, %cmp.i.i532
  br i1 %spec.select.i.i533, label %to_clk.exit529.to_clk.exit537_crit_edge, label %if.end.i535

to_clk.exit529.to_clk.exit537_crit_edge:          ; preds = %to_clk.exit529
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit537

if.end.i535:                                      ; preds = %to_clk.exit529
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i534 = getelementptr inbounds %struct.clk_hw, ptr %call.i530, i32 0, i32 1
  %62 = ptrtoint ptr %clk.i534 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk.i534, align 4
  br label %to_clk.exit537

to_clk.exit537:                                   ; preds = %if.end.i535, %to_clk.exit529.to_clk.exit537_crit_edge
  %retval.0.i536 = phi ptr [ %63, %if.end.i535 ], [ %call.i530, %to_clk.exit529.to_clk.exit537_crit_edge ]
  store ptr %retval.0.i536, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 182), align 4
  %add.ptr215 = getelementptr i8, ptr %call95, i32 124
  %call.i538 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.176, i32 noundef 4, ptr noundef %add.ptr215, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i539 = icmp eq ptr %call.i538, null
  %cmp.i.i540 = icmp ugt ptr %call.i538, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i541 = or i1 %tobool.not.i.i539, %cmp.i.i540
  br i1 %spec.select.i.i541, label %to_clk.exit537.to_clk.exit545_crit_edge, label %if.end.i543

to_clk.exit537.to_clk.exit545_crit_edge:          ; preds = %to_clk.exit537
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit545

if.end.i543:                                      ; preds = %to_clk.exit537
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i542 = getelementptr inbounds %struct.clk_hw, ptr %call.i538, i32 0, i32 1
  %64 = ptrtoint ptr %clk.i542 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk.i542, align 4
  br label %to_clk.exit545

to_clk.exit545:                                   ; preds = %if.end.i543, %to_clk.exit537.to_clk.exit545_crit_edge
  %retval.0.i544 = phi ptr [ %65, %if.end.i543 ], [ %call.i538, %to_clk.exit537.to_clk.exit545_crit_edge ]
  store ptr %retval.0.i544, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 184), align 4
  tail call void @imx_check_clocks(ptr noundef nonnull @clk, i32 noundef 206) #2
  store ptr @clk, ptr @clk_data, align 4
  store i32 206, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %call218 = tail call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #2
  %66 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 105), align 4
  %67 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %call219 = tail call i32 @clk_set_parent(ptr noundef %66, ptr noundef %67) #2
  %68 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 100), align 4
  %69 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %call220 = tail call i32 @clk_set_parent(ptr noundef %68, ptr noundef %69) #2
  %70 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 101), align 4
  %71 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %call221 = tail call i32 @clk_set_parent(ptr noundef %70, ptr noundef %71) #2
  %72 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 102), align 4
  %call222 = tail call i32 @clk_set_rate(ptr noundef %72, i32 noundef 166250000) #2
  %73 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 103), align 4
  %call223 = tail call i32 @clk_set_rate(ptr noundef %73, i32 noundef 166250000) #2
  %74 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 107), align 4
  %call.i546 = tail call i32 @clk_prepare(ptr noundef %74) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i546)
  %tobool.not.i = icmp eq i32 %call.i546, 0
  br i1 %tobool.not.i, label %if.end.i547, label %to_clk.exit545.clk_prepare_enable.exit_crit_edge

to_clk.exit545.clk_prepare_enable.exit_crit_edge: ; preds = %to_clk.exit545
  call void @__sanitizer_cov_trace_pc() #4
  br label %clk_prepare_enable.exit

if.end.i547:                                      ; preds = %to_clk.exit545
  %call1.i = tail call i32 @clk_enable(ptr noundef %74) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i547.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i547.clk_prepare_enable.exit_crit_edge:    ; preds = %if.end.i547
  call void @__sanitizer_cov_trace_pc() #4
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i547
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @clk_unprepare(ptr noundef %74) #2
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i547.clk_prepare_enable.exit_crit_edge, %to_clk.exit545.clk_prepare_enable.exit_crit_edge
  %call225 = tail call i32 @mx51_revision() #2
  tail call void @imx_print_silicon_rev(ptr noundef nonnull @.str.178, i32 noundef %call225) #2
  %75 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 107), align 4
  tail call void @clk_disable(ptr noundef %75) #2
  tail call void @clk_unprepare(ptr noundef %75) #2
  %add.ptr226 = getelementptr i8, ptr %call95, i32 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr226) #2, !srcloc !513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !514
  %77 = or i32 %76, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !515
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr226, i32 %77) #2, !srcloc !516
  %add.ptr236 = getelementptr i8, ptr %call95, i32 84
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr236) #2, !srcloc !513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !517
  %79 = or i32 %78, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !518
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr236, i32 %79) #2, !srcloc !516
  tail call void @imx_register_uart_clocks(i32 noundef 3) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mx53_clocks_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef 1677197312, i32 noundef 16384) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !512

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 478, i32 noundef 9, ptr noundef null) #2
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call21 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %call) #2
  %tobool.not.i.i = icmp eq ptr %call21, null
  %cmp.i.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.to_clk.exit_crit_edge, label %if.end.i

if.end.to_clk.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %call21, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  br label %to_clk.exit

to_clk.exit:                                      ; preds = %if.end.i, %if.end.to_clk.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ %call21, %if.end.to_clk.exit_crit_edge ]
  store ptr %retval.0.i, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 112), align 4
  %call23 = tail call ptr @ioremap(i32 noundef 1677213696, i32 noundef 16384) #2
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %do.end43, label %to_clk.exit.if.end49_crit_edge, !prof !512

to_clk.exit.if.end49_crit_edge:                   ; preds = %to_clk.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end49

do.end43:                                         ; preds = %to_clk.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 482, i32 noundef 9, ptr noundef null) #2
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %to_clk.exit.if.end49_crit_edge
  %call57 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef %call23) #2
  %tobool.not.i.i423 = icmp eq ptr %call57, null
  %cmp.i.i424 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i425 = or i1 %tobool.not.i.i423, %cmp.i.i424
  br i1 %spec.select.i.i425, label %if.end49.to_clk.exit429_crit_edge, label %if.end.i427

if.end49.to_clk.exit429_crit_edge:                ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit429

if.end.i427:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i426 = getelementptr inbounds %struct.clk_hw, ptr %call57, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i426 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i426, align 4
  br label %to_clk.exit429

to_clk.exit429:                                   ; preds = %if.end.i427, %if.end49.to_clk.exit429_crit_edge
  %retval.0.i428 = phi ptr [ %3, %if.end.i427 ], [ %call57, %if.end49.to_clk.exit429_crit_edge ]
  store ptr %retval.0.i428, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %call59 = tail call ptr @ioremap(i32 noundef 1677230080, i32 noundef 16384) #2
  %tobool61.not = icmp eq ptr %call59, null
  br i1 %tobool61.not, label %do.end79, label %to_clk.exit429.if.end85_crit_edge, !prof !512

to_clk.exit429.if.end85_crit_edge:                ; preds = %to_clk.exit429
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end85

do.end79:                                         ; preds = %to_clk.exit429
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 486, i32 noundef 9, ptr noundef null) #2
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %to_clk.exit429.if.end85_crit_edge
  %call93 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %call59) #2
  %tobool.not.i.i430 = icmp eq ptr %call93, null
  %cmp.i.i431 = icmp ugt ptr %call93, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i432 = or i1 %tobool.not.i.i430, %cmp.i.i431
  br i1 %spec.select.i.i432, label %if.end85.to_clk.exit436_crit_edge, label %if.end.i434

if.end85.to_clk.exit436_crit_edge:                ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit436

if.end.i434:                                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i433 = getelementptr inbounds %struct.clk_hw, ptr %call93, i32 0, i32 1
  %4 = ptrtoint ptr %clk.i433 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i433, align 4
  br label %to_clk.exit436

to_clk.exit436:                                   ; preds = %if.end.i434, %if.end85.to_clk.exit436_crit_edge
  %retval.0.i435 = phi ptr [ %5, %if.end.i434 ], [ %call93, %if.end85.to_clk.exit436_crit_edge ]
  store ptr %retval.0.i435, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 114), align 4
  %call95 = tail call ptr @ioremap(i32 noundef 1677246464, i32 noundef 16384) #2
  %tobool97.not = icmp eq ptr %call95, null
  br i1 %tobool97.not, label %do.end115, label %to_clk.exit436.if.end121_crit_edge, !prof !512

to_clk.exit436.if.end121_crit_edge:               ; preds = %to_clk.exit436
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end121

do.end115:                                        ; preds = %to_clk.exit436
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 490, i32 noundef 9, ptr noundef null) #2
  br label %if.end121

if.end121:                                        ; preds = %do.end115, %to_clk.exit436.if.end121_crit_edge
  %call129 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.2, ptr noundef %call95) #2
  %tobool.not.i.i437 = icmp eq ptr %call129, null
  %cmp.i.i438 = icmp ugt ptr %call129, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i439 = or i1 %tobool.not.i.i437, %cmp.i.i438
  br i1 %spec.select.i.i439, label %if.end121.to_clk.exit443_crit_edge, label %if.end.i441

if.end121.to_clk.exit443_crit_edge:               ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit443

if.end.i441:                                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i440 = getelementptr inbounds %struct.clk_hw, ptr %call129, i32 0, i32 1
  %6 = ptrtoint ptr %clk.i440 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i440, align 4
  br label %to_clk.exit443

to_clk.exit443:                                   ; preds = %if.end.i441, %if.end121.to_clk.exit443_crit_edge
  %retval.0.i442 = phi ptr [ %7, %if.end.i441 ], [ %call129, %if.end121.to_clk.exit443_crit_edge ]
  store ptr %retval.0.i442, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 119), align 4
  %call131 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #2
  %tobool133.not = icmp eq ptr %call131, null
  br i1 %tobool133.not, label %do.end151, label %to_clk.exit443.if.end157_crit_edge, !prof !512

to_clk.exit443.if.end157_crit_edge:               ; preds = %to_clk.exit443
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end157

do.end151:                                        ; preds = %to_clk.exit443
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 494, i32 noundef 9, ptr noundef null) #2
  br label %if.end157

if.end157:                                        ; preds = %do.end151, %to_clk.exit443.if.end157_crit_edge
  tail call fastcc void @mx5_clocks_common_init(ptr noundef %call131) #5
  %add.ptr = getelementptr i8, ptr %call131, i32 24
  %call.i = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.162, i8 noundef zeroext 3, ptr noundef nonnull @periph_apm_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i444 = icmp eq ptr %call.i, null
  %cmp.i.i445 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i446 = or i1 %tobool.not.i.i444, %cmp.i.i445
  br i1 %spec.select.i.i446, label %if.end157.to_clk.exit450_crit_edge, label %if.end.i448

if.end157.to_clk.exit450_crit_edge:               ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit450

if.end.i448:                                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i447 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %clk.i447 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i447, align 4
  br label %to_clk.exit450

to_clk.exit450:                                   ; preds = %if.end.i448, %if.end157.to_clk.exit450_crit_edge
  %retval.0.i449 = phi ptr [ %9, %if.end.i448 ], [ %call.i, %if.end157.to_clk.exit450_crit_edge ]
  store ptr %retval.0.i449, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 90), align 4
  %add.ptr167 = getelementptr i8, ptr %call131, i32 20
  %call.i451 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5, i8 noundef zeroext 2, ptr noundef nonnull @main_bus_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr167, i8 noundef zeroext 25, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i452 = icmp eq ptr %call.i451, null
  %cmp.i.i453 = icmp ugt ptr %call.i451, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i454 = or i1 %tobool.not.i.i452, %cmp.i.i453
  br i1 %spec.select.i.i454, label %to_clk.exit450.to_clk.exit458_crit_edge, label %if.end.i456

to_clk.exit450.to_clk.exit458_crit_edge:          ; preds = %to_clk.exit450
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit458

if.end.i456:                                      ; preds = %to_clk.exit450
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i455 = getelementptr inbounds %struct.clk_hw, ptr %call.i451, i32 0, i32 1
  %10 = ptrtoint ptr %clk.i455 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i455, align 4
  br label %to_clk.exit458

to_clk.exit458:                                   ; preds = %if.end.i456, %to_clk.exit450.to_clk.exit458_crit_edge
  %retval.0.i457 = phi ptr [ %11, %if.end.i456 ], [ %call.i451, %to_clk.exit450.to_clk.exit458_crit_edge ]
  store ptr %retval.0.i457, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 91), align 4
  %add.ptr170 = getelementptr i8, ptr %call131, i32 12
  %call.i459 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6, i8 noundef zeroext 1, ptr noundef nonnull @lp_apm_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr170, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i460 = icmp eq ptr %call.i459, null
  %cmp.i.i461 = icmp ugt ptr %call.i459, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i462 = or i1 %tobool.not.i.i460, %cmp.i.i461
  br i1 %spec.select.i.i462, label %to_clk.exit458.to_clk.exit466_crit_edge, label %if.end.i464

to_clk.exit458.to_clk.exit466_crit_edge:          ; preds = %to_clk.exit458
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit466

if.end.i464:                                      ; preds = %to_clk.exit458
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i463 = getelementptr inbounds %struct.clk_hw, ptr %call.i459, i32 0, i32 1
  %12 = ptrtoint ptr %clk.i463 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i463, align 4
  br label %to_clk.exit466

to_clk.exit466:                                   ; preds = %if.end.i464, %to_clk.exit458.to_clk.exit466_crit_edge
  %retval.0.i465 = phi ptr [ %13, %if.end.i464 ], [ %call.i459, %to_clk.exit458.to_clk.exit466_crit_edge ]
  store ptr %retval.0.i465, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 89), align 4
  %call.i467 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.183, i32 noundef 4, i32 noundef 2, i32 noundef 7) #2
  %tobool.not.i.i468 = icmp eq ptr %call.i467, null
  %cmp.i.i469 = icmp ugt ptr %call.i467, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i470 = or i1 %tobool.not.i.i468, %cmp.i.i469
  br i1 %spec.select.i.i470, label %to_clk.exit466.to_clk.exit474_crit_edge, label %if.end.i472

to_clk.exit466.to_clk.exit474_crit_edge:          ; preds = %to_clk.exit466
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit474

if.end.i472:                                      ; preds = %to_clk.exit466
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i471 = getelementptr inbounds %struct.clk_hw, ptr %call.i467, i32 0, i32 1
  %14 = ptrtoint ptr %clk.i471 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk.i471, align 4
  br label %to_clk.exit474

to_clk.exit474:                                   ; preds = %if.end.i472, %to_clk.exit466.to_clk.exit474_crit_edge
  %retval.0.i473 = phi ptr [ %15, %if.end.i472 ], [ %call.i467, %to_clk.exit466.to_clk.exit474_crit_edge ]
  store ptr %retval.0.i473, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 81), align 4
  %add.ptr175 = getelementptr i8, ptr %call131, i32 32
  %call.i475 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.182, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr175, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i476 = icmp eq ptr %call.i475, null
  %cmp.i.i477 = icmp ugt ptr %call.i475, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i478 = or i1 %tobool.not.i.i476, %cmp.i.i477
  br i1 %spec.select.i.i478, label %to_clk.exit474.to_clk.exit482_crit_edge, label %if.end.i480

to_clk.exit474.to_clk.exit482_crit_edge:          ; preds = %to_clk.exit474
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit482

if.end.i480:                                      ; preds = %to_clk.exit474
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i479 = getelementptr inbounds %struct.clk_hw, ptr %call.i475, i32 0, i32 1
  %16 = ptrtoint ptr %clk.i479 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk.i479, align 4
  br label %to_clk.exit482

to_clk.exit482:                                   ; preds = %if.end.i480, %to_clk.exit474.to_clk.exit482_crit_edge
  %retval.0.i481 = phi ptr [ %17, %if.end.i480 ], [ %call.i475, %to_clk.exit474.to_clk.exit482_crit_edge ]
  store ptr %retval.0.i481, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 82), align 4
  %call.i483 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.183, i8 noundef zeroext 2, ptr noundef nonnull @mx53_ldb_di1_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr175, i8 noundef zeroext 9, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i484 = icmp eq ptr %call.i483, null
  %cmp.i.i485 = icmp ugt ptr %call.i483, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i486 = or i1 %tobool.not.i.i484, %cmp.i.i485
  br i1 %spec.select.i.i486, label %to_clk.exit482.to_clk.exit490_crit_edge, label %if.end.i488

to_clk.exit482.to_clk.exit490_crit_edge:          ; preds = %to_clk.exit482
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit490

if.end.i488:                                      ; preds = %to_clk.exit482
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i487 = getelementptr inbounds %struct.clk_hw, ptr %call.i483, i32 0, i32 1
  %18 = ptrtoint ptr %clk.i487 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk.i487, align 4
  br label %to_clk.exit490

to_clk.exit490:                                   ; preds = %if.end.i488, %to_clk.exit482.to_clk.exit490_crit_edge
  %retval.0.i489 = phi ptr [ %19, %if.end.i488 ], [ %call.i483, %to_clk.exit482.to_clk.exit490_crit_edge ]
  store ptr %retval.0.i489, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 120), align 4
  %add.ptr181 = getelementptr i8, ptr %call131, i32 48
  %call.i491 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.160, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr181, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i492 = icmp eq ptr %call.i491, null
  %cmp.i.i493 = icmp ugt ptr %call.i491, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i494 = or i1 %tobool.not.i.i492, %cmp.i.i493
  br i1 %spec.select.i.i494, label %to_clk.exit490.to_clk.exit498_crit_edge, label %if.end.i496

to_clk.exit490.to_clk.exit498_crit_edge:          ; preds = %to_clk.exit490
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit498

if.end.i496:                                      ; preds = %to_clk.exit490
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i495 = getelementptr inbounds %struct.clk_hw, ptr %call.i491, i32 0, i32 1
  %20 = ptrtoint ptr %clk.i495 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk.i495, align 4
  br label %to_clk.exit498

to_clk.exit498:                                   ; preds = %if.end.i496, %to_clk.exit490.to_clk.exit498_crit_edge
  %retval.0.i497 = phi ptr [ %21, %if.end.i496 ], [ %call.i491, %to_clk.exit490.to_clk.exit498_crit_edge ]
  store ptr %retval.0.i497, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 121), align 4
  %call.i499 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, i32 noundef 4, i32 noundef 2, i32 noundef 7) #2
  %tobool.not.i.i500 = icmp eq ptr %call.i499, null
  %cmp.i.i501 = icmp ugt ptr %call.i499, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i502 = or i1 %tobool.not.i.i500, %cmp.i.i501
  br i1 %spec.select.i.i502, label %to_clk.exit498.to_clk.exit506_crit_edge, label %if.end.i504

to_clk.exit498.to_clk.exit506_crit_edge:          ; preds = %to_clk.exit498
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit506

if.end.i504:                                      ; preds = %to_clk.exit498
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i503 = getelementptr inbounds %struct.clk_hw, ptr %call.i499, i32 0, i32 1
  %22 = ptrtoint ptr %clk.i503 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i503, align 4
  br label %to_clk.exit506

to_clk.exit506:                                   ; preds = %if.end.i504, %to_clk.exit498.to_clk.exit506_crit_edge
  %retval.0.i505 = phi ptr [ %23, %if.end.i504 ], [ %call.i499, %to_clk.exit498.to_clk.exit506_crit_edge ]
  store ptr %retval.0.i505, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 83), align 4
  %call.i507 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.186, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr175, i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i508 = icmp eq ptr %call.i507, null
  %cmp.i.i509 = icmp ugt ptr %call.i507, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i510 = or i1 %tobool.not.i.i508, %cmp.i.i509
  br i1 %spec.select.i.i510, label %to_clk.exit506.to_clk.exit514_crit_edge, label %if.end.i512

to_clk.exit506.to_clk.exit514_crit_edge:          ; preds = %to_clk.exit506
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit514

if.end.i512:                                      ; preds = %to_clk.exit506
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i511 = getelementptr inbounds %struct.clk_hw, ptr %call.i507, i32 0, i32 1
  %24 = ptrtoint ptr %clk.i511 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk.i511, align 4
  br label %to_clk.exit514

to_clk.exit514:                                   ; preds = %if.end.i512, %to_clk.exit506.to_clk.exit514_crit_edge
  %retval.0.i513 = phi ptr [ %25, %if.end.i512 ], [ %call.i507, %to_clk.exit506.to_clk.exit514_crit_edge ]
  store ptr %retval.0.i513, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 84), align 4
  %call.i515 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.187, i8 noundef zeroext 2, ptr noundef nonnull @mx53_ldb_di0_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr175, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i516 = icmp eq ptr %call.i515, null
  %cmp.i.i517 = icmp ugt ptr %call.i515, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i518 = or i1 %tobool.not.i.i516, %cmp.i.i517
  br i1 %spec.select.i.i518, label %to_clk.exit514.to_clk.exit522_crit_edge, label %if.end.i520

to_clk.exit514.to_clk.exit522_crit_edge:          ; preds = %to_clk.exit514
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit522

if.end.i520:                                      ; preds = %to_clk.exit514
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i519 = getelementptr inbounds %struct.clk_hw, ptr %call.i515, i32 0, i32 1
  %26 = ptrtoint ptr %clk.i519 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk.i519, align 4
  br label %to_clk.exit522

to_clk.exit522:                                   ; preds = %if.end.i520, %to_clk.exit514.to_clk.exit522_crit_edge
  %retval.0.i521 = phi ptr [ %27, %if.end.i520 ], [ %call.i515, %to_clk.exit514.to_clk.exit522_crit_edge ]
  store ptr %retval.0.i521, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 122), align 4
  %add.ptr192 = getelementptr i8, ptr %call131, i32 128
  %call.i523 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.188, i32 noundef 4, ptr noundef %add.ptr192, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i524 = icmp eq ptr %call.i523, null
  %cmp.i.i525 = icmp ugt ptr %call.i523, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i526 = or i1 %tobool.not.i.i524, %cmp.i.i525
  br i1 %spec.select.i.i526, label %to_clk.exit522.to_clk.exit530_crit_edge, label %if.end.i528

to_clk.exit522.to_clk.exit530_crit_edge:          ; preds = %to_clk.exit522
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit530

if.end.i528:                                      ; preds = %to_clk.exit522
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i527 = getelementptr inbounds %struct.clk_hw, ptr %call.i523, i32 0, i32 1
  %28 = ptrtoint ptr %clk.i527 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk.i527, align 4
  br label %to_clk.exit530

to_clk.exit530:                                   ; preds = %if.end.i528, %to_clk.exit522.to_clk.exit530_crit_edge
  %retval.0.i529 = phi ptr [ %29, %if.end.i528 ], [ %call.i523, %to_clk.exit522.to_clk.exit530_crit_edge ]
  store ptr %retval.0.i529, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 123), align 4
  %call.i531 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.184, i32 noundef 4, ptr noundef %add.ptr192, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i532 = icmp eq ptr %call.i531, null
  %cmp.i.i533 = icmp ugt ptr %call.i531, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i534 = or i1 %tobool.not.i.i532, %cmp.i.i533
  br i1 %spec.select.i.i534, label %to_clk.exit530.to_clk.exit538_crit_edge, label %if.end.i536

to_clk.exit530.to_clk.exit538_crit_edge:          ; preds = %to_clk.exit530
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit538

if.end.i536:                                      ; preds = %to_clk.exit530
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i535 = getelementptr inbounds %struct.clk_hw, ptr %call.i531, i32 0, i32 1
  %30 = ptrtoint ptr %clk.i535 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk.i535, align 4
  br label %to_clk.exit538

to_clk.exit538:                                   ; preds = %if.end.i536, %to_clk.exit530.to_clk.exit538_crit_edge
  %retval.0.i537 = phi ptr [ %31, %if.end.i536 ], [ %call.i531, %to_clk.exit530.to_clk.exit538_crit_edge ]
  store ptr %retval.0.i537, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 85), align 4
  %call.i539 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.109, i8 noundef zeroext 6, ptr noundef nonnull @mx53_ipu_di0_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr175, i8 noundef zeroext 26, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i540 = icmp eq ptr %call.i539, null
  %cmp.i.i541 = icmp ugt ptr %call.i539, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i542 = or i1 %tobool.not.i.i540, %cmp.i.i541
  br i1 %spec.select.i.i542, label %to_clk.exit538.to_clk.exit546_crit_edge, label %if.end.i544

to_clk.exit538.to_clk.exit546_crit_edge:          ; preds = %to_clk.exit538
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit546

if.end.i544:                                      ; preds = %to_clk.exit538
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i543 = getelementptr inbounds %struct.clk_hw, ptr %call.i539, i32 0, i32 1
  %32 = ptrtoint ptr %clk.i543 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk.i543, align 4
  br label %to_clk.exit546

to_clk.exit546:                                   ; preds = %if.end.i544, %to_clk.exit538.to_clk.exit546_crit_edge
  %retval.0.i545 = phi ptr [ %33, %if.end.i544 ], [ %call.i539, %to_clk.exit538.to_clk.exit546_crit_edge ]
  store ptr %retval.0.i545, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 115), align 4
  %call.i547 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, i8 noundef zeroext 6, ptr noundef nonnull @mx53_ipu_di1_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr175, i8 noundef zeroext 29, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i548 = icmp eq ptr %call.i547, null
  %cmp.i.i549 = icmp ugt ptr %call.i547, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i550 = or i1 %tobool.not.i.i548, %cmp.i.i549
  br i1 %spec.select.i.i550, label %to_clk.exit546.to_clk.exit554_crit_edge, label %if.end.i552

to_clk.exit546.to_clk.exit554_crit_edge:          ; preds = %to_clk.exit546
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit554

if.end.i552:                                      ; preds = %to_clk.exit546
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i551 = getelementptr inbounds %struct.clk_hw, ptr %call.i547, i32 0, i32 1
  %34 = ptrtoint ptr %clk.i551 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk.i551, align 4
  br label %to_clk.exit554

to_clk.exit554:                                   ; preds = %if.end.i552, %to_clk.exit546.to_clk.exit554_crit_edge
  %retval.0.i553 = phi ptr [ %35, %if.end.i552 ], [ %call.i547, %to_clk.exit546.to_clk.exit554_crit_edge ]
  store ptr %retval.0.i553, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 116), align 4
  %add.ptr204 = getelementptr i8, ptr %call131, i32 28
  %call.i555 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.163, i8 noundef zeroext 2, ptr noundef nonnull @mx53_tve_ext_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr204, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i556 = icmp eq ptr %call.i555, null
  %cmp.i.i557 = icmp ugt ptr %call.i555, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i558 = or i1 %tobool.not.i.i556, %cmp.i.i557
  br i1 %spec.select.i.i558, label %to_clk.exit554.to_clk.exit562_crit_edge, label %if.end.i560

to_clk.exit554.to_clk.exit562_crit_edge:          ; preds = %to_clk.exit554
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit562

if.end.i560:                                      ; preds = %to_clk.exit554
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i559 = getelementptr inbounds %struct.clk_hw, ptr %call.i555, i32 0, i32 1
  %36 = ptrtoint ptr %clk.i559 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk.i559, align 4
  br label %to_clk.exit562

to_clk.exit562:                                   ; preds = %if.end.i560, %to_clk.exit554.to_clk.exit562_crit_edge
  %retval.0.i561 = phi ptr [ %37, %if.end.i560 ], [ %call.i555, %to_clk.exit554.to_clk.exit562_crit_edge ]
  store ptr %retval.0.i561, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 117), align 4
  %add.ptr207 = getelementptr i8, ptr %call131, i32 112
  %call.i563 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.165, i32 noundef 4, ptr noundef %add.ptr207, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i564 = icmp eq ptr %call.i563, null
  %cmp.i.i565 = icmp ugt ptr %call.i563, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i566 = or i1 %tobool.not.i.i564, %cmp.i.i565
  br i1 %spec.select.i.i566, label %to_clk.exit562.to_clk.exit570_crit_edge, label %if.end.i568

to_clk.exit562.to_clk.exit570_crit_edge:          ; preds = %to_clk.exit562
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit570

if.end.i568:                                      ; preds = %to_clk.exit562
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i567 = getelementptr inbounds %struct.clk_hw, ptr %call.i563, i32 0, i32 1
  %38 = ptrtoint ptr %clk.i567 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk.i567, align 4
  br label %to_clk.exit570

to_clk.exit570:                                   ; preds = %if.end.i568, %to_clk.exit562.to_clk.exit570_crit_edge
  %retval.0.i569 = phi ptr [ %39, %if.end.i568 ], [ %call.i563, %to_clk.exit562.to_clk.exit570_crit_edge ]
  store ptr %retval.0.i569, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 69), align 4
  %call.i571 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.163, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr181, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i572 = icmp eq ptr %call.i571, null
  %cmp.i.i573 = icmp ugt ptr %call.i571, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i574 = or i1 %tobool.not.i.i572, %cmp.i.i573
  br i1 %spec.select.i.i574, label %to_clk.exit570.to_clk.exit578_crit_edge, label %if.end.i576

to_clk.exit570.to_clk.exit578_crit_edge:          ; preds = %to_clk.exit570
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit578

if.end.i576:                                      ; preds = %to_clk.exit570
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i575 = getelementptr inbounds %struct.clk_hw, ptr %call.i571, i32 0, i32 1
  %40 = ptrtoint ptr %clk.i575 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk.i575, align 4
  br label %to_clk.exit578

to_clk.exit578:                                   ; preds = %if.end.i576, %to_clk.exit570.to_clk.exit578_crit_edge
  %retval.0.i577 = phi ptr [ %41, %if.end.i576 ], [ %call.i571, %to_clk.exit570.to_clk.exit578_crit_edge ]
  store ptr %retval.0.i577, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 70), align 4
  %call.i579 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr204, i8 noundef zeroext 20, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i580 = icmp eq ptr %call.i579, null
  %cmp.i.i581 = icmp ugt ptr %call.i579, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i582 = or i1 %tobool.not.i.i580, %cmp.i.i581
  br i1 %spec.select.i.i582, label %to_clk.exit578.to_clk.exit586_crit_edge, label %if.end.i584

to_clk.exit578.to_clk.exit586_crit_edge:          ; preds = %to_clk.exit578
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit586

if.end.i584:                                      ; preds = %to_clk.exit578
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i583 = getelementptr inbounds %struct.clk_hw, ptr %call.i579, i32 0, i32 1
  %42 = ptrtoint ptr %clk.i583 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk.i583, align 4
  br label %to_clk.exit586

to_clk.exit586:                                   ; preds = %if.end.i584, %to_clk.exit578.to_clk.exit586_crit_edge
  %retval.0.i585 = phi ptr [ %43, %if.end.i584 ], [ %call.i579, %to_clk.exit578.to_clk.exit586_crit_edge ]
  store ptr %retval.0.i585, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 100), align 4
  %call.i587 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr204, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i588 = icmp eq ptr %call.i587, null
  %cmp.i.i589 = icmp ugt ptr %call.i587, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i590 = or i1 %tobool.not.i.i588, %cmp.i.i589
  br i1 %spec.select.i.i590, label %to_clk.exit586.to_clk.exit594_crit_edge, label %if.end.i592

to_clk.exit586.to_clk.exit594_crit_edge:          ; preds = %to_clk.exit586
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit594

if.end.i592:                                      ; preds = %to_clk.exit586
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i591 = getelementptr inbounds %struct.clk_hw, ptr %call.i587, i32 0, i32 1
  %44 = ptrtoint ptr %clk.i591 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk.i591, align 4
  br label %to_clk.exit594

to_clk.exit594:                                   ; preds = %if.end.i592, %to_clk.exit586.to_clk.exit594_crit_edge
  %retval.0.i593 = phi ptr [ %45, %if.end.i592 ], [ %call.i587, %to_clk.exit586.to_clk.exit594_crit_edge ]
  store ptr %retval.0.i593, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 101), align 4
  %call.i595 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, ptr noundef nonnull @esdhc_c_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr204, i8 noundef zeroext 19, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i596 = icmp eq ptr %call.i595, null
  %cmp.i.i597 = icmp ugt ptr %call.i595, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i598 = or i1 %tobool.not.i.i596, %cmp.i.i597
  br i1 %spec.select.i.i598, label %to_clk.exit594.to_clk.exit602_crit_edge, label %if.end.i600

to_clk.exit594.to_clk.exit602_crit_edge:          ; preds = %to_clk.exit594
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit602

if.end.i600:                                      ; preds = %to_clk.exit594
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i599 = getelementptr inbounds %struct.clk_hw, ptr %call.i595, i32 0, i32 1
  %46 = ptrtoint ptr %clk.i599 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk.i599, align 4
  br label %to_clk.exit602

to_clk.exit602:                                   ; preds = %if.end.i600, %to_clk.exit594.to_clk.exit602_crit_edge
  %retval.0.i601 = phi ptr [ %47, %if.end.i600 ], [ %call.i595, %to_clk.exit594.to_clk.exit602_crit_edge ]
  store ptr %retval.0.i601, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 13), align 4
  %call.i603 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, ptr noundef nonnull @esdhc_d_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr204, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i604 = icmp eq ptr %call.i603, null
  %cmp.i.i605 = icmp ugt ptr %call.i603, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i606 = or i1 %tobool.not.i.i604, %cmp.i.i605
  br i1 %spec.select.i.i606, label %to_clk.exit602.to_clk.exit610_crit_edge, label %if.end.i608

to_clk.exit602.to_clk.exit610_crit_edge:          ; preds = %to_clk.exit602
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit610

if.end.i608:                                      ; preds = %to_clk.exit602
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i607 = getelementptr inbounds %struct.clk_hw, ptr %call.i603, i32 0, i32 1
  %48 = ptrtoint ptr %clk.i607 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk.i607, align 4
  br label %to_clk.exit610

to_clk.exit610:                                   ; preds = %if.end.i608, %to_clk.exit602.to_clk.exit610_crit_edge
  %retval.0.i609 = phi ptr [ %49, %if.end.i608 ], [ %call.i603, %to_clk.exit602.to_clk.exit610_crit_edge ]
  store ptr %retval.0.i609, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 14), align 4
  %add.ptr225 = getelementptr i8, ptr %call131, i32 116
  %call.i611 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 4, ptr noundef %add.ptr225, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i612 = icmp eq ptr %call.i611, null
  %cmp.i.i613 = icmp ugt ptr %call.i611, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i614 = or i1 %tobool.not.i.i612, %cmp.i.i613
  br i1 %spec.select.i.i614, label %to_clk.exit610.to_clk.exit618_crit_edge, label %if.end.i616

to_clk.exit610.to_clk.exit618_crit_edge:          ; preds = %to_clk.exit610
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit618

if.end.i616:                                      ; preds = %to_clk.exit610
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i615 = getelementptr inbounds %struct.clk_hw, ptr %call.i611, i32 0, i32 1
  %50 = ptrtoint ptr %clk.i615 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk.i615, align 4
  br label %to_clk.exit618

to_clk.exit618:                                   ; preds = %if.end.i616, %to_clk.exit610.to_clk.exit618_crit_edge
  %retval.0.i617 = phi ptr [ %51, %if.end.i616 ], [ %call.i611, %to_clk.exit610.to_clk.exit618_crit_edge ]
  store ptr %retval.0.i617, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 71), align 4
  %call.i619 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.9, i32 noundef 4, ptr noundef %add.ptr225, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i620 = icmp eq ptr %call.i619, null
  %cmp.i.i621 = icmp ugt ptr %call.i619, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i622 = or i1 %tobool.not.i.i620, %cmp.i.i621
  br i1 %spec.select.i.i622, label %to_clk.exit618.to_clk.exit626_crit_edge, label %if.end.i624

to_clk.exit618.to_clk.exit626_crit_edge:          ; preds = %to_clk.exit618
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit626

if.end.i624:                                      ; preds = %to_clk.exit618
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i623 = getelementptr inbounds %struct.clk_hw, ptr %call.i619, i32 0, i32 1
  %52 = ptrtoint ptr %clk.i623 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk.i623, align 4
  br label %to_clk.exit626

to_clk.exit626:                                   ; preds = %if.end.i624, %to_clk.exit618.to_clk.exit626_crit_edge
  %retval.0.i625 = phi ptr [ %53, %if.end.i624 ], [ %call.i619, %to_clk.exit618.to_clk.exit626_crit_edge ]
  store ptr %retval.0.i625, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 72), align 4
  %call.i627 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 4, ptr noundef %add.ptr225, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i628 = icmp eq ptr %call.i627, null
  %cmp.i.i629 = icmp ugt ptr %call.i627, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i630 = or i1 %tobool.not.i.i628, %cmp.i.i629
  br i1 %spec.select.i.i630, label %to_clk.exit626.to_clk.exit634_crit_edge, label %if.end.i632

to_clk.exit626.to_clk.exit634_crit_edge:          ; preds = %to_clk.exit626
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit634

if.end.i632:                                      ; preds = %to_clk.exit626
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i631 = getelementptr inbounds %struct.clk_hw, ptr %call.i627, i32 0, i32 1
  %54 = ptrtoint ptr %clk.i631 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clk.i631, align 4
  br label %to_clk.exit634

to_clk.exit634:                                   ; preds = %if.end.i632, %to_clk.exit626.to_clk.exit634_crit_edge
  %retval.0.i633 = phi ptr [ %55, %if.end.i632 ], [ %call.i627, %to_clk.exit626.to_clk.exit634_crit_edge ]
  store ptr %retval.0.i633, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 73), align 4
  %call.i635 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef 4, ptr noundef %add.ptr225, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i636 = icmp eq ptr %call.i635, null
  %cmp.i.i637 = icmp ugt ptr %call.i635, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i638 = or i1 %tobool.not.i.i636, %cmp.i.i637
  br i1 %spec.select.i.i638, label %to_clk.exit634.to_clk.exit642_crit_edge, label %if.end.i640

to_clk.exit634.to_clk.exit642_crit_edge:          ; preds = %to_clk.exit634
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit642

if.end.i640:                                      ; preds = %to_clk.exit634
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i639 = getelementptr inbounds %struct.clk_hw, ptr %call.i635, i32 0, i32 1
  %56 = ptrtoint ptr %clk.i639 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk.i639, align 4
  br label %to_clk.exit642

to_clk.exit642:                                   ; preds = %if.end.i640, %to_clk.exit634.to_clk.exit642_crit_edge
  %retval.0.i641 = phi ptr [ %57, %if.end.i640 ], [ %call.i635, %to_clk.exit634.to_clk.exit642_crit_edge ]
  store ptr %retval.0.i641, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 74), align 4
  %add.ptr237 = getelementptr i8, ptr %call131, i32 120
  %call.i643 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 4, ptr noundef %add.ptr237, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i644 = icmp eq ptr %call.i643, null
  %cmp.i.i645 = icmp ugt ptr %call.i643, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i646 = or i1 %tobool.not.i.i644, %cmp.i.i645
  br i1 %spec.select.i.i646, label %to_clk.exit642.to_clk.exit650_crit_edge, label %if.end.i648

to_clk.exit642.to_clk.exit650_crit_edge:          ; preds = %to_clk.exit642
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit650

if.end.i648:                                      ; preds = %to_clk.exit642
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i647 = getelementptr inbounds %struct.clk_hw, ptr %call.i643, i32 0, i32 1
  %58 = ptrtoint ptr %clk.i647 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk.i647, align 4
  br label %to_clk.exit650

to_clk.exit650:                                   ; preds = %if.end.i648, %to_clk.exit642.to_clk.exit650_crit_edge
  %retval.0.i649 = phi ptr [ %59, %if.end.i648 ], [ %call.i643, %to_clk.exit642.to_clk.exit650_crit_edge ]
  store ptr %retval.0.i649, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 124), align 4
  %call.i651 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 4, ptr noundef %add.ptr237, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i652 = icmp eq ptr %call.i651, null
  %cmp.i.i653 = icmp ugt ptr %call.i651, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i654 = or i1 %tobool.not.i.i652, %cmp.i.i653
  br i1 %spec.select.i.i654, label %to_clk.exit650.to_clk.exit658_crit_edge, label %if.end.i656

to_clk.exit650.to_clk.exit658_crit_edge:          ; preds = %to_clk.exit650
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit658

if.end.i656:                                      ; preds = %to_clk.exit650
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i655 = getelementptr inbounds %struct.clk_hw, ptr %call.i651, i32 0, i32 1
  %60 = ptrtoint ptr %clk.i655 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk.i655, align 4
  br label %to_clk.exit658

to_clk.exit658:                                   ; preds = %if.end.i656, %to_clk.exit650.to_clk.exit658_crit_edge
  %retval.0.i657 = phi ptr [ %61, %if.end.i656 ], [ %call.i651, %to_clk.exit650.to_clk.exit658_crit_edge ]
  store ptr %retval.0.i657, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 125), align 4
  %call.i659 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.191, i8 noundef zeroext 4, ptr noundef nonnull @mx53_can_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr175, i8 noundef zeroext 6, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i660 = icmp eq ptr %call.i659, null
  %cmp.i.i661 = icmp ugt ptr %call.i659, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i662 = or i1 %tobool.not.i.i660, %cmp.i.i661
  br i1 %spec.select.i.i662, label %to_clk.exit658.to_clk.exit666_crit_edge, label %if.end.i664

to_clk.exit658.to_clk.exit666_crit_edge:          ; preds = %to_clk.exit658
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit666

if.end.i664:                                      ; preds = %to_clk.exit658
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i663 = getelementptr inbounds %struct.clk_hw, ptr %call.i659, i32 0, i32 1
  %62 = ptrtoint ptr %clk.i663 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk.i663, align 4
  br label %to_clk.exit666

to_clk.exit666:                                   ; preds = %if.end.i664, %to_clk.exit658.to_clk.exit666_crit_edge
  %retval.0.i665 = phi ptr [ %63, %if.end.i664 ], [ %call.i659, %to_clk.exit658.to_clk.exit666_crit_edge ]
  store ptr %retval.0.i665, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 156), align 4
  %call.i667 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.191, i32 noundef 4, ptr noundef %add.ptr192, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i668 = icmp eq ptr %call.i667, null
  %cmp.i.i669 = icmp ugt ptr %call.i667, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i670 = or i1 %tobool.not.i.i668, %cmp.i.i669
  br i1 %spec.select.i.i670, label %to_clk.exit666.to_clk.exit674_crit_edge, label %if.end.i672

to_clk.exit666.to_clk.exit674_crit_edge:          ; preds = %to_clk.exit666
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit674

if.end.i672:                                      ; preds = %to_clk.exit666
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i671 = getelementptr inbounds %struct.clk_hw, ptr %call.i667, i32 0, i32 1
  %64 = ptrtoint ptr %clk.i671 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk.i671, align 4
  br label %to_clk.exit674

to_clk.exit674:                                   ; preds = %if.end.i672, %to_clk.exit666.to_clk.exit674_crit_edge
  %retval.0.i673 = phi ptr [ %65, %if.end.i672 ], [ %call.i667, %to_clk.exit666.to_clk.exit674_crit_edge ]
  store ptr %retval.0.i673, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 157), align 4
  %call.i675 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr192, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i676 = icmp eq ptr %call.i675, null
  %cmp.i.i677 = icmp ugt ptr %call.i675, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i678 = or i1 %tobool.not.i.i676, %cmp.i.i677
  br i1 %spec.select.i.i678, label %to_clk.exit674.to_clk.exit682_crit_edge, label %if.end.i680

to_clk.exit674.to_clk.exit682_crit_edge:          ; preds = %to_clk.exit674
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit682

if.end.i680:                                      ; preds = %to_clk.exit674
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i679 = getelementptr inbounds %struct.clk_hw, ptr %call.i675, i32 0, i32 1
  %66 = ptrtoint ptr %clk.i679 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clk.i679, align 4
  br label %to_clk.exit682

to_clk.exit682:                                   ; preds = %if.end.i680, %to_clk.exit674.to_clk.exit682_crit_edge
  %retval.0.i681 = phi ptr [ %67, %if.end.i680 ], [ %call.i675, %to_clk.exit674.to_clk.exit682_crit_edge ]
  store ptr %retval.0.i681, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 158), align 4
  %call.i683 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.43, i32 noundef 4, ptr noundef %add.ptr192, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i684 = icmp eq ptr %call.i683, null
  %cmp.i.i685 = icmp ugt ptr %call.i683, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i686 = or i1 %tobool.not.i.i684, %cmp.i.i685
  br i1 %spec.select.i.i686, label %to_clk.exit682.to_clk.exit690_crit_edge, label %if.end.i688

to_clk.exit682.to_clk.exit690_crit_edge:          ; preds = %to_clk.exit682
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit690

if.end.i688:                                      ; preds = %to_clk.exit682
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i687 = getelementptr inbounds %struct.clk_hw, ptr %call.i683, i32 0, i32 1
  %68 = ptrtoint ptr %clk.i687 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk.i687, align 4
  br label %to_clk.exit690

to_clk.exit690:                                   ; preds = %if.end.i688, %to_clk.exit682.to_clk.exit690_crit_edge
  %retval.0.i689 = phi ptr [ %69, %if.end.i688 ], [ %call.i683, %to_clk.exit682.to_clk.exit690_crit_edge ]
  store ptr %retval.0.i689, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 186), align 4
  %call.i691 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.191, i32 noundef 4, ptr noundef %add.ptr237, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i692 = icmp eq ptr %call.i691, null
  %cmp.i.i693 = icmp ugt ptr %call.i691, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i694 = or i1 %tobool.not.i.i692, %cmp.i.i693
  br i1 %spec.select.i.i694, label %to_clk.exit690.to_clk.exit698_crit_edge, label %if.end.i696

to_clk.exit690.to_clk.exit698_crit_edge:          ; preds = %to_clk.exit690
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit698

if.end.i696:                                      ; preds = %to_clk.exit690
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i695 = getelementptr inbounds %struct.clk_hw, ptr %call.i691, i32 0, i32 1
  %70 = ptrtoint ptr %clk.i695 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clk.i695, align 4
  br label %to_clk.exit698

to_clk.exit698:                                   ; preds = %if.end.i696, %to_clk.exit690.to_clk.exit698_crit_edge
  %retval.0.i697 = phi ptr [ %71, %if.end.i696 ], [ %call.i691, %to_clk.exit690.to_clk.exit698_crit_edge ]
  store ptr %retval.0.i697, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 86), align 4
  %call.i699 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr237, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i700 = icmp eq ptr %call.i699, null
  %cmp.i.i701 = icmp ugt ptr %call.i699, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i702 = or i1 %tobool.not.i.i700, %cmp.i.i701
  br i1 %spec.select.i.i702, label %to_clk.exit698.to_clk.exit706_crit_edge, label %if.end.i704

to_clk.exit698.to_clk.exit706_crit_edge:          ; preds = %to_clk.exit698
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit706

if.end.i704:                                      ; preds = %to_clk.exit698
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i703 = getelementptr inbounds %struct.clk_hw, ptr %call.i699, i32 0, i32 1
  %72 = ptrtoint ptr %clk.i703 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clk.i703, align 4
  br label %to_clk.exit706

to_clk.exit706:                                   ; preds = %if.end.i704, %to_clk.exit698.to_clk.exit706_crit_edge
  %retval.0.i705 = phi ptr [ %73, %if.end.i704 ], [ %call.i699, %to_clk.exit698.to_clk.exit706_crit_edge ]
  store ptr %retval.0.i705, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 87), align 4
  %add.ptr261 = getelementptr i8, ptr %call131, i32 108
  %call.i707 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %add.ptr261, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i708 = icmp eq ptr %call.i707, null
  %cmp.i.i709 = icmp ugt ptr %call.i707, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i710 = or i1 %tobool.not.i.i708, %cmp.i.i709
  br i1 %spec.select.i.i710, label %to_clk.exit706.to_clk.exit714_crit_edge, label %if.end.i712

to_clk.exit706.to_clk.exit714_crit_edge:          ; preds = %to_clk.exit706
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit714

if.end.i712:                                      ; preds = %to_clk.exit706
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i711 = getelementptr inbounds %struct.clk_hw, ptr %call.i707, i32 0, i32 1
  %74 = ptrtoint ptr %clk.i711 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %clk.i711, align 4
  br label %to_clk.exit714

to_clk.exit714:                                   ; preds = %if.end.i712, %to_clk.exit706.to_clk.exit714_crit_edge
  %retval.0.i713 = phi ptr [ %75, %if.end.i712 ], [ %call.i707, %to_clk.exit706.to_clk.exit714_crit_edge ]
  store ptr %retval.0.i713, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 88), align 4
  %call.i715 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr237, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i716 = icmp eq ptr %call.i715, null
  %cmp.i.i717 = icmp ugt ptr %call.i715, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i718 = or i1 %tobool.not.i.i716, %cmp.i.i717
  br i1 %spec.select.i.i718, label %to_clk.exit714.to_clk.exit722_crit_edge, label %if.end.i720

to_clk.exit714.to_clk.exit722_crit_edge:          ; preds = %to_clk.exit714
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit722

if.end.i720:                                      ; preds = %to_clk.exit714
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i719 = getelementptr inbounds %struct.clk_hw, ptr %call.i715, i32 0, i32 1
  %76 = ptrtoint ptr %clk.i719 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %clk.i719, align 4
  br label %to_clk.exit722

to_clk.exit722:                                   ; preds = %if.end.i720, %to_clk.exit714.to_clk.exit722_crit_edge
  %retval.0.i721 = phi ptr [ %77, %if.end.i720 ], [ %call.i715, %to_clk.exit714.to_clk.exit722_crit_edge ]
  store ptr %retval.0.i721, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 173), align 4
  %call.i723 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.198, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr175, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i724 = icmp eq ptr %call.i723, null
  %cmp.i.i725 = icmp ugt ptr %call.i723, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i726 = or i1 %tobool.not.i.i724, %cmp.i.i725
  br i1 %spec.select.i.i726, label %to_clk.exit722.to_clk.exit730_crit_edge, label %if.end.i728

to_clk.exit722.to_clk.exit730_crit_edge:          ; preds = %to_clk.exit722
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit730

if.end.i728:                                      ; preds = %to_clk.exit722
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i727 = getelementptr inbounds %struct.clk_hw, ptr %call.i723, i32 0, i32 1
  %78 = ptrtoint ptr %clk.i727 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clk.i727, align 4
  br label %to_clk.exit730

to_clk.exit730:                                   ; preds = %if.end.i728, %to_clk.exit722.to_clk.exit730_crit_edge
  %retval.0.i729 = phi ptr [ %79, %if.end.i728 ], [ %call.i723, %to_clk.exit722.to_clk.exit730_crit_edge ]
  store ptr %retval.0.i729, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 193), align 4
  %add.ptr270 = getelementptr i8, ptr %call131, i32 60
  %call.i731 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.198, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr270, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i732 = icmp eq ptr %call.i731, null
  %cmp.i.i733 = icmp ugt ptr %call.i731, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i734 = or i1 %tobool.not.i.i732, %cmp.i.i733
  br i1 %spec.select.i.i734, label %to_clk.exit730.to_clk.exit738_crit_edge, label %if.end.i736

to_clk.exit730.to_clk.exit738_crit_edge:          ; preds = %to_clk.exit730
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit738

if.end.i736:                                      ; preds = %to_clk.exit730
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i735 = getelementptr inbounds %struct.clk_hw, ptr %call.i731, i32 0, i32 1
  %80 = ptrtoint ptr %clk.i735 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clk.i735, align 4
  br label %to_clk.exit738

to_clk.exit738:                                   ; preds = %if.end.i736, %to_clk.exit730.to_clk.exit738_crit_edge
  %retval.0.i737 = phi ptr [ %81, %if.end.i736 ], [ %call.i731, %to_clk.exit730.to_clk.exit738_crit_edge ]
  store ptr %retval.0.i737, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 192), align 4
  %call.i739 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.199, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr270, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i740 = icmp eq ptr %call.i739, null
  %cmp.i.i741 = icmp ugt ptr %call.i739, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i742 = or i1 %tobool.not.i.i740, %cmp.i.i741
  br i1 %spec.select.i.i742, label %to_clk.exit738.to_clk.exit746_crit_edge, label %if.end.i744

to_clk.exit738.to_clk.exit746_crit_edge:          ; preds = %to_clk.exit738
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit746

if.end.i744:                                      ; preds = %to_clk.exit738
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i743 = getelementptr inbounds %struct.clk_hw, ptr %call.i739, i32 0, i32 1
  %82 = ptrtoint ptr %clk.i743 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %clk.i743, align 4
  br label %to_clk.exit746

to_clk.exit746:                                   ; preds = %if.end.i744, %to_clk.exit738.to_clk.exit746_crit_edge
  %retval.0.i745 = phi ptr [ %83, %if.end.i744 ], [ %call.i739, %to_clk.exit738.to_clk.exit746_crit_edge ]
  store ptr %retval.0.i745, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 194), align 4
  %call.i747 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.200, i32 noundef 4, ptr noundef %add.ptr261, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i748 = icmp eq ptr %call.i747, null
  %cmp.i.i749 = icmp ugt ptr %call.i747, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i750 = or i1 %tobool.not.i.i748, %cmp.i.i749
  br i1 %spec.select.i.i750, label %to_clk.exit746.to_clk.exit754_crit_edge, label %if.end.i752

to_clk.exit746.to_clk.exit754_crit_edge:          ; preds = %to_clk.exit746
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit754

if.end.i752:                                      ; preds = %to_clk.exit746
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i751 = getelementptr inbounds %struct.clk_hw, ptr %call.i747, i32 0, i32 1
  %84 = ptrtoint ptr %clk.i751 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %clk.i751, align 4
  br label %to_clk.exit754

to_clk.exit754:                                   ; preds = %if.end.i752, %to_clk.exit746.to_clk.exit754_crit_edge
  %retval.0.i753 = phi ptr [ %85, %if.end.i752 ], [ %call.i747, %to_clk.exit746.to_clk.exit754_crit_edge ]
  store ptr %retval.0.i753, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 195), align 4
  %call.i755 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr261, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i756 = icmp eq ptr %call.i755, null
  %cmp.i.i757 = icmp ugt ptr %call.i755, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i758 = or i1 %tobool.not.i.i756, %cmp.i.i757
  br i1 %spec.select.i.i758, label %to_clk.exit754.to_clk.exit762_crit_edge, label %if.end.i760

to_clk.exit754.to_clk.exit762_crit_edge:          ; preds = %to_clk.exit754
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit762

if.end.i760:                                      ; preds = %to_clk.exit754
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i759 = getelementptr inbounds %struct.clk_hw, ptr %call.i755, i32 0, i32 1
  %86 = ptrtoint ptr %clk.i759 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %clk.i759, align 4
  br label %to_clk.exit762

to_clk.exit762:                                   ; preds = %if.end.i760, %to_clk.exit754.to_clk.exit762_crit_edge
  %retval.0.i761 = phi ptr [ %87, %if.end.i760 ], [ %call.i755, %to_clk.exit754.to_clk.exit762_crit_edge ]
  store ptr %retval.0.i761, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 196), align 4
  %call.i763 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.203, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr175, i8 noundef zeroext 22, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i764 = icmp eq ptr %call.i763, null
  %cmp.i.i765 = icmp ugt ptr %call.i763, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i766 = or i1 %tobool.not.i.i764, %cmp.i.i765
  br i1 %spec.select.i.i766, label %to_clk.exit762.to_clk.exit770_crit_edge, label %if.end.i768

to_clk.exit762.to_clk.exit770_crit_edge:          ; preds = %to_clk.exit762
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit770

if.end.i768:                                      ; preds = %to_clk.exit762
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i767 = getelementptr inbounds %struct.clk_hw, ptr %call.i763, i32 0, i32 1
  %88 = ptrtoint ptr %clk.i767 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %clk.i767, align 4
  br label %to_clk.exit770

to_clk.exit770:                                   ; preds = %if.end.i768, %to_clk.exit762.to_clk.exit770_crit_edge
  %retval.0.i769 = phi ptr [ %89, %if.end.i768 ], [ %call.i763, %to_clk.exit762.to_clk.exit770_crit_edge ]
  store ptr %retval.0.i769, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 198), align 4
  %add.ptr285 = getelementptr i8, ptr %call131, i32 64
  %call.i771 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.203, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr285, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i772 = icmp eq ptr %call.i771, null
  %cmp.i.i773 = icmp ugt ptr %call.i771, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i774 = or i1 %tobool.not.i.i772, %cmp.i.i773
  br i1 %spec.select.i.i774, label %to_clk.exit770.to_clk.exit778_crit_edge, label %if.end.i776

to_clk.exit770.to_clk.exit778_crit_edge:          ; preds = %to_clk.exit770
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit778

if.end.i776:                                      ; preds = %to_clk.exit770
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i775 = getelementptr inbounds %struct.clk_hw, ptr %call.i771, i32 0, i32 1
  %90 = ptrtoint ptr %clk.i775 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %clk.i775, align 4
  br label %to_clk.exit778

to_clk.exit778:                                   ; preds = %if.end.i776, %to_clk.exit770.to_clk.exit778_crit_edge
  %retval.0.i777 = phi ptr [ %91, %if.end.i776 ], [ %call.i771, %to_clk.exit770.to_clk.exit778_crit_edge ]
  store ptr %retval.0.i777, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 197), align 4
  %call.i779 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.204, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr285, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i780 = icmp eq ptr %call.i779, null
  %cmp.i.i781 = icmp ugt ptr %call.i779, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i782 = or i1 %tobool.not.i.i780, %cmp.i.i781
  br i1 %spec.select.i.i782, label %to_clk.exit778.to_clk.exit786_crit_edge, label %if.end.i784

to_clk.exit778.to_clk.exit786_crit_edge:          ; preds = %to_clk.exit778
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit786

if.end.i784:                                      ; preds = %to_clk.exit778
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i783 = getelementptr inbounds %struct.clk_hw, ptr %call.i779, i32 0, i32 1
  %92 = ptrtoint ptr %clk.i783 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %clk.i783, align 4
  br label %to_clk.exit786

to_clk.exit786:                                   ; preds = %if.end.i784, %to_clk.exit778.to_clk.exit786_crit_edge
  %retval.0.i785 = phi ptr [ %93, %if.end.i784 ], [ %call.i779, %to_clk.exit778.to_clk.exit786_crit_edge ]
  store ptr %retval.0.i785, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 199), align 4
  %call.i787 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.205, i32 noundef 4, ptr noundef %add.ptr192, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i788 = icmp eq ptr %call.i787, null
  %cmp.i.i789 = icmp ugt ptr %call.i787, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i790 = or i1 %tobool.not.i.i788, %cmp.i.i789
  br i1 %spec.select.i.i790, label %to_clk.exit786.to_clk.exit794_crit_edge, label %if.end.i792

to_clk.exit786.to_clk.exit794_crit_edge:          ; preds = %to_clk.exit786
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit794

if.end.i792:                                      ; preds = %to_clk.exit786
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i791 = getelementptr inbounds %struct.clk_hw, ptr %call.i787, i32 0, i32 1
  %94 = ptrtoint ptr %clk.i791 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %clk.i791, align 4
  br label %to_clk.exit794

to_clk.exit794:                                   ; preds = %if.end.i792, %to_clk.exit786.to_clk.exit794_crit_edge
  %retval.0.i793 = phi ptr [ %95, %if.end.i792 ], [ %call.i787, %to_clk.exit786.to_clk.exit794_crit_edge ]
  store ptr %retval.0.i793, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 200), align 4
  %call.i795 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.207, i8 noundef zeroext 4, ptr noundef nonnull @ieee1588_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr175, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i796 = icmp eq ptr %call.i795, null
  %cmp.i.i797 = icmp ugt ptr %call.i795, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i798 = or i1 %tobool.not.i.i796, %cmp.i.i797
  br i1 %spec.select.i.i798, label %to_clk.exit794.to_clk.exit802_crit_edge, label %if.end.i800

to_clk.exit794.to_clk.exit802_crit_edge:          ; preds = %to_clk.exit794
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit802

if.end.i800:                                      ; preds = %to_clk.exit794
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i799 = getelementptr inbounds %struct.clk_hw, ptr %call.i795, i32 0, i32 1
  %96 = ptrtoint ptr %clk.i799 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %clk.i799, align 4
  br label %to_clk.exit802

to_clk.exit802:                                   ; preds = %if.end.i800, %to_clk.exit794.to_clk.exit802_crit_edge
  %retval.0.i801 = phi ptr [ %97, %if.end.i800 ], [ %call.i795, %to_clk.exit794.to_clk.exit802_crit_edge ]
  store ptr %retval.0.i801, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 202), align 4
  %add.ptr297 = getelementptr i8, ptr %call131, i32 56
  %call.i803 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.207, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr297, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i804 = icmp eq ptr %call.i803, null
  %cmp.i.i805 = icmp ugt ptr %call.i803, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i806 = or i1 %tobool.not.i.i804, %cmp.i.i805
  br i1 %spec.select.i.i806, label %to_clk.exit802.to_clk.exit810_crit_edge, label %if.end.i808

to_clk.exit802.to_clk.exit810_crit_edge:          ; preds = %to_clk.exit802
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit810

if.end.i808:                                      ; preds = %to_clk.exit802
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i807 = getelementptr inbounds %struct.clk_hw, ptr %call.i803, i32 0, i32 1
  %98 = ptrtoint ptr %clk.i807 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %clk.i807, align 4
  br label %to_clk.exit810

to_clk.exit810:                                   ; preds = %if.end.i808, %to_clk.exit802.to_clk.exit810_crit_edge
  %retval.0.i809 = phi ptr [ %99, %if.end.i808 ], [ %call.i803, %to_clk.exit802.to_clk.exit810_crit_edge ]
  store ptr %retval.0.i809, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 201), align 4
  %call.i811 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.208, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr297, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i812 = icmp eq ptr %call.i811, null
  %cmp.i.i813 = icmp ugt ptr %call.i811, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i814 = or i1 %tobool.not.i.i812, %cmp.i.i813
  br i1 %spec.select.i.i814, label %to_clk.exit810.to_clk.exit818_crit_edge, label %if.end.i816

to_clk.exit810.to_clk.exit818_crit_edge:          ; preds = %to_clk.exit810
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit818

if.end.i816:                                      ; preds = %to_clk.exit810
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i815 = getelementptr inbounds %struct.clk_hw, ptr %call.i811, i32 0, i32 1
  %100 = ptrtoint ptr %clk.i815 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %clk.i815, align 4
  br label %to_clk.exit818

to_clk.exit818:                                   ; preds = %if.end.i816, %to_clk.exit810.to_clk.exit818_crit_edge
  %retval.0.i817 = phi ptr [ %101, %if.end.i816 ], [ %call.i811, %to_clk.exit810.to_clk.exit818_crit_edge ]
  store ptr %retval.0.i817, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 203), align 4
  %add.ptr303 = getelementptr i8, ptr %call131, i32 132
  %call.i819 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.209, i32 noundef 4, ptr noundef %add.ptr303, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i820 = icmp eq ptr %call.i819, null
  %cmp.i.i821 = icmp ugt ptr %call.i819, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i822 = or i1 %tobool.not.i.i820, %cmp.i.i821
  br i1 %spec.select.i.i822, label %to_clk.exit818.to_clk.exit826_crit_edge, label %if.end.i824

to_clk.exit818.to_clk.exit826_crit_edge:          ; preds = %to_clk.exit818
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit826

if.end.i824:                                      ; preds = %to_clk.exit818
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i823 = getelementptr inbounds %struct.clk_hw, ptr %call.i819, i32 0, i32 1
  %102 = ptrtoint ptr %clk.i823 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %clk.i823, align 4
  br label %to_clk.exit826

to_clk.exit826:                                   ; preds = %if.end.i824, %to_clk.exit818.to_clk.exit826_crit_edge
  %retval.0.i825 = phi ptr [ %103, %if.end.i824 ], [ %call.i819, %to_clk.exit818.to_clk.exit826_crit_edge ]
  store ptr %retval.0.i825, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 204), align 4
  %call.i827 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr303, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i828 = icmp eq ptr %call.i827, null
  %cmp.i.i829 = icmp ugt ptr %call.i827, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i830 = or i1 %tobool.not.i.i828, %cmp.i.i829
  br i1 %spec.select.i.i830, label %to_clk.exit826.to_clk.exit834_crit_edge, label %if.end.i832

to_clk.exit826.to_clk.exit834_crit_edge:          ; preds = %to_clk.exit826
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit834

if.end.i832:                                      ; preds = %to_clk.exit826
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i831 = getelementptr inbounds %struct.clk_hw, ptr %call.i827, i32 0, i32 1
  %104 = ptrtoint ptr %clk.i831 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %clk.i831, align 4
  br label %to_clk.exit834

to_clk.exit834:                                   ; preds = %if.end.i832, %to_clk.exit826.to_clk.exit834_crit_edge
  %retval.0.i833 = phi ptr [ %105, %if.end.i832 ], [ %call.i827, %to_clk.exit826.to_clk.exit834_crit_edge ]
  store ptr %retval.0.i833, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 65), align 4
  %call.i835 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 4, ptr noundef %add.ptr303, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i836 = icmp eq ptr %call.i835, null
  %cmp.i.i837 = icmp ugt ptr %call.i835, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i838 = or i1 %tobool.not.i.i836, %cmp.i.i837
  br i1 %spec.select.i.i838, label %to_clk.exit834.to_clk.exit842_crit_edge, label %if.end.i840

to_clk.exit834.to_clk.exit842_crit_edge:          ; preds = %to_clk.exit834
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit842

if.end.i840:                                      ; preds = %to_clk.exit834
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i839 = getelementptr inbounds %struct.clk_hw, ptr %call.i835, i32 0, i32 1
  %106 = ptrtoint ptr %clk.i839 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %clk.i839, align 4
  br label %to_clk.exit842

to_clk.exit842:                                   ; preds = %if.end.i840, %to_clk.exit834.to_clk.exit842_crit_edge
  %retval.0.i841 = phi ptr [ %107, %if.end.i840 ], [ %call.i835, %to_clk.exit834.to_clk.exit842_crit_edge ]
  store ptr %retval.0.i841, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 66), align 4
  %call.i843 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr303, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i844 = icmp eq ptr %call.i843, null
  %cmp.i.i845 = icmp ugt ptr %call.i843, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i846 = or i1 %tobool.not.i.i844, %cmp.i.i845
  br i1 %spec.select.i.i846, label %to_clk.exit842.to_clk.exit850_crit_edge, label %if.end.i848

to_clk.exit842.to_clk.exit850_crit_edge:          ; preds = %to_clk.exit842
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit850

if.end.i848:                                      ; preds = %to_clk.exit842
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i847 = getelementptr inbounds %struct.clk_hw, ptr %call.i843, i32 0, i32 1
  %108 = ptrtoint ptr %clk.i847 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %clk.i847, align 4
  br label %to_clk.exit850

to_clk.exit850:                                   ; preds = %if.end.i848, %to_clk.exit842.to_clk.exit850_crit_edge
  %retval.0.i849 = phi ptr [ %109, %if.end.i848 ], [ %call.i843, %to_clk.exit842.to_clk.exit850_crit_edge ]
  store ptr %retval.0.i849, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 67), align 4
  %call.i851 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 4, ptr noundef %add.ptr303, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i852 = icmp eq ptr %call.i851, null
  %cmp.i.i853 = icmp ugt ptr %call.i851, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i854 = or i1 %tobool.not.i.i852, %cmp.i.i853
  br i1 %spec.select.i.i854, label %to_clk.exit850.to_clk.exit858_crit_edge, label %if.end.i856

to_clk.exit850.to_clk.exit858_crit_edge:          ; preds = %to_clk.exit850
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit858

if.end.i856:                                      ; preds = %to_clk.exit850
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i855 = getelementptr inbounds %struct.clk_hw, ptr %call.i851, i32 0, i32 1
  %110 = ptrtoint ptr %clk.i855 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %clk.i855, align 4
  br label %to_clk.exit858

to_clk.exit858:                                   ; preds = %if.end.i856, %to_clk.exit850.to_clk.exit858_crit_edge
  %retval.0.i857 = phi ptr [ %111, %if.end.i856 ], [ %call.i851, %to_clk.exit850.to_clk.exit858_crit_edge ]
  store ptr %retval.0.i857, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 68), align 4
  %add.ptr318 = getelementptr i8, ptr %call131, i32 96
  %call.i859 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, i8 noundef zeroext 16, ptr noundef nonnull @mx53_cko1_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr318, i8 noundef zeroext 0, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i860 = icmp eq ptr %call.i859, null
  %cmp.i.i861 = icmp ugt ptr %call.i859, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i862 = or i1 %tobool.not.i.i860, %cmp.i.i861
  br i1 %spec.select.i.i862, label %to_clk.exit858.to_clk.exit866_crit_edge, label %if.end.i864

to_clk.exit858.to_clk.exit866_crit_edge:          ; preds = %to_clk.exit858
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit866

if.end.i864:                                      ; preds = %to_clk.exit858
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i863 = getelementptr inbounds %struct.clk_hw, ptr %call.i859, i32 0, i32 1
  %112 = ptrtoint ptr %clk.i863 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %clk.i863, align 4
  br label %to_clk.exit866

to_clk.exit866:                                   ; preds = %if.end.i864, %to_clk.exit858.to_clk.exit866_crit_edge
  %retval.0.i865 = phi ptr [ %113, %if.end.i864 ], [ %call.i859, %to_clk.exit858.to_clk.exit866_crit_edge ]
  store ptr %retval.0.i865, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 165), align 4
  %call.i867 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr318, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i868 = icmp eq ptr %call.i867, null
  %cmp.i.i869 = icmp ugt ptr %call.i867, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i870 = or i1 %tobool.not.i.i868, %cmp.i.i869
  br i1 %spec.select.i.i870, label %to_clk.exit866.to_clk.exit874_crit_edge, label %if.end.i872

to_clk.exit866.to_clk.exit874_crit_edge:          ; preds = %to_clk.exit866
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit874

if.end.i872:                                      ; preds = %to_clk.exit866
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i871 = getelementptr inbounds %struct.clk_hw, ptr %call.i867, i32 0, i32 1
  %114 = ptrtoint ptr %clk.i871 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %clk.i871, align 4
  br label %to_clk.exit874

to_clk.exit874:                                   ; preds = %if.end.i872, %to_clk.exit866.to_clk.exit874_crit_edge
  %retval.0.i873 = phi ptr [ %115, %if.end.i872 ], [ %call.i867, %to_clk.exit866.to_clk.exit874_crit_edge ]
  store ptr %retval.0.i873, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 166), align 4
  %call.i875 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 4, ptr noundef %add.ptr318, i8 noundef zeroext 7, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i876 = icmp eq ptr %call.i875, null
  %cmp.i.i877 = icmp ugt ptr %call.i875, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i878 = or i1 %tobool.not.i.i876, %cmp.i.i877
  br i1 %spec.select.i.i878, label %to_clk.exit874.to_clk.exit882_crit_edge, label %if.end.i880

to_clk.exit874.to_clk.exit882_crit_edge:          ; preds = %to_clk.exit874
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit882

if.end.i880:                                      ; preds = %to_clk.exit874
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i879 = getelementptr inbounds %struct.clk_hw, ptr %call.i875, i32 0, i32 1
  %116 = ptrtoint ptr %clk.i879 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %clk.i879, align 4
  br label %to_clk.exit882

to_clk.exit882:                                   ; preds = %if.end.i880, %to_clk.exit874.to_clk.exit882_crit_edge
  %retval.0.i881 = phi ptr [ %117, %if.end.i880 ], [ %call.i875, %to_clk.exit874.to_clk.exit882_crit_edge ]
  store ptr %retval.0.i881, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 167), align 4
  %call.i883 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, i8 noundef zeroext 32, ptr noundef nonnull @mx53_cko2_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr318, i8 noundef zeroext 16, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i884 = icmp eq ptr %call.i883, null
  %cmp.i.i885 = icmp ugt ptr %call.i883, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i886 = or i1 %tobool.not.i.i884, %cmp.i.i885
  br i1 %spec.select.i.i886, label %to_clk.exit882.to_clk.exit890_crit_edge, label %if.end.i888

to_clk.exit882.to_clk.exit890_crit_edge:          ; preds = %to_clk.exit882
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit890

if.end.i888:                                      ; preds = %to_clk.exit882
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i887 = getelementptr inbounds %struct.clk_hw, ptr %call.i883, i32 0, i32 1
  %118 = ptrtoint ptr %clk.i887 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %clk.i887, align 4
  br label %to_clk.exit890

to_clk.exit890:                                   ; preds = %if.end.i888, %to_clk.exit882.to_clk.exit890_crit_edge
  %retval.0.i889 = phi ptr [ %119, %if.end.i888 ], [ %call.i883, %to_clk.exit882.to_clk.exit890_crit_edge ]
  store ptr %retval.0.i889, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 168), align 4
  %call.i891 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr318, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i892 = icmp eq ptr %call.i891, null
  %cmp.i.i893 = icmp ugt ptr %call.i891, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i894 = or i1 %tobool.not.i.i892, %cmp.i.i893
  br i1 %spec.select.i.i894, label %to_clk.exit890.to_clk.exit898_crit_edge, label %if.end.i896

to_clk.exit890.to_clk.exit898_crit_edge:          ; preds = %to_clk.exit890
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit898

if.end.i896:                                      ; preds = %to_clk.exit890
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i895 = getelementptr inbounds %struct.clk_hw, ptr %call.i891, i32 0, i32 1
  %120 = ptrtoint ptr %clk.i895 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %clk.i895, align 4
  br label %to_clk.exit898

to_clk.exit898:                                   ; preds = %if.end.i896, %to_clk.exit890.to_clk.exit898_crit_edge
  %retval.0.i897 = phi ptr [ %121, %if.end.i896 ], [ %call.i891, %to_clk.exit890.to_clk.exit898_crit_edge ]
  store ptr %retval.0.i897, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 169), align 4
  %call.i899 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef 4, ptr noundef %add.ptr318, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i900 = icmp eq ptr %call.i899, null
  %cmp.i.i901 = icmp ugt ptr %call.i899, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i902 = or i1 %tobool.not.i.i900, %cmp.i.i901
  br i1 %spec.select.i.i902, label %to_clk.exit898.to_clk.exit906_crit_edge, label %if.end.i904

to_clk.exit898.to_clk.exit906_crit_edge:          ; preds = %to_clk.exit898
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit906

if.end.i904:                                      ; preds = %to_clk.exit898
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i903 = getelementptr inbounds %struct.clk_hw, ptr %call.i899, i32 0, i32 1
  %122 = ptrtoint ptr %clk.i903 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %clk.i903, align 4
  br label %to_clk.exit906

to_clk.exit906:                                   ; preds = %if.end.i904, %to_clk.exit898.to_clk.exit906_crit_edge
  %retval.0.i905 = phi ptr [ %123, %if.end.i904 ], [ %call.i899, %to_clk.exit898.to_clk.exit906_crit_edge ]
  store ptr %retval.0.i905, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 170), align 4
  %call.i907 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.159, i8 noundef zeroext 4, ptr noundef nonnull @mx53_spdif_xtal_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr204, i8 noundef zeroext 2, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i908 = icmp eq ptr %call.i907, null
  %cmp.i.i909 = icmp ugt ptr %call.i907, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i910 = or i1 %tobool.not.i.i908, %cmp.i.i909
  br i1 %spec.select.i.i910, label %to_clk.exit906.to_clk.exit914_crit_edge, label %if.end.i912

to_clk.exit906.to_clk.exit914_crit_edge:          ; preds = %to_clk.exit906
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit914

if.end.i912:                                      ; preds = %to_clk.exit906
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i911 = getelementptr inbounds %struct.clk_hw, ptr %call.i907, i32 0, i32 1
  %124 = ptrtoint ptr %clk.i911 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %clk.i911, align 4
  br label %to_clk.exit914

to_clk.exit914:                                   ; preds = %if.end.i912, %to_clk.exit906.to_clk.exit914_crit_edge
  %retval.0.i913 = phi ptr [ %125, %if.end.i912 ], [ %call.i907, %to_clk.exit906.to_clk.exit914_crit_edge ]
  store ptr %retval.0.i913, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 174), align 4
  %126 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 24), align 4
  %127 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 190), align 4
  %128 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 112), align 4
  %129 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 189), align 4
  %call339 = tail call ptr @imx_clk_hw_cpu(ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.70, ptr noundef %126, ptr noundef %127, ptr noundef %128, ptr noundef %129) #2
  %tobool.not.i.i915 = icmp eq ptr %call339, null
  %cmp.i.i916 = icmp ugt ptr %call339, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i917 = or i1 %tobool.not.i.i915, %cmp.i.i916
  br i1 %spec.select.i.i917, label %to_clk.exit914.to_clk.exit921_crit_edge, label %if.end.i919

to_clk.exit914.to_clk.exit921_crit_edge:          ; preds = %to_clk.exit914
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit921

if.end.i919:                                      ; preds = %to_clk.exit914
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i918 = getelementptr inbounds %struct.clk_hw, ptr %call339, i32 0, i32 1
  %130 = ptrtoint ptr %clk.i918 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %clk.i918, align 4
  br label %to_clk.exit921

to_clk.exit921:                                   ; preds = %if.end.i919, %to_clk.exit914.to_clk.exit921_crit_edge
  %retval.0.i920 = phi ptr [ %131, %if.end.i919 ], [ %call339, %to_clk.exit914.to_clk.exit921_crit_edge ]
  store ptr %retval.0.i920, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 191), align 4
  tail call void @imx_check_clocks(ptr noundef nonnull @clk, i32 noundef 206) #2
  store ptr @clk, ptr @clk_data, align 4
  store i32 206, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %call341 = tail call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #2
  %132 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 100), align 4
  %133 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %call342 = tail call i32 @clk_set_parent(ptr noundef %132, ptr noundef %133) #2
  %134 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 101), align 4
  %135 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %call343 = tail call i32 @clk_set_parent(ptr noundef %134, ptr noundef %135) #2
  %136 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 102), align 4
  %call344 = tail call i32 @clk_set_rate(ptr noundef %136, i32 noundef 200000000) #2
  %137 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 103), align 4
  %call345 = tail call i32 @clk_set_rate(ptr noundef %137, i32 noundef 200000000) #2
  %138 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 156), align 4
  %139 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 89), align 4
  %call346 = tail call i32 @clk_set_parent(ptr noundef %138, ptr noundef %139) #2
  %140 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 189), align 4
  %141 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 89), align 4
  %call347 = tail call i32 @clk_set_parent(ptr noundef %140, ptr noundef %141) #2
  %142 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 107), align 4
  %call.i922 = tail call i32 @clk_prepare(ptr noundef %142) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i922)
  %tobool.not.i = icmp eq i32 %call.i922, 0
  br i1 %tobool.not.i, label %if.end.i923, label %to_clk.exit921.clk_prepare_enable.exit_crit_edge

to_clk.exit921.clk_prepare_enable.exit_crit_edge: ; preds = %to_clk.exit921
  call void @__sanitizer_cov_trace_pc() #4
  br label %clk_prepare_enable.exit

if.end.i923:                                      ; preds = %to_clk.exit921
  %call1.i = tail call i32 @clk_enable(ptr noundef %142) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i923.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i923.clk_prepare_enable.exit_crit_edge:    ; preds = %if.end.i923
  call void @__sanitizer_cov_trace_pc() #4
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i923
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @clk_unprepare(ptr noundef %142) #2
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i923.clk_prepare_enable.exit_crit_edge, %to_clk.exit921.clk_prepare_enable.exit_crit_edge
  %call349 = tail call i32 @mx53_revision() #2
  tail call void @imx_print_silicon_rev(ptr noundef nonnull @.str.212, i32 noundef %call349) #2
  %143 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 107), align 4
  tail call void @clk_disable(ptr noundef %143) #2
  tail call void @clk_unprepare(ptr noundef %143) #2
  %144 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 43), align 4
  %call350 = tail call i32 @clk_round_rate(ptr noundef %144, i32 noundef 54000000) #2
  %145 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 43), align 4
  %call351 = tail call i32 @clk_set_rate(ptr noundef %145, i32 noundef %call350) #2
  tail call void @imx_register_uart_clocks(i32 noundef 5) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pllv2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mx5_clocks_common_init(ptr noundef %ccm_base) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #2
  %tobool.not.i.i = icmp eq ptr %call.i, null
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.to_clk.exit_crit_edge, label %if.end.i

entry.to_clk.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  br label %to_clk.exit

to_clk.exit:                                      ; preds = %if.end.i, %entry.to_clk.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ %call.i, %entry.to_clk.exit_crit_edge ]
  store ptr %retval.0.i, ptr @clk, align 4
  %call2 = tail call ptr @imx_obtain_fixed_clock(ptr noundef nonnull @.str.36, i32 noundef 0) #2
  store ptr %call2, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 1), align 4
  %call3 = tail call ptr @imx_obtain_fixed_clock(ptr noundef nonnull @.str.2, i32 noundef 0) #2
  store ptr %call3, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 2), align 4
  %call4 = tail call ptr @imx_obtain_fixed_clock(ptr noundef nonnull @.str.37, i32 noundef 0) #2
  store ptr %call4, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 3), align 4
  %call5 = tail call ptr @imx_obtain_fixed_clock(ptr noundef nonnull @.str.38, i32 noundef 0) #2
  store ptr %call5, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 4), align 4
  %add.ptr = getelementptr i8, ptr %ccm_base, i32 24
  %call.i493 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.39, i8 noundef zeroext 2, ptr noundef nonnull @per_lp_apm_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i494 = icmp eq ptr %call.i493, null
  %cmp.i.i495 = icmp ugt ptr %call.i493, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i496 = or i1 %tobool.not.i.i494, %cmp.i.i495
  br i1 %spec.select.i.i496, label %to_clk.exit.to_clk.exit500_crit_edge, label %if.end.i498

to_clk.exit.to_clk.exit500_crit_edge:             ; preds = %to_clk.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit500

if.end.i498:                                      ; preds = %to_clk.exit
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i497 = getelementptr inbounds %struct.clk_hw, ptr %call.i493, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i497 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i497, align 4
  br label %to_clk.exit500

to_clk.exit500:                                   ; preds = %if.end.i498, %to_clk.exit.to_clk.exit500_crit_edge
  %retval.0.i499 = phi ptr [ %3, %if.end.i498 ], [ %call.i493, %to_clk.exit.to_clk.exit500_crit_edge ]
  store ptr %retval.0.i499, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 126), align 4
  %add.ptr8 = getelementptr i8, ptr %ccm_base, i32 20
  %call.i501 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr8, i8 noundef zeroext 6, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i502 = icmp eq ptr %call.i501, null
  %cmp.i.i503 = icmp ugt ptr %call.i501, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i504 = or i1 %tobool.not.i.i502, %cmp.i.i503
  br i1 %spec.select.i.i504, label %to_clk.exit500.to_clk.exit508_crit_edge, label %if.end.i506

to_clk.exit500.to_clk.exit508_crit_edge:          ; preds = %to_clk.exit500
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit508

if.end.i506:                                      ; preds = %to_clk.exit500
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i505 = getelementptr inbounds %struct.clk_hw, ptr %call.i501, i32 0, i32 1
  %4 = ptrtoint ptr %clk.i505 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i505, align 4
  br label %to_clk.exit508

to_clk.exit508:                                   ; preds = %if.end.i506, %to_clk.exit500.to_clk.exit508_crit_edge
  %retval.0.i507 = phi ptr [ %5, %if.end.i506 ], [ %call.i501, %to_clk.exit500.to_clk.exit508_crit_edge ]
  store ptr %retval.0.i507, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 127), align 4
  %call.i509 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i510 = icmp eq ptr %call.i509, null
  %cmp.i.i511 = icmp ugt ptr %call.i509, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i512 = or i1 %tobool.not.i.i510, %cmp.i.i511
  br i1 %spec.select.i.i512, label %to_clk.exit508.to_clk.exit516_crit_edge, label %if.end.i514

to_clk.exit508.to_clk.exit516_crit_edge:          ; preds = %to_clk.exit508
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit516

if.end.i514:                                      ; preds = %to_clk.exit508
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i513 = getelementptr inbounds %struct.clk_hw, ptr %call.i509, i32 0, i32 1
  %6 = ptrtoint ptr %clk.i513 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i513, align 4
  br label %to_clk.exit516

to_clk.exit516:                                   ; preds = %if.end.i514, %to_clk.exit508.to_clk.exit516_crit_edge
  %retval.0.i515 = phi ptr [ %7, %if.end.i514 ], [ %call.i509, %to_clk.exit508.to_clk.exit516_crit_edge ]
  store ptr %retval.0.i515, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 128), align 4
  %call.i517 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr8, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i518 = icmp eq ptr %call.i517, null
  %cmp.i.i519 = icmp ugt ptr %call.i517, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i520 = or i1 %tobool.not.i.i518, %cmp.i.i519
  br i1 %spec.select.i.i520, label %to_clk.exit516.to_clk.exit524_crit_edge, label %if.end.i522

to_clk.exit516.to_clk.exit524_crit_edge:          ; preds = %to_clk.exit516
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit524

if.end.i522:                                      ; preds = %to_clk.exit516
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i521 = getelementptr inbounds %struct.clk_hw, ptr %call.i517, i32 0, i32 1
  %8 = ptrtoint ptr %clk.i521 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i521, align 4
  br label %to_clk.exit524

to_clk.exit524:                                   ; preds = %if.end.i522, %to_clk.exit516.to_clk.exit524_crit_edge
  %retval.0.i523 = phi ptr [ %9, %if.end.i522 ], [ %call.i517, %to_clk.exit516.to_clk.exit524_crit_edge ]
  store ptr %retval.0.i523, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 129), align 4
  %call.i525 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21, i8 noundef zeroext 2, ptr noundef nonnull @per_root_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i526 = icmp eq ptr %call.i525, null
  %cmp.i.i527 = icmp ugt ptr %call.i525, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i528 = or i1 %tobool.not.i.i526, %cmp.i.i527
  br i1 %spec.select.i.i528, label %to_clk.exit524.to_clk.exit532_crit_edge, label %if.end.i530

to_clk.exit524.to_clk.exit532_crit_edge:          ; preds = %to_clk.exit524
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit532

if.end.i530:                                      ; preds = %to_clk.exit524
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i529 = getelementptr inbounds %struct.clk_hw, ptr %call.i525, i32 0, i32 1
  %10 = ptrtoint ptr %clk.i529 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i529, align 4
  br label %to_clk.exit532

to_clk.exit532:                                   ; preds = %if.end.i530, %to_clk.exit524.to_clk.exit532_crit_edge
  %retval.0.i531 = phi ptr [ %11, %if.end.i530 ], [ %call.i525, %to_clk.exit524.to_clk.exit532_crit_edge ]
  store ptr %retval.0.i531, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 130), align 4
  %call.i533 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr8, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i534 = icmp eq ptr %call.i533, null
  %cmp.i.i535 = icmp ugt ptr %call.i533, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i536 = or i1 %tobool.not.i.i534, %cmp.i.i535
  br i1 %spec.select.i.i536, label %to_clk.exit532.to_clk.exit540_crit_edge, label %if.end.i538

to_clk.exit532.to_clk.exit540_crit_edge:          ; preds = %to_clk.exit532
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit540

if.end.i538:                                      ; preds = %to_clk.exit532
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i537 = getelementptr inbounds %struct.clk_hw, ptr %call.i533, i32 0, i32 1
  %12 = ptrtoint ptr %clk.i537 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i537, align 4
  br label %to_clk.exit540

to_clk.exit540:                                   ; preds = %if.end.i538, %to_clk.exit532.to_clk.exit540_crit_edge
  %retval.0.i539 = phi ptr [ %13, %if.end.i538 ], [ %call.i533, %to_clk.exit532.to_clk.exit540_crit_edge ]
  store ptr %retval.0.i539, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 5), align 4
  %add.ptr23 = getelementptr i8, ptr %ccm_base, i32 104
  %call.i541 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef 2052, ptr noundef %add.ptr23, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i542 = icmp eq ptr %call.i541, null
  %cmp.i.i543 = icmp ugt ptr %call.i541, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i544 = or i1 %tobool.not.i.i542, %cmp.i.i543
  br i1 %spec.select.i.i544, label %to_clk.exit540.to_clk.exit548_crit_edge, label %if.end.i546

to_clk.exit540.to_clk.exit548_crit_edge:          ; preds = %to_clk.exit540
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit548

if.end.i546:                                      ; preds = %to_clk.exit540
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i545 = getelementptr inbounds %struct.clk_hw, ptr %call.i541, i32 0, i32 1
  %14 = ptrtoint ptr %clk.i545 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk.i545, align 4
  br label %to_clk.exit548

to_clk.exit548:                                   ; preds = %if.end.i546, %to_clk.exit540.to_clk.exit548_crit_edge
  %retval.0.i547 = phi ptr [ %15, %if.end.i546 ], [ %call.i541, %to_clk.exit540.to_clk.exit548_crit_edge ]
  store ptr %retval.0.i547, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 92), align 4
  %call.i549 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef 2052, ptr noundef %add.ptr23, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i550 = icmp eq ptr %call.i549, null
  %cmp.i.i551 = icmp ugt ptr %call.i549, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i552 = or i1 %tobool.not.i.i550, %cmp.i.i551
  br i1 %spec.select.i.i552, label %to_clk.exit548.to_clk.exit556_crit_edge, label %if.end.i554

to_clk.exit548.to_clk.exit556_crit_edge:          ; preds = %to_clk.exit548
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit556

if.end.i554:                                      ; preds = %to_clk.exit548
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i553 = getelementptr inbounds %struct.clk_hw, ptr %call.i549, i32 0, i32 1
  %16 = ptrtoint ptr %clk.i553 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk.i553, align 4
  br label %to_clk.exit556

to_clk.exit556:                                   ; preds = %if.end.i554, %to_clk.exit548.to_clk.exit556_crit_edge
  %retval.0.i555 = phi ptr [ %17, %if.end.i554 ], [ %call.i549, %to_clk.exit548.to_clk.exit556_crit_edge ]
  store ptr %retval.0.i555, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 93), align 4
  %call.i557 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.43, i32 noundef 2052, ptr noundef %add.ptr23, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i558 = icmp eq ptr %call.i557, null
  %cmp.i.i559 = icmp ugt ptr %call.i557, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i560 = or i1 %tobool.not.i.i558, %cmp.i.i559
  br i1 %spec.select.i.i560, label %to_clk.exit556.to_clk.exit564_crit_edge, label %if.end.i562

to_clk.exit556.to_clk.exit564_crit_edge:          ; preds = %to_clk.exit556
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit564

if.end.i562:                                      ; preds = %to_clk.exit556
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i561 = getelementptr inbounds %struct.clk_hw, ptr %call.i557, i32 0, i32 1
  %18 = ptrtoint ptr %clk.i561 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk.i561, align 4
  br label %to_clk.exit564

to_clk.exit564:                                   ; preds = %if.end.i562, %to_clk.exit556.to_clk.exit564_crit_edge
  %retval.0.i563 = phi ptr [ %19, %if.end.i562 ], [ %call.i557, %to_clk.exit556.to_clk.exit564_crit_edge ]
  store ptr %retval.0.i563, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 94), align 4
  %add.ptr32 = getelementptr i8, ptr %ccm_base, i32 108
  %call.i565 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.43, i32 noundef 2052, ptr noundef %add.ptr32, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i566 = icmp eq ptr %call.i565, null
  %cmp.i.i567 = icmp ugt ptr %call.i565, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i568 = or i1 %tobool.not.i.i566, %cmp.i.i567
  br i1 %spec.select.i.i568, label %to_clk.exit564.to_clk.exit572_crit_edge, label %if.end.i570

to_clk.exit564.to_clk.exit572_crit_edge:          ; preds = %to_clk.exit564
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit572

if.end.i570:                                      ; preds = %to_clk.exit564
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i569 = getelementptr inbounds %struct.clk_hw, ptr %call.i565, i32 0, i32 1
  %20 = ptrtoint ptr %clk.i569 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk.i569, align 4
  br label %to_clk.exit572

to_clk.exit572:                                   ; preds = %if.end.i570, %to_clk.exit564.to_clk.exit572_crit_edge
  %retval.0.i571 = phi ptr [ %21, %if.end.i570 ], [ %call.i565, %to_clk.exit564.to_clk.exit572_crit_edge ]
  store ptr %retval.0.i571, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 95), align 4
  %call.i573 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.43, i32 noundef 2052, ptr noundef %add.ptr32, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i574 = icmp eq ptr %call.i573, null
  %cmp.i.i575 = icmp ugt ptr %call.i573, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i576 = or i1 %tobool.not.i.i574, %cmp.i.i575
  br i1 %spec.select.i.i576, label %to_clk.exit572.to_clk.exit580_crit_edge, label %if.end.i578

to_clk.exit572.to_clk.exit580_crit_edge:          ; preds = %to_clk.exit572
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit580

if.end.i578:                                      ; preds = %to_clk.exit572
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i577 = getelementptr inbounds %struct.clk_hw, ptr %call.i573, i32 0, i32 1
  %22 = ptrtoint ptr %clk.i577 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i577, align 4
  br label %to_clk.exit580

to_clk.exit580:                                   ; preds = %if.end.i578, %to_clk.exit572.to_clk.exit580_crit_edge
  %retval.0.i579 = phi ptr [ %23, %if.end.i578 ], [ %call.i573, %to_clk.exit572.to_clk.exit580_crit_edge ]
  store ptr %retval.0.i579, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 96), align 4
  %call.i581 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.43, i32 noundef 2052, ptr noundef %add.ptr32, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i582 = icmp eq ptr %call.i581, null
  %cmp.i.i583 = icmp ugt ptr %call.i581, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i584 = or i1 %tobool.not.i.i582, %cmp.i.i583
  br i1 %spec.select.i.i584, label %to_clk.exit580.to_clk.exit588_crit_edge, label %if.end.i586

to_clk.exit580.to_clk.exit588_crit_edge:          ; preds = %to_clk.exit580
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit588

if.end.i586:                                      ; preds = %to_clk.exit580
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i585 = getelementptr inbounds %struct.clk_hw, ptr %call.i581, i32 0, i32 1
  %24 = ptrtoint ptr %clk.i585 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk.i585, align 4
  br label %to_clk.exit588

to_clk.exit588:                                   ; preds = %if.end.i586, %to_clk.exit580.to_clk.exit588_crit_edge
  %retval.0.i587 = phi ptr [ %25, %if.end.i586 ], [ %call.i581, %to_clk.exit580.to_clk.exit588_crit_edge ]
  store ptr %retval.0.i587, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 97), align 4
  %add.ptr41 = getelementptr i8, ptr %ccm_base, i32 124
  %call.i589 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.23, i32 noundef 2052, ptr noundef %add.ptr41, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i590 = icmp eq ptr %call.i589, null
  %cmp.i.i591 = icmp ugt ptr %call.i589, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i592 = or i1 %tobool.not.i.i590, %cmp.i.i591
  br i1 %spec.select.i.i592, label %to_clk.exit588.to_clk.exit596_crit_edge, label %if.end.i594

to_clk.exit588.to_clk.exit596_crit_edge:          ; preds = %to_clk.exit588
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit596

if.end.i594:                                      ; preds = %to_clk.exit588
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i593 = getelementptr inbounds %struct.clk_hw, ptr %call.i589, i32 0, i32 1
  %26 = ptrtoint ptr %clk.i593 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk.i593, align 4
  br label %to_clk.exit596

to_clk.exit596:                                   ; preds = %if.end.i594, %to_clk.exit588.to_clk.exit596_crit_edge
  %retval.0.i595 = phi ptr [ %27, %if.end.i594 ], [ %call.i589, %to_clk.exit588.to_clk.exit596_crit_edge ]
  store ptr %retval.0.i595, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 98), align 4
  %call.i597 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.43, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr8, i8 noundef zeroext 8, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i598 = icmp eq ptr %call.i597, null
  %cmp.i.i599 = icmp ugt ptr %call.i597, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i600 = or i1 %tobool.not.i.i598, %cmp.i.i599
  br i1 %spec.select.i.i600, label %to_clk.exit596.to_clk.exit604_crit_edge, label %if.end.i602

to_clk.exit596.to_clk.exit604_crit_edge:          ; preds = %to_clk.exit596
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit604

if.end.i602:                                      ; preds = %to_clk.exit596
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i601 = getelementptr inbounds %struct.clk_hw, ptr %call.i597, i32 0, i32 1
  %28 = ptrtoint ptr %clk.i601 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk.i601, align 4
  br label %to_clk.exit604

to_clk.exit604:                                   ; preds = %if.end.i602, %to_clk.exit596.to_clk.exit604_crit_edge
  %retval.0.i603 = phi ptr [ %29, %if.end.i602 ], [ %call.i597, %to_clk.exit596.to_clk.exit604_crit_edge ]
  store ptr %retval.0.i603, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 6), align 4
  %call.i605 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr8, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i606 = icmp eq ptr %call.i605, null
  %cmp.i.i607 = icmp ugt ptr %call.i605, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i608 = or i1 %tobool.not.i.i606, %cmp.i.i607
  br i1 %spec.select.i.i608, label %to_clk.exit604.to_clk.exit612_crit_edge, label %if.end.i610

to_clk.exit604.to_clk.exit612_crit_edge:          ; preds = %to_clk.exit604
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit612

if.end.i610:                                      ; preds = %to_clk.exit604
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i609 = getelementptr inbounds %struct.clk_hw, ptr %call.i605, i32 0, i32 1
  %30 = ptrtoint ptr %clk.i609 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk.i609, align 4
  br label %to_clk.exit612

to_clk.exit612:                                   ; preds = %if.end.i610, %to_clk.exit604.to_clk.exit612_crit_edge
  %retval.0.i611 = phi ptr [ %31, %if.end.i610 ], [ %call.i605, %to_clk.exit604.to_clk.exit612_crit_edge ]
  store ptr %retval.0.i611, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 7), align 4
  %call.i613 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr8, i8 noundef zeroext 19, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i614 = icmp eq ptr %call.i613, null
  %cmp.i.i615 = icmp ugt ptr %call.i613, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i616 = or i1 %tobool.not.i.i614, %cmp.i.i615
  br i1 %spec.select.i.i616, label %to_clk.exit612.to_clk.exit620_crit_edge, label %if.end.i618

to_clk.exit612.to_clk.exit620_crit_edge:          ; preds = %to_clk.exit612
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit620

if.end.i618:                                      ; preds = %to_clk.exit612
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i617 = getelementptr inbounds %struct.clk_hw, ptr %call.i613, i32 0, i32 1
  %32 = ptrtoint ptr %clk.i617 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk.i617, align 4
  br label %to_clk.exit620

to_clk.exit620:                                   ; preds = %if.end.i618, %to_clk.exit612.to_clk.exit620_crit_edge
  %retval.0.i619 = phi ptr [ %33, %if.end.i618 ], [ %call.i613, %to_clk.exit612.to_clk.exit620_crit_edge ]
  store ptr %retval.0.i619, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 8), align 4
  %add.ptr53 = getelementptr i8, ptr %ccm_base, i32 28
  %call.i621 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.53, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr53, i8 noundef zeroext 24, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i622 = icmp eq ptr %call.i621, null
  %cmp.i.i623 = icmp ugt ptr %call.i621, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i624 = or i1 %tobool.not.i.i622, %cmp.i.i623
  br i1 %spec.select.i.i624, label %to_clk.exit620.to_clk.exit628_crit_edge, label %if.end.i626

to_clk.exit620.to_clk.exit628_crit_edge:          ; preds = %to_clk.exit620
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit628

if.end.i626:                                      ; preds = %to_clk.exit620
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i625 = getelementptr inbounds %struct.clk_hw, ptr %call.i621, i32 0, i32 1
  %34 = ptrtoint ptr %clk.i625 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk.i625, align 4
  br label %to_clk.exit628

to_clk.exit628:                                   ; preds = %if.end.i626, %to_clk.exit620.to_clk.exit628_crit_edge
  %retval.0.i627 = phi ptr [ %35, %if.end.i626 ], [ %call.i621, %to_clk.exit620.to_clk.exit628_crit_edge ]
  store ptr %retval.0.i627, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 99), align 4
  %add.ptr56 = getelementptr i8, ptr %ccm_base, i32 36
  %call.i629 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i630 = icmp eq ptr %call.i629, null
  %cmp.i.i631 = icmp ugt ptr %call.i629, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i632 = or i1 %tobool.not.i.i630, %cmp.i.i631
  br i1 %spec.select.i.i632, label %to_clk.exit628.to_clk.exit636_crit_edge, label %if.end.i634

to_clk.exit628.to_clk.exit636_crit_edge:          ; preds = %to_clk.exit628
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit636

if.end.i634:                                      ; preds = %to_clk.exit628
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i633 = getelementptr inbounds %struct.clk_hw, ptr %call.i629, i32 0, i32 1
  %36 = ptrtoint ptr %clk.i633 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk.i633, align 4
  br label %to_clk.exit636

to_clk.exit636:                                   ; preds = %if.end.i634, %to_clk.exit628.to_clk.exit636_crit_edge
  %retval.0.i635 = phi ptr [ %37, %if.end.i634 ], [ %call.i629, %to_clk.exit628.to_clk.exit636_crit_edge ]
  store ptr %retval.0.i635, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 9), align 4
  %call.i637 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.54, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i638 = icmp eq ptr %call.i637, null
  %cmp.i.i639 = icmp ugt ptr %call.i637, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i640 = or i1 %tobool.not.i.i638, %cmp.i.i639
  br i1 %spec.select.i.i640, label %to_clk.exit636.to_clk.exit644_crit_edge, label %if.end.i642

to_clk.exit636.to_clk.exit644_crit_edge:          ; preds = %to_clk.exit636
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit644

if.end.i642:                                      ; preds = %to_clk.exit636
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i641 = getelementptr inbounds %struct.clk_hw, ptr %call.i637, i32 0, i32 1
  %38 = ptrtoint ptr %clk.i641 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk.i641, align 4
  br label %to_clk.exit644

to_clk.exit644:                                   ; preds = %if.end.i642, %to_clk.exit636.to_clk.exit644_crit_edge
  %retval.0.i643 = phi ptr [ %39, %if.end.i642 ], [ %call.i637, %to_clk.exit636.to_clk.exit644_crit_edge ]
  store ptr %retval.0.i643, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 10), align 4
  %call.i645 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i646 = icmp eq ptr %call.i645, null
  %cmp.i.i647 = icmp ugt ptr %call.i645, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i648 = or i1 %tobool.not.i.i646, %cmp.i.i647
  br i1 %spec.select.i.i648, label %to_clk.exit644.to_clk.exit652_crit_edge, label %if.end.i650

to_clk.exit644.to_clk.exit652_crit_edge:          ; preds = %to_clk.exit644
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit652

if.end.i650:                                      ; preds = %to_clk.exit644
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i649 = getelementptr inbounds %struct.clk_hw, ptr %call.i645, i32 0, i32 1
  %40 = ptrtoint ptr %clk.i649 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk.i649, align 4
  br label %to_clk.exit652

to_clk.exit652:                                   ; preds = %if.end.i650, %to_clk.exit644.to_clk.exit652_crit_edge
  %retval.0.i651 = phi ptr [ %41, %if.end.i650 ], [ %call.i645, %to_clk.exit644.to_clk.exit652_crit_edge ]
  store ptr %retval.0.i651, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 11), align 4
  %call.i653 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.55, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i654 = icmp eq ptr %call.i653, null
  %cmp.i.i655 = icmp ugt ptr %call.i653, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i656 = or i1 %tobool.not.i.i654, %cmp.i.i655
  br i1 %spec.select.i.i656, label %to_clk.exit652.to_clk.exit660_crit_edge, label %if.end.i658

to_clk.exit652.to_clk.exit660_crit_edge:          ; preds = %to_clk.exit652
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit660

if.end.i658:                                      ; preds = %to_clk.exit652
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i657 = getelementptr inbounds %struct.clk_hw, ptr %call.i653, i32 0, i32 1
  %42 = ptrtoint ptr %clk.i657 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk.i657, align 4
  br label %to_clk.exit660

to_clk.exit660:                                   ; preds = %if.end.i658, %to_clk.exit652.to_clk.exit660_crit_edge
  %retval.0.i659 = phi ptr [ %43, %if.end.i658 ], [ %call.i653, %to_clk.exit652.to_clk.exit660_crit_edge ]
  store ptr %retval.0.i659, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 102), align 4
  %call.i661 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i662 = icmp eq ptr %call.i661, null
  %cmp.i.i663 = icmp ugt ptr %call.i661, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i664 = or i1 %tobool.not.i.i662, %cmp.i.i663
  br i1 %spec.select.i.i664, label %to_clk.exit660.to_clk.exit668_crit_edge, label %if.end.i666

to_clk.exit660.to_clk.exit668_crit_edge:          ; preds = %to_clk.exit660
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit668

if.end.i666:                                      ; preds = %to_clk.exit660
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i665 = getelementptr inbounds %struct.clk_hw, ptr %call.i661, i32 0, i32 1
  %44 = ptrtoint ptr %clk.i665 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk.i665, align 4
  br label %to_clk.exit668

to_clk.exit668:                                   ; preds = %if.end.i666, %to_clk.exit660.to_clk.exit668_crit_edge
  %retval.0.i667 = phi ptr [ %45, %if.end.i666 ], [ %call.i661, %to_clk.exit660.to_clk.exit668_crit_edge ]
  store ptr %retval.0.i667, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 12), align 4
  %call.i669 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.56, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 19, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i670 = icmp eq ptr %call.i669, null
  %cmp.i.i671 = icmp ugt ptr %call.i669, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i672 = or i1 %tobool.not.i.i670, %cmp.i.i671
  br i1 %spec.select.i.i672, label %to_clk.exit668.to_clk.exit676_crit_edge, label %if.end.i674

to_clk.exit668.to_clk.exit676_crit_edge:          ; preds = %to_clk.exit668
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit676

if.end.i674:                                      ; preds = %to_clk.exit668
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i673 = getelementptr inbounds %struct.clk_hw, ptr %call.i669, i32 0, i32 1
  %46 = ptrtoint ptr %clk.i673 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk.i673, align 4
  br label %to_clk.exit676

to_clk.exit676:                                   ; preds = %if.end.i674, %to_clk.exit668.to_clk.exit676_crit_edge
  %retval.0.i675 = phi ptr [ %47, %if.end.i674 ], [ %call.i669, %to_clk.exit668.to_clk.exit676_crit_edge ]
  store ptr %retval.0.i675, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 103), align 4
  %call.i677 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.57, i8 noundef zeroext 2, ptr noundef nonnull @emi_slow_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr8, i8 noundef zeroext 26, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i678 = icmp eq ptr %call.i677, null
  %cmp.i.i679 = icmp ugt ptr %call.i677, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i680 = or i1 %tobool.not.i.i678, %cmp.i.i679
  br i1 %spec.select.i.i680, label %to_clk.exit676.to_clk.exit684_crit_edge, label %if.end.i682

to_clk.exit676.to_clk.exit684_crit_edge:          ; preds = %to_clk.exit676
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit684

if.end.i682:                                      ; preds = %to_clk.exit676
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i681 = getelementptr inbounds %struct.clk_hw, ptr %call.i677, i32 0, i32 1
  %48 = ptrtoint ptr %clk.i681 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk.i681, align 4
  br label %to_clk.exit684

to_clk.exit684:                                   ; preds = %if.end.i682, %to_clk.exit676.to_clk.exit684_crit_edge
  %retval.0.i683 = phi ptr [ %49, %if.end.i682 ], [ %call.i677, %to_clk.exit676.to_clk.exit684_crit_edge ]
  store ptr %retval.0.i683, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 15), align 4
  %call.i685 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr8, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i686 = icmp eq ptr %call.i685, null
  %cmp.i.i687 = icmp ugt ptr %call.i685, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i688 = or i1 %tobool.not.i.i686, %cmp.i.i687
  br i1 %spec.select.i.i688, label %to_clk.exit684.to_clk.exit692_crit_edge, label %if.end.i690

to_clk.exit684.to_clk.exit692_crit_edge:          ; preds = %to_clk.exit684
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit692

if.end.i690:                                      ; preds = %to_clk.exit684
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i689 = getelementptr inbounds %struct.clk_hw, ptr %call.i685, i32 0, i32 1
  %50 = ptrtoint ptr %clk.i689 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk.i689, align 4
  br label %to_clk.exit692

to_clk.exit692:                                   ; preds = %if.end.i690, %to_clk.exit684.to_clk.exit692_crit_edge
  %retval.0.i691 = phi ptr [ %51, %if.end.i690 ], [ %call.i685, %to_clk.exit684.to_clk.exit692_crit_edge ]
  store ptr %retval.0.i691, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 16), align 4
  %call.i693 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr8, i8 noundef zeroext 13, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i694 = icmp eq ptr %call.i693, null
  %cmp.i.i695 = icmp ugt ptr %call.i693, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i696 = or i1 %tobool.not.i.i694, %cmp.i.i695
  br i1 %spec.select.i.i696, label %to_clk.exit692.to_clk.exit700_crit_edge, label %if.end.i698

to_clk.exit692.to_clk.exit700_crit_edge:          ; preds = %to_clk.exit692
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit700

if.end.i698:                                      ; preds = %to_clk.exit692
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i697 = getelementptr inbounds %struct.clk_hw, ptr %call.i693, i32 0, i32 1
  %52 = ptrtoint ptr %clk.i697 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk.i697, align 4
  br label %to_clk.exit700

to_clk.exit700:                                   ; preds = %if.end.i698, %to_clk.exit692.to_clk.exit700_crit_edge
  %retval.0.i699 = phi ptr [ %53, %if.end.i698 ], [ %call.i693, %to_clk.exit692.to_clk.exit700_crit_edge ]
  store ptr %retval.0.i699, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 17), align 4
  %call.i701 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.60, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr53, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i702 = icmp eq ptr %call.i701, null
  %cmp.i.i703 = icmp ugt ptr %call.i701, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i704 = or i1 %tobool.not.i.i702, %cmp.i.i703
  br i1 %spec.select.i.i704, label %to_clk.exit700.to_clk.exit708_crit_edge, label %if.end.i706

to_clk.exit700.to_clk.exit708_crit_edge:          ; preds = %to_clk.exit700
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit708

if.end.i706:                                      ; preds = %to_clk.exit700
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i705 = getelementptr inbounds %struct.clk_hw, ptr %call.i701, i32 0, i32 1
  %54 = ptrtoint ptr %clk.i705 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clk.i705, align 4
  br label %to_clk.exit708

to_clk.exit708:                                   ; preds = %if.end.i706, %to_clk.exit700.to_clk.exit708_crit_edge
  %retval.0.i707 = phi ptr [ %55, %if.end.i706 ], [ %call.i701, %to_clk.exit700.to_clk.exit708_crit_edge ]
  store ptr %retval.0.i707, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 104), align 4
  %add.ptr86 = getelementptr i8, ptr %ccm_base, i32 56
  %call.i709 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr86, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i710 = icmp eq ptr %call.i709, null
  %cmp.i.i711 = icmp ugt ptr %call.i709, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i712 = or i1 %tobool.not.i.i710, %cmp.i.i711
  br i1 %spec.select.i.i712, label %to_clk.exit708.to_clk.exit716_crit_edge, label %if.end.i714

to_clk.exit708.to_clk.exit716_crit_edge:          ; preds = %to_clk.exit708
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit716

if.end.i714:                                      ; preds = %to_clk.exit708
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i713 = getelementptr inbounds %struct.clk_hw, ptr %call.i709, i32 0, i32 1
  %56 = ptrtoint ptr %clk.i713 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk.i713, align 4
  br label %to_clk.exit716

to_clk.exit716:                                   ; preds = %if.end.i714, %to_clk.exit708.to_clk.exit716_crit_edge
  %retval.0.i715 = phi ptr [ %57, %if.end.i714 ], [ %call.i709, %to_clk.exit708.to_clk.exit716_crit_edge ]
  store ptr %retval.0.i715, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 18), align 4
  %call.i717 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr86, i8 noundef zeroext 19, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i718 = icmp eq ptr %call.i717, null
  %cmp.i.i719 = icmp ugt ptr %call.i717, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i720 = or i1 %tobool.not.i.i718, %cmp.i.i719
  br i1 %spec.select.i.i720, label %to_clk.exit716.to_clk.exit724_crit_edge, label %if.end.i722

to_clk.exit716.to_clk.exit724_crit_edge:          ; preds = %to_clk.exit716
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit724

if.end.i722:                                      ; preds = %to_clk.exit716
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i721 = getelementptr inbounds %struct.clk_hw, ptr %call.i717, i32 0, i32 1
  %58 = ptrtoint ptr %clk.i721 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk.i721, align 4
  br label %to_clk.exit724

to_clk.exit724:                                   ; preds = %if.end.i722, %to_clk.exit716.to_clk.exit724_crit_edge
  %retval.0.i723 = phi ptr [ %59, %if.end.i722 ], [ %call.i717, %to_clk.exit716.to_clk.exit724_crit_edge ]
  store ptr %retval.0.i723, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 19), align 4
  %call.i725 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.63, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr53, i8 noundef zeroext 22, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i726 = icmp eq ptr %call.i725, null
  %cmp.i.i727 = icmp ugt ptr %call.i725, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i728 = or i1 %tobool.not.i.i726, %cmp.i.i727
  br i1 %spec.select.i.i728, label %to_clk.exit724.to_clk.exit732_crit_edge, label %if.end.i730

to_clk.exit724.to_clk.exit732_crit_edge:          ; preds = %to_clk.exit724
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit732

if.end.i730:                                      ; preds = %to_clk.exit724
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i729 = getelementptr inbounds %struct.clk_hw, ptr %call.i725, i32 0, i32 1
  %60 = ptrtoint ptr %clk.i729 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk.i729, align 4
  br label %to_clk.exit732

to_clk.exit732:                                   ; preds = %if.end.i730, %to_clk.exit724.to_clk.exit732_crit_edge
  %retval.0.i731 = phi ptr [ %61, %if.end.i730 ], [ %call.i725, %to_clk.exit724.to_clk.exit732_crit_edge ]
  store ptr %retval.0.i731, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 105), align 4
  %call.i733 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i734 = icmp eq ptr %call.i733, null
  %cmp.i.i735 = icmp ugt ptr %call.i733, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i736 = or i1 %tobool.not.i.i734, %cmp.i.i735
  br i1 %spec.select.i.i736, label %to_clk.exit732.to_clk.exit740_crit_edge, label %if.end.i738

to_clk.exit732.to_clk.exit740_crit_edge:          ; preds = %to_clk.exit732
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit740

if.end.i738:                                      ; preds = %to_clk.exit732
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i737 = getelementptr inbounds %struct.clk_hw, ptr %call.i733, i32 0, i32 1
  %62 = ptrtoint ptr %clk.i737 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk.i737, align 4
  br label %to_clk.exit740

to_clk.exit740:                                   ; preds = %if.end.i738, %to_clk.exit732.to_clk.exit740_crit_edge
  %retval.0.i739 = phi ptr [ %63, %if.end.i738 ], [ %call.i733, %to_clk.exit732.to_clk.exit740_crit_edge ]
  store ptr %retval.0.i739, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 20), align 4
  %call.i741 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 6, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i742 = icmp eq ptr %call.i741, null
  %cmp.i.i743 = icmp ugt ptr %call.i741, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i744 = or i1 %tobool.not.i.i742, %cmp.i.i743
  br i1 %spec.select.i.i744, label %to_clk.exit740.to_clk.exit748_crit_edge, label %if.end.i746

to_clk.exit740.to_clk.exit748_crit_edge:          ; preds = %to_clk.exit740
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit748

if.end.i746:                                      ; preds = %to_clk.exit740
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i745 = getelementptr inbounds %struct.clk_hw, ptr %call.i741, i32 0, i32 1
  %64 = ptrtoint ptr %clk.i745 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk.i745, align 4
  br label %to_clk.exit748

to_clk.exit748:                                   ; preds = %if.end.i746, %to_clk.exit740.to_clk.exit748_crit_edge
  %retval.0.i747 = phi ptr [ %65, %if.end.i746 ], [ %call.i741, %to_clk.exit740.to_clk.exit748_crit_edge ]
  store ptr %retval.0.i747, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 21), align 4
  %add.ptr101 = getelementptr i8, ptr %ccm_base, i32 48
  %call.i749 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr101, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i750 = icmp eq ptr %call.i749, null
  %cmp.i.i751 = icmp ugt ptr %call.i749, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i752 = or i1 %tobool.not.i.i750, %cmp.i.i751
  br i1 %spec.select.i.i752, label %to_clk.exit748.to_clk.exit756_crit_edge, label %if.end.i754

to_clk.exit748.to_clk.exit756_crit_edge:          ; preds = %to_clk.exit748
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit756

if.end.i754:                                      ; preds = %to_clk.exit748
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i753 = getelementptr inbounds %struct.clk_hw, ptr %call.i749, i32 0, i32 1
  %66 = ptrtoint ptr %clk.i753 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clk.i753, align 4
  br label %to_clk.exit756

to_clk.exit756:                                   ; preds = %if.end.i754, %to_clk.exit748.to_clk.exit756_crit_edge
  %retval.0.i755 = phi ptr [ %67, %if.end.i754 ], [ %call.i749, %to_clk.exit748.to_clk.exit756_crit_edge ]
  store ptr %retval.0.i755, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 22), align 4
  %call.i757 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr101, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i758 = icmp eq ptr %call.i757, null
  %cmp.i.i759 = icmp ugt ptr %call.i757, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i760 = or i1 %tobool.not.i.i758, %cmp.i.i759
  br i1 %spec.select.i.i760, label %to_clk.exit756.to_clk.exit764_crit_edge, label %if.end.i762

to_clk.exit756.to_clk.exit764_crit_edge:          ; preds = %to_clk.exit756
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit764

if.end.i762:                                      ; preds = %to_clk.exit756
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i761 = getelementptr inbounds %struct.clk_hw, ptr %call.i757, i32 0, i32 1
  %68 = ptrtoint ptr %clk.i761 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk.i761, align 4
  br label %to_clk.exit764

to_clk.exit764:                                   ; preds = %if.end.i762, %to_clk.exit756.to_clk.exit764_crit_edge
  %retval.0.i763 = phi ptr [ %69, %if.end.i762 ], [ %call.i757, %to_clk.exit756.to_clk.exit764_crit_edge ]
  store ptr %retval.0.i763, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 23), align 4
  %call.i765 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.18, i8 noundef zeroext 2, ptr noundef nonnull @usb_phy_sel_str, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr53, i8 noundef zeroext 26, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i766 = icmp eq ptr %call.i765, null
  %cmp.i.i767 = icmp ugt ptr %call.i765, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i768 = or i1 %tobool.not.i.i766, %cmp.i.i767
  br i1 %spec.select.i.i768, label %to_clk.exit764.to_clk.exit772_crit_edge, label %if.end.i770

to_clk.exit764.to_clk.exit772_crit_edge:          ; preds = %to_clk.exit764
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit772

if.end.i770:                                      ; preds = %to_clk.exit764
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i769 = getelementptr inbounds %struct.clk_hw, ptr %call.i765, i32 0, i32 1
  %70 = ptrtoint ptr %clk.i769 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clk.i769, align 4
  br label %to_clk.exit772

to_clk.exit772:                                   ; preds = %if.end.i770, %to_clk.exit764.to_clk.exit772_crit_edge
  %retval.0.i771 = phi ptr [ %71, %if.end.i770 ], [ %call.i765, %to_clk.exit764.to_clk.exit772_crit_edge ]
  store ptr %retval.0.i771, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 106), align 4
  %add.ptr110 = getelementptr i8, ptr %ccm_base, i32 12
  %call.i773 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.68, i8 noundef zeroext 1, ptr noundef nonnull @step_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr110, i8 noundef zeroext 7, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i774 = icmp eq ptr %call.i773, null
  %cmp.i.i775 = icmp ugt ptr %call.i773, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i776 = or i1 %tobool.not.i.i774, %cmp.i.i775
  br i1 %spec.select.i.i776, label %to_clk.exit772.to_clk.exit780_crit_edge, label %if.end.i778

to_clk.exit772.to_clk.exit780_crit_edge:          ; preds = %to_clk.exit772
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit780

if.end.i778:                                      ; preds = %to_clk.exit772
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i777 = getelementptr inbounds %struct.clk_hw, ptr %call.i773, i32 0, i32 1
  %72 = ptrtoint ptr %clk.i777 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clk.i777, align 4
  br label %to_clk.exit780

to_clk.exit780:                                   ; preds = %if.end.i778, %to_clk.exit772.to_clk.exit780_crit_edge
  %retval.0.i779 = phi ptr [ %73, %if.end.i778 ], [ %call.i773, %to_clk.exit772.to_clk.exit780_crit_edge ]
  store ptr %retval.0.i779, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 189), align 4
  %call.i781 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.69, i8 noundef zeroext 2, ptr noundef nonnull @cpu_podf_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr110, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i782 = icmp eq ptr %call.i781, null
  %cmp.i.i783 = icmp ugt ptr %call.i781, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i784 = or i1 %tobool.not.i.i782, %cmp.i.i783
  br i1 %spec.select.i.i784, label %to_clk.exit780.to_clk.exit788_crit_edge, label %if.end.i786

to_clk.exit780.to_clk.exit788_crit_edge:          ; preds = %to_clk.exit780
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit788

if.end.i786:                                      ; preds = %to_clk.exit780
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i785 = getelementptr inbounds %struct.clk_hw, ptr %call.i781, i32 0, i32 1
  %74 = ptrtoint ptr %clk.i785 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %clk.i785, align 4
  br label %to_clk.exit788

to_clk.exit788:                                   ; preds = %if.end.i786, %to_clk.exit780.to_clk.exit788_crit_edge
  %retval.0.i787 = phi ptr [ %75, %if.end.i786 ], [ %call.i781, %to_clk.exit780.to_clk.exit788_crit_edge ]
  store ptr %retval.0.i787, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 190), align 4
  %add.ptr116 = getelementptr i8, ptr %ccm_base, i32 16
  %call.i789 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr116, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i790 = icmp eq ptr %call.i789, null
  %cmp.i.i791 = icmp ugt ptr %call.i789, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i792 = or i1 %tobool.not.i.i790, %cmp.i.i791
  br i1 %spec.select.i.i792, label %to_clk.exit788.to_clk.exit796_crit_edge, label %if.end.i794

to_clk.exit788.to_clk.exit796_crit_edge:          ; preds = %to_clk.exit788
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit796

if.end.i794:                                      ; preds = %to_clk.exit788
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i793 = getelementptr inbounds %struct.clk_hw, ptr %call.i789, i32 0, i32 1
  %76 = ptrtoint ptr %clk.i793 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %clk.i793, align 4
  br label %to_clk.exit796

to_clk.exit796:                                   ; preds = %if.end.i794, %to_clk.exit788.to_clk.exit796_crit_edge
  %retval.0.i795 = phi ptr [ %77, %if.end.i794 ], [ %call.i789, %to_clk.exit788.to_clk.exit796_crit_edge ]
  store ptr %retval.0.i795, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 24), align 4
  %call.i797 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr101, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i798 = icmp eq ptr %call.i797, null
  %cmp.i.i799 = icmp ugt ptr %call.i797, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i800 = or i1 %tobool.not.i.i798, %cmp.i.i799
  br i1 %spec.select.i.i800, label %to_clk.exit796.to_clk.exit804_crit_edge, label %if.end.i802

to_clk.exit796.to_clk.exit804_crit_edge:          ; preds = %to_clk.exit796
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit804

if.end.i802:                                      ; preds = %to_clk.exit796
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i801 = getelementptr inbounds %struct.clk_hw, ptr %call.i797, i32 0, i32 1
  %78 = ptrtoint ptr %clk.i801 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clk.i801, align 4
  br label %to_clk.exit804

to_clk.exit804:                                   ; preds = %if.end.i802, %to_clk.exit796.to_clk.exit804_crit_edge
  %retval.0.i803 = phi ptr [ %79, %if.end.i802 ], [ %call.i797, %to_clk.exit796.to_clk.exit804_crit_edge ]
  store ptr %retval.0.i803, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 25), align 4
  %call.i805 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr23, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i806 = icmp eq ptr %call.i805, null
  %cmp.i.i807 = icmp ugt ptr %call.i805, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i808 = or i1 %tobool.not.i.i806, %cmp.i.i807
  br i1 %spec.select.i.i808, label %to_clk.exit804.to_clk.exit812_crit_edge, label %if.end.i810

to_clk.exit804.to_clk.exit812_crit_edge:          ; preds = %to_clk.exit804
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit812

if.end.i810:                                      ; preds = %to_clk.exit804
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i809 = getelementptr inbounds %struct.clk_hw, ptr %call.i805, i32 0, i32 1
  %80 = ptrtoint ptr %clk.i809 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clk.i809, align 4
  br label %to_clk.exit812

to_clk.exit812:                                   ; preds = %if.end.i810, %to_clk.exit804.to_clk.exit812_crit_edge
  %retval.0.i811 = phi ptr [ %81, %if.end.i810 ], [ %call.i805, %to_clk.exit804.to_clk.exit812_crit_edge ]
  store ptr %retval.0.i811, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 107), align 4
  %call.i813 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr32, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i814 = icmp eq ptr %call.i813, null
  %cmp.i.i815 = icmp ugt ptr %call.i813, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i816 = or i1 %tobool.not.i.i814, %cmp.i.i815
  br i1 %spec.select.i.i816, label %to_clk.exit812.to_clk.exit820_crit_edge, label %if.end.i818

to_clk.exit812.to_clk.exit820_crit_edge:          ; preds = %to_clk.exit812
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit820

if.end.i818:                                      ; preds = %to_clk.exit812
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i817 = getelementptr inbounds %struct.clk_hw, ptr %call.i813, i32 0, i32 1
  %82 = ptrtoint ptr %clk.i817 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %clk.i817, align 4
  br label %to_clk.exit820

to_clk.exit820:                                   ; preds = %if.end.i818, %to_clk.exit812.to_clk.exit820_crit_edge
  %retval.0.i819 = phi ptr [ %83, %if.end.i818 ], [ %call.i813, %to_clk.exit812.to_clk.exit820_crit_edge ]
  store ptr %retval.0.i819, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 28), align 4
  %call.i821 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.25, i32 noundef 4, ptr noundef %add.ptr32, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i822 = icmp eq ptr %call.i821, null
  %cmp.i.i823 = icmp ugt ptr %call.i821, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i824 = or i1 %tobool.not.i.i822, %cmp.i.i823
  br i1 %spec.select.i.i824, label %to_clk.exit820.to_clk.exit828_crit_edge, label %if.end.i826

to_clk.exit820.to_clk.exit828_crit_edge:          ; preds = %to_clk.exit820
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit828

if.end.i826:                                      ; preds = %to_clk.exit820
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i825 = getelementptr inbounds %struct.clk_hw, ptr %call.i821, i32 0, i32 1
  %84 = ptrtoint ptr %clk.i825 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %clk.i825, align 4
  br label %to_clk.exit828

to_clk.exit828:                                   ; preds = %if.end.i826, %to_clk.exit820.to_clk.exit828_crit_edge
  %retval.0.i827 = phi ptr [ %85, %if.end.i826 ], [ %call.i821, %to_clk.exit820.to_clk.exit828_crit_edge ]
  store ptr %retval.0.i827, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 29), align 4
  %call.i829 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr32, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i830 = icmp eq ptr %call.i829, null
  %cmp.i.i831 = icmp ugt ptr %call.i829, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i832 = or i1 %tobool.not.i.i830, %cmp.i.i831
  br i1 %spec.select.i.i832, label %to_clk.exit828.to_clk.exit836_crit_edge, label %if.end.i834

to_clk.exit828.to_clk.exit836_crit_edge:          ; preds = %to_clk.exit828
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit836

if.end.i834:                                      ; preds = %to_clk.exit828
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i833 = getelementptr inbounds %struct.clk_hw, ptr %call.i829, i32 0, i32 1
  %86 = ptrtoint ptr %clk.i833 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %clk.i833, align 4
  br label %to_clk.exit836

to_clk.exit836:                                   ; preds = %if.end.i834, %to_clk.exit828.to_clk.exit836_crit_edge
  %retval.0.i835 = phi ptr [ %87, %if.end.i834 ], [ %call.i829, %to_clk.exit828.to_clk.exit836_crit_edge ]
  store ptr %retval.0.i835, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 30), align 4
  %call.i837 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.25, i32 noundef 4, ptr noundef %add.ptr32, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i838 = icmp eq ptr %call.i837, null
  %cmp.i.i839 = icmp ugt ptr %call.i837, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i840 = or i1 %tobool.not.i.i838, %cmp.i.i839
  br i1 %spec.select.i.i840, label %to_clk.exit836.to_clk.exit844_crit_edge, label %if.end.i842

to_clk.exit836.to_clk.exit844_crit_edge:          ; preds = %to_clk.exit836
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit844

if.end.i842:                                      ; preds = %to_clk.exit836
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i841 = getelementptr inbounds %struct.clk_hw, ptr %call.i837, i32 0, i32 1
  %88 = ptrtoint ptr %clk.i841 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %clk.i841, align 4
  br label %to_clk.exit844

to_clk.exit844:                                   ; preds = %if.end.i842, %to_clk.exit836.to_clk.exit844_crit_edge
  %retval.0.i843 = phi ptr [ %89, %if.end.i842 ], [ %call.i837, %to_clk.exit836.to_clk.exit844_crit_edge ]
  store ptr %retval.0.i843, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 31), align 4
  %call.i845 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr32, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i846 = icmp eq ptr %call.i845, null
  %cmp.i.i847 = icmp ugt ptr %call.i845, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i848 = or i1 %tobool.not.i.i846, %cmp.i.i847
  br i1 %spec.select.i.i848, label %to_clk.exit844.to_clk.exit852_crit_edge, label %if.end.i850

to_clk.exit844.to_clk.exit852_crit_edge:          ; preds = %to_clk.exit844
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit852

if.end.i850:                                      ; preds = %to_clk.exit844
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i849 = getelementptr inbounds %struct.clk_hw, ptr %call.i845, i32 0, i32 1
  %90 = ptrtoint ptr %clk.i849 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %clk.i849, align 4
  br label %to_clk.exit852

to_clk.exit852:                                   ; preds = %if.end.i850, %to_clk.exit844.to_clk.exit852_crit_edge
  %retval.0.i851 = phi ptr [ %91, %if.end.i850 ], [ %call.i845, %to_clk.exit844.to_clk.exit852_crit_edge ]
  store ptr %retval.0.i851, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 32), align 4
  %call.i853 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.25, i32 noundef 4, ptr noundef %add.ptr32, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i854 = icmp eq ptr %call.i853, null
  %cmp.i.i855 = icmp ugt ptr %call.i853, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i856 = or i1 %tobool.not.i.i854, %cmp.i.i855
  br i1 %spec.select.i.i856, label %to_clk.exit852.to_clk.exit860_crit_edge, label %if.end.i858

to_clk.exit852.to_clk.exit860_crit_edge:          ; preds = %to_clk.exit852
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit860

if.end.i858:                                      ; preds = %to_clk.exit852
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i857 = getelementptr inbounds %struct.clk_hw, ptr %call.i853, i32 0, i32 1
  %92 = ptrtoint ptr %clk.i857 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %clk.i857, align 4
  br label %to_clk.exit860

to_clk.exit860:                                   ; preds = %if.end.i858, %to_clk.exit852.to_clk.exit860_crit_edge
  %retval.0.i859 = phi ptr [ %93, %if.end.i858 ], [ %call.i853, %to_clk.exit852.to_clk.exit860_crit_edge ]
  store ptr %retval.0.i859, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 33), align 4
  %call.i861 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %add.ptr32, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i862 = icmp eq ptr %call.i861, null
  %cmp.i.i863 = icmp ugt ptr %call.i861, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i864 = or i1 %tobool.not.i.i862, %cmp.i.i863
  br i1 %spec.select.i.i864, label %to_clk.exit860.to_clk.exit868_crit_edge, label %if.end.i866

to_clk.exit860.to_clk.exit868_crit_edge:          ; preds = %to_clk.exit860
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit868

if.end.i866:                                      ; preds = %to_clk.exit860
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i865 = getelementptr inbounds %struct.clk_hw, ptr %call.i861, i32 0, i32 1
  %94 = ptrtoint ptr %clk.i865 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %clk.i865, align 4
  br label %to_clk.exit868

to_clk.exit868:                                   ; preds = %if.end.i866, %to_clk.exit860.to_clk.exit868_crit_edge
  %retval.0.i867 = phi ptr [ %95, %if.end.i866 ], [ %call.i861, %to_clk.exit860.to_clk.exit868_crit_edge ]
  store ptr %retval.0.i867, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 34), align 4
  %call.i869 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %add.ptr32, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i870 = icmp eq ptr %call.i869, null
  %cmp.i.i871 = icmp ugt ptr %call.i869, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i872 = or i1 %tobool.not.i.i870, %cmp.i.i871
  br i1 %spec.select.i.i872, label %to_clk.exit868.to_clk.exit876_crit_edge, label %if.end.i874

to_clk.exit868.to_clk.exit876_crit_edge:          ; preds = %to_clk.exit868
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit876

if.end.i874:                                      ; preds = %to_clk.exit868
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i873 = getelementptr inbounds %struct.clk_hw, ptr %call.i869, i32 0, i32 1
  %96 = ptrtoint ptr %clk.i873 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %clk.i873, align 4
  br label %to_clk.exit876

to_clk.exit876:                                   ; preds = %if.end.i874, %to_clk.exit868.to_clk.exit876_crit_edge
  %retval.0.i875 = phi ptr [ %97, %if.end.i874 ], [ %call.i869, %to_clk.exit868.to_clk.exit876_crit_edge ]
  store ptr %retval.0.i875, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 35), align 4
  %add.ptr149 = getelementptr i8, ptr %ccm_base, i32 112
  %call.i877 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr149, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i878 = icmp eq ptr %call.i877, null
  %cmp.i.i879 = icmp ugt ptr %call.i877, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i880 = or i1 %tobool.not.i.i878, %cmp.i.i879
  br i1 %spec.select.i.i880, label %to_clk.exit876.to_clk.exit884_crit_edge, label %if.end.i882

to_clk.exit876.to_clk.exit884_crit_edge:          ; preds = %to_clk.exit876
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit884

if.end.i882:                                      ; preds = %to_clk.exit876
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i881 = getelementptr inbounds %struct.clk_hw, ptr %call.i877, i32 0, i32 1
  %98 = ptrtoint ptr %clk.i881 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %clk.i881, align 4
  br label %to_clk.exit884

to_clk.exit884:                                   ; preds = %if.end.i882, %to_clk.exit876.to_clk.exit884_crit_edge
  %retval.0.i883 = phi ptr [ %99, %if.end.i882 ], [ %call.i877, %to_clk.exit876.to_clk.exit884_crit_edge ]
  store ptr %retval.0.i883, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 37), align 4
  %call.i885 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %add.ptr149, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i886 = icmp eq ptr %call.i885, null
  %cmp.i.i887 = icmp ugt ptr %call.i885, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i888 = or i1 %tobool.not.i.i886, %cmp.i.i887
  br i1 %spec.select.i.i888, label %to_clk.exit884.to_clk.exit892_crit_edge, label %if.end.i890

to_clk.exit884.to_clk.exit892_crit_edge:          ; preds = %to_clk.exit884
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit892

if.end.i890:                                      ; preds = %to_clk.exit884
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i889 = getelementptr inbounds %struct.clk_hw, ptr %call.i885, i32 0, i32 1
  %100 = ptrtoint ptr %clk.i889 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %clk.i889, align 4
  br label %to_clk.exit892

to_clk.exit892:                                   ; preds = %if.end.i890, %to_clk.exit884.to_clk.exit892_crit_edge
  %retval.0.i891 = phi ptr [ %101, %if.end.i890 ], [ %call.i885, %to_clk.exit884.to_clk.exit892_crit_edge ]
  store ptr %retval.0.i891, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 38), align 4
  %call.i893 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr149, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i894 = icmp eq ptr %call.i893, null
  %cmp.i.i895 = icmp ugt ptr %call.i893, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i896 = or i1 %tobool.not.i.i894, %cmp.i.i895
  br i1 %spec.select.i.i896, label %to_clk.exit892.to_clk.exit900_crit_edge, label %if.end.i898

to_clk.exit892.to_clk.exit900_crit_edge:          ; preds = %to_clk.exit892
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit900

if.end.i898:                                      ; preds = %to_clk.exit892
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i897 = getelementptr inbounds %struct.clk_hw, ptr %call.i893, i32 0, i32 1
  %102 = ptrtoint ptr %clk.i897 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %clk.i897, align 4
  br label %to_clk.exit900

to_clk.exit900:                                   ; preds = %if.end.i898, %to_clk.exit892.to_clk.exit900_crit_edge
  %retval.0.i899 = phi ptr [ %103, %if.end.i898 ], [ %call.i893, %to_clk.exit892.to_clk.exit900_crit_edge ]
  store ptr %retval.0.i899, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 39), align 4
  %call.i901 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %add.ptr149, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i902 = icmp eq ptr %call.i901, null
  %cmp.i.i903 = icmp ugt ptr %call.i901, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i904 = or i1 %tobool.not.i.i902, %cmp.i.i903
  br i1 %spec.select.i.i904, label %to_clk.exit900.to_clk.exit908_crit_edge, label %if.end.i906

to_clk.exit900.to_clk.exit908_crit_edge:          ; preds = %to_clk.exit900
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit908

if.end.i906:                                      ; preds = %to_clk.exit900
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i905 = getelementptr inbounds %struct.clk_hw, ptr %call.i901, i32 0, i32 1
  %104 = ptrtoint ptr %clk.i905 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %clk.i905, align 4
  br label %to_clk.exit908

to_clk.exit908:                                   ; preds = %if.end.i906, %to_clk.exit900.to_clk.exit908_crit_edge
  %retval.0.i907 = phi ptr [ %105, %if.end.i906 ], [ %call.i901, %to_clk.exit900.to_clk.exit908_crit_edge ]
  store ptr %retval.0.i907, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 40), align 4
  %call.i909 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr149, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i910 = icmp eq ptr %call.i909, null
  %cmp.i.i911 = icmp ugt ptr %call.i909, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i912 = or i1 %tobool.not.i.i910, %cmp.i.i911
  br i1 %spec.select.i.i912, label %to_clk.exit908.to_clk.exit916_crit_edge, label %if.end.i914

to_clk.exit908.to_clk.exit916_crit_edge:          ; preds = %to_clk.exit908
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit916

if.end.i914:                                      ; preds = %to_clk.exit908
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i913 = getelementptr inbounds %struct.clk_hw, ptr %call.i909, i32 0, i32 1
  %106 = ptrtoint ptr %clk.i913 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %clk.i913, align 4
  br label %to_clk.exit916

to_clk.exit916:                                   ; preds = %if.end.i914, %to_clk.exit908.to_clk.exit916_crit_edge
  %retval.0.i915 = phi ptr [ %107, %if.end.i914 ], [ %call.i909, %to_clk.exit908.to_clk.exit916_crit_edge ]
  store ptr %retval.0.i915, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 36), align 4
  %call.i917 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %add.ptr149, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i918 = icmp eq ptr %call.i917, null
  %cmp.i.i919 = icmp ugt ptr %call.i917, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i920 = or i1 %tobool.not.i.i918, %cmp.i.i919
  br i1 %spec.select.i.i920, label %to_clk.exit916.to_clk.exit924_crit_edge, label %if.end.i922

to_clk.exit916.to_clk.exit924_crit_edge:          ; preds = %to_clk.exit916
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit924

if.end.i922:                                      ; preds = %to_clk.exit916
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i921 = getelementptr inbounds %struct.clk_hw, ptr %call.i917, i32 0, i32 1
  %108 = ptrtoint ptr %clk.i921 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %clk.i921, align 4
  br label %to_clk.exit924

to_clk.exit924:                                   ; preds = %if.end.i922, %to_clk.exit916.to_clk.exit924_crit_edge
  %retval.0.i923 = phi ptr [ %109, %if.end.i922 ], [ %call.i917, %to_clk.exit916.to_clk.exit924_crit_edge ]
  store ptr %retval.0.i923, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 41), align 4
  %call.i925 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr149, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i926 = icmp eq ptr %call.i925, null
  %cmp.i.i927 = icmp ugt ptr %call.i925, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i928 = or i1 %tobool.not.i.i926, %cmp.i.i927
  br i1 %spec.select.i.i928, label %to_clk.exit924.to_clk.exit932_crit_edge, label %if.end.i930

to_clk.exit924.to_clk.exit932_crit_edge:          ; preds = %to_clk.exit924
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit932

if.end.i930:                                      ; preds = %to_clk.exit924
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i929 = getelementptr inbounds %struct.clk_hw, ptr %call.i925, i32 0, i32 1
  %110 = ptrtoint ptr %clk.i929 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %clk.i929, align 4
  br label %to_clk.exit932

to_clk.exit932:                                   ; preds = %if.end.i930, %to_clk.exit924.to_clk.exit932_crit_edge
  %retval.0.i931 = phi ptr [ %111, %if.end.i930 ], [ %call.i925, %to_clk.exit924.to_clk.exit932_crit_edge ]
  store ptr %retval.0.i931, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 42), align 4
  %call.i933 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr149, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i934 = icmp eq ptr %call.i933, null
  %cmp.i.i935 = icmp ugt ptr %call.i933, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i936 = or i1 %tobool.not.i.i934, %cmp.i.i935
  br i1 %spec.select.i.i936, label %to_clk.exit932.to_clk.exit940_crit_edge, label %if.end.i938

to_clk.exit932.to_clk.exit940_crit_edge:          ; preds = %to_clk.exit932
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit940

if.end.i938:                                      ; preds = %to_clk.exit932
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i937 = getelementptr inbounds %struct.clk_hw, ptr %call.i933, i32 0, i32 1
  %112 = ptrtoint ptr %clk.i937 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %clk.i937, align 4
  br label %to_clk.exit940

to_clk.exit940:                                   ; preds = %if.end.i938, %to_clk.exit932.to_clk.exit940_crit_edge
  %retval.0.i939 = phi ptr [ %113, %if.end.i938 ], [ %call.i933, %to_clk.exit932.to_clk.exit940_crit_edge ]
  store ptr %retval.0.i939, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 108), align 4
  %call.i941 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.65, i32 noundef 4, ptr noundef %add.ptr149, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i942 = icmp eq ptr %call.i941, null
  %cmp.i.i943 = icmp ugt ptr %call.i941, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i944 = or i1 %tobool.not.i.i942, %cmp.i.i943
  br i1 %spec.select.i.i944, label %to_clk.exit940.to_clk.exit948_crit_edge, label %if.end.i946

to_clk.exit940.to_clk.exit948_crit_edge:          ; preds = %to_clk.exit940
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit948

if.end.i946:                                      ; preds = %to_clk.exit940
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i945 = getelementptr inbounds %struct.clk_hw, ptr %call.i941, i32 0, i32 1
  %114 = ptrtoint ptr %clk.i945 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %clk.i945, align 4
  br label %to_clk.exit948

to_clk.exit948:                                   ; preds = %if.end.i946, %to_clk.exit940.to_clk.exit948_crit_edge
  %retval.0.i947 = phi ptr [ %115, %if.end.i946 ], [ %call.i941, %to_clk.exit940.to_clk.exit948_crit_edge ]
  store ptr %retval.0.i947, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 43), align 4
  %add.ptr176 = getelementptr i8, ptr %ccm_base, i32 116
  %call.i949 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr176, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i950 = icmp eq ptr %call.i949, null
  %cmp.i.i951 = icmp ugt ptr %call.i949, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i952 = or i1 %tobool.not.i.i950, %cmp.i.i951
  br i1 %spec.select.i.i952, label %to_clk.exit948.to_clk.exit956_crit_edge, label %if.end.i954

to_clk.exit948.to_clk.exit956_crit_edge:          ; preds = %to_clk.exit948
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit956

if.end.i954:                                      ; preds = %to_clk.exit948
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i953 = getelementptr inbounds %struct.clk_hw, ptr %call.i949, i32 0, i32 1
  %116 = ptrtoint ptr %clk.i953 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %clk.i953, align 4
  br label %to_clk.exit956

to_clk.exit956:                                   ; preds = %if.end.i954, %to_clk.exit948.to_clk.exit956_crit_edge
  %retval.0.i955 = phi ptr [ %117, %if.end.i954 ], [ %call.i949, %to_clk.exit948.to_clk.exit956_crit_edge ]
  store ptr %retval.0.i955, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 44), align 4
  %call.i957 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr176, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i958 = icmp eq ptr %call.i957, null
  %cmp.i.i959 = icmp ugt ptr %call.i957, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i960 = or i1 %tobool.not.i.i958, %cmp.i.i959
  br i1 %spec.select.i.i960, label %to_clk.exit956.to_clk.exit964_crit_edge, label %if.end.i962

to_clk.exit956.to_clk.exit964_crit_edge:          ; preds = %to_clk.exit956
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit964

if.end.i962:                                      ; preds = %to_clk.exit956
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i961 = getelementptr inbounds %struct.clk_hw, ptr %call.i957, i32 0, i32 1
  %118 = ptrtoint ptr %clk.i961 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %clk.i961, align 4
  br label %to_clk.exit964

to_clk.exit964:                                   ; preds = %if.end.i962, %to_clk.exit956.to_clk.exit964_crit_edge
  %retval.0.i963 = phi ptr [ %119, %if.end.i962 ], [ %call.i957, %to_clk.exit956.to_clk.exit964_crit_edge ]
  store ptr %retval.0.i963, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 45), align 4
  %call.i965 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr176, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i966 = icmp eq ptr %call.i965, null
  %cmp.i.i967 = icmp ugt ptr %call.i965, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i968 = or i1 %tobool.not.i.i966, %cmp.i.i967
  br i1 %spec.select.i.i968, label %to_clk.exit964.to_clk.exit972_crit_edge, label %if.end.i970

to_clk.exit964.to_clk.exit972_crit_edge:          ; preds = %to_clk.exit964
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit972

if.end.i970:                                      ; preds = %to_clk.exit964
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i969 = getelementptr inbounds %struct.clk_hw, ptr %call.i965, i32 0, i32 1
  %120 = ptrtoint ptr %clk.i969 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %clk.i969, align 4
  br label %to_clk.exit972

to_clk.exit972:                                   ; preds = %if.end.i970, %to_clk.exit964.to_clk.exit972_crit_edge
  %retval.0.i971 = phi ptr [ %121, %if.end.i970 ], [ %call.i965, %to_clk.exit964.to_clk.exit972_crit_edge ]
  store ptr %retval.0.i971, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 46), align 4
  %call.i973 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr176, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i974 = icmp eq ptr %call.i973, null
  %cmp.i.i975 = icmp ugt ptr %call.i973, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i976 = or i1 %tobool.not.i.i974, %cmp.i.i975
  br i1 %spec.select.i.i976, label %to_clk.exit972.to_clk.exit980_crit_edge, label %if.end.i978

to_clk.exit972.to_clk.exit980_crit_edge:          ; preds = %to_clk.exit972
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit980

if.end.i978:                                      ; preds = %to_clk.exit972
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i977 = getelementptr inbounds %struct.clk_hw, ptr %call.i973, i32 0, i32 1
  %122 = ptrtoint ptr %clk.i977 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %clk.i977, align 4
  br label %to_clk.exit980

to_clk.exit980:                                   ; preds = %if.end.i978, %to_clk.exit972.to_clk.exit980_crit_edge
  %retval.0.i979 = phi ptr [ %123, %if.end.i978 ], [ %call.i973, %to_clk.exit972.to_clk.exit980_crit_edge ]
  store ptr %retval.0.i979, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 47), align 4
  %call.i981 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr176, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i982 = icmp eq ptr %call.i981, null
  %cmp.i.i983 = icmp ugt ptr %call.i981, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i984 = or i1 %tobool.not.i.i982, %cmp.i.i983
  br i1 %spec.select.i.i984, label %to_clk.exit980.to_clk.exit988_crit_edge, label %if.end.i986

to_clk.exit980.to_clk.exit988_crit_edge:          ; preds = %to_clk.exit980
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit988

if.end.i986:                                      ; preds = %to_clk.exit980
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i985 = getelementptr inbounds %struct.clk_hw, ptr %call.i981, i32 0, i32 1
  %124 = ptrtoint ptr %clk.i985 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %clk.i985, align 4
  br label %to_clk.exit988

to_clk.exit988:                                   ; preds = %if.end.i986, %to_clk.exit980.to_clk.exit988_crit_edge
  %retval.0.i987 = phi ptr [ %125, %if.end.i986 ], [ %call.i981, %to_clk.exit980.to_clk.exit988_crit_edge ]
  store ptr %retval.0.i987, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 48), align 4
  %call.i989 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr176, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i990 = icmp eq ptr %call.i989, null
  %cmp.i.i991 = icmp ugt ptr %call.i989, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i992 = or i1 %tobool.not.i.i990, %cmp.i.i991
  br i1 %spec.select.i.i992, label %to_clk.exit988.to_clk.exit996_crit_edge, label %if.end.i994

to_clk.exit988.to_clk.exit996_crit_edge:          ; preds = %to_clk.exit988
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit996

if.end.i994:                                      ; preds = %to_clk.exit988
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i993 = getelementptr inbounds %struct.clk_hw, ptr %call.i989, i32 0, i32 1
  %126 = ptrtoint ptr %clk.i993 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %clk.i993, align 4
  br label %to_clk.exit996

to_clk.exit996:                                   ; preds = %if.end.i994, %to_clk.exit988.to_clk.exit996_crit_edge
  %retval.0.i995 = phi ptr [ %127, %if.end.i994 ], [ %call.i989, %to_clk.exit988.to_clk.exit996_crit_edge ]
  store ptr %retval.0.i995, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 49), align 4
  %call.i997 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr176, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i998 = icmp eq ptr %call.i997, null
  %cmp.i.i999 = icmp ugt ptr %call.i997, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1000 = or i1 %tobool.not.i.i998, %cmp.i.i999
  br i1 %spec.select.i.i1000, label %to_clk.exit996.to_clk.exit1004_crit_edge, label %if.end.i1002

to_clk.exit996.to_clk.exit1004_crit_edge:         ; preds = %to_clk.exit996
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1004

if.end.i1002:                                     ; preds = %to_clk.exit996
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1001 = getelementptr inbounds %struct.clk_hw, ptr %call.i997, i32 0, i32 1
  %128 = ptrtoint ptr %clk.i1001 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %clk.i1001, align 4
  br label %to_clk.exit1004

to_clk.exit1004:                                  ; preds = %if.end.i1002, %to_clk.exit996.to_clk.exit1004_crit_edge
  %retval.0.i1003 = phi ptr [ %129, %if.end.i1002 ], [ %call.i997, %to_clk.exit996.to_clk.exit1004_crit_edge ]
  store ptr %retval.0.i1003, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 50), align 4
  %add.ptr197 = getelementptr i8, ptr %ccm_base, i32 120
  %call.i1005 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr197, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1006 = icmp eq ptr %call.i1005, null
  %cmp.i.i1007 = icmp ugt ptr %call.i1005, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1008 = or i1 %tobool.not.i.i1006, %cmp.i.i1007
  br i1 %spec.select.i.i1008, label %to_clk.exit1004.to_clk.exit1012_crit_edge, label %if.end.i1010

to_clk.exit1004.to_clk.exit1012_crit_edge:        ; preds = %to_clk.exit1004
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1012

if.end.i1010:                                     ; preds = %to_clk.exit1004
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1009 = getelementptr inbounds %struct.clk_hw, ptr %call.i1005, i32 0, i32 1
  %130 = ptrtoint ptr %clk.i1009 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %clk.i1009, align 4
  br label %to_clk.exit1012

to_clk.exit1012:                                  ; preds = %if.end.i1010, %to_clk.exit1004.to_clk.exit1012_crit_edge
  %retval.0.i1011 = phi ptr [ %131, %if.end.i1010 ], [ %call.i1005, %to_clk.exit1004.to_clk.exit1012_crit_edge ]
  store ptr %retval.0.i1011, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 51), align 4
  %call.i1013 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef %add.ptr197, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1014 = icmp eq ptr %call.i1013, null
  %cmp.i.i1015 = icmp ugt ptr %call.i1013, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1016 = or i1 %tobool.not.i.i1014, %cmp.i.i1015
  br i1 %spec.select.i.i1016, label %to_clk.exit1012.to_clk.exit1020_crit_edge, label %if.end.i1018

to_clk.exit1012.to_clk.exit1020_crit_edge:        ; preds = %to_clk.exit1012
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1020

if.end.i1018:                                     ; preds = %to_clk.exit1012
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1017 = getelementptr inbounds %struct.clk_hw, ptr %call.i1013, i32 0, i32 1
  %132 = ptrtoint ptr %clk.i1017 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %clk.i1017, align 4
  br label %to_clk.exit1020

to_clk.exit1020:                                  ; preds = %if.end.i1018, %to_clk.exit1012.to_clk.exit1020_crit_edge
  %retval.0.i1019 = phi ptr [ %133, %if.end.i1018 ], [ %call.i1013, %to_clk.exit1012.to_clk.exit1020_crit_edge ]
  store ptr %retval.0.i1019, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 52), align 4
  %call.i1021 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr197, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1022 = icmp eq ptr %call.i1021, null
  %cmp.i.i1023 = icmp ugt ptr %call.i1021, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1024 = or i1 %tobool.not.i.i1022, %cmp.i.i1023
  br i1 %spec.select.i.i1024, label %to_clk.exit1020.to_clk.exit1028_crit_edge, label %if.end.i1026

to_clk.exit1020.to_clk.exit1028_crit_edge:        ; preds = %to_clk.exit1020
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1028

if.end.i1026:                                     ; preds = %to_clk.exit1020
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1025 = getelementptr inbounds %struct.clk_hw, ptr %call.i1021, i32 0, i32 1
  %134 = ptrtoint ptr %clk.i1025 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %clk.i1025, align 4
  br label %to_clk.exit1028

to_clk.exit1028:                                  ; preds = %if.end.i1026, %to_clk.exit1020.to_clk.exit1028_crit_edge
  %retval.0.i1027 = phi ptr [ %135, %if.end.i1026 ], [ %call.i1021, %to_clk.exit1020.to_clk.exit1028_crit_edge ]
  store ptr %retval.0.i1027, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 53), align 4
  %call.i1029 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef %add.ptr197, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1030 = icmp eq ptr %call.i1029, null
  %cmp.i.i1031 = icmp ugt ptr %call.i1029, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1032 = or i1 %tobool.not.i.i1030, %cmp.i.i1031
  br i1 %spec.select.i.i1032, label %to_clk.exit1028.to_clk.exit1036_crit_edge, label %if.end.i1034

to_clk.exit1028.to_clk.exit1036_crit_edge:        ; preds = %to_clk.exit1028
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1036

if.end.i1034:                                     ; preds = %to_clk.exit1028
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1033 = getelementptr inbounds %struct.clk_hw, ptr %call.i1029, i32 0, i32 1
  %136 = ptrtoint ptr %clk.i1033 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %clk.i1033, align 4
  br label %to_clk.exit1036

to_clk.exit1036:                                  ; preds = %if.end.i1034, %to_clk.exit1028.to_clk.exit1036_crit_edge
  %retval.0.i1035 = phi ptr [ %137, %if.end.i1034 ], [ %call.i1029, %to_clk.exit1028.to_clk.exit1036_crit_edge ]
  store ptr %retval.0.i1035, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 54), align 4
  %call.i1037 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr197, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1038 = icmp eq ptr %call.i1037, null
  %cmp.i.i1039 = icmp ugt ptr %call.i1037, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1040 = or i1 %tobool.not.i.i1038, %cmp.i.i1039
  br i1 %spec.select.i.i1040, label %to_clk.exit1036.to_clk.exit1044_crit_edge, label %if.end.i1042

to_clk.exit1036.to_clk.exit1044_crit_edge:        ; preds = %to_clk.exit1036
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1044

if.end.i1042:                                     ; preds = %to_clk.exit1036
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1041 = getelementptr inbounds %struct.clk_hw, ptr %call.i1037, i32 0, i32 1
  %138 = ptrtoint ptr %clk.i1041 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %clk.i1041, align 4
  br label %to_clk.exit1044

to_clk.exit1044:                                  ; preds = %if.end.i1042, %to_clk.exit1036.to_clk.exit1044_crit_edge
  %retval.0.i1043 = phi ptr [ %139, %if.end.i1042 ], [ %call.i1037, %to_clk.exit1036.to_clk.exit1044_crit_edge ]
  store ptr %retval.0.i1043, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 55), align 4
  %call.i1045 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr197, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1046 = icmp eq ptr %call.i1045, null
  %cmp.i.i1047 = icmp ugt ptr %call.i1045, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1048 = or i1 %tobool.not.i.i1046, %cmp.i.i1047
  br i1 %spec.select.i.i1048, label %to_clk.exit1044.to_clk.exit1052_crit_edge, label %if.end.i1050

to_clk.exit1044.to_clk.exit1052_crit_edge:        ; preds = %to_clk.exit1044
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1052

if.end.i1050:                                     ; preds = %to_clk.exit1044
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1049 = getelementptr inbounds %struct.clk_hw, ptr %call.i1045, i32 0, i32 1
  %140 = ptrtoint ptr %clk.i1049 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %clk.i1049, align 4
  br label %to_clk.exit1052

to_clk.exit1052:                                  ; preds = %if.end.i1050, %to_clk.exit1044.to_clk.exit1052_crit_edge
  %retval.0.i1051 = phi ptr [ %141, %if.end.i1050 ], [ %call.i1045, %to_clk.exit1044.to_clk.exit1052_crit_edge ]
  store ptr %retval.0.i1051, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 56), align 4
  %call.i1053 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.35, i32 noundef 2052, ptr noundef %add.ptr41, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1054 = icmp eq ptr %call.i1053, null
  %cmp.i.i1055 = icmp ugt ptr %call.i1053, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1056 = or i1 %tobool.not.i.i1054, %cmp.i.i1055
  br i1 %spec.select.i.i1056, label %to_clk.exit1052.to_clk.exit1060_crit_edge, label %if.end.i1058

to_clk.exit1052.to_clk.exit1060_crit_edge:        ; preds = %to_clk.exit1052
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1060

if.end.i1058:                                     ; preds = %to_clk.exit1052
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1057 = getelementptr inbounds %struct.clk_hw, ptr %call.i1053, i32 0, i32 1
  %142 = ptrtoint ptr %clk.i1057 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %clk.i1057, align 4
  br label %to_clk.exit1060

to_clk.exit1060:                                  ; preds = %if.end.i1058, %to_clk.exit1052.to_clk.exit1060_crit_edge
  %retval.0.i1059 = phi ptr [ %143, %if.end.i1058 ], [ %call.i1053, %to_clk.exit1052.to_clk.exit1060_crit_edge ]
  store ptr %retval.0.i1059, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 109), align 4
  %call.i1061 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.58, i32 noundef 2052, ptr noundef %add.ptr41, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1062 = icmp eq ptr %call.i1061, null
  %cmp.i.i1063 = icmp ugt ptr %call.i1061, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1064 = or i1 %tobool.not.i.i1062, %cmp.i.i1063
  br i1 %spec.select.i.i1064, label %to_clk.exit1060.to_clk.exit1068_crit_edge, label %if.end.i1066

to_clk.exit1060.to_clk.exit1068_crit_edge:        ; preds = %to_clk.exit1060
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1068

if.end.i1066:                                     ; preds = %to_clk.exit1060
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1065 = getelementptr inbounds %struct.clk_hw, ptr %call.i1061, i32 0, i32 1
  %144 = ptrtoint ptr %clk.i1065 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %clk.i1065, align 4
  br label %to_clk.exit1068

to_clk.exit1068:                                  ; preds = %if.end.i1066, %to_clk.exit1060.to_clk.exit1068_crit_edge
  %retval.0.i1067 = phi ptr [ %145, %if.end.i1066 ], [ %call.i1061, %to_clk.exit1060.to_clk.exit1068_crit_edge ]
  store ptr %retval.0.i1067, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 57), align 4
  %call.i1069 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.105, i8 noundef zeroext 4, ptr noundef nonnull @ipu_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr, i8 noundef zeroext 6, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1070 = icmp eq ptr %call.i1069, null
  %cmp.i.i1071 = icmp ugt ptr %call.i1069, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1072 = or i1 %tobool.not.i.i1070, %cmp.i.i1071
  br i1 %spec.select.i.i1072, label %to_clk.exit1068.to_clk.exit1076_crit_edge, label %if.end.i1074

to_clk.exit1068.to_clk.exit1076_crit_edge:        ; preds = %to_clk.exit1068
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1076

if.end.i1074:                                     ; preds = %to_clk.exit1068
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1073 = getelementptr inbounds %struct.clk_hw, ptr %call.i1069, i32 0, i32 1
  %146 = ptrtoint ptr %clk.i1073 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %clk.i1073, align 4
  br label %to_clk.exit1076

to_clk.exit1076:                                  ; preds = %if.end.i1074, %to_clk.exit1068.to_clk.exit1076_crit_edge
  %retval.0.i1075 = phi ptr [ %147, %if.end.i1074 ], [ %call.i1069, %to_clk.exit1068.to_clk.exit1076_crit_edge ]
  store ptr %retval.0.i1075, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 58), align 4
  %call.i1077 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %add.ptr41, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1078 = icmp eq ptr %call.i1077, null
  %cmp.i.i1079 = icmp ugt ptr %call.i1077, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1080 = or i1 %tobool.not.i.i1078, %cmp.i.i1079
  br i1 %spec.select.i.i1080, label %to_clk.exit1076.to_clk.exit1084_crit_edge, label %if.end.i1082

to_clk.exit1076.to_clk.exit1084_crit_edge:        ; preds = %to_clk.exit1076
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1084

if.end.i1082:                                     ; preds = %to_clk.exit1076
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1081 = getelementptr inbounds %struct.clk_hw, ptr %call.i1077, i32 0, i32 1
  %148 = ptrtoint ptr %clk.i1081 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %clk.i1081, align 4
  br label %to_clk.exit1084

to_clk.exit1084:                                  ; preds = %if.end.i1082, %to_clk.exit1076.to_clk.exit1084_crit_edge
  %retval.0.i1083 = phi ptr [ %149, %if.end.i1082 ], [ %call.i1077, %to_clk.exit1076.to_clk.exit1084_crit_edge ]
  store ptr %retval.0.i1083, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 59), align 4
  %call.i1085 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.59, i32 noundef 4, ptr noundef %add.ptr41, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1086 = icmp eq ptr %call.i1085, null
  %cmp.i.i1087 = icmp ugt ptr %call.i1085, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1088 = or i1 %tobool.not.i.i1086, %cmp.i.i1087
  br i1 %spec.select.i.i1088, label %to_clk.exit1084.to_clk.exit1092_crit_edge, label %if.end.i1090

to_clk.exit1084.to_clk.exit1092_crit_edge:        ; preds = %to_clk.exit1084
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1092

if.end.i1090:                                     ; preds = %to_clk.exit1084
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1089 = getelementptr inbounds %struct.clk_hw, ptr %call.i1085, i32 0, i32 1
  %150 = ptrtoint ptr %clk.i1089 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %clk.i1089, align 4
  br label %to_clk.exit1092

to_clk.exit1092:                                  ; preds = %if.end.i1090, %to_clk.exit1084.to_clk.exit1092_crit_edge
  %retval.0.i1091 = phi ptr [ %151, %if.end.i1090 ], [ %call.i1085, %to_clk.exit1084.to_clk.exit1092_crit_edge ]
  store ptr %retval.0.i1091, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 60), align 4
  %add.ptr230 = getelementptr i8, ptr %ccm_base, i32 128
  %call.i1093 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i32 noundef 4, ptr noundef %add.ptr230, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1094 = icmp eq ptr %call.i1093, null
  %cmp.i.i1095 = icmp ugt ptr %call.i1093, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1096 = or i1 %tobool.not.i.i1094, %cmp.i.i1095
  br i1 %spec.select.i.i1096, label %to_clk.exit1092.to_clk.exit1100_crit_edge, label %if.end.i1098

to_clk.exit1092.to_clk.exit1100_crit_edge:        ; preds = %to_clk.exit1092
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1100

if.end.i1098:                                     ; preds = %to_clk.exit1092
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1097 = getelementptr inbounds %struct.clk_hw, ptr %call.i1093, i32 0, i32 1
  %152 = ptrtoint ptr %clk.i1097 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %clk.i1097, align 4
  br label %to_clk.exit1100

to_clk.exit1100:                                  ; preds = %if.end.i1098, %to_clk.exit1092.to_clk.exit1100_crit_edge
  %retval.0.i1099 = phi ptr [ %153, %if.end.i1098 ], [ %call.i1093, %to_clk.exit1092.to_clk.exit1100_crit_edge ]
  store ptr %retval.0.i1099, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 110), align 4
  %call.i1101 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i32 noundef 4, ptr noundef %add.ptr230, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1102 = icmp eq ptr %call.i1101, null
  %cmp.i.i1103 = icmp ugt ptr %call.i1101, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1104 = or i1 %tobool.not.i.i1102, %cmp.i.i1103
  br i1 %spec.select.i.i1104, label %to_clk.exit1100.to_clk.exit1108_crit_edge, label %if.end.i1106

to_clk.exit1100.to_clk.exit1108_crit_edge:        ; preds = %to_clk.exit1100
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1108

if.end.i1106:                                     ; preds = %to_clk.exit1100
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1105 = getelementptr inbounds %struct.clk_hw, ptr %call.i1101, i32 0, i32 1
  %154 = ptrtoint ptr %clk.i1105 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %clk.i1105, align 4
  br label %to_clk.exit1108

to_clk.exit1108:                                  ; preds = %if.end.i1106, %to_clk.exit1100.to_clk.exit1108_crit_edge
  %retval.0.i1107 = phi ptr [ %155, %if.end.i1106 ], [ %call.i1101, %to_clk.exit1100.to_clk.exit1108_crit_edge ]
  store ptr %retval.0.i1107, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 61), align 4
  %call.i1109 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.112, i8 noundef zeroext 4, ptr noundef nonnull @gpu3d_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1110 = icmp eq ptr %call.i1109, null
  %cmp.i.i1111 = icmp ugt ptr %call.i1109, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1112 = or i1 %tobool.not.i.i1110, %cmp.i.i1111
  br i1 %spec.select.i.i1112, label %to_clk.exit1108.to_clk.exit1116_crit_edge, label %if.end.i1114

to_clk.exit1108.to_clk.exit1116_crit_edge:        ; preds = %to_clk.exit1108
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1116

if.end.i1114:                                     ; preds = %to_clk.exit1108
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1113 = getelementptr inbounds %struct.clk_hw, ptr %call.i1109, i32 0, i32 1
  %156 = ptrtoint ptr %clk.i1113 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %clk.i1113, align 4
  br label %to_clk.exit1116

to_clk.exit1116:                                  ; preds = %if.end.i1114, %to_clk.exit1108.to_clk.exit1116_crit_edge
  %retval.0.i1115 = phi ptr [ %157, %if.end.i1114 ], [ %call.i1109, %to_clk.exit1108.to_clk.exit1116_crit_edge ]
  store ptr %retval.0.i1115, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 160), align 4
  %call.i1117 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.113, i8 noundef zeroext 4, ptr noundef nonnull @gpu2d_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1118 = icmp eq ptr %call.i1117, null
  %cmp.i.i1119 = icmp ugt ptr %call.i1117, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1120 = or i1 %tobool.not.i.i1118, %cmp.i.i1119
  br i1 %spec.select.i.i1120, label %to_clk.exit1116.to_clk.exit1124_crit_edge, label %if.end.i1122

to_clk.exit1116.to_clk.exit1124_crit_edge:        ; preds = %to_clk.exit1116
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1124

if.end.i1122:                                     ; preds = %to_clk.exit1116
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1121 = getelementptr inbounds %struct.clk_hw, ptr %call.i1117, i32 0, i32 1
  %158 = ptrtoint ptr %clk.i1121 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %clk.i1121, align 4
  br label %to_clk.exit1124

to_clk.exit1124:                                  ; preds = %if.end.i1122, %to_clk.exit1116.to_clk.exit1124_crit_edge
  %retval.0.i1123 = phi ptr [ %159, %if.end.i1122 ], [ %call.i1117, %to_clk.exit1116.to_clk.exit1124_crit_edge ]
  store ptr %retval.0.i1123, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 161), align 4
  %call.i1125 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr41, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1126 = icmp eq ptr %call.i1125, null
  %cmp.i.i1127 = icmp ugt ptr %call.i1125, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1128 = or i1 %tobool.not.i.i1126, %cmp.i.i1127
  br i1 %spec.select.i.i1128, label %to_clk.exit1124.to_clk.exit1132_crit_edge, label %if.end.i1130

to_clk.exit1124.to_clk.exit1132_crit_edge:        ; preds = %to_clk.exit1124
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1132

if.end.i1130:                                     ; preds = %to_clk.exit1124
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1129 = getelementptr inbounds %struct.clk_hw, ptr %call.i1125, i32 0, i32 1
  %160 = ptrtoint ptr %clk.i1129 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %clk.i1129, align 4
  br label %to_clk.exit1132

to_clk.exit1132:                                  ; preds = %if.end.i1130, %to_clk.exit1124.to_clk.exit1132_crit_edge
  %retval.0.i1131 = phi ptr [ %161, %if.end.i1130 ], [ %call.i1125, %to_clk.exit1124.to_clk.exit1132_crit_edge ]
  store ptr %retval.0.i1131, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 162), align 4
  %call.i1133 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.51, i32 noundef 4, ptr noundef %add.ptr41, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1134 = icmp eq ptr %call.i1133, null
  %cmp.i.i1135 = icmp ugt ptr %call.i1133, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1136 = or i1 %tobool.not.i.i1134, %cmp.i.i1135
  br i1 %spec.select.i.i1136, label %to_clk.exit1132.to_clk.exit1140_crit_edge, label %if.end.i1138

to_clk.exit1132.to_clk.exit1140_crit_edge:        ; preds = %to_clk.exit1132
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1140

if.end.i1138:                                     ; preds = %to_clk.exit1132
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1137 = getelementptr inbounds %struct.clk_hw, ptr %call.i1133, i32 0, i32 1
  %162 = ptrtoint ptr %clk.i1137 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %clk.i1137, align 4
  br label %to_clk.exit1140

to_clk.exit1140:                                  ; preds = %if.end.i1138, %to_clk.exit1132.to_clk.exit1140_crit_edge
  %retval.0.i1139 = phi ptr [ %163, %if.end.i1138 ], [ %call.i1133, %to_clk.exit1132.to_clk.exit1140_crit_edge ]
  store ptr %retval.0.i1139, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 164), align 4
  %call.i1141 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.113, i32 noundef 4, ptr noundef %add.ptr230, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1142 = icmp eq ptr %call.i1141, null
  %cmp.i.i1143 = icmp ugt ptr %call.i1141, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1144 = or i1 %tobool.not.i.i1142, %cmp.i.i1143
  br i1 %spec.select.i.i1144, label %to_clk.exit1140.to_clk.exit1148_crit_edge, label %if.end.i1146

to_clk.exit1140.to_clk.exit1148_crit_edge:        ; preds = %to_clk.exit1140
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1148

if.end.i1146:                                     ; preds = %to_clk.exit1140
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1145 = getelementptr inbounds %struct.clk_hw, ptr %call.i1141, i32 0, i32 1
  %164 = ptrtoint ptr %clk.i1145 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %clk.i1145, align 4
  br label %to_clk.exit1148

to_clk.exit1148:                                  ; preds = %if.end.i1146, %to_clk.exit1140.to_clk.exit1148_crit_edge
  %retval.0.i1147 = phi ptr [ %165, %if.end.i1146 ], [ %call.i1141, %to_clk.exit1140.to_clk.exit1148_crit_edge ]
  store ptr %retval.0.i1147, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 163), align 4
  %call.i1149 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.117, i8 noundef zeroext 4, ptr noundef nonnull @vpu_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1150 = icmp eq ptr %call.i1149, null
  %cmp.i.i1151 = icmp ugt ptr %call.i1149, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1152 = or i1 %tobool.not.i.i1150, %cmp.i.i1151
  br i1 %spec.select.i.i1152, label %to_clk.exit1148.to_clk.exit1156_crit_edge, label %if.end.i1154

to_clk.exit1148.to_clk.exit1156_crit_edge:        ; preds = %to_clk.exit1148
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1156

if.end.i1154:                                     ; preds = %to_clk.exit1148
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1153 = getelementptr inbounds %struct.clk_hw, ptr %call.i1149, i32 0, i32 1
  %166 = ptrtoint ptr %clk.i1153 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %clk.i1153, align 4
  br label %to_clk.exit1156

to_clk.exit1156:                                  ; preds = %if.end.i1154, %to_clk.exit1148.to_clk.exit1156_crit_edge
  %retval.0.i1155 = phi ptr [ %167, %if.end.i1154 ], [ %call.i1149, %to_clk.exit1148.to_clk.exit1156_crit_edge ]
  store ptr %retval.0.i1155, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 62), align 4
  %call.i1157 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.117, i32 noundef 4, ptr noundef %add.ptr41, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1158 = icmp eq ptr %call.i1157, null
  %cmp.i.i1159 = icmp ugt ptr %call.i1157, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1160 = or i1 %tobool.not.i.i1158, %cmp.i.i1159
  br i1 %spec.select.i.i1160, label %to_clk.exit1156.to_clk.exit1164_crit_edge, label %if.end.i1162

to_clk.exit1156.to_clk.exit1164_crit_edge:        ; preds = %to_clk.exit1156
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1164

if.end.i1162:                                     ; preds = %to_clk.exit1156
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1161 = getelementptr inbounds %struct.clk_hw, ptr %call.i1157, i32 0, i32 1
  %168 = ptrtoint ptr %clk.i1161 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %clk.i1161, align 4
  br label %to_clk.exit1164

to_clk.exit1164:                                  ; preds = %if.end.i1162, %to_clk.exit1156.to_clk.exit1164_crit_edge
  %retval.0.i1163 = phi ptr [ %169, %if.end.i1162 ], [ %call.i1157, %to_clk.exit1156.to_clk.exit1164_crit_edge ]
  store ptr %retval.0.i1163, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 63), align 4
  %call.i1165 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.2, i32 noundef 4, ptr noundef %add.ptr41, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1166 = icmp eq ptr %call.i1165, null
  %cmp.i.i1167 = icmp ugt ptr %call.i1165, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1168 = or i1 %tobool.not.i.i1166, %cmp.i.i1167
  br i1 %spec.select.i.i1168, label %to_clk.exit1164.to_clk.exit1172_crit_edge, label %if.end.i1170

to_clk.exit1164.to_clk.exit1172_crit_edge:        ; preds = %to_clk.exit1164
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1172

if.end.i1170:                                     ; preds = %to_clk.exit1164
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1169 = getelementptr inbounds %struct.clk_hw, ptr %call.i1165, i32 0, i32 1
  %170 = ptrtoint ptr %clk.i1169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %clk.i1169, align 4
  br label %to_clk.exit1172

to_clk.exit1172:                                  ; preds = %if.end.i1170, %to_clk.exit1164.to_clk.exit1172_crit_edge
  %retval.0.i1171 = phi ptr [ %171, %if.end.i1170 ], [ %call.i1165, %to_clk.exit1164.to_clk.exit1172_crit_edge ]
  store ptr %retval.0.i1171, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 64), align 4
  %call.i1173 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.35, i32 noundef 2052, ptr noundef %add.ptr41, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1174 = icmp eq ptr %call.i1173, null
  %cmp.i.i1175 = icmp ugt ptr %call.i1173, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1176 = or i1 %tobool.not.i.i1174, %cmp.i.i1175
  br i1 %spec.select.i.i1176, label %to_clk.exit1172.to_clk.exit1180_crit_edge, label %if.end.i1178

to_clk.exit1172.to_clk.exit1180_crit_edge:        ; preds = %to_clk.exit1172
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1180

if.end.i1178:                                     ; preds = %to_clk.exit1172
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1177 = getelementptr inbounds %struct.clk_hw, ptr %call.i1173, i32 0, i32 1
  %172 = ptrtoint ptr %clk.i1177 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %clk.i1177, align 4
  br label %to_clk.exit1180

to_clk.exit1180:                                  ; preds = %if.end.i1178, %to_clk.exit1172.to_clk.exit1180_crit_edge
  %retval.0.i1179 = phi ptr [ %173, %if.end.i1178 ], [ %call.i1173, %to_clk.exit1172.to_clk.exit1180_crit_edge ]
  store ptr %retval.0.i1179, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 111), align 4
  %call.i1181 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.121, i8 noundef zeroext 3, ptr noundef nonnull @ssi_apm_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr53, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1182 = icmp eq ptr %call.i1181, null
  %cmp.i.i1183 = icmp ugt ptr %call.i1181, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1184 = or i1 %tobool.not.i.i1182, %cmp.i.i1183
  br i1 %spec.select.i.i1184, label %to_clk.exit1180.to_clk.exit1188_crit_edge, label %if.end.i1186

to_clk.exit1180.to_clk.exit1188_crit_edge:        ; preds = %to_clk.exit1180
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1188

if.end.i1186:                                     ; preds = %to_clk.exit1180
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1185 = getelementptr inbounds %struct.clk_hw, ptr %call.i1181, i32 0, i32 1
  %174 = ptrtoint ptr %clk.i1185 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %clk.i1185, align 4
  br label %to_clk.exit1188

to_clk.exit1188:                                  ; preds = %if.end.i1186, %to_clk.exit1180.to_clk.exit1188_crit_edge
  %retval.0.i1187 = phi ptr [ %175, %if.end.i1186 ], [ %call.i1181, %to_clk.exit1180.to_clk.exit1188_crit_edge ]
  store ptr %retval.0.i1187, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 131), align 4
  %call.i1189 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.122, i8 noundef zeroext 4, ptr noundef nonnull @ssi_clk_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr53, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1190 = icmp eq ptr %call.i1189, null
  %cmp.i.i1191 = icmp ugt ptr %call.i1189, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1192 = or i1 %tobool.not.i.i1190, %cmp.i.i1191
  br i1 %spec.select.i.i1192, label %to_clk.exit1188.to_clk.exit1196_crit_edge, label %if.end.i1194

to_clk.exit1188.to_clk.exit1196_crit_edge:        ; preds = %to_clk.exit1188
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1196

if.end.i1194:                                     ; preds = %to_clk.exit1188
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1193 = getelementptr inbounds %struct.clk_hw, ptr %call.i1189, i32 0, i32 1
  %176 = ptrtoint ptr %clk.i1193 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %clk.i1193, align 4
  br label %to_clk.exit1196

to_clk.exit1196:                                  ; preds = %if.end.i1194, %to_clk.exit1188.to_clk.exit1196_crit_edge
  %retval.0.i1195 = phi ptr [ %177, %if.end.i1194 ], [ %call.i1189, %to_clk.exit1188.to_clk.exit1196_crit_edge ]
  store ptr %retval.0.i1195, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 132), align 4
  %call.i1197 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.123, i8 noundef zeroext 4, ptr noundef nonnull @ssi_clk_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr53, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1198 = icmp eq ptr %call.i1197, null
  %cmp.i.i1199 = icmp ugt ptr %call.i1197, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1200 = or i1 %tobool.not.i.i1198, %cmp.i.i1199
  br i1 %spec.select.i.i1200, label %to_clk.exit1196.to_clk.exit1204_crit_edge, label %if.end.i1202

to_clk.exit1196.to_clk.exit1204_crit_edge:        ; preds = %to_clk.exit1196
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1204

if.end.i1202:                                     ; preds = %to_clk.exit1196
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1201 = getelementptr inbounds %struct.clk_hw, ptr %call.i1197, i32 0, i32 1
  %178 = ptrtoint ptr %clk.i1201 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %clk.i1201, align 4
  br label %to_clk.exit1204

to_clk.exit1204:                                  ; preds = %if.end.i1202, %to_clk.exit1196.to_clk.exit1204_crit_edge
  %retval.0.i1203 = phi ptr [ %179, %if.end.i1202 ], [ %call.i1197, %to_clk.exit1196.to_clk.exit1204_crit_edge ]
  store ptr %retval.0.i1203, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 133), align 4
  %call.i1205 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.124, i8 noundef zeroext 2, ptr noundef nonnull @ssi3_clk_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr53, i8 noundef zeroext 11, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1206 = icmp eq ptr %call.i1205, null
  %cmp.i.i1207 = icmp ugt ptr %call.i1205, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1208 = or i1 %tobool.not.i.i1206, %cmp.i.i1207
  br i1 %spec.select.i.i1208, label %to_clk.exit1204.to_clk.exit1212_crit_edge, label %if.end.i1210

to_clk.exit1204.to_clk.exit1212_crit_edge:        ; preds = %to_clk.exit1204
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1212

if.end.i1210:                                     ; preds = %to_clk.exit1204
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1209 = getelementptr inbounds %struct.clk_hw, ptr %call.i1205, i32 0, i32 1
  %180 = ptrtoint ptr %clk.i1209 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %clk.i1209, align 4
  br label %to_clk.exit1212

to_clk.exit1212:                                  ; preds = %if.end.i1210, %to_clk.exit1204.to_clk.exit1212_crit_edge
  %retval.0.i1211 = phi ptr [ %181, %if.end.i1210 ], [ %call.i1205, %to_clk.exit1204.to_clk.exit1212_crit_edge ]
  store ptr %retval.0.i1211, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 134), align 4
  %call.i1213 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.125, i8 noundef zeroext 4, ptr noundef nonnull @ssi_clk_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr53, i8 noundef zeroext 28, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1214 = icmp eq ptr %call.i1213, null
  %cmp.i.i1215 = icmp ugt ptr %call.i1213, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1216 = or i1 %tobool.not.i.i1214, %cmp.i.i1215
  br i1 %spec.select.i.i1216, label %to_clk.exit1212.to_clk.exit1220_crit_edge, label %if.end.i1218

to_clk.exit1212.to_clk.exit1220_crit_edge:        ; preds = %to_clk.exit1212
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1220

if.end.i1218:                                     ; preds = %to_clk.exit1212
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1217 = getelementptr inbounds %struct.clk_hw, ptr %call.i1213, i32 0, i32 1
  %182 = ptrtoint ptr %clk.i1217 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %clk.i1217, align 4
  br label %to_clk.exit1220

to_clk.exit1220:                                  ; preds = %if.end.i1218, %to_clk.exit1212.to_clk.exit1220_crit_edge
  %retval.0.i1219 = phi ptr [ %183, %if.end.i1218 ], [ %call.i1213, %to_clk.exit1212.to_clk.exit1220_crit_edge ]
  store ptr %retval.0.i1219, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 135), align 4
  %call.i1221 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.126, i8 noundef zeroext 4, ptr noundef nonnull @ssi_clk_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr53, i8 noundef zeroext 30, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1222 = icmp eq ptr %call.i1221, null
  %cmp.i.i1223 = icmp ugt ptr %call.i1221, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1224 = or i1 %tobool.not.i.i1222, %cmp.i.i1223
  br i1 %spec.select.i.i1224, label %to_clk.exit1220.to_clk.exit1228_crit_edge, label %if.end.i1226

to_clk.exit1220.to_clk.exit1228_crit_edge:        ; preds = %to_clk.exit1220
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1228

if.end.i1226:                                     ; preds = %to_clk.exit1220
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1225 = getelementptr inbounds %struct.clk_hw, ptr %call.i1221, i32 0, i32 1
  %184 = ptrtoint ptr %clk.i1225 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %clk.i1225, align 4
  br label %to_clk.exit1228

to_clk.exit1228:                                  ; preds = %if.end.i1226, %to_clk.exit1220.to_clk.exit1228_crit_edge
  %retval.0.i1227 = phi ptr [ %185, %if.end.i1226 ], [ %call.i1221, %to_clk.exit1220.to_clk.exit1228_crit_edge ]
  store ptr %retval.0.i1227, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 136), align 4
  %call.i1229 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.127, i8 noundef zeroext 2, ptr noundef nonnull @ssi_ext1_com_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr53, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1230 = icmp eq ptr %call.i1229, null
  %cmp.i.i1231 = icmp ugt ptr %call.i1229, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1232 = or i1 %tobool.not.i.i1230, %cmp.i.i1231
  br i1 %spec.select.i.i1232, label %to_clk.exit1228.to_clk.exit1236_crit_edge, label %if.end.i1234

to_clk.exit1228.to_clk.exit1236_crit_edge:        ; preds = %to_clk.exit1228
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1236

if.end.i1234:                                     ; preds = %to_clk.exit1228
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1233 = getelementptr inbounds %struct.clk_hw, ptr %call.i1229, i32 0, i32 1
  %186 = ptrtoint ptr %clk.i1233 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %clk.i1233, align 4
  br label %to_clk.exit1236

to_clk.exit1236:                                  ; preds = %if.end.i1234, %to_clk.exit1228.to_clk.exit1236_crit_edge
  %retval.0.i1235 = phi ptr [ %187, %if.end.i1234 ], [ %call.i1229, %to_clk.exit1228.to_clk.exit1236_crit_edge ]
  store ptr %retval.0.i1235, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 137), align 4
  %call.i1237 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.128, i8 noundef zeroext 2, ptr noundef nonnull @ssi_ext2_com_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr53, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1238 = icmp eq ptr %call.i1237, null
  %cmp.i.i1239 = icmp ugt ptr %call.i1237, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1240 = or i1 %tobool.not.i.i1238, %cmp.i.i1239
  br i1 %spec.select.i.i1240, label %to_clk.exit1236.to_clk.exit1244_crit_edge, label %if.end.i1242

to_clk.exit1236.to_clk.exit1244_crit_edge:        ; preds = %to_clk.exit1236
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1244

if.end.i1242:                                     ; preds = %to_clk.exit1236
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1241 = getelementptr inbounds %struct.clk_hw, ptr %call.i1237, i32 0, i32 1
  %188 = ptrtoint ptr %clk.i1241 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %clk.i1241, align 4
  br label %to_clk.exit1244

to_clk.exit1244:                                  ; preds = %if.end.i1242, %to_clk.exit1236.to_clk.exit1244_crit_edge
  %retval.0.i1243 = phi ptr [ %189, %if.end.i1242 ], [ %call.i1237, %to_clk.exit1236.to_clk.exit1244_crit_edge ]
  store ptr %retval.0.i1243, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 138), align 4
  %add.ptr287 = getelementptr i8, ptr %ccm_base, i32 40
  %call.i1245 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.122, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr287, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1246 = icmp eq ptr %call.i1245, null
  %cmp.i.i1247 = icmp ugt ptr %call.i1245, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1248 = or i1 %tobool.not.i.i1246, %cmp.i.i1247
  br i1 %spec.select.i.i1248, label %to_clk.exit1244.to_clk.exit1252_crit_edge, label %if.end.i1250

to_clk.exit1244.to_clk.exit1252_crit_edge:        ; preds = %to_clk.exit1244
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1252

if.end.i1250:                                     ; preds = %to_clk.exit1244
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1249 = getelementptr inbounds %struct.clk_hw, ptr %call.i1245, i32 0, i32 1
  %190 = ptrtoint ptr %clk.i1249 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %clk.i1249, align 4
  br label %to_clk.exit1252

to_clk.exit1252:                                  ; preds = %if.end.i1250, %to_clk.exit1244.to_clk.exit1252_crit_edge
  %retval.0.i1251 = phi ptr [ %191, %if.end.i1250 ], [ %call.i1245, %to_clk.exit1244.to_clk.exit1252_crit_edge ]
  store ptr %retval.0.i1251, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 139), align 4
  %call.i1253 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.129, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr287, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1254 = icmp eq ptr %call.i1253, null
  %cmp.i.i1255 = icmp ugt ptr %call.i1253, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1256 = or i1 %tobool.not.i.i1254, %cmp.i.i1255
  br i1 %spec.select.i.i1256, label %to_clk.exit1252.to_clk.exit1260_crit_edge, label %if.end.i1258

to_clk.exit1252.to_clk.exit1260_crit_edge:        ; preds = %to_clk.exit1252
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1260

if.end.i1258:                                     ; preds = %to_clk.exit1252
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1257 = getelementptr inbounds %struct.clk_hw, ptr %call.i1253, i32 0, i32 1
  %192 = ptrtoint ptr %clk.i1257 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %clk.i1257, align 4
  br label %to_clk.exit1260

to_clk.exit1260:                                  ; preds = %if.end.i1258, %to_clk.exit1252.to_clk.exit1260_crit_edge
  %retval.0.i1259 = phi ptr [ %193, %if.end.i1258 ], [ %call.i1253, %to_clk.exit1252.to_clk.exit1260_crit_edge ]
  store ptr %retval.0.i1259, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 140), align 4
  %add.ptr293 = getelementptr i8, ptr %ccm_base, i32 44
  %call.i1261 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.123, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr293, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1262 = icmp eq ptr %call.i1261, null
  %cmp.i.i1263 = icmp ugt ptr %call.i1261, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1264 = or i1 %tobool.not.i.i1262, %cmp.i.i1263
  br i1 %spec.select.i.i1264, label %to_clk.exit1260.to_clk.exit1268_crit_edge, label %if.end.i1266

to_clk.exit1260.to_clk.exit1268_crit_edge:        ; preds = %to_clk.exit1260
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1268

if.end.i1266:                                     ; preds = %to_clk.exit1260
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1265 = getelementptr inbounds %struct.clk_hw, ptr %call.i1261, i32 0, i32 1
  %194 = ptrtoint ptr %clk.i1265 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %clk.i1265, align 4
  br label %to_clk.exit1268

to_clk.exit1268:                                  ; preds = %if.end.i1266, %to_clk.exit1260.to_clk.exit1268_crit_edge
  %retval.0.i1267 = phi ptr [ %195, %if.end.i1266 ], [ %call.i1261, %to_clk.exit1260.to_clk.exit1268_crit_edge ]
  store ptr %retval.0.i1267, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 141), align 4
  %call.i1269 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.131, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr293, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1270 = icmp eq ptr %call.i1269, null
  %cmp.i.i1271 = icmp ugt ptr %call.i1269, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1272 = or i1 %tobool.not.i.i1270, %cmp.i.i1271
  br i1 %spec.select.i.i1272, label %to_clk.exit1268.to_clk.exit1276_crit_edge, label %if.end.i1274

to_clk.exit1268.to_clk.exit1276_crit_edge:        ; preds = %to_clk.exit1268
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1276

if.end.i1274:                                     ; preds = %to_clk.exit1268
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1273 = getelementptr inbounds %struct.clk_hw, ptr %call.i1269, i32 0, i32 1
  %196 = ptrtoint ptr %clk.i1273 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %clk.i1273, align 4
  br label %to_clk.exit1276

to_clk.exit1276:                                  ; preds = %if.end.i1274, %to_clk.exit1268.to_clk.exit1276_crit_edge
  %retval.0.i1275 = phi ptr [ %197, %if.end.i1274 ], [ %call.i1269, %to_clk.exit1268.to_clk.exit1276_crit_edge ]
  store ptr %retval.0.i1275, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 142), align 4
  %call.i1277 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.125, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr287, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1278 = icmp eq ptr %call.i1277, null
  %cmp.i.i1279 = icmp ugt ptr %call.i1277, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1280 = or i1 %tobool.not.i.i1278, %cmp.i.i1279
  br i1 %spec.select.i.i1280, label %to_clk.exit1276.to_clk.exit1284_crit_edge, label %if.end.i1282

to_clk.exit1276.to_clk.exit1284_crit_edge:        ; preds = %to_clk.exit1276
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1284

if.end.i1282:                                     ; preds = %to_clk.exit1276
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1281 = getelementptr inbounds %struct.clk_hw, ptr %call.i1277, i32 0, i32 1
  %198 = ptrtoint ptr %clk.i1281 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %clk.i1281, align 4
  br label %to_clk.exit1284

to_clk.exit1284:                                  ; preds = %if.end.i1282, %to_clk.exit1276.to_clk.exit1284_crit_edge
  %retval.0.i1283 = phi ptr [ %199, %if.end.i1282 ], [ %call.i1277, %to_clk.exit1276.to_clk.exit1284_crit_edge ]
  store ptr %retval.0.i1283, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 143), align 4
  %call.i1285 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.133, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr287, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1286 = icmp eq ptr %call.i1285, null
  %cmp.i.i1287 = icmp ugt ptr %call.i1285, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1288 = or i1 %tobool.not.i.i1286, %cmp.i.i1287
  br i1 %spec.select.i.i1288, label %to_clk.exit1284.to_clk.exit1292_crit_edge, label %if.end.i1290

to_clk.exit1284.to_clk.exit1292_crit_edge:        ; preds = %to_clk.exit1284
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1292

if.end.i1290:                                     ; preds = %to_clk.exit1284
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1289 = getelementptr inbounds %struct.clk_hw, ptr %call.i1285, i32 0, i32 1
  %200 = ptrtoint ptr %clk.i1289 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %clk.i1289, align 4
  br label %to_clk.exit1292

to_clk.exit1292:                                  ; preds = %if.end.i1290, %to_clk.exit1284.to_clk.exit1292_crit_edge
  %retval.0.i1291 = phi ptr [ %201, %if.end.i1290 ], [ %call.i1285, %to_clk.exit1284.to_clk.exit1292_crit_edge ]
  store ptr %retval.0.i1291, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 144), align 4
  %call.i1293 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.126, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr293, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1294 = icmp eq ptr %call.i1293, null
  %cmp.i.i1295 = icmp ugt ptr %call.i1293, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1296 = or i1 %tobool.not.i.i1294, %cmp.i.i1295
  br i1 %spec.select.i.i1296, label %to_clk.exit1292.to_clk.exit1300_crit_edge, label %if.end.i1298

to_clk.exit1292.to_clk.exit1300_crit_edge:        ; preds = %to_clk.exit1292
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1300

if.end.i1298:                                     ; preds = %to_clk.exit1292
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1297 = getelementptr inbounds %struct.clk_hw, ptr %call.i1293, i32 0, i32 1
  %202 = ptrtoint ptr %clk.i1297 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %clk.i1297, align 4
  br label %to_clk.exit1300

to_clk.exit1300:                                  ; preds = %if.end.i1298, %to_clk.exit1292.to_clk.exit1300_crit_edge
  %retval.0.i1299 = phi ptr [ %203, %if.end.i1298 ], [ %call.i1293, %to_clk.exit1292.to_clk.exit1300_crit_edge ]
  store ptr %retval.0.i1299, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 145), align 4
  %call.i1301 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.135, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr293, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1302 = icmp eq ptr %call.i1301, null
  %cmp.i.i1303 = icmp ugt ptr %call.i1301, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1304 = or i1 %tobool.not.i.i1302, %cmp.i.i1303
  br i1 %spec.select.i.i1304, label %to_clk.exit1300.to_clk.exit1308_crit_edge, label %if.end.i1306

to_clk.exit1300.to_clk.exit1308_crit_edge:        ; preds = %to_clk.exit1300
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1308

if.end.i1306:                                     ; preds = %to_clk.exit1300
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1305 = getelementptr inbounds %struct.clk_hw, ptr %call.i1301, i32 0, i32 1
  %204 = ptrtoint ptr %clk.i1305 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %clk.i1305, align 4
  br label %to_clk.exit1308

to_clk.exit1308:                                  ; preds = %if.end.i1306, %to_clk.exit1300.to_clk.exit1308_crit_edge
  %retval.0.i1307 = phi ptr [ %205, %if.end.i1306 ], [ %call.i1301, %to_clk.exit1300.to_clk.exit1308_crit_edge ]
  store ptr %retval.0.i1307, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 146), align 4
  %call.i1309 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr176, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1310 = icmp eq ptr %call.i1309, null
  %cmp.i.i1311 = icmp ugt ptr %call.i1309, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1312 = or i1 %tobool.not.i.i1310, %cmp.i.i1311
  br i1 %spec.select.i.i1312, label %to_clk.exit1308.to_clk.exit1316_crit_edge, label %if.end.i1314

to_clk.exit1308.to_clk.exit1316_crit_edge:        ; preds = %to_clk.exit1308
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1316

if.end.i1314:                                     ; preds = %to_clk.exit1308
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1313 = getelementptr inbounds %struct.clk_hw, ptr %call.i1309, i32 0, i32 1
  %206 = ptrtoint ptr %clk.i1313 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %clk.i1313, align 4
  br label %to_clk.exit1316

to_clk.exit1316:                                  ; preds = %if.end.i1314, %to_clk.exit1308.to_clk.exit1316_crit_edge
  %retval.0.i1315 = phi ptr [ %207, %if.end.i1314 ], [ %call.i1309, %to_clk.exit1308.to_clk.exit1316_crit_edge ]
  store ptr %retval.0.i1315, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 147), align 4
  %call.i1317 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.132, i32 noundef 4, ptr noundef %add.ptr176, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1318 = icmp eq ptr %call.i1317, null
  %cmp.i.i1319 = icmp ugt ptr %call.i1317, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1320 = or i1 %tobool.not.i.i1318, %cmp.i.i1319
  br i1 %spec.select.i.i1320, label %to_clk.exit1316.to_clk.exit1324_crit_edge, label %if.end.i1322

to_clk.exit1316.to_clk.exit1324_crit_edge:        ; preds = %to_clk.exit1316
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1324

if.end.i1322:                                     ; preds = %to_clk.exit1316
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1321 = getelementptr inbounds %struct.clk_hw, ptr %call.i1317, i32 0, i32 1
  %208 = ptrtoint ptr %clk.i1321 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %clk.i1321, align 4
  br label %to_clk.exit1324

to_clk.exit1324:                                  ; preds = %if.end.i1322, %to_clk.exit1316.to_clk.exit1324_crit_edge
  %retval.0.i1323 = phi ptr [ %209, %if.end.i1322 ], [ %call.i1317, %to_clk.exit1316.to_clk.exit1324_crit_edge ]
  store ptr %retval.0.i1323, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 148), align 4
  %call.i1325 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.124, i32 noundef 4, ptr noundef %add.ptr176, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1326 = icmp eq ptr %call.i1325, null
  %cmp.i.i1327 = icmp ugt ptr %call.i1325, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1328 = or i1 %tobool.not.i.i1326, %cmp.i.i1327
  br i1 %spec.select.i.i1328, label %to_clk.exit1324.to_clk.exit1332_crit_edge, label %if.end.i1330

to_clk.exit1324.to_clk.exit1332_crit_edge:        ; preds = %to_clk.exit1324
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1332

if.end.i1330:                                     ; preds = %to_clk.exit1324
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1329 = getelementptr inbounds %struct.clk_hw, ptr %call.i1325, i32 0, i32 1
  %210 = ptrtoint ptr %clk.i1329 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %clk.i1329, align 4
  br label %to_clk.exit1332

to_clk.exit1332:                                  ; preds = %if.end.i1330, %to_clk.exit1324.to_clk.exit1332_crit_edge
  %retval.0.i1331 = phi ptr [ %211, %if.end.i1330 ], [ %call.i1325, %to_clk.exit1324.to_clk.exit1332_crit_edge ]
  store ptr %retval.0.i1331, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 149), align 4
  %call.i1333 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.127, i32 noundef 4, ptr noundef %add.ptr176, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1334 = icmp eq ptr %call.i1333, null
  %cmp.i.i1335 = icmp ugt ptr %call.i1333, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1336 = or i1 %tobool.not.i.i1334, %cmp.i.i1335
  br i1 %spec.select.i.i1336, label %to_clk.exit1332.to_clk.exit1340_crit_edge, label %if.end.i1338

to_clk.exit1332.to_clk.exit1340_crit_edge:        ; preds = %to_clk.exit1332
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1340

if.end.i1338:                                     ; preds = %to_clk.exit1332
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1337 = getelementptr inbounds %struct.clk_hw, ptr %call.i1333, i32 0, i32 1
  %212 = ptrtoint ptr %clk.i1337 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %clk.i1337, align 4
  br label %to_clk.exit1340

to_clk.exit1340:                                  ; preds = %if.end.i1338, %to_clk.exit1332.to_clk.exit1340_crit_edge
  %retval.0.i1339 = phi ptr [ %213, %if.end.i1338 ], [ %call.i1333, %to_clk.exit1332.to_clk.exit1340_crit_edge ]
  store ptr %retval.0.i1339, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 150), align 4
  %call.i1341 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.128, i32 noundef 4, ptr noundef %add.ptr176, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1342 = icmp eq ptr %call.i1341, null
  %cmp.i.i1343 = icmp ugt ptr %call.i1341, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1344 = or i1 %tobool.not.i.i1342, %cmp.i.i1343
  br i1 %spec.select.i.i1344, label %to_clk.exit1340.to_clk.exit1348_crit_edge, label %if.end.i1346

to_clk.exit1340.to_clk.exit1348_crit_edge:        ; preds = %to_clk.exit1340
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1348

if.end.i1346:                                     ; preds = %to_clk.exit1340
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1345 = getelementptr inbounds %struct.clk_hw, ptr %call.i1341, i32 0, i32 1
  %214 = ptrtoint ptr %clk.i1345 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %clk.i1345, align 4
  br label %to_clk.exit1348

to_clk.exit1348:                                  ; preds = %if.end.i1346, %to_clk.exit1340.to_clk.exit1348_crit_edge
  %retval.0.i1347 = phi ptr [ %215, %if.end.i1346 ], [ %call.i1341, %to_clk.exit1340.to_clk.exit1348_crit_edge ]
  store ptr %retval.0.i1347, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 151), align 4
  %call.i1349 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr149, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1350 = icmp eq ptr %call.i1349, null
  %cmp.i.i1351 = icmp ugt ptr %call.i1349, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1352 = or i1 %tobool.not.i.i1350, %cmp.i.i1351
  br i1 %spec.select.i.i1352, label %to_clk.exit1348.to_clk.exit1356_crit_edge, label %if.end.i1354

to_clk.exit1348.to_clk.exit1356_crit_edge:        ; preds = %to_clk.exit1348
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1356

if.end.i1354:                                     ; preds = %to_clk.exit1348
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1353 = getelementptr inbounds %struct.clk_hw, ptr %call.i1349, i32 0, i32 1
  %216 = ptrtoint ptr %clk.i1353 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %clk.i1353, align 4
  br label %to_clk.exit1356

to_clk.exit1356:                                  ; preds = %if.end.i1354, %to_clk.exit1348.to_clk.exit1356_crit_edge
  %retval.0.i1355 = phi ptr [ %217, %if.end.i1354 ], [ %call.i1349, %to_clk.exit1348.to_clk.exit1356_crit_edge ]
  store ptr %retval.0.i1355, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 152), align 4
  %call.i1357 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %add.ptr149, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1358 = icmp eq ptr %call.i1357, null
  %cmp.i.i1359 = icmp ugt ptr %call.i1357, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1360 = or i1 %tobool.not.i.i1358, %cmp.i.i1359
  br i1 %spec.select.i.i1360, label %to_clk.exit1356.to_clk.exit1364_crit_edge, label %if.end.i1362

to_clk.exit1356.to_clk.exit1364_crit_edge:        ; preds = %to_clk.exit1356
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1364

if.end.i1362:                                     ; preds = %to_clk.exit1356
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1361 = getelementptr inbounds %struct.clk_hw, ptr %call.i1357, i32 0, i32 1
  %218 = ptrtoint ptr %clk.i1361 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %clk.i1361, align 4
  br label %to_clk.exit1364

to_clk.exit1364:                                  ; preds = %if.end.i1362, %to_clk.exit1356.to_clk.exit1364_crit_edge
  %retval.0.i1363 = phi ptr [ %219, %if.end.i1362 ], [ %call.i1357, %to_clk.exit1356.to_clk.exit1364_crit_edge ]
  store ptr %retval.0.i1363, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 153), align 4
  %call.i1365 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr149, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1366 = icmp eq ptr %call.i1365, null
  %cmp.i.i1367 = icmp ugt ptr %call.i1365, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1368 = or i1 %tobool.not.i.i1366, %cmp.i.i1367
  br i1 %spec.select.i.i1368, label %to_clk.exit1364.to_clk.exit1372_crit_edge, label %if.end.i1370

to_clk.exit1364.to_clk.exit1372_crit_edge:        ; preds = %to_clk.exit1364
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1372

if.end.i1370:                                     ; preds = %to_clk.exit1364
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1369 = getelementptr inbounds %struct.clk_hw, ptr %call.i1365, i32 0, i32 1
  %220 = ptrtoint ptr %clk.i1369 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %clk.i1369, align 4
  br label %to_clk.exit1372

to_clk.exit1372:                                  ; preds = %if.end.i1370, %to_clk.exit1364.to_clk.exit1372_crit_edge
  %retval.0.i1371 = phi ptr [ %221, %if.end.i1370 ], [ %call.i1365, %to_clk.exit1364.to_clk.exit1372_crit_edge ]
  store ptr %retval.0.i1371, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 154), align 4
  %call.i1373 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %add.ptr149, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1374 = icmp eq ptr %call.i1373, null
  %cmp.i.i1375 = icmp ugt ptr %call.i1373, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1376 = or i1 %tobool.not.i.i1374, %cmp.i.i1375
  br i1 %spec.select.i.i1376, label %to_clk.exit1372.to_clk.exit1380_crit_edge, label %if.end.i1378

to_clk.exit1372.to_clk.exit1380_crit_edge:        ; preds = %to_clk.exit1372
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1380

if.end.i1378:                                     ; preds = %to_clk.exit1372
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1377 = getelementptr inbounds %struct.clk_hw, ptr %call.i1373, i32 0, i32 1
  %222 = ptrtoint ptr %clk.i1377 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %clk.i1377, align 4
  br label %to_clk.exit1380

to_clk.exit1380:                                  ; preds = %if.end.i1378, %to_clk.exit1372.to_clk.exit1380_crit_edge
  %retval.0.i1379 = phi ptr [ %223, %if.end.i1378 ], [ %call.i1373, %to_clk.exit1372.to_clk.exit1380_crit_edge ]
  store ptr %retval.0.i1379, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 155), align 4
  %call.i1381 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %add.ptr149, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1382 = icmp eq ptr %call.i1381, null
  %cmp.i.i1383 = icmp ugt ptr %call.i1381, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1384 = or i1 %tobool.not.i.i1382, %cmp.i.i1383
  br i1 %spec.select.i.i1384, label %to_clk.exit1380.to_clk.exit1388_crit_edge, label %if.end.i1386

to_clk.exit1380.to_clk.exit1388_crit_edge:        ; preds = %to_clk.exit1380
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1388

if.end.i1386:                                     ; preds = %to_clk.exit1380
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1385 = getelementptr inbounds %struct.clk_hw, ptr %call.i1381, i32 0, i32 1
  %224 = ptrtoint ptr %clk.i1385 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %clk.i1385, align 4
  br label %to_clk.exit1388

to_clk.exit1388:                                  ; preds = %if.end.i1386, %to_clk.exit1380.to_clk.exit1388_crit_edge
  %retval.0.i1387 = phi ptr [ %225, %if.end.i1386 ], [ %call.i1381, %to_clk.exit1380.to_clk.exit1388_crit_edge ]
  store ptr %retval.0.i1387, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 159), align 4
  %call.i1389 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %add.ptr197, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1390 = icmp eq ptr %call.i1389, null
  %cmp.i.i1391 = icmp ugt ptr %call.i1389, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1392 = or i1 %tobool.not.i.i1390, %cmp.i.i1391
  br i1 %spec.select.i.i1392, label %to_clk.exit1388.to_clk.exit1396_crit_edge, label %if.end.i1394

to_clk.exit1388.to_clk.exit1396_crit_edge:        ; preds = %to_clk.exit1388
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1396

if.end.i1394:                                     ; preds = %to_clk.exit1388
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1393 = getelementptr inbounds %struct.clk_hw, ptr %call.i1389, i32 0, i32 1
  %226 = ptrtoint ptr %clk.i1393 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %clk.i1393, align 4
  br label %to_clk.exit1396

to_clk.exit1396:                                  ; preds = %if.end.i1394, %to_clk.exit1388.to_clk.exit1396_crit_edge
  %retval.0.i1395 = phi ptr [ %227, %if.end.i1394 ], [ %call.i1389, %to_clk.exit1388.to_clk.exit1396_crit_edge ]
  store ptr %retval.0.i1395, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 171), align 4
  %call.i1397 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr197, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1398 = icmp eq ptr %call.i1397, null
  %cmp.i.i1399 = icmp ugt ptr %call.i1397, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1400 = or i1 %tobool.not.i.i1398, %cmp.i.i1399
  br i1 %spec.select.i.i1400, label %to_clk.exit1396.to_clk.exit1404_crit_edge, label %if.end.i1402

to_clk.exit1396.to_clk.exit1404_crit_edge:        ; preds = %to_clk.exit1396
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1404

if.end.i1402:                                     ; preds = %to_clk.exit1396
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1401 = getelementptr inbounds %struct.clk_hw, ptr %call.i1397, i32 0, i32 1
  %228 = ptrtoint ptr %clk.i1401 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %clk.i1401, align 4
  br label %to_clk.exit1404

to_clk.exit1404:                                  ; preds = %if.end.i1402, %to_clk.exit1396.to_clk.exit1404_crit_edge
  %retval.0.i1403 = phi ptr [ %229, %if.end.i1402 ], [ %call.i1397, %to_clk.exit1396.to_clk.exit1404_crit_edge ]
  store ptr %retval.0.i1403, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 172), align 4
  %add.ptr347 = getelementptr i8, ptr %ccm_base, i32 32
  %call.i1405 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.149, i8 noundef zeroext 4, ptr noundef nonnull @spdif_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr347, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1406 = icmp eq ptr %call.i1405, null
  %cmp.i.i1407 = icmp ugt ptr %call.i1405, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1408 = or i1 %tobool.not.i.i1406, %cmp.i.i1407
  br i1 %spec.select.i.i1408, label %to_clk.exit1404.to_clk.exit1412_crit_edge, label %if.end.i1410

to_clk.exit1404.to_clk.exit1412_crit_edge:        ; preds = %to_clk.exit1404
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1412

if.end.i1410:                                     ; preds = %to_clk.exit1404
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1409 = getelementptr inbounds %struct.clk_hw, ptr %call.i1405, i32 0, i32 1
  %230 = ptrtoint ptr %clk.i1409 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %clk.i1409, align 4
  br label %to_clk.exit1412

to_clk.exit1412:                                  ; preds = %if.end.i1410, %to_clk.exit1404.to_clk.exit1412_crit_edge
  %retval.0.i1411 = phi ptr [ %231, %if.end.i1410 ], [ %call.i1405, %to_clk.exit1404.to_clk.exit1412_crit_edge ]
  store ptr %retval.0.i1411, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 175), align 4
  %call.i1413 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.149, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr101, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1414 = icmp eq ptr %call.i1413, null
  %cmp.i.i1415 = icmp ugt ptr %call.i1413, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1416 = or i1 %tobool.not.i.i1414, %cmp.i.i1415
  br i1 %spec.select.i.i1416, label %to_clk.exit1412.to_clk.exit1420_crit_edge, label %if.end.i1418

to_clk.exit1412.to_clk.exit1420_crit_edge:        ; preds = %to_clk.exit1412
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1420

if.end.i1418:                                     ; preds = %to_clk.exit1412
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1417 = getelementptr inbounds %struct.clk_hw, ptr %call.i1413, i32 0, i32 1
  %232 = ptrtoint ptr %clk.i1417 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %clk.i1417, align 4
  br label %to_clk.exit1420

to_clk.exit1420:                                  ; preds = %if.end.i1418, %to_clk.exit1412.to_clk.exit1420_crit_edge
  %retval.0.i1419 = phi ptr [ %233, %if.end.i1418 ], [ %call.i1413, %to_clk.exit1412.to_clk.exit1420_crit_edge ]
  store ptr %retval.0.i1419, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 177), align 4
  %call.i1421 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.150, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr101, i8 noundef zeroext 19, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1422 = icmp eq ptr %call.i1421, null
  %cmp.i.i1423 = icmp ugt ptr %call.i1421, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1424 = or i1 %tobool.not.i.i1422, %cmp.i.i1423
  br i1 %spec.select.i.i1424, label %to_clk.exit1420.to_clk.exit1428_crit_edge, label %if.end.i1426

to_clk.exit1420.to_clk.exit1428_crit_edge:        ; preds = %to_clk.exit1420
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1428

if.end.i1426:                                     ; preds = %to_clk.exit1420
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1425 = getelementptr inbounds %struct.clk_hw, ptr %call.i1421, i32 0, i32 1
  %234 = ptrtoint ptr %clk.i1425 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %clk.i1425, align 4
  br label %to_clk.exit1428

to_clk.exit1428:                                  ; preds = %if.end.i1426, %to_clk.exit1420.to_clk.exit1428_crit_edge
  %retval.0.i1427 = phi ptr [ %235, %if.end.i1426 ], [ %call.i1421, %to_clk.exit1420.to_clk.exit1428_crit_edge ]
  store ptr %retval.0.i1427, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 178), align 4
  %call.i1429 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.152, i8 noundef zeroext 2, ptr noundef nonnull @spdif0_com_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr347, i8 noundef zeroext 4, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %tobool.not.i.i1430 = icmp eq ptr %call.i1429, null
  %cmp.i.i1431 = icmp ugt ptr %call.i1429, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1432 = or i1 %tobool.not.i.i1430, %cmp.i.i1431
  br i1 %spec.select.i.i1432, label %to_clk.exit1428.to_clk.exit1436_crit_edge, label %if.end.i1434

to_clk.exit1428.to_clk.exit1436_crit_edge:        ; preds = %to_clk.exit1428
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1436

if.end.i1434:                                     ; preds = %to_clk.exit1428
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1433 = getelementptr inbounds %struct.clk_hw, ptr %call.i1429, i32 0, i32 1
  %236 = ptrtoint ptr %clk.i1433 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %clk.i1433, align 4
  br label %to_clk.exit1436

to_clk.exit1436:                                  ; preds = %if.end.i1434, %to_clk.exit1428.to_clk.exit1436_crit_edge
  %retval.0.i1435 = phi ptr [ %237, %if.end.i1434 ], [ %call.i1429, %to_clk.exit1428.to_clk.exit1436_crit_edge ]
  store ptr %retval.0.i1435, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 181), align 4
  %call.i1437 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.152, i32 noundef 4, ptr noundef %add.ptr41, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1438 = icmp eq ptr %call.i1437, null
  %cmp.i.i1439 = icmp ugt ptr %call.i1437, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1440 = or i1 %tobool.not.i.i1438, %cmp.i.i1439
  br i1 %spec.select.i.i1440, label %to_clk.exit1436.to_clk.exit1444_crit_edge, label %if.end.i1442

to_clk.exit1436.to_clk.exit1444_crit_edge:        ; preds = %to_clk.exit1436
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1444

if.end.i1442:                                     ; preds = %to_clk.exit1436
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1441 = getelementptr inbounds %struct.clk_hw, ptr %call.i1437, i32 0, i32 1
  %238 = ptrtoint ptr %clk.i1441 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %clk.i1441, align 4
  br label %to_clk.exit1444

to_clk.exit1444:                                  ; preds = %if.end.i1442, %to_clk.exit1436.to_clk.exit1444_crit_edge
  %retval.0.i1443 = phi ptr [ %239, %if.end.i1442 ], [ %call.i1437, %to_clk.exit1436.to_clk.exit1444_crit_edge ]
  store ptr %retval.0.i1443, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 183), align 4
  %call.i1445 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr41, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1446 = icmp eq ptr %call.i1445, null
  %cmp.i.i1447 = icmp ugt ptr %call.i1445, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1448 = or i1 %tobool.not.i.i1446, %cmp.i.i1447
  br i1 %spec.select.i.i1448, label %to_clk.exit1444.to_clk.exit1452_crit_edge, label %if.end.i1450

to_clk.exit1444.to_clk.exit1452_crit_edge:        ; preds = %to_clk.exit1444
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1452

if.end.i1450:                                     ; preds = %to_clk.exit1444
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1449 = getelementptr inbounds %struct.clk_hw, ptr %call.i1445, i32 0, i32 1
  %240 = ptrtoint ptr %clk.i1449 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %clk.i1449, align 4
  br label %to_clk.exit1452

to_clk.exit1452:                                  ; preds = %if.end.i1450, %to_clk.exit1444.to_clk.exit1452_crit_edge
  %retval.0.i1451 = phi ptr [ %241, %if.end.i1450 ], [ %call.i1445, %to_clk.exit1444.to_clk.exit1452_crit_edge ]
  store ptr %retval.0.i1451, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 185), align 4
  %call.i1453 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr197, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %tobool.not.i.i1454 = icmp eq ptr %call.i1453, null
  %cmp.i.i1455 = icmp ugt ptr %call.i1453, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1456 = or i1 %tobool.not.i.i1454, %cmp.i.i1455
  br i1 %spec.select.i.i1456, label %to_clk.exit1452.to_clk.exit1460_crit_edge, label %if.end.i1458

to_clk.exit1452.to_clk.exit1460_crit_edge:        ; preds = %to_clk.exit1452
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1460

if.end.i1458:                                     ; preds = %to_clk.exit1452
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1457 = getelementptr inbounds %struct.clk_hw, ptr %call.i1453, i32 0, i32 1
  %242 = ptrtoint ptr %clk.i1457 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %clk.i1457, align 4
  br label %to_clk.exit1460

to_clk.exit1460:                                  ; preds = %if.end.i1458, %to_clk.exit1452.to_clk.exit1460_crit_edge
  %retval.0.i1459 = phi ptr [ %243, %if.end.i1458 ], [ %call.i1453, %to_clk.exit1452.to_clk.exit1460_crit_edge ]
  store ptr %retval.0.i1459, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 187), align 4
  %call.i1461 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.17, i32 noundef 4, i32 noundef 1, i32 noundef 1) #2
  %tobool.not.i.i1462 = icmp eq ptr %call.i1461, null
  %cmp.i.i1463 = icmp ugt ptr %call.i1461, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1464 = or i1 %tobool.not.i.i1462, %cmp.i.i1463
  br i1 %spec.select.i.i1464, label %to_clk.exit1460.to_clk.exit1468_crit_edge, label %if.end.i1466

to_clk.exit1460.to_clk.exit1468_crit_edge:        ; preds = %to_clk.exit1460
  call void @__sanitizer_cov_trace_pc() #4
  br label %to_clk.exit1468

if.end.i1466:                                     ; preds = %to_clk.exit1460
  call void @__sanitizer_cov_trace_pc() #4
  %clk.i1465 = getelementptr inbounds %struct.clk_hw, ptr %call.i1461, i32 0, i32 1
  %244 = ptrtoint ptr %clk.i1465 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %clk.i1465, align 4
  br label %to_clk.exit1468

to_clk.exit1468:                                  ; preds = %if.end.i1466, %to_clk.exit1460.to_clk.exit1468_crit_edge
  %retval.0.i1467 = phi ptr [ %245, %if.end.i1466 ], [ %call.i1461, %to_clk.exit1460.to_clk.exit1468_crit_edge ]
  store ptr %retval.0.i1467, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 188), align 4
  %246 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 24), align 4
  %call370 = tail call i32 @clk_register_clkdev(ptr noundef %246, ptr noundef null, ptr noundef nonnull @.str.157) #2
  %247 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 111), align 4
  %call371 = tail call i32 @clk_register_clkdev(ptr noundef %247, ptr noundef nonnull @.str.120, ptr noundef null) #2
  %248 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 106), align 4
  %249 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 2), align 4
  %call372 = tail call i32 @clk_set_parent(ptr noundef %248, ptr noundef %249) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clocks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_print_silicon_rev(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_register_uart_clocks(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_obtain_fixed_clock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_gate2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mx51_revision() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_cpu(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mx53_revision() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 254)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 254)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !220, !222, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !430, !432, !434, !436, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501}
!llvm.module.flags = !{!503, !504, !505, !506, !507, !508, !509, !510}
!llvm.ident = !{!511}

!0 = !{ptr @__of_table_imx50_ccm, !1, !"__of_table_imx50_ccm", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-imx5.c", i32 363, i32 1}
!2 = !{ptr @__of_table_imx51_ccm, !3, !"__of_table_imx51_ccm", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-imx5.c", i32 469, i32 1}
!4 = !{ptr @__of_table_imx53_ccm, !5, !"__of_table_imx53_ccm", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-imx5.c", i32 614, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/imx/clk-imx5.c", i32 287, i32 2}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/imx/clk-imx5.c", i32 288, i32 27}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/imx/clk-imx5.c", i32 292, i32 27}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/imx/clk-imx5.c", i32 296, i32 27}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/imx/clk-imx5.c", i32 307, i32 36}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/imx/clk-imx5.c", i32 310, i32 26}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/imx/clk-imx5.c", i32 312, i32 30}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/imx/clk-imx5.c", i32 314, i32 30}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/imx/clk-imx5.c", i32 316, i32 30}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/imx/clk-imx5.c", i32 317, i32 30}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/imx/clk-imx5.c", i32 318, i32 34}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/imx/clk-imx5.c", i32 319, i32 34}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/imx/clk-imx5.c", i32 320, i32 34}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/imx/clk-imx5.c", i32 321, i32 34}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/imx/clk-imx5.c", i32 322, i32 32}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/imx/clk-imx5.c", i32 323, i32 32}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/imx/clk-imx5.c", i32 324, i32 29}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/imx/clk-imx5.c", i32 325, i32 33}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/imx/clk-imx5.c", i32 326, i32 33}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/imx/clk-imx5.c", i32 327, i32 33}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/imx/clk-imx5.c", i32 328, i32 33}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/imx/clk-imx5.c", i32 330, i32 28}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/imx/clk-imx5.c", i32 332, i32 29}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/imx/clk-imx5.c", i32 333, i32 24}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/imx/clk-imx5.c", i32 335, i32 28}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/imx/clk-imx5.c", i32 337, i32 29}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/imx/clk-imx5.c", i32 338, i32 24}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/imx/clk-imx5.c", i32 355, i32 24}
!69 = !{ptr @clk, !70, !"clk", i1 false, i1 false}
!70 = !{!"../drivers/clk/imx/clk-imx5.c", i32 128, i32 20}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/imx/clk-imx5.c", i32 133, i32 25}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/imx/clk-imx5.c", i32 134, i32 47}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/imx/clk-imx5.c", i32 136, i32 48}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/imx/clk-imx5.c", i32 137, i32 48}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/imx/clk-imx5.c", i32 139, i32 29}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/imx/clk-imx5.c", i32 141, i32 29}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/imx/clk-imx5.c", i32 142, i32 29}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/imx/clk-imx5.c", i32 143, i32 28}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/imx/clk-imx5.c", i32 146, i32 23}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/imx/clk-imx5.c", i32 147, i32 27}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/imx/clk-imx5.c", i32 148, i32 28}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/imx/clk-imx5.c", i32 149, i32 28}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/imx/clk-imx5.c", i32 150, i32 25}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/imx/clk-imx5.c", i32 151, i32 25}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/imx/clk-imx5.c", i32 152, i32 25}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/imx/clk-imx5.c", i32 153, i32 24}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/imx/clk-imx5.c", i32 155, i32 25}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/imx/clk-imx5.c", i32 156, i32 25}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/imx/clk-imx5.c", i32 157, i32 28}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/imx/clk-imx5.c", i32 159, i32 29}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/imx/clk-imx5.c", i32 162, i32 31}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/imx/clk-imx5.c", i32 164, i32 31}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/imx/clk-imx5.c", i32 167, i32 27}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/imx/clk-imx5.c", i32 169, i32 32}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/imx/clk-imx5.c", i32 170, i32 28}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/imx/clk-imx5.c", i32 171, i32 29}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/imx/clk-imx5.c", i32 173, i32 29}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/imx/clk-imx5.c", i32 174, i32 29}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/imx/clk-imx5.c", i32 175, i32 29}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/imx/clk-imx5.c", i32 177, i32 30}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/imx/clk-imx5.c", i32 178, i32 30}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/imx/clk-imx5.c", i32 179, i32 31}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/imx/clk-imx5.c", i32 180, i32 31}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/imx/clk-imx5.c", i32 183, i32 28}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/imx/clk-imx5.c", i32 184, i32 31}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/imx/clk-imx5.c", i32 185, i32 28}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/imx/clk-imx5.c", i32 186, i32 27}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/imx/clk-imx5.c", i32 187, i32 28}
!147 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/imx/clk-imx5.c", i32 188, i32 33}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/imx/clk-imx5.c", i32 189, i32 33}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/imx/clk-imx5.c", i32 190, i32 33}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/imx/clk-imx5.c", i32 191, i32 33}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/imx/clk-imx5.c", i32 192, i32 33}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/imx/clk-imx5.c", i32 193, i32 33}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/imx/clk-imx5.c", i32 194, i32 29}
!161 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/imx/clk-imx5.c", i32 195, i32 29}
!163 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/imx/clk-imx5.c", i32 196, i32 32}
!165 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/imx/clk-imx5.c", i32 197, i32 31}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/imx/clk-imx5.c", i32 198, i32 32}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/imx/clk-imx5.c", i32 199, i32 31}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/imx/clk-imx5.c", i32 200, i32 31}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/imx/clk-imx5.c", i32 201, i32 30}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/imx/clk-imx5.c", i32 202, i32 28}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/imx/clk-imx5.c", i32 203, i32 30}
!179 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/imx/clk-imx5.c", i32 204, i32 34}
!181 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/imx/clk-imx5.c", i32 205, i32 34}
!183 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/imx/clk-imx5.c", i32 206, i32 34}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/imx/clk-imx5.c", i32 207, i32 34}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/imx/clk-imx5.c", i32 208, i32 34}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/imx/clk-imx5.c", i32 209, i32 32}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/imx/clk-imx5.c", i32 210, i32 32}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/imx/clk-imx5.c", i32 211, i32 32}
!195 = !{ptr @.str.97, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/imx/clk-imx5.c", i32 212, i32 34}
!197 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/imx/clk-imx5.c", i32 213, i32 34}
!199 = !{ptr @.str.99, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/imx/clk-imx5.c", i32 214, i32 34}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/imx/clk-imx5.c", i32 215, i32 34}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/imx/clk-imx5.c", i32 216, i32 32}
!205 = !{ptr @.str.102, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/imx/clk-imx5.c", i32 217, i32 29}
!207 = !{ptr @.str.103, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/imx/clk-imx5.c", i32 218, i32 32}
!209 = !{ptr @.str.104, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/imx/clk-imx5.c", i32 219, i32 32}
!211 = !{ptr @.str.105, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/imx/clk-imx5.c", i32 220, i32 27}
!213 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/imx/clk-imx5.c", i32 221, i32 28}
!215 = !{ptr @.str.107, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/imx/clk-imx5.c", i32 222, i32 28}
!217 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/imx/clk-imx5.c", i32 223, i32 31}
!219 = !{ptr @.str.109, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.110, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/imx/clk-imx5.c", i32 224, i32 31}
!222 = !{ptr @.str.111, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.112, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/imx/clk-imx5.c", i32 225, i32 29}
!225 = !{ptr @.str.113, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/imx/clk-imx5.c", i32 226, i32 29}
!227 = !{ptr @.str.114, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/imx/clk-imx5.c", i32 227, i32 29}
!229 = !{ptr @.str.115, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/clk/imx/clk-imx5.c", i32 228, i32 29}
!231 = !{ptr @.str.116, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/imx/clk-imx5.c", i32 229, i32 29}
!233 = !{ptr @.str.117, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/imx/clk-imx5.c", i32 230, i32 27}
!235 = !{ptr @.str.118, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/clk/imx/clk-imx5.c", i32 231, i32 28}
!237 = !{ptr @.str.119, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/imx/clk-imx5.c", i32 232, i32 37}
!239 = !{ptr @.str.120, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/imx/clk-imx5.c", i32 233, i32 28}
!241 = !{ptr @.str.121, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/imx/clk-imx5.c", i32 235, i32 27}
!243 = !{ptr @.str.122, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/clk/imx/clk-imx5.c", i32 236, i32 32}
!245 = !{ptr @.str.123, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/imx/clk-imx5.c", i32 237, i32 32}
!247 = !{ptr @.str.124, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/clk/imx/clk-imx5.c", i32 238, i32 32}
!249 = !{ptr @.str.125, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/imx/clk-imx5.c", i32 239, i32 31}
!251 = !{ptr @.str.126, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/clk/imx/clk-imx5.c", i32 240, i32 31}
!253 = !{ptr @.str.127, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/imx/clk-imx5.c", i32 241, i32 35}
!255 = !{ptr @.str.128, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/imx/clk-imx5.c", i32 242, i32 35}
!257 = !{ptr @.str.129, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/imx/clk-imx5.c", i32 243, i32 33}
!259 = !{ptr @.str.130, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/imx/clk-imx5.c", i32 244, i32 33}
!261 = !{ptr @.str.131, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/imx/clk-imx5.c", i32 245, i32 33}
!263 = !{ptr @.str.132, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/imx/clk-imx5.c", i32 246, i32 33}
!265 = !{ptr @.str.133, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/imx/clk-imx5.c", i32 247, i32 32}
!267 = !{ptr @.str.134, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/imx/clk-imx5.c", i32 248, i32 32}
!269 = !{ptr @.str.135, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/imx/clk-imx5.c", i32 249, i32 32}
!271 = !{ptr @.str.136, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/imx/clk-imx5.c", i32 250, i32 32}
!273 = !{ptr @.str.137, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/imx/clk-imx5.c", i32 251, i32 33}
!275 = !{ptr @.str.138, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/imx/clk-imx5.c", i32 252, i32 33}
!277 = !{ptr @.str.139, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/imx/clk-imx5.c", i32 253, i32 33}
!279 = !{ptr @.str.140, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/clk/imx/clk-imx5.c", i32 254, i32 32}
!281 = !{ptr @.str.141, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/imx/clk-imx5.c", i32 255, i32 32}
!283 = !{ptr @.str.142, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/imx/clk-imx5.c", i32 256, i32 33}
!285 = !{ptr @.str.143, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/imx/clk-imx5.c", i32 257, i32 32}
!287 = !{ptr @.str.144, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/imx/clk-imx5.c", i32 258, i32 33}
!289 = !{ptr @.str.145, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/clk/imx/clk-imx5.c", i32 259, i32 32}
!291 = !{ptr @.str.146, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/imx/clk-imx5.c", i32 260, i32 29}
!293 = !{ptr @.str.147, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/imx/clk-imx5.c", i32 261, i32 29}
!295 = !{ptr @.str.148, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/clk/imx/clk-imx5.c", i32 262, i32 29}
!297 = !{ptr @.str.149, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/clk/imx/clk-imx5.c", i32 263, i32 29}
!299 = !{ptr @.str.150, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/clk/imx/clk-imx5.c", i32 264, i32 30}
!301 = !{ptr @.str.151, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/imx/clk-imx5.c", i32 265, i32 30}
!303 = !{ptr @.str.152, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/imx/clk-imx5.c", i32 266, i32 33}
!305 = !{ptr @.str.153, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/imx/clk-imx5.c", i32 268, i32 30}
!307 = !{ptr @.str.154, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/imx/clk-imx5.c", i32 269, i32 33}
!309 = !{ptr @.str.155, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/imx/clk-imx5.c", i32 270, i32 34}
!311 = !{ptr @.str.156, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/imx/clk-imx5.c", i32 271, i32 28}
!313 = !{ptr @.str.157, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/imx/clk-imx5.c", i32 273, i32 52}
!315 = !{ptr @per_lp_apm_sel, !316, !"per_lp_apm_sel", i1 false, i1 false}
!316 = !{!"../drivers/clk/imx/clk-imx5.c", i32 72, i32 20}
!317 = !{ptr @per_root_sel, !318, !"per_root_sel", i1 false, i1 false}
!318 = !{!"../drivers/clk/imx/clk-imx5.c", i32 73, i32 20}
!319 = !{ptr @emi_slow_sel, !320, !"emi_slow_sel", i1 false, i1 false}
!320 = !{!"../drivers/clk/imx/clk-imx5.c", i32 81, i32 20}
!321 = !{ptr @usb_phy_sel_str, !322, !"usb_phy_sel_str", i1 false, i1 false}
!322 = !{!"../drivers/clk/imx/clk-imx5.c", i32 82, i32 20}
!323 = !{ptr @step_sels, !324, !"step_sels", i1 false, i1 false}
!324 = !{!"../drivers/clk/imx/clk-imx5.c", i32 124, i32 20}
!325 = !{ptr @cpu_podf_sels, !326, !"cpu_podf_sels", i1 false, i1 false}
!326 = !{!"../drivers/clk/imx/clk-imx5.c", i32 125, i32 20}
!327 = !{ptr @ipu_sel, !328, !"ipu_sel", i1 false, i1 false}
!328 = !{!"../drivers/clk/imx/clk-imx5.c", i32 92, i32 20}
!329 = !{ptr @gpu3d_sel, !330, !"gpu3d_sel", i1 false, i1 false}
!330 = !{!"../drivers/clk/imx/clk-imx5.c", i32 93, i32 20}
!331 = !{ptr @gpu2d_sel, !332, !"gpu2d_sel", i1 false, i1 false}
!332 = !{!"../drivers/clk/imx/clk-imx5.c", i32 94, i32 20}
!333 = !{ptr @vpu_sel, !334, !"vpu_sel", i1 false, i1 false}
!334 = !{!"../drivers/clk/imx/clk-imx5.c", i32 95, i32 20}
!335 = !{ptr @.str.158, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/clk/imx/clk-imx5.c", i32 76, i32 48}
!337 = !{ptr @ssi_apm_sels, !338, !"ssi_apm_sels", i1 false, i1 false}
!338 = !{!"../drivers/clk/imx/clk-imx5.c", i32 76, i32 20}
!339 = !{ptr @ssi_clk_sels, !340, !"ssi_clk_sels", i1 false, i1 false}
!340 = !{!"../drivers/clk/imx/clk-imx5.c", i32 77, i32 20}
!341 = !{ptr @ssi3_clk_sels, !342, !"ssi3_clk_sels", i1 false, i1 false}
!342 = !{!"../drivers/clk/imx/clk-imx5.c", i32 78, i32 20}
!343 = !{ptr @ssi_ext1_com_sels, !344, !"ssi_ext1_com_sels", i1 false, i1 false}
!344 = !{!"../drivers/clk/imx/clk-imx5.c", i32 79, i32 20}
!345 = !{ptr @ssi_ext2_com_sels, !346, !"ssi_ext2_com_sels", i1 false, i1 false}
!346 = !{!"../drivers/clk/imx/clk-imx5.c", i32 80, i32 20}
!347 = !{ptr @.str.159, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/clk/imx/clk-imx5.c", i32 121, i32 69}
!349 = !{ptr @spdif_sel, !350, !"spdif_sel", i1 false, i1 false}
!350 = !{!"../drivers/clk/imx/clk-imx5.c", i32 121, i32 20}
!351 = !{ptr @spdif0_com_sel, !352, !"spdif0_com_sel", i1 false, i1 false}
!352 = !{!"../drivers/clk/imx/clk-imx5.c", i32 122, i32 20}
!353 = !{ptr @standard_pll_sel, !354, !"standard_pll_sel", i1 false, i1 false}
!354 = !{!"../drivers/clk/imx/clk-imx5.c", i32 69, i32 20}
!355 = !{ptr @lp_apm_sel, !356, !"lp_apm_sel", i1 false, i1 false}
!356 = !{!"../drivers/clk/imx/clk-imx5.c", i32 66, i32 20}
!357 = !{ptr @esdhc_c_sel, !358, !"esdhc_c_sel", i1 false, i1 false}
!358 = !{!"../drivers/clk/imx/clk-imx5.c", i32 74, i32 20}
!359 = !{ptr @esdhc_d_sel, !360, !"esdhc_d_sel", i1 false, i1 false}
!360 = !{!"../drivers/clk/imx/clk-imx5.c", i32 75, i32 20}
!361 = !{ptr @.str.160, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/clk/imx/clk-imx5.c", i32 99, i32 19}
!363 = !{ptr @mx53_cko1_sel, !364, !"mx53_cko1_sel", i1 false, i1 false}
!364 = !{!"../drivers/clk/imx/clk-imx5.c", i32 97, i32 20}
!365 = !{ptr @.str.161, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/clk/imx/clk-imx5.c", i32 116, i32 2}
!367 = !{ptr @mx53_cko2_sel, !368, !"mx53_cko2_sel", i1 false, i1 false}
!368 = !{!"../drivers/clk/imx/clk-imx5.c", i32 102, i32 20}
!369 = !{ptr @clk_data, !370, !"clk_data", i1 false, i1 false}
!370 = !{!"../drivers/clk/imx/clk-imx5.c", i32 129, i32 32}
!371 = !{ptr @.str.162, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/clk/imx/clk-imx5.c", i32 388, i32 29}
!373 = !{ptr @.str.163, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/clk/imx/clk-imx5.c", i32 398, i32 30}
!375 = !{ptr @.str.164, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/clk/imx/clk-imx5.c", i32 402, i32 28}
!377 = !{ptr @.str.165, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/clk/imx/clk-imx5.c", i32 403, i32 28}
!379 = !{ptr @.str.166, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/clk/imx/clk-imx5.c", i32 414, i32 31}
!381 = !{ptr @.str.167, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/clk/imx/clk-imx5.c", i32 415, i32 29}
!383 = !{ptr @.str.168, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/clk/imx/clk-imx5.c", i32 416, i32 32}
!385 = !{ptr @.str.169, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/clk/imx/clk-imx5.c", i32 417, i32 33}
!387 = !{ptr @.str.170, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/clk/imx/clk-imx5.c", i32 418, i32 33}
!389 = !{ptr @.str.171, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/clk/imx/clk-imx5.c", i32 419, i32 32}
!391 = !{ptr @.str.172, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/clk/imx/clk-imx5.c", i32 420, i32 32}
!393 = !{ptr @.str.173, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/clk/imx/clk-imx5.c", i32 423, i32 29}
!395 = !{ptr @.str.174, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/clk/imx/clk-imx5.c", i32 425, i32 30}
!397 = !{ptr @.str.175, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/clk/imx/clk-imx5.c", i32 426, i32 30}
!399 = !{ptr @.str.176, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/clk/imx/clk-imx5.c", i32 427, i32 33}
!401 = !{ptr @.str.177, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/clk/imx/clk-imx5.c", i32 429, i32 30}
!403 = !{ptr @.str.178, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/clk/imx/clk-imx5.c", i32 449, i32 24}
!405 = !{ptr @periph_apm_sel, !406, !"periph_apm_sel", i1 false, i1 false}
!406 = !{!"../drivers/clk/imx/clk-imx5.c", i32 70, i32 20}
!407 = !{ptr @main_bus_sel, !408, !"main_bus_sel", i1 false, i1 false}
!408 = !{!"../drivers/clk/imx/clk-imx5.c", i32 71, i32 20}
!409 = !{ptr @.str.179, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/clk/imx/clk-imx5.c", i32 83, i32 70}
!411 = !{ptr @mx51_ipu_di0_sel, !412, !"mx51_ipu_di0_sel", i1 false, i1 false}
!412 = !{!"../drivers/clk/imx/clk-imx5.c", i32 83, i32 20}
!413 = !{ptr @.str.180, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/clk/imx/clk-imx5.c", i32 86, i32 80}
!415 = !{ptr @mx51_ipu_di1_sel, !416, !"mx51_ipu_di1_sel", i1 false, i1 false}
!416 = !{!"../drivers/clk/imx/clk-imx5.c", i32 86, i32 20}
!417 = !{ptr @mx51_tve_ext_sel, !418, !"mx51_tve_ext_sel", i1 false, i1 false}
!418 = !{!"../drivers/clk/imx/clk-imx5.c", i32 89, i32 20}
!419 = !{ptr @mx51_tve_sel, !420, !"mx51_tve_sel", i1 false, i1 false}
!420 = !{!"../drivers/clk/imx/clk-imx5.c", i32 91, i32 20}
!421 = !{ptr @.str.181, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/clk/imx/clk-imx5.c", i32 119, i32 53}
!423 = !{ptr @mx51_spdif_xtal_sel, !424, !"mx51_spdif_xtal_sel", i1 false, i1 false}
!424 = !{!"../drivers/clk/imx/clk-imx5.c", i32 119, i32 20}
!425 = !{ptr @mx51_spdif1_com_sel, !426, !"mx51_spdif1_com_sel", i1 false, i1 false}
!426 = !{!"../drivers/clk/imx/clk-imx5.c", i32 123, i32 20}
!427 = !{ptr @.str.182, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/clk/imx/clk-imx5.c", i32 504, i32 34}
!429 = !{ptr @.str.183, !428, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @.str.184, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/imx/clk-imx5.c", i32 505, i32 30}
!432 = !{ptr @.str.185, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/clk/imx/clk-imx5.c", i32 508, i32 31}
!434 = !{ptr @.str.186, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/clk/imx/clk-imx5.c", i32 509, i32 34}
!436 = !{ptr @.str.187, !435, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @.str.188, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/clk/imx/clk-imx5.c", i32 510, i32 30}
!439 = !{ptr @.str.189, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/clk/imx/clk-imx5.c", i32 513, i32 31}
!441 = !{ptr @.str.190, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/clk/imx/clk-imx5.c", i32 514, i32 31}
!443 = !{ptr @.str.191, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/clk/imx/clk-imx5.c", i32 535, i32 27}
!445 = !{ptr @.str.192, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/clk/imx/clk-imx5.c", i32 537, i32 35}
!447 = !{ptr @.str.193, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/clk/imx/clk-imx5.c", i32 538, i32 32}
!449 = !{ptr @.str.194, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/clk/imx/clk-imx5.c", i32 539, i32 25}
!451 = !{ptr @.str.195, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/clk/imx/clk-imx5.c", i32 540, i32 35}
!453 = !{ptr @.str.196, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/clk/imx/clk-imx5.c", i32 541, i32 32}
!455 = !{ptr @.str.197, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/clk/imx/clk-imx5.c", i32 543, i32 29}
!457 = !{ptr @.str.198, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/clk/imx/clk-imx5.c", i32 545, i32 28}
!459 = !{ptr @.str.199, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/clk/imx/clk-imx5.c", i32 547, i32 29}
!461 = !{ptr @.str.200, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/clk/imx/clk-imx5.c", i32 548, i32 29}
!463 = !{ptr @.str.201, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/clk/imx/clk-imx5.c", i32 549, i32 35}
!465 = !{ptr @.str.202, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/clk/imx/clk-imx5.c", i32 550, i32 32}
!467 = !{ptr @.str.203, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/clk/imx/clk-imx5.c", i32 552, i32 33}
!469 = !{ptr @.str.204, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/clk/imx/clk-imx5.c", i32 554, i32 34}
!471 = !{ptr @.str.205, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/clk/imx/clk-imx5.c", i32 555, i32 34}
!473 = !{ptr @.str.206, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/clk/imx/clk-imx5.c", i32 556, i32 34}
!475 = !{ptr @.str.207, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/clk/imx/clk-imx5.c", i32 558, i32 31}
!477 = !{ptr @.str.208, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/clk/imx/clk-imx5.c", i32 560, i32 32}
!479 = !{ptr @.str.209, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/clk/imx/clk-imx5.c", i32 561, i32 32}
!481 = !{ptr @.str.210, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/clk/imx/clk-imx5.c", i32 562, i32 32}
!483 = !{ptr @.str.211, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/clk/imx/clk-imx5.c", i32 579, i32 23}
!485 = !{ptr @.str.212, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/clk/imx/clk-imx5.c", i32 606, i32 24}
!487 = !{ptr @mx53_ldb_di1_sel, !488, !"mx53_ldb_di1_sel", i1 false, i1 false}
!488 = !{!"../drivers/clk/imx/clk-imx5.c", i32 88, i32 20}
!489 = !{ptr @mx53_ldb_di0_sel, !490, !"mx53_ldb_di0_sel", i1 false, i1 false}
!490 = !{!"../drivers/clk/imx/clk-imx5.c", i32 85, i32 20}
!491 = !{ptr @mx53_ipu_di0_sel, !492, !"mx53_ipu_di0_sel", i1 false, i1 false}
!492 = !{!"../drivers/clk/imx/clk-imx5.c", i32 84, i32 20}
!493 = !{ptr @mx53_ipu_di1_sel, !494, !"mx53_ipu_di1_sel", i1 false, i1 false}
!494 = !{!"../drivers/clk/imx/clk-imx5.c", i32 87, i32 20}
!495 = !{ptr @mx53_tve_ext_sel, !496, !"mx53_tve_ext_sel", i1 false, i1 false}
!496 = !{!"../drivers/clk/imx/clk-imx5.c", i32 90, i32 20}
!497 = !{ptr @mx53_can_sel, !498, !"mx53_can_sel", i1 false, i1 false}
!498 = !{!"../drivers/clk/imx/clk-imx5.c", i32 96, i32 20}
!499 = !{ptr @ieee1588_sels, !500, !"ieee1588_sels", i1 false, i1 false}
!500 = !{!"../drivers/clk/imx/clk-imx5.c", i32 126, i32 20}
!501 = !{ptr @mx53_spdif_xtal_sel, !502, !"mx53_spdif_xtal_sel", i1 false, i1 false}
!502 = !{!"../drivers/clk/imx/clk-imx5.c", i32 120, i32 20}
!503 = !{i32 1, !"wchar_size", i32 2}
!504 = !{i32 1, !"min_enum_size", i32 4}
!505 = !{i32 8, !"branch-target-enforcement", i32 0}
!506 = !{i32 8, !"sign-return-address", i32 0}
!507 = !{i32 8, !"sign-return-address-all", i32 0}
!508 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!509 = !{i32 7, !"uwtable", i32 1}
!510 = !{i32 7, !"frame-pointer", i32 2}
!511 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!512 = !{!"branch_weights", i32 1, i32 2000}
!513 = !{i64 5845424}
!514 = !{i64 2153948679}
!515 = !{i64 2153948911}
!516 = !{i64 5845006}
!517 = !{i64 2153949590}
!518 = !{i64 2153949822}
