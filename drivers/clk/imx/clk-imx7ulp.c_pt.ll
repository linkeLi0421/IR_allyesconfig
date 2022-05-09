; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-imx7ulp.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx7ulp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_imx7ulp_clk_scg1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-scg1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_clk_scg1_init }, section "__clk_of_table", align 4
@__of_table_imx7ulp_clk_pcc2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-pcc2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_clk_pcc2_init }, section "__clk_of_table", align 4
@__of_table_imx7ulp_clk_pcc3 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-pcc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_clk_pcc3_init }, section "__clk_of_table", align 4
@__of_table_imx7ulp_clk_smc1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-smc1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_clk_smc1_init }, section "__clk_of_table", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rosc\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sosc\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sirc\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"firc\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"upll\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/imx/clk-imx7ulp.c\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apll_pre_sel\00", [19 x i8] zeroinitializer }, align 32
@pll_pre_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spll_pre_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apll_pre_div\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spll_pre_div\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apll\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spll\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apll_pfd0\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apll_pfd1\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apll_pfd2\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apll_pfd3\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spll_pfd0\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spll_pfd1\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spll_pfd2\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spll_pfd3\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apll_pfd_sel\00", [19 x i8] zeroinitializer }, align 32
@apll_pfd_sels = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spll_pfd_sel\00", [19 x i8] zeroinitializer }, align 32
@spll_pfd_sels = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll_sel\00", [23 x i8] zeroinitializer }, align 32
@apll_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.11, ptr @.str.21], [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spll_sel\00", [23 x i8] zeroinitializer }, align 32
@spll_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.12, ptr @.str.22], [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spll_bus_clk\00", [19 x i8] zeroinitializer }, align 32
@ulp_div_table = internal constant { [8 x %struct.clk_div_table], [32 x i8] } { [8 x %struct.clk_div_table] [%struct.clk_div_table { i32 1, i32 1 }, %struct.clk_div_table { i32 2, i32 2 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 16 }, %struct.clk_div_table { i32 6, i32 32 }, %struct.clk_div_table { i32 7, i32 64 }, %struct.clk_div_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scs_sel\00", [24 x i8] zeroinitializer }, align 32
@scs_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str, ptr @.str.23, ptr @.str.24, ptr @.str], [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hsrun_scs_sel\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nic_sel\00", [24 x i8] zeroinitializer }, align 32
@nic_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.34], [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ddr_sel\00", [24 x i8] zeroinitializer }, align 32
@ddr_sels = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.21, ptr @.str, ptr @.str, ptr @.str], [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"divcore\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hsrun_divcore\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hsrun_core\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ddr_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nic0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nic1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nic1_bus_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpu_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sosc_bus_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"firc_bus_clk\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma1\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgpio2p1\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dma_mux1\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"caam\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lptpm4\00", [25 x i8] zeroinitializer }, align 32
@periph_bus_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str, ptr @.str.39, ptr @.str, ptr @.str.40, ptr @.str.1, ptr @.str.37, ptr @.str.36, ptr @.str.25], [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lptpm5\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lpit1\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lpspi2\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lpspi3\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lpi2c4\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lpi2c5\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lpuart4\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lpuart5\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"flexio1\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb0\00", [27 x i8] zeroinitializer }, align 32
@periph_plat_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str, ptr @.str.37, ptr @.str.36, ptr @.str.34, ptr @.str.15, ptr @.str.14, ptr @.str.13, ptr @.str.5], [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb1\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_phy\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc0\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc1\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wdg1\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wdg2\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lptpm6\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lptpm7\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmdc\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lpi2c6\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lpi2c7\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lpuart6\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lpuart7\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsi\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lcdif\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"viu\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pctlc\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pctld\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pctle\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pctlf\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpu3d\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpu2d\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arm\00", [28 x i8] zeroinitializer }, align 32
@arm_sels = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.31, ptr @.str, ptr @.str, ptr @.str.33], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 60, i32 45 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 62, i32 55 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 63, i32 55 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 64, i32 55 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 65, i32 55 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 66, i32 55 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 70, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 73, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant [13 x i8] c"pll_pre_sels\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 22, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 74, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 77, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 78, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 81, i32 63 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 82, i32 63 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 85, i32 67 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 86, i32 67 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 87, i32 67 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 88, i32 67 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 91, i32 67 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 92, i32 67 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 93, i32 67 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 94, i32 67 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 97, i32 34 }
@___asan_gen_.148 = private unnamed_addr constant [14 x i8] c"apll_pfd_sels\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 25, i32 27 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 98, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant [14 x i8] c"spll_pfd_sels\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 23, i32 27 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 99, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant [10 x i8] c"apll_sels\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 26, i32 27 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 100, i32 30 }
@___asan_gen_.166 = private unnamed_addr constant [10 x i8] c"spll_sels\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 24, i32 27 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 102, i32 58 }
@___asan_gen_.172 = private unnamed_addr constant [14 x i8] c"ulp_div_table\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 35, i32 35 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 105, i32 29 }
@___asan_gen_.178 = private unnamed_addr constant [9 x i8] c"scs_sels\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 27, i32 27 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 106, i32 35 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 107, i32 29 }
@___asan_gen_.187 = private unnamed_addr constant [9 x i8] c"nic_sels\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 29, i32 27 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 108, i32 29 }
@___asan_gen_.193 = private unnamed_addr constant [9 x i8] c"ddr_sels\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 28, i32 27 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 110, i32 30 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 111, i32 42 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 112, i32 36 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 113, i32 47 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 115, i32 53 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 118, i32 30 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 119, i32 30 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 120, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 122, i32 29 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 124, i32 58 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 126, i32 58 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 153, i32 27 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 154, i32 30 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 155, i32 30 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 156, i32 27 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 157, i32 54 }
@___asan_gen_.244 = private unnamed_addr constant [16 x i8] c"periph_bus_sels\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 31, i32 27 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 158, i32 54 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 159, i32 53 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 160, i32 54 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 161, i32 54 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 162, i32 54 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 163, i32 54 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 164, i32 54 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 165, i32 54 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 166, i32 54 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 167, i32 52 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"periph_plat_sels\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 30, i32 27 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 168, i32 52 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 169, i32 29 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 170, i32 54 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 171, i32 54 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 172, i32 52 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 173, i32 52 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 201, i32 53 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 202, i32 53 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 204, i32 27 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 206, i32 53 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 207, i32 53 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 208, i32 54 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 209, i32 54 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 210, i32 51 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 211, i32 53 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 213, i32 26 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 214, i32 28 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 215, i32 28 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 216, i32 28 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 217, i32 28 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 219, i32 53 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 220, i32 53 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 248, i32 25 }
@___asan_gen_.349 = private unnamed_addr constant [9 x i8] c"arm_sels\00", align 1
@___asan_gen_.350 = private constant [33 x i8] c"../drivers/clk/imx/clk-imx7ulp.c\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 32, i32 27 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__of_table_imx7ulp_clk_pcc2, ptr @__of_table_imx7ulp_clk_pcc3, ptr @__of_table_imx7ulp_clk_scg1, ptr @__of_table_imx7ulp_clk_smc1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pll_pre_sels, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @apll_pfd_sels, ptr @.str.22, ptr @spll_pfd_sels, ptr @.str.23, ptr @apll_sels, ptr @.str.24, ptr @spll_sels, ptr @.str.25, ptr @ulp_div_table, ptr @.str.26, ptr @scs_sels, ptr @.str.27, ptr @.str.28, ptr @nic_sels, ptr @.str.29, ptr @ddr_sels, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @periph_bus_sels, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @periph_plat_sels, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @arm_sels], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_pre_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_pfd_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spll_pfd_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spll_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulp_div_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scs_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nic_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_bus_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_plat_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx7ulp_clk_scg1_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 196) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 48, ptr %call7.i.i, align 8
  %hws2 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %call.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
  %2 = ptrtoint ptr %hws2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %hws2, align 4
  %call4 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %np, ptr noundef nonnull @.str.1) #3
  %arrayidx5 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 2
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %arrayidx5, align 8
  %call6 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %np, ptr noundef nonnull @.str.2) #3
  %arrayidx7 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 3
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %arrayidx7, align 4
  %call8 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %np, ptr noundef nonnull @.str.3) #3
  %arrayidx9 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 41
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %arrayidx9, align 4
  %call10 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %np, ptr noundef nonnull @.str.4) #3
  %arrayidx11 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 4
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %arrayidx11, align 8
  %call12 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %np, ptr noundef nonnull @.str.5) #3
  %arrayidx13 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 27
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12, ptr %arrayidx13, align 4
  %call14 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #3
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end, label %if.end.if.end31_crit_edge, !prof !199

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 70, i32 noundef 9, ptr noundef null) #3
  br label %if.end31

if.end31:                                         ; preds = %do.end, %if.end.if.end31_crit_edge
  %add.ptr = getelementptr i8, ptr %call14, i32 1288
  %call.i247 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, i8 noundef zeroext 2, ptr noundef nonnull @pll_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 130, ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx39 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 16
  %8 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i247, ptr %arrayidx39, align 8
  %add.ptr40 = getelementptr i8, ptr %call14, i32 1544
  %call.i248 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, ptr noundef nonnull @pll_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 130, ptr noundef %add.ptr40, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx42 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 5
  %9 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i248, ptr %arrayidx42, align 4
  %call.i249 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef %add.ptr, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx45 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 17
  %10 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i249, ptr %arrayidx45, align 4
  %call.i250 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef %add.ptr40, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx48 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 6
  %11 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i250, ptr %arrayidx48, align 8
  %add.ptr49 = getelementptr i8, ptr %call14, i32 1280
  %call50 = tail call ptr @imx_clk_hw_pllv4(i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef %add.ptr49) #3
  %arrayidx51 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 18
  %12 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call50, ptr %arrayidx51, align 8
  %add.ptr52 = getelementptr i8, ptr %call14, i32 1536
  %call53 = tail call ptr @imx_clk_hw_pllv4(i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef %add.ptr52) #3
  %arrayidx54 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 7
  %13 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call53, ptr %arrayidx54, align 4
  %add.ptr55 = getelementptr i8, ptr %call14, i32 1292
  %call56 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, ptr noundef %add.ptr55, i8 noundef zeroext 0) #3
  %arrayidx57 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 21
  %14 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call56, ptr %arrayidx57, align 4
  %call59 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, ptr noundef %add.ptr55, i8 noundef zeroext 1) #3
  %arrayidx60 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 22
  %15 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call59, ptr %arrayidx60, align 8
  %call62 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, ptr noundef %add.ptr55, i8 noundef zeroext 2) #3
  %arrayidx63 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 23
  %16 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call62, ptr %arrayidx63, align 4
  %call65 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, ptr noundef %add.ptr55, i8 noundef zeroext 3) #3
  %arrayidx66 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 24
  %17 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call65, ptr %arrayidx66, align 8
  %add.ptr67 = getelementptr i8, ptr %call14, i32 1548
  %call68 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, ptr noundef %add.ptr67, i8 noundef zeroext 0) #3
  %arrayidx69 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 10
  %18 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call68, ptr %arrayidx69, align 8
  %call71 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.12, ptr noundef %add.ptr67, i8 noundef zeroext 1) #3
  %arrayidx72 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 11
  %19 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call71, ptr %arrayidx72, align 4
  %call74 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.12, ptr noundef %add.ptr67, i8 noundef zeroext 2) #3
  %arrayidx75 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 12
  %20 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call74, ptr %arrayidx75, align 8
  %call77 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.12, ptr noundef %add.ptr67, i8 noundef zeroext 3) #3
  %arrayidx78 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 13
  %21 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call77, ptr %arrayidx78, align 4
  %call.i251 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21, i8 noundef zeroext 4, ptr noundef nonnull @apll_pfd_sels, ptr noundef null, ptr noundef null, i32 noundef 134, ptr noundef %add.ptr, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx81 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 25
  %22 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i251, ptr %arrayidx81, align 4
  %call.i252 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, i8 noundef zeroext 4, ptr noundef nonnull @spll_pfd_sels, ptr noundef null, ptr noundef null, i32 noundef 134, ptr noundef %add.ptr40, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx84 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 14
  %23 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i252, ptr %arrayidx84, align 8
  %call.i253 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, i8 noundef zeroext 2, ptr noundef nonnull @apll_sels, ptr noundef null, ptr noundef null, i32 noundef 134, ptr noundef %add.ptr, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx87 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 26
  %24 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i253, ptr %arrayidx87, align 8
  %call.i254 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, i8 noundef zeroext 2, ptr noundef nonnull @spll_sels, ptr noundef null, ptr noundef null, i32 noundef 134, ptr noundef %add.ptr40, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx90 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 15
  %25 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i254, ptr %arrayidx90, align 4
  %add.ptr91 = getelementptr i8, ptr %call14, i32 1540
  %call92 = tail call ptr @imx_clk_hw_divider_gate(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 1, ptr noundef %add.ptr91, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ulp_div_table, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx93 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 44
  %26 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call92, ptr %arrayidx93, align 8
  %add.ptr94 = getelementptr i8, ptr %call14, i32 20
  %call.i255 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26, i8 noundef zeroext 8, ptr noundef nonnull @scs_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr94, i8 noundef zeroext 24, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx96 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 28
  %27 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i255, ptr %arrayidx96, align 8
  %add.ptr97 = getelementptr i8, ptr %call14, i32 28
  %call.i256 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, i8 noundef zeroext 8, ptr noundef nonnull @scs_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr97, i8 noundef zeroext 24, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx99 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 45
  %28 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i256, ptr %arrayidx99, align 4
  %add.ptr100 = getelementptr i8, ptr %call14, i32 64
  %call.i257 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, i8 noundef zeroext 2, ptr noundef nonnull @nic_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr100, i8 noundef zeroext 28, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx102 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 34
  %29 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i257, ptr %arrayidx102, align 8
  %add.ptr103 = getelementptr i8, ptr %call14, i32 48
  %call.i258 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, i8 noundef zeroext 4, ptr noundef nonnull @ddr_sels, ptr noundef null, ptr noundef null, i32 noundef 4228, ptr noundef %add.ptr103, i8 noundef zeroext 24, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx105 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 32
  %30 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i258, ptr %arrayidx105, align 8
  %call.i259 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr94, i8 noundef zeroext 16, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx108 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 29
  %31 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i259, ptr %arrayidx108, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call.i259, i32 0, i32 1
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 4
  %34 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx96, align 8
  %clk111 = getelementptr inbounds %struct.clk_hw, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %clk111 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk111, align 4
  %38 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx90, align 4
  %clk113 = getelementptr inbounds %struct.clk_hw, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %clk113 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk113, align 4
  %42 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx11, align 8
  %clk115 = getelementptr inbounds %struct.clk_hw, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %clk115 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk115, align 4
  %call116 = tail call ptr @imx_clk_hw_cpu(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, ptr noundef %33, ptr noundef %37, ptr noundef %41, ptr noundef %45) #3
  %arrayidx117 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 47
  %46 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call116, ptr %arrayidx117, align 4
  %call.i260 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr97, i8 noundef zeroext 16, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx120 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 46
  %47 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i260, ptr %arrayidx120, align 8
  %clk122 = getelementptr inbounds %struct.clk_hw, ptr %call.i260, i32 0, i32 1
  %48 = ptrtoint ptr %clk122 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk122, align 4
  %50 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx99, align 4
  %clk124 = getelementptr inbounds %struct.clk_hw, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %clk124 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk124, align 4
  %54 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx90, align 4
  %clk126 = getelementptr inbounds %struct.clk_hw, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %clk126 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk126, align 4
  %58 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx11, align 8
  %clk128 = getelementptr inbounds %struct.clk_hw, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %clk128 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk128, align 4
  %call129 = tail call ptr @imx_clk_hw_cpu(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, ptr noundef %49, ptr noundef %53, ptr noundef %57, ptr noundef %61) #3
  %arrayidx130 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 48
  %62 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call129, ptr %arrayidx130, align 8
  %call132 = tail call ptr @imx_clk_hw_divider_gate(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29, i32 noundef 2052, ptr noundef %add.ptr103, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ulp_div_table, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx133 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 33
  %63 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call132, ptr %arrayidx133, align 4
  %call.i261 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %add.ptr100, i8 noundef zeroext 24, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx136 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 35
  %64 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i261, ptr %arrayidx136, align 4
  %call.i262 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %add.ptr100, i8 noundef zeroext 16, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx139 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 37
  %65 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i262, ptr %arrayidx139, align 4
  %call.i263 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %add.ptr100, i8 noundef zeroext 4, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx142 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 38
  %66 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i263, ptr %arrayidx142, align 8
  %call.i264 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr100, i8 noundef zeroext 20, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx145 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 36
  %67 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i264, ptr %arrayidx145, align 8
  %add.ptr146 = getelementptr i8, ptr %call14, i32 260
  %call147 = tail call ptr @imx_clk_hw_divider_gate(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %add.ptr146, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 32, ptr noundef nonnull @ulp_div_table, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx148 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 42
  %68 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call147, ptr %arrayidx148, align 8
  %add.ptr149 = getelementptr i8, ptr %call14, i32 772
  %call150 = tail call ptr @imx_clk_hw_divider_gate(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %add.ptr149, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 32, ptr noundef nonnull @ulp_div_table, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx151 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 43
  %69 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call150, ptr %arrayidx151, align 4
  %70 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %call7.i.i, align 8
  tail call void @imx_check_clk_hws(ptr noundef %hws2, i32 noundef %71) #3
  %call153 = tail call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx7ulp_clk_pcc2_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 104) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 25, ptr %call7.i.i, align 8
  %hws2 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %call3 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #3
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end.if.end20_crit_edge, !prof !199

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 151, i32 noundef 9, ptr noundef null) #3
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end.if.end20_crit_edge
  %add.ptr = getelementptr i8, ptr %call3, i32 32
  %call.i = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %2 = ptrtoint ptr %hws2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %hws2, align 4
  %add.ptr28 = getelementptr i8, ptr %call3, i32 60
  %call.i140 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr28, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx30 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 2
  %3 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i140, ptr %arrayidx30, align 8
  %add.ptr31 = getelementptr i8, ptr %call3, i32 132
  %call.i141 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr31, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx33 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 5
  %4 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i141, ptr %arrayidx33, align 4
  %add.ptr34 = getelementptr i8, ptr %call3, i32 144
  %call.i142 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr34, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx36 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 7
  %5 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i142, ptr %arrayidx36, align 4
  %add.ptr37 = getelementptr i8, ptr %call3, i32 148
  %call38 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.45, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr37) #3
  %arrayidx39 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 8
  %6 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call38, ptr %arrayidx39, align 8
  %add.ptr40 = getelementptr i8, ptr %call3, i32 152
  %call41 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.46, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr40) #3
  %arrayidx42 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 9
  %7 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call41, ptr %arrayidx42, align 4
  %add.ptr43 = getelementptr i8, ptr %call3, i32 156
  %call44 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.47, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr43) #3
  %arrayidx45 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 10
  %8 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call44, ptr %arrayidx45, align 8
  %add.ptr46 = getelementptr i8, ptr %call3, i32 164
  %call47 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.48, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr46) #3
  %arrayidx48 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 11
  %9 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call47, ptr %arrayidx48, align 4
  %add.ptr49 = getelementptr i8, ptr %call3, i32 168
  %call50 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.49, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr49) #3
  %arrayidx51 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 12
  %10 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call50, ptr %arrayidx51, align 8
  %add.ptr52 = getelementptr i8, ptr %call3, i32 172
  %call53 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.50, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr52) #3
  %arrayidx54 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 13
  %11 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call53, ptr %arrayidx54, align 4
  %add.ptr55 = getelementptr i8, ptr %call3, i32 176
  %call56 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.51, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr55) #3
  %arrayidx57 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 14
  %12 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call56, ptr %arrayidx57, align 8
  %add.ptr58 = getelementptr i8, ptr %call3, i32 180
  %call59 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.52, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr58) #3
  %arrayidx60 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 15
  %13 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call59, ptr %arrayidx60, align 4
  %add.ptr61 = getelementptr i8, ptr %call3, i32 184
  %call62 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.53, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr61) #3
  %arrayidx63 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 16
  %14 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call62, ptr %arrayidx63, align 8
  %add.ptr64 = getelementptr i8, ptr %call3, i32 196
  %call65 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.54, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr64) #3
  %arrayidx66 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 17
  %15 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call65, ptr %arrayidx66, align 4
  %add.ptr67 = getelementptr i8, ptr %call3, i32 204
  %call68 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.55, ptr noundef nonnull @periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr67) #3
  %arrayidx69 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 18
  %16 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call68, ptr %arrayidx69, align 8
  %add.ptr70 = getelementptr i8, ptr %call3, i32 208
  %call71 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.56, ptr noundef nonnull @periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr70) #3
  %arrayidx72 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 19
  %17 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call71, ptr %arrayidx72, align 4
  %add.ptr73 = getelementptr i8, ptr %call3, i32 212
  %call.i143 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr73, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx75 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 20
  %18 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i143, ptr %arrayidx75, align 8
  %add.ptr76 = getelementptr i8, ptr %call3, i32 220
  %call77 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.58, ptr noundef nonnull @periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr76) #3
  %arrayidx78 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 22
  %19 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call77, ptr %arrayidx78, align 8
  %add.ptr79 = getelementptr i8, ptr %call3, i32 224
  %call80 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.59, ptr noundef nonnull @periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr79) #3
  %arrayidx81 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 23
  %20 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call80, ptr %arrayidx81, align 4
  %add.ptr82 = getelementptr i8, ptr %call3, i32 244
  %call83 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.60, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr82) #3
  %arrayidx84 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 24
  %21 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call83, ptr %arrayidx84, align 8
  %add.ptr85 = getelementptr i8, ptr %call3, i32 268
  %call86 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.61, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr85) #3
  %arrayidx87 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 25
  %22 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call86, ptr %arrayidx87, align 4
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call7.i.i, align 8
  tail call void @imx_check_clk_hws(ptr noundef %hws2, i32 noundef %24) #3
  %call89 = tail call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call7.i.i) #3
  tail call void @imx_register_uart_clocks(i32 noundef 2) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx7ulp_clk_pcc3_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 68) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16, ptr %call7.i.i, align 8
  %hws2 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %call3 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #3
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end.if.end20_crit_edge, !prof !199

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 199, i32 noundef 9, ptr noundef null) #3
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end.if.end20_crit_edge
  %add.ptr = getelementptr i8, ptr %call3, i32 132
  %call27 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.62, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr) #3
  %2 = ptrtoint ptr %hws2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call27, ptr %hws2, align 4
  %add.ptr28 = getelementptr i8, ptr %call3, i32 136
  %call29 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.63, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr28) #3
  %arrayidx30 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 2
  %3 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call29, ptr %arrayidx30, align 8
  %add.ptr31 = getelementptr i8, ptr %call3, i32 172
  %call32 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %add.ptr31, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx33 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 10
  %4 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call32, ptr %arrayidx33, align 8
  %add.ptr34 = getelementptr i8, ptr %call3, i32 144
  %call35 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.65, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr34) #3
  %arrayidx36 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 3
  %5 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call35, ptr %arrayidx36, align 4
  %add.ptr37 = getelementptr i8, ptr %call3, i32 148
  %call38 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.66, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr37) #3
  %arrayidx39 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 4
  %6 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call38, ptr %arrayidx39, align 8
  %add.ptr40 = getelementptr i8, ptr %call3, i32 152
  %call41 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.67, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr40) #3
  %arrayidx42 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 5
  %7 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call41, ptr %arrayidx42, align 4
  %add.ptr43 = getelementptr i8, ptr %call3, i32 156
  %call44 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.68, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr43) #3
  %arrayidx45 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 6
  %8 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call44, ptr %arrayidx45, align 8
  %add.ptr46 = getelementptr i8, ptr %call3, i32 164
  %call47 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.69, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr46) #3
  %arrayidx48 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 8
  %9 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call47, ptr %arrayidx48, align 8
  %add.ptr49 = getelementptr i8, ptr %call3, i32 168
  %call50 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.70, ptr noundef nonnull @periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr49) #3
  %arrayidx51 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 9
  %10 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call50, ptr %arrayidx51, align 4
  %add.ptr52 = getelementptr i8, ptr %call3, i32 160
  %call.i = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr52, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx54 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 7
  %11 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %arrayidx54, align 4
  %add.ptr55 = getelementptr i8, ptr %call3, i32 184
  %call.i115 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr55, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx57 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 11
  %12 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i115, ptr %arrayidx57, align 4
  %add.ptr58 = getelementptr i8, ptr %call3, i32 188
  %call.i116 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr58, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx60 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 12
  %13 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i116, ptr %arrayidx60, align 8
  %add.ptr61 = getelementptr i8, ptr %call3, i32 192
  %call.i117 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr61, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx63 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 13
  %14 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i117, ptr %arrayidx63, align 4
  %add.ptr64 = getelementptr i8, ptr %call3, i32 196
  %call.i118 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr64, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx66 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 14
  %15 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i118, ptr %arrayidx66, align 8
  %add.ptr67 = getelementptr i8, ptr %call3, i32 320
  %call68 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.76, ptr noundef nonnull @periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr67) #3
  %arrayidx69 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 15
  %16 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call68, ptr %arrayidx69, align 4
  %add.ptr70 = getelementptr i8, ptr %call3, i32 324
  %call71 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.77, ptr noundef nonnull @periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr70) #3
  %arrayidx72 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 16
  %17 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call71, ptr %arrayidx72, align 8
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call7.i.i, align 8
  tail call void @imx_check_clk_hws(ptr noundef %hws2, i32 noundef %19) #3
  %call74 = tail call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call7.i.i) #3
  tail call void @imx_register_uart_clocks(i32 noundef 7) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx7ulp_clk_smc1_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %call7.i.i, align 8
  %hws2 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %call3 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #3
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end.if.end20_crit_edge, !prof !199

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 246, i32 noundef 9, ptr noundef null) #3
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end.if.end20_crit_edge
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  %call.i = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.78, i8 noundef zeroext 4, ptr noundef nonnull @arm_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %2 = ptrtoint ptr %hws2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %hws2, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call7.i.i, align 8
  tail call void @imx_check_clk_hws(ptr noundef %hws2, i32 noundef %4) #3
  %call29 = tail call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_obtain_fixed_clk_hw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pllv4(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pfdv2(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_divider_gate(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_cpu(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clk_hws(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx7ulp_clk_hw_composite(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_register_uart_clocks(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !{ptr @__of_table_imx7ulp_clk_scg1, !1, !"__of_table_imx7ulp_clk_scg1", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 133, i32 1}
!2 = !{ptr @__of_table_imx7ulp_clk_pcc2, !3, !"__of_table_imx7ulp_clk_pcc2", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 181, i32 1}
!4 = !{ptr @__of_table_imx7ulp_clk_pcc3, !5, !"__of_table_imx7ulp_clk_pcc3", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 228, i32 1}
!6 = !{ptr @__of_table_imx7ulp_clk_smc1, !7, !"__of_table_imx7ulp_clk_smc1", i1 false, i1 false}
!7 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 254, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 60, i32 45}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 62, i32 55}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 63, i32 55}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 64, i32 55}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 65, i32 55}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 66, i32 55}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 70, i32 2}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 73, i32 34}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 74, i32 34}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 77, i32 34}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 78, i32 34}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 81, i32 63}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 82, i32 63}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 85, i32 67}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 86, i32 67}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 87, i32 67}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 88, i32 67}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 91, i32 67}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 92, i32 67}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 93, i32 67}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 94, i32 67}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 97, i32 34}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 98, i32 34}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 99, i32 30}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 100, i32 30}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 102, i32 58}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 105, i32 29}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 106, i32 35}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 107, i32 29}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 108, i32 29}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 110, i32 30}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 111, i32 42}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 112, i32 36}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 113, i32 47}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 115, i32 53}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 118, i32 30}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 119, i32 30}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 120, i32 34}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 122, i32 29}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 124, i32 58}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 126, i32 58}
!90 = !{ptr @pll_pre_sels, !91, !"pll_pre_sels", i1 false, i1 false}
!91 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 22, i32 27}
!92 = !{ptr @apll_pfd_sels, !93, !"apll_pfd_sels", i1 false, i1 false}
!93 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 25, i32 27}
!94 = !{ptr @spll_pfd_sels, !95, !"spll_pfd_sels", i1 false, i1 false}
!95 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 23, i32 27}
!96 = !{ptr @apll_sels, !97, !"apll_sels", i1 false, i1 false}
!97 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 26, i32 27}
!98 = !{ptr @spll_sels, !99, !"spll_sels", i1 false, i1 false}
!99 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 24, i32 27}
!100 = !{ptr @ulp_div_table, !101, !"ulp_div_table", i1 false, i1 false}
!101 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 35, i32 35}
!102 = !{ptr @scs_sels, !103, !"scs_sels", i1 false, i1 false}
!103 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 27, i32 27}
!104 = !{ptr @nic_sels, !105, !"nic_sels", i1 false, i1 false}
!105 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 29, i32 27}
!106 = !{ptr @ddr_sels, !107, !"ddr_sels", i1 false, i1 false}
!107 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 28, i32 27}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 153, i32 27}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 154, i32 30}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 155, i32 30}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 156, i32 27}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 157, i32 54}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 158, i32 54}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 159, i32 53}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 160, i32 54}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 161, i32 54}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 162, i32 54}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 163, i32 54}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 164, i32 54}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 165, i32 54}
!134 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 166, i32 54}
!136 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 167, i32 52}
!138 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 168, i32 52}
!140 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 169, i32 29}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 170, i32 54}
!144 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 171, i32 54}
!146 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 172, i32 52}
!148 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 173, i32 52}
!150 = !{ptr @periph_bus_sels, !151, !"periph_bus_sels", i1 false, i1 false}
!151 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 31, i32 27}
!152 = !{ptr @periph_plat_sels, !153, !"periph_plat_sels", i1 false, i1 false}
!153 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 30, i32 27}
!154 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 201, i32 53}
!156 = !{ptr @.str.63, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 202, i32 53}
!158 = !{ptr @.str.64, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 204, i32 27}
!160 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 206, i32 53}
!162 = !{ptr @.str.66, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 207, i32 53}
!164 = !{ptr @.str.67, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 208, i32 54}
!166 = !{ptr @.str.68, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 209, i32 54}
!168 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 210, i32 51}
!170 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 211, i32 53}
!172 = !{ptr @.str.71, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 213, i32 26}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 214, i32 28}
!176 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 215, i32 28}
!178 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 216, i32 28}
!180 = !{ptr @.str.75, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 217, i32 28}
!182 = !{ptr @.str.76, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 219, i32 53}
!184 = !{ptr @.str.77, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 220, i32 53}
!186 = !{ptr @.str.78, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 248, i32 25}
!188 = !{ptr @arm_sels, !189, !"arm_sels", i1 false, i1 false}
!189 = !{!"../drivers/clk/imx/clk-imx7ulp.c", i32 32, i32 27}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 1, !"min_enum_size", i32 4}
!192 = !{i32 8, !"branch-target-enforcement", i32 0}
!193 = !{i32 8, !"sign-return-address", i32 0}
!194 = !{i32 8, !"sign-return-address-all", i32 0}
!195 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!196 = !{i32 7, !"uwtable", i32 1}
!197 = !{i32 7, !"frame-pointer", i32 2}
!198 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!199 = !{!"branch_weights", i32 1, i32 2000}
