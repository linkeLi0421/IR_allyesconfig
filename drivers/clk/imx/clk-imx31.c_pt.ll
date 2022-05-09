; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-imx31.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx31.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_imx31_ccm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx31-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mx31_clocks_init_dt }, section "__clk_of_table", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fixed-clock\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,imx-osc26m\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: failed to map registers\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.mx31_clocks_init_dt = private unnamed_addr constant [20 x i8] c"mx31_clocks_init_dt\00", align 1
@clk = internal global { [59 x ptr], [52 x i8] } zeroinitializer, align 32
@clk_data = internal global { %struct.clk_onecell_data, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ckih\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ckil\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpll\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spll\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"upll\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcu_main\00", [23 x i8] zeroinitializer }, align 32
@mcu_main_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.8, ptr @.str.7], [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hsp\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfc\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"per_div\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"per\00", [28 x i8] zeroinitializer }, align 32
@per_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.15, ptr @.str.14], [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"csi_sel\00", [24 x i8] zeroinitializer }, align 32
@csi_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.9, ptr @.str.8], [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fir_sel\00", [24 x i8] zeroinitializer }, align 32
@fir_sel = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.10, ptr @.str.9, ptr @.str.8], [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"csi_div\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_div_pre\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb_div_post\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fir_div_pre\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fir_div_post\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdhc1_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdhc2_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpt_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"epit1_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"epit2_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iim_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ata_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdma_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cspi3_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rng_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart1_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart2_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi1_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c1_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c2_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c3_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hantro_gate\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mstick1_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mstick2_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtc_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wdog_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sim_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ect_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kpp_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipu_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart3_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart4_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart5_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"owire_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi2_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cspi1_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cspi2_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gacc_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emi_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtic_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"firi_gate\00", [22 x i8] zeroinitializer }, align 32
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 131, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 132, i32 40 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 135, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 143, i32 9 }
@___asan_gen_.75 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 51, i32 20 }
@___asan_gen_.78 = private unnamed_addr constant [9 x i8] c"clk_data\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 52, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 56, i32 15 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 57, i32 14 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 58, i32 14 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 59, i32 14 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 60, i32 14 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 61, i32 14 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 62, i32 18 }
@___asan_gen_.102 = private unnamed_addr constant [13 x i8] c"mcu_main_sel\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 34, i32 20 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 63, i32 13 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 64, i32 13 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 65, i32 13 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 66, i32 13 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 67, i32 17 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 68, i32 13 }
@___asan_gen_.123 = private unnamed_addr constant [8 x i8] c"per_sel\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 35, i32 20 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 69, i32 13 }
@___asan_gen_.129 = private unnamed_addr constant [8 x i8] c"csi_sel\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 36, i32 20 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 70, i32 13 }
@___asan_gen_.135 = private unnamed_addr constant [8 x i8] c"fir_sel\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 37, i32 20 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 71, i32 17 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 72, i32 21 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 73, i32 22 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 74, i32 21 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 75, i32 22 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 76, i32 20 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 77, i32 20 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 78, i32 18 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 79, i32 20 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 80, i32 20 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 81, i32 18 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 82, i32 18 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 83, i32 19 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 84, i32 20 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 85, i32 18 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 86, i32 20 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 87, i32 20 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 88, i32 19 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 89, i32 19 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 90, i32 19 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 91, i32 19 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 92, i32 21 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 93, i32 22 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 94, i32 22 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 95, i32 18 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 96, i32 18 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 97, i32 19 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 98, i32 18 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 99, i32 18 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 100, i32 18 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 101, i32 18 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 102, i32 18 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 103, i32 18 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 104, i32 20 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 105, i32 20 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 106, i32 20 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 107, i32 20 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 108, i32 19 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 109, i32 20 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 110, i32 20 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 111, i32 19 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 112, i32 18 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 113, i32 19 }
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.268 = private constant [31 x i8] c"../drivers/clk/imx/clk-imx31.c\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 114, i32 19 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__of_table_imx31_ccm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @clk, ptr @clk_data, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mcu_main_sel, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @per_sel, ptr @.str.17, ptr @csi_sel, ptr @.str.18, ptr @fir_sel, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcu_main_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fir_sel to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mx31_clocks_init_dt(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %fref = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fref) #4
  %0 = ptrtoint ptr %fref to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 26000000, ptr %fref, align 4
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #4
  %tobool.not20 = icmp eq ptr %call, null
  br i1 %tobool.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %osc_np.021 = phi ptr [ %call7, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call1 = call i32 @of_device_is_compatible(ptr noundef nonnull %osc_np.021, ptr noundef nonnull @.str.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %osc_np.021, ptr noundef nonnull @.str.2, ptr noundef nonnull %fref, i32 noundef 1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool4.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool4.not, label %if.then5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @of_node_put(ptr noundef nonnull %osc_np.021) #4
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call7 = call ptr @of_find_compatible_node(ptr noundef nonnull %osc_np.021, ptr noundef null, ptr noundef nonnull @.str) #4
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then5, %entry.for.end_crit_edge
  %call8 = call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #4
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mx31_clocks_init_dt) #7
  unreachable

if.end11:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %fref to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fref, align 4
  call fastcc void @_mx31_clocks_init(ptr noundef nonnull %call8, i32 noundef %2) #8
  store ptr @clk, ptr @clk_data, align 4
  store i32 59, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %call12 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fref) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_mx31_clocks_init(ptr noundef %base, i32 noundef %fref) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
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
  %call.i232 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %fref, i32 noundef 0, i32 noundef 0) #4
  %tobool.not.i.i233 = icmp eq ptr %call.i232, null
  %cmp.i.i234 = icmp ugt ptr %call.i232, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i235 = or i1 %tobool.not.i.i233, %cmp.i.i234
  br i1 %spec.select.i.i235, label %to_clk.exit.to_clk.exit239_crit_edge, label %if.end.i237

to_clk.exit.to_clk.exit239_crit_edge:             ; preds = %to_clk.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit239

if.end.i237:                                      ; preds = %to_clk.exit
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i236 = getelementptr inbounds %struct.clk_hw, ptr %call.i232, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i236 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i236, align 4
  br label %to_clk.exit239

to_clk.exit239:                                   ; preds = %if.end.i237, %to_clk.exit.to_clk.exit239_crit_edge
  %retval.0.i238 = phi ptr [ %3, %if.end.i237 ], [ %call.i232, %to_clk.exit.to_clk.exit239_crit_edge ]
  store ptr %retval.0.i238, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 1), align 4
  %call.i240 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 32768, i32 noundef 0, i32 noundef 0) #4
  %tobool.not.i.i241 = icmp eq ptr %call.i240, null
  %cmp.i.i242 = icmp ugt ptr %call.i240, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i243 = or i1 %tobool.not.i.i241, %cmp.i.i242
  br i1 %spec.select.i.i243, label %to_clk.exit239.to_clk.exit247_crit_edge, label %if.end.i245

to_clk.exit239.to_clk.exit247_crit_edge:          ; preds = %to_clk.exit239
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit247

if.end.i245:                                      ; preds = %to_clk.exit239
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i244 = getelementptr inbounds %struct.clk_hw, ptr %call.i240, i32 0, i32 1
  %4 = ptrtoint ptr %clk.i244 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i244, align 4
  br label %to_clk.exit247

to_clk.exit247:                                   ; preds = %if.end.i245, %to_clk.exit239.to_clk.exit247_crit_edge
  %retval.0.i246 = phi ptr [ %5, %if.end.i245 ], [ %call.i240, %to_clk.exit239.to_clk.exit247_crit_edge ]
  store ptr %retval.0.i246, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 2), align 4
  %add.ptr = getelementptr i8, ptr %base, i32 16
  %call6 = tail call ptr @imx_clk_hw_pllv1(i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, ptr noundef %add.ptr) #4
  %tobool.not.i.i248 = icmp eq ptr %call6, null
  %cmp.i.i249 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i250 = or i1 %tobool.not.i.i248, %cmp.i.i249
  br i1 %spec.select.i.i250, label %to_clk.exit247.to_clk.exit254_crit_edge, label %if.end.i252

to_clk.exit247.to_clk.exit254_crit_edge:          ; preds = %to_clk.exit247
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit254

if.end.i252:                                      ; preds = %to_clk.exit247
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i251 = getelementptr inbounds %struct.clk_hw, ptr %call6, i32 0, i32 1
  %6 = ptrtoint ptr %clk.i251 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i251, align 4
  br label %to_clk.exit254

to_clk.exit254:                                   ; preds = %if.end.i252, %to_clk.exit247.to_clk.exit254_crit_edge
  %retval.0.i253 = phi ptr [ %7, %if.end.i252 ], [ %call6, %to_clk.exit247.to_clk.exit254_crit_edge ]
  store ptr %retval.0.i253, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 3), align 4
  %add.ptr8 = getelementptr i8, ptr %base, i32 24
  %call9 = tail call ptr @imx_clk_hw_pllv1(i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, ptr noundef %add.ptr8) #4
  %tobool.not.i.i255 = icmp eq ptr %call9, null
  %cmp.i.i256 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i257 = or i1 %tobool.not.i.i255, %cmp.i.i256
  br i1 %spec.select.i.i257, label %to_clk.exit254.to_clk.exit261_crit_edge, label %if.end.i259

to_clk.exit254.to_clk.exit261_crit_edge:          ; preds = %to_clk.exit254
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit261

if.end.i259:                                      ; preds = %to_clk.exit254
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i258 = getelementptr inbounds %struct.clk_hw, ptr %call9, i32 0, i32 1
  %8 = ptrtoint ptr %clk.i258 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i258, align 4
  br label %to_clk.exit261

to_clk.exit261:                                   ; preds = %if.end.i259, %to_clk.exit254.to_clk.exit261_crit_edge
  %retval.0.i260 = phi ptr [ %9, %if.end.i259 ], [ %call9, %to_clk.exit254.to_clk.exit261_crit_edge ]
  store ptr %retval.0.i260, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 4), align 4
  %add.ptr11 = getelementptr i8, ptr %base, i32 20
  %call12 = tail call ptr @imx_clk_hw_pllv1(i32 noundef 4, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef %add.ptr11) #4
  %tobool.not.i.i262 = icmp eq ptr %call12, null
  %cmp.i.i263 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i264 = or i1 %tobool.not.i.i262, %cmp.i.i263
  br i1 %spec.select.i.i264, label %to_clk.exit261.to_clk.exit268_crit_edge, label %if.end.i266

to_clk.exit261.to_clk.exit268_crit_edge:          ; preds = %to_clk.exit261
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit268

if.end.i266:                                      ; preds = %to_clk.exit261
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i265 = getelementptr inbounds %struct.clk_hw, ptr %call12, i32 0, i32 1
  %10 = ptrtoint ptr %clk.i265 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i265, align 4
  br label %to_clk.exit268

to_clk.exit268:                                   ; preds = %if.end.i266, %to_clk.exit261.to_clk.exit268_crit_edge
  %retval.0.i267 = phi ptr [ %11, %if.end.i266 ], [ %call12, %to_clk.exit261.to_clk.exit268_crit_edge ]
  store ptr %retval.0.i267, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 5), align 4
  %add.ptr14 = getelementptr i8, ptr %base, i32 92
  %call.i269 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, ptr noundef nonnull @mcu_main_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr14, i8 noundef zeroext 31, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i270 = icmp eq ptr %call.i269, null
  %cmp.i.i271 = icmp ugt ptr %call.i269, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i272 = or i1 %tobool.not.i.i270, %cmp.i.i271
  br i1 %spec.select.i.i272, label %to_clk.exit268.to_clk.exit276_crit_edge, label %if.end.i274

to_clk.exit268.to_clk.exit276_crit_edge:          ; preds = %to_clk.exit268
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit276

if.end.i274:                                      ; preds = %to_clk.exit268
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i273 = getelementptr inbounds %struct.clk_hw, ptr %call.i269, i32 0, i32 1
  %12 = ptrtoint ptr %clk.i273 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i273, align 4
  br label %to_clk.exit276

to_clk.exit276:                                   ; preds = %if.end.i274, %to_clk.exit268.to_clk.exit276_crit_edge
  %retval.0.i275 = phi ptr [ %13, %if.end.i274 ], [ %call.i269, %to_clk.exit268.to_clk.exit276_crit_edge ]
  store ptr %retval.0.i275, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 6), align 4
  %add.ptr17 = getelementptr i8, ptr %base, i32 4
  %call.i277 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr17, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i278 = icmp eq ptr %call.i277, null
  %cmp.i.i279 = icmp ugt ptr %call.i277, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i280 = or i1 %tobool.not.i.i278, %cmp.i.i279
  br i1 %spec.select.i.i280, label %to_clk.exit276.to_clk.exit284_crit_edge, label %if.end.i282

to_clk.exit276.to_clk.exit284_crit_edge:          ; preds = %to_clk.exit276
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit284

if.end.i282:                                      ; preds = %to_clk.exit276
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i281 = getelementptr inbounds %struct.clk_hw, ptr %call.i277, i32 0, i32 1
  %14 = ptrtoint ptr %clk.i281 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk.i281, align 4
  br label %to_clk.exit284

to_clk.exit284:                                   ; preds = %if.end.i282, %to_clk.exit276.to_clk.exit284_crit_edge
  %retval.0.i283 = phi ptr [ %15, %if.end.i282 ], [ %call.i277, %to_clk.exit276.to_clk.exit284_crit_edge ]
  store ptr %retval.0.i283, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 7), align 4
  %call.i285 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr17, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i286 = icmp eq ptr %call.i285, null
  %cmp.i.i287 = icmp ugt ptr %call.i285, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i288 = or i1 %tobool.not.i.i286, %cmp.i.i287
  br i1 %spec.select.i.i288, label %to_clk.exit284.to_clk.exit292_crit_edge, label %if.end.i290

to_clk.exit284.to_clk.exit292_crit_edge:          ; preds = %to_clk.exit284
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit292

if.end.i290:                                      ; preds = %to_clk.exit284
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i289 = getelementptr inbounds %struct.clk_hw, ptr %call.i285, i32 0, i32 1
  %16 = ptrtoint ptr %clk.i289 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk.i289, align 4
  br label %to_clk.exit292

to_clk.exit292:                                   ; preds = %if.end.i290, %to_clk.exit284.to_clk.exit292_crit_edge
  %retval.0.i291 = phi ptr [ %17, %if.end.i290 ], [ %call.i285, %to_clk.exit284.to_clk.exit292_crit_edge ]
  store ptr %retval.0.i291, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 8), align 4
  %call.i293 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr17, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i294 = icmp eq ptr %call.i293, null
  %cmp.i.i295 = icmp ugt ptr %call.i293, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i296 = or i1 %tobool.not.i.i294, %cmp.i.i295
  br i1 %spec.select.i.i296, label %to_clk.exit292.to_clk.exit300_crit_edge, label %if.end.i298

to_clk.exit292.to_clk.exit300_crit_edge:          ; preds = %to_clk.exit292
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit300

if.end.i298:                                      ; preds = %to_clk.exit292
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i297 = getelementptr inbounds %struct.clk_hw, ptr %call.i293, i32 0, i32 1
  %18 = ptrtoint ptr %clk.i297 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk.i297, align 4
  br label %to_clk.exit300

to_clk.exit300:                                   ; preds = %if.end.i298, %to_clk.exit292.to_clk.exit300_crit_edge
  %retval.0.i299 = phi ptr [ %19, %if.end.i298 ], [ %call.i293, %to_clk.exit292.to_clk.exit300_crit_edge ]
  store ptr %retval.0.i299, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 9), align 4
  %call.i301 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr17, i8 noundef zeroext 6, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i302 = icmp eq ptr %call.i301, null
  %cmp.i.i303 = icmp ugt ptr %call.i301, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i304 = or i1 %tobool.not.i.i302, %cmp.i.i303
  br i1 %spec.select.i.i304, label %to_clk.exit300.to_clk.exit308_crit_edge, label %if.end.i306

to_clk.exit300.to_clk.exit308_crit_edge:          ; preds = %to_clk.exit300
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit308

if.end.i306:                                      ; preds = %to_clk.exit300
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i305 = getelementptr inbounds %struct.clk_hw, ptr %call.i301, i32 0, i32 1
  %20 = ptrtoint ptr %clk.i305 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk.i305, align 4
  br label %to_clk.exit308

to_clk.exit308:                                   ; preds = %if.end.i306, %to_clk.exit300.to_clk.exit308_crit_edge
  %retval.0.i307 = phi ptr [ %21, %if.end.i306 ], [ %call.i301, %to_clk.exit300.to_clk.exit308_crit_edge ]
  store ptr %retval.0.i307, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 10), align 4
  %call.i309 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.9, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr17, i8 noundef zeroext 16, i8 noundef zeroext 5, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i310 = icmp eq ptr %call.i309, null
  %cmp.i.i311 = icmp ugt ptr %call.i309, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i312 = or i1 %tobool.not.i.i310, %cmp.i.i311
  br i1 %spec.select.i.i312, label %to_clk.exit308.to_clk.exit316_crit_edge, label %if.end.i314

to_clk.exit308.to_clk.exit316_crit_edge:          ; preds = %to_clk.exit308
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit316

if.end.i314:                                      ; preds = %to_clk.exit308
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i313 = getelementptr inbounds %struct.clk_hw, ptr %call.i309, i32 0, i32 1
  %22 = ptrtoint ptr %clk.i313 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i313, align 4
  br label %to_clk.exit316

to_clk.exit316:                                   ; preds = %if.end.i314, %to_clk.exit308.to_clk.exit316_crit_edge
  %retval.0.i315 = phi ptr [ %23, %if.end.i314 ], [ %call.i309, %to_clk.exit308.to_clk.exit316_crit_edge ]
  store ptr %retval.0.i315, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 11), align 4
  %call.i317 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.16, i8 noundef zeroext 2, ptr noundef nonnull @per_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %base, i8 noundef zeroext 24, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i318 = icmp eq ptr %call.i317, null
  %cmp.i.i319 = icmp ugt ptr %call.i317, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i320 = or i1 %tobool.not.i.i318, %cmp.i.i319
  br i1 %spec.select.i.i320, label %to_clk.exit316.to_clk.exit324_crit_edge, label %if.end.i322

to_clk.exit316.to_clk.exit324_crit_edge:          ; preds = %to_clk.exit316
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit324

if.end.i322:                                      ; preds = %to_clk.exit316
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i321 = getelementptr inbounds %struct.clk_hw, ptr %call.i317, i32 0, i32 1
  %24 = ptrtoint ptr %clk.i321 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk.i321, align 4
  br label %to_clk.exit324

to_clk.exit324:                                   ; preds = %if.end.i322, %to_clk.exit316.to_clk.exit324_crit_edge
  %retval.0.i323 = phi ptr [ %25, %if.end.i322 ], [ %call.i317, %to_clk.exit316.to_clk.exit324_crit_edge ]
  store ptr %retval.0.i323, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 12), align 4
  %call.i325 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.17, i8 noundef zeroext 2, ptr noundef nonnull @csi_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %base, i8 noundef zeroext 25, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i326 = icmp eq ptr %call.i325, null
  %cmp.i.i327 = icmp ugt ptr %call.i325, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i328 = or i1 %tobool.not.i.i326, %cmp.i.i327
  br i1 %spec.select.i.i328, label %to_clk.exit324.to_clk.exit332_crit_edge, label %if.end.i330

to_clk.exit324.to_clk.exit332_crit_edge:          ; preds = %to_clk.exit324
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit332

if.end.i330:                                      ; preds = %to_clk.exit324
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i329 = getelementptr inbounds %struct.clk_hw, ptr %call.i325, i32 0, i32 1
  %26 = ptrtoint ptr %clk.i329 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk.i329, align 4
  br label %to_clk.exit332

to_clk.exit332:                                   ; preds = %if.end.i330, %to_clk.exit324.to_clk.exit332_crit_edge
  %retval.0.i331 = phi ptr [ %27, %if.end.i330 ], [ %call.i325, %to_clk.exit324.to_clk.exit332_crit_edge ]
  store ptr %retval.0.i331, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 13), align 4
  %call.i333 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.18, i8 noundef zeroext 3, ptr noundef nonnull @fir_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %base, i8 noundef zeroext 11, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i334 = icmp eq ptr %call.i333, null
  %cmp.i.i335 = icmp ugt ptr %call.i333, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i336 = or i1 %tobool.not.i.i334, %cmp.i.i335
  br i1 %spec.select.i.i336, label %to_clk.exit332.to_clk.exit340_crit_edge, label %if.end.i338

to_clk.exit332.to_clk.exit340_crit_edge:          ; preds = %to_clk.exit332
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit340

if.end.i338:                                      ; preds = %to_clk.exit332
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i337 = getelementptr inbounds %struct.clk_hw, ptr %call.i333, i32 0, i32 1
  %28 = ptrtoint ptr %clk.i337 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk.i337, align 4
  br label %to_clk.exit340

to_clk.exit340:                                   ; preds = %if.end.i338, %to_clk.exit332.to_clk.exit340_crit_edge
  %retval.0.i339 = phi ptr [ %29, %if.end.i338 ], [ %call.i333, %to_clk.exit332.to_clk.exit340_crit_edge ]
  store ptr %retval.0.i339, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 14), align 4
  %call.i341 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr17, i8 noundef zeroext 23, i8 noundef zeroext 9, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i342 = icmp eq ptr %call.i341, null
  %cmp.i.i343 = icmp ugt ptr %call.i341, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i344 = or i1 %tobool.not.i.i342, %cmp.i.i343
  br i1 %spec.select.i.i344, label %to_clk.exit340.to_clk.exit348_crit_edge, label %if.end.i346

to_clk.exit340.to_clk.exit348_crit_edge:          ; preds = %to_clk.exit340
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit348

if.end.i346:                                      ; preds = %to_clk.exit340
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i345 = getelementptr inbounds %struct.clk_hw, ptr %call.i341, i32 0, i32 1
  %30 = ptrtoint ptr %clk.i345 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk.i345, align 4
  br label %to_clk.exit348

to_clk.exit348:                                   ; preds = %if.end.i346, %to_clk.exit340.to_clk.exit348_crit_edge
  %retval.0.i347 = phi ptr [ %31, %if.end.i346 ], [ %call.i341, %to_clk.exit340.to_clk.exit348_crit_edge ]
  store ptr %retval.0.i347, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 15), align 4
  %add.ptr44 = getelementptr i8, ptr %base, i32 8
  %call.i349 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.9, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr44, i8 noundef zeroext 30, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i350 = icmp eq ptr %call.i349, null
  %cmp.i.i351 = icmp ugt ptr %call.i349, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i352 = or i1 %tobool.not.i.i350, %cmp.i.i351
  br i1 %spec.select.i.i352, label %to_clk.exit348.to_clk.exit356_crit_edge, label %if.end.i354

to_clk.exit348.to_clk.exit356_crit_edge:          ; preds = %to_clk.exit348
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit356

if.end.i354:                                      ; preds = %to_clk.exit348
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i353 = getelementptr inbounds %struct.clk_hw, ptr %call.i349, i32 0, i32 1
  %32 = ptrtoint ptr %clk.i353 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk.i353, align 4
  br label %to_clk.exit356

to_clk.exit356:                                   ; preds = %if.end.i354, %to_clk.exit348.to_clk.exit356_crit_edge
  %retval.0.i355 = phi ptr [ %33, %if.end.i354 ], [ %call.i349, %to_clk.exit348.to_clk.exit356_crit_edge ]
  store ptr %retval.0.i355, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 16), align 4
  %call.i357 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr44, i8 noundef zeroext 27, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i358 = icmp eq ptr %call.i357, null
  %cmp.i.i359 = icmp ugt ptr %call.i357, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i360 = or i1 %tobool.not.i.i358, %cmp.i.i359
  br i1 %spec.select.i.i360, label %to_clk.exit356.to_clk.exit364_crit_edge, label %if.end.i362

to_clk.exit356.to_clk.exit364_crit_edge:          ; preds = %to_clk.exit356
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit364

if.end.i362:                                      ; preds = %to_clk.exit356
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i361 = getelementptr inbounds %struct.clk_hw, ptr %call.i357, i32 0, i32 1
  %34 = ptrtoint ptr %clk.i361 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk.i361, align 4
  br label %to_clk.exit364

to_clk.exit364:                                   ; preds = %if.end.i362, %to_clk.exit356.to_clk.exit364_crit_edge
  %retval.0.i363 = phi ptr [ %35, %if.end.i362 ], [ %call.i357, %to_clk.exit356.to_clk.exit364_crit_edge ]
  store ptr %retval.0.i363, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 17), align 4
  %call.i365 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr44, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i366 = icmp eq ptr %call.i365, null
  %cmp.i.i367 = icmp ugt ptr %call.i365, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i368 = or i1 %tobool.not.i.i366, %cmp.i.i367
  br i1 %spec.select.i.i368, label %to_clk.exit364.to_clk.exit372_crit_edge, label %if.end.i370

to_clk.exit364.to_clk.exit372_crit_edge:          ; preds = %to_clk.exit364
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit372

if.end.i370:                                      ; preds = %to_clk.exit364
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i369 = getelementptr inbounds %struct.clk_hw, ptr %call.i365, i32 0, i32 1
  %36 = ptrtoint ptr %clk.i369 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk.i369, align 4
  br label %to_clk.exit372

to_clk.exit372:                                   ; preds = %if.end.i370, %to_clk.exit364.to_clk.exit372_crit_edge
  %retval.0.i371 = phi ptr [ %37, %if.end.i370 ], [ %call.i365, %to_clk.exit364.to_clk.exit372_crit_edge ]
  store ptr %retval.0.i371, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 18), align 4
  %call.i373 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr44, i8 noundef zeroext 23, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %tobool.not.i.i374 = icmp eq ptr %call.i373, null
  %cmp.i.i375 = icmp ugt ptr %call.i373, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i376 = or i1 %tobool.not.i.i374, %cmp.i.i375
  br i1 %spec.select.i.i376, label %to_clk.exit372.to_clk.exit380_crit_edge, label %if.end.i378

to_clk.exit372.to_clk.exit380_crit_edge:          ; preds = %to_clk.exit372
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit380

if.end.i378:                                      ; preds = %to_clk.exit372
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i377 = getelementptr inbounds %struct.clk_hw, ptr %call.i373, i32 0, i32 1
  %38 = ptrtoint ptr %clk.i377 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk.i377, align 4
  br label %to_clk.exit380

to_clk.exit380:                                   ; preds = %if.end.i378, %to_clk.exit372.to_clk.exit380_crit_edge
  %retval.0.i379 = phi ptr [ %39, %if.end.i378 ], [ %call.i373, %to_clk.exit372.to_clk.exit380_crit_edge ]
  store ptr %retval.0.i379, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 19), align 4
  %add.ptr56 = getelementptr i8, ptr %base, i32 32
  %call.i381 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i382 = icmp eq ptr %call.i381, null
  %cmp.i.i383 = icmp ugt ptr %call.i381, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i384 = or i1 %tobool.not.i.i382, %cmp.i.i383
  br i1 %spec.select.i.i384, label %to_clk.exit380.to_clk.exit388_crit_edge, label %if.end.i386

to_clk.exit380.to_clk.exit388_crit_edge:          ; preds = %to_clk.exit380
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit388

if.end.i386:                                      ; preds = %to_clk.exit380
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i385 = getelementptr inbounds %struct.clk_hw, ptr %call.i381, i32 0, i32 1
  %40 = ptrtoint ptr %clk.i385 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk.i385, align 4
  br label %to_clk.exit388

to_clk.exit388:                                   ; preds = %if.end.i386, %to_clk.exit380.to_clk.exit388_crit_edge
  %retval.0.i387 = phi ptr [ %41, %if.end.i386 ], [ %call.i381, %to_clk.exit380.to_clk.exit388_crit_edge ]
  store ptr %retval.0.i387, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 20), align 4
  %call.i389 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i390 = icmp eq ptr %call.i389, null
  %cmp.i.i391 = icmp ugt ptr %call.i389, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i392 = or i1 %tobool.not.i.i390, %cmp.i.i391
  br i1 %spec.select.i.i392, label %to_clk.exit388.to_clk.exit396_crit_edge, label %if.end.i394

to_clk.exit388.to_clk.exit396_crit_edge:          ; preds = %to_clk.exit388
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit396

if.end.i394:                                      ; preds = %to_clk.exit388
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i393 = getelementptr inbounds %struct.clk_hw, ptr %call.i389, i32 0, i32 1
  %42 = ptrtoint ptr %clk.i393 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk.i393, align 4
  br label %to_clk.exit396

to_clk.exit396:                                   ; preds = %if.end.i394, %to_clk.exit388.to_clk.exit396_crit_edge
  %retval.0.i395 = phi ptr [ %43, %if.end.i394 ], [ %call.i389, %to_clk.exit388.to_clk.exit396_crit_edge ]
  store ptr %retval.0.i395, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 21), align 4
  %call.i397 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i398 = icmp eq ptr %call.i397, null
  %cmp.i.i399 = icmp ugt ptr %call.i397, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i400 = or i1 %tobool.not.i.i398, %cmp.i.i399
  br i1 %spec.select.i.i400, label %to_clk.exit396.to_clk.exit404_crit_edge, label %if.end.i402

to_clk.exit396.to_clk.exit404_crit_edge:          ; preds = %to_clk.exit396
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit404

if.end.i402:                                      ; preds = %to_clk.exit396
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i401 = getelementptr inbounds %struct.clk_hw, ptr %call.i397, i32 0, i32 1
  %44 = ptrtoint ptr %clk.i401 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk.i401, align 4
  br label %to_clk.exit404

to_clk.exit404:                                   ; preds = %if.end.i402, %to_clk.exit396.to_clk.exit404_crit_edge
  %retval.0.i403 = phi ptr [ %45, %if.end.i402 ], [ %call.i397, %to_clk.exit396.to_clk.exit404_crit_edge ]
  store ptr %retval.0.i403, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 22), align 4
  %call.i405 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i406 = icmp eq ptr %call.i405, null
  %cmp.i.i407 = icmp ugt ptr %call.i405, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i408 = or i1 %tobool.not.i.i406, %cmp.i.i407
  br i1 %spec.select.i.i408, label %to_clk.exit404.to_clk.exit412_crit_edge, label %if.end.i410

to_clk.exit404.to_clk.exit412_crit_edge:          ; preds = %to_clk.exit404
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit412

if.end.i410:                                      ; preds = %to_clk.exit404
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i409 = getelementptr inbounds %struct.clk_hw, ptr %call.i405, i32 0, i32 1
  %46 = ptrtoint ptr %clk.i409 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk.i409, align 4
  br label %to_clk.exit412

to_clk.exit412:                                   ; preds = %if.end.i410, %to_clk.exit404.to_clk.exit412_crit_edge
  %retval.0.i411 = phi ptr [ %47, %if.end.i410 ], [ %call.i405, %to_clk.exit404.to_clk.exit412_crit_edge ]
  store ptr %retval.0.i411, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 23), align 4
  %call.i413 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i414 = icmp eq ptr %call.i413, null
  %cmp.i.i415 = icmp ugt ptr %call.i413, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i416 = or i1 %tobool.not.i.i414, %cmp.i.i415
  br i1 %spec.select.i.i416, label %to_clk.exit412.to_clk.exit420_crit_edge, label %if.end.i418

to_clk.exit412.to_clk.exit420_crit_edge:          ; preds = %to_clk.exit412
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit420

if.end.i418:                                      ; preds = %to_clk.exit412
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i417 = getelementptr inbounds %struct.clk_hw, ptr %call.i413, i32 0, i32 1
  %48 = ptrtoint ptr %clk.i417 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk.i417, align 4
  br label %to_clk.exit420

to_clk.exit420:                                   ; preds = %if.end.i418, %to_clk.exit412.to_clk.exit420_crit_edge
  %retval.0.i419 = phi ptr [ %49, %if.end.i418 ], [ %call.i413, %to_clk.exit412.to_clk.exit420_crit_edge ]
  store ptr %retval.0.i419, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 24), align 4
  %call.i421 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i422 = icmp eq ptr %call.i421, null
  %cmp.i.i423 = icmp ugt ptr %call.i421, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i424 = or i1 %tobool.not.i.i422, %cmp.i.i423
  br i1 %spec.select.i.i424, label %to_clk.exit420.to_clk.exit428_crit_edge, label %if.end.i426

to_clk.exit420.to_clk.exit428_crit_edge:          ; preds = %to_clk.exit420
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit428

if.end.i426:                                      ; preds = %to_clk.exit420
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i425 = getelementptr inbounds %struct.clk_hw, ptr %call.i421, i32 0, i32 1
  %50 = ptrtoint ptr %clk.i425 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk.i425, align 4
  br label %to_clk.exit428

to_clk.exit428:                                   ; preds = %if.end.i426, %to_clk.exit420.to_clk.exit428_crit_edge
  %retval.0.i427 = phi ptr [ %51, %if.end.i426 ], [ %call.i421, %to_clk.exit420.to_clk.exit428_crit_edge ]
  store ptr %retval.0.i427, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 25), align 4
  %call.i429 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i430 = icmp eq ptr %call.i429, null
  %cmp.i.i431 = icmp ugt ptr %call.i429, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i432 = or i1 %tobool.not.i.i430, %cmp.i.i431
  br i1 %spec.select.i.i432, label %to_clk.exit428.to_clk.exit436_crit_edge, label %if.end.i434

to_clk.exit428.to_clk.exit436_crit_edge:          ; preds = %to_clk.exit428
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit436

if.end.i434:                                      ; preds = %to_clk.exit428
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i433 = getelementptr inbounds %struct.clk_hw, ptr %call.i429, i32 0, i32 1
  %52 = ptrtoint ptr %clk.i433 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk.i433, align 4
  br label %to_clk.exit436

to_clk.exit436:                                   ; preds = %if.end.i434, %to_clk.exit428.to_clk.exit436_crit_edge
  %retval.0.i435 = phi ptr [ %53, %if.end.i434 ], [ %call.i429, %to_clk.exit428.to_clk.exit436_crit_edge ]
  store ptr %retval.0.i435, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 26), align 4
  %call.i437 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.12, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i438 = icmp eq ptr %call.i437, null
  %cmp.i.i439 = icmp ugt ptr %call.i437, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i440 = or i1 %tobool.not.i.i438, %cmp.i.i439
  br i1 %spec.select.i.i440, label %to_clk.exit436.to_clk.exit444_crit_edge, label %if.end.i442

to_clk.exit436.to_clk.exit444_crit_edge:          ; preds = %to_clk.exit436
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit444

if.end.i442:                                      ; preds = %to_clk.exit436
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i441 = getelementptr inbounds %struct.clk_hw, ptr %call.i437, i32 0, i32 1
  %54 = ptrtoint ptr %clk.i441 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clk.i441, align 4
  br label %to_clk.exit444

to_clk.exit444:                                   ; preds = %if.end.i442, %to_clk.exit436.to_clk.exit444_crit_edge
  %retval.0.i443 = phi ptr [ %55, %if.end.i442 ], [ %call.i437, %to_clk.exit436.to_clk.exit444_crit_edge ]
  store ptr %retval.0.i443, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 27), align 4
  %call.i445 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i446 = icmp eq ptr %call.i445, null
  %cmp.i.i447 = icmp ugt ptr %call.i445, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i448 = or i1 %tobool.not.i.i446, %cmp.i.i447
  br i1 %spec.select.i.i448, label %to_clk.exit444.to_clk.exit452_crit_edge, label %if.end.i450

to_clk.exit444.to_clk.exit452_crit_edge:          ; preds = %to_clk.exit444
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit452

if.end.i450:                                      ; preds = %to_clk.exit444
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i449 = getelementptr inbounds %struct.clk_hw, ptr %call.i445, i32 0, i32 1
  %56 = ptrtoint ptr %clk.i449 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk.i449, align 4
  br label %to_clk.exit452

to_clk.exit452:                                   ; preds = %if.end.i450, %to_clk.exit444.to_clk.exit452_crit_edge
  %retval.0.i451 = phi ptr [ %57, %if.end.i450 ], [ %call.i445, %to_clk.exit444.to_clk.exit452_crit_edge ]
  store ptr %retval.0.i451, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 28), align 4
  %call.i453 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i454 = icmp eq ptr %call.i453, null
  %cmp.i.i455 = icmp ugt ptr %call.i453, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i456 = or i1 %tobool.not.i.i454, %cmp.i.i455
  br i1 %spec.select.i.i456, label %to_clk.exit452.to_clk.exit460_crit_edge, label %if.end.i458

to_clk.exit452.to_clk.exit460_crit_edge:          ; preds = %to_clk.exit452
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit460

if.end.i458:                                      ; preds = %to_clk.exit452
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i457 = getelementptr inbounds %struct.clk_hw, ptr %call.i453, i32 0, i32 1
  %58 = ptrtoint ptr %clk.i457 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk.i457, align 4
  br label %to_clk.exit460

to_clk.exit460:                                   ; preds = %if.end.i458, %to_clk.exit452.to_clk.exit460_crit_edge
  %retval.0.i459 = phi ptr [ %59, %if.end.i458 ], [ %call.i453, %to_clk.exit452.to_clk.exit460_crit_edge ]
  store ptr %retval.0.i459, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 29), align 4
  %call.i461 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i462 = icmp eq ptr %call.i461, null
  %cmp.i.i463 = icmp ugt ptr %call.i461, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i464 = or i1 %tobool.not.i.i462, %cmp.i.i463
  br i1 %spec.select.i.i464, label %to_clk.exit460.to_clk.exit468_crit_edge, label %if.end.i466

to_clk.exit460.to_clk.exit468_crit_edge:          ; preds = %to_clk.exit460
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit468

if.end.i466:                                      ; preds = %to_clk.exit460
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i465 = getelementptr inbounds %struct.clk_hw, ptr %call.i461, i32 0, i32 1
  %60 = ptrtoint ptr %clk.i465 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk.i465, align 4
  br label %to_clk.exit468

to_clk.exit468:                                   ; preds = %if.end.i466, %to_clk.exit460.to_clk.exit468_crit_edge
  %retval.0.i467 = phi ptr [ %61, %if.end.i466 ], [ %call.i461, %to_clk.exit460.to_clk.exit468_crit_edge ]
  store ptr %retval.0.i467, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 30), align 4
  %call.i469 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i470 = icmp eq ptr %call.i469, null
  %cmp.i.i471 = icmp ugt ptr %call.i469, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i472 = or i1 %tobool.not.i.i470, %cmp.i.i471
  br i1 %spec.select.i.i472, label %to_clk.exit468.to_clk.exit476_crit_edge, label %if.end.i474

to_clk.exit468.to_clk.exit476_crit_edge:          ; preds = %to_clk.exit468
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit476

if.end.i474:                                      ; preds = %to_clk.exit468
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i473 = getelementptr inbounds %struct.clk_hw, ptr %call.i469, i32 0, i32 1
  %62 = ptrtoint ptr %clk.i473 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk.i473, align 4
  br label %to_clk.exit476

to_clk.exit476:                                   ; preds = %if.end.i474, %to_clk.exit468.to_clk.exit476_crit_edge
  %retval.0.i475 = phi ptr [ %63, %if.end.i474 ], [ %call.i469, %to_clk.exit468.to_clk.exit476_crit_edge ]
  store ptr %retval.0.i475, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 31), align 4
  %call.i477 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.8, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i478 = icmp eq ptr %call.i477, null
  %cmp.i.i479 = icmp ugt ptr %call.i477, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i480 = or i1 %tobool.not.i.i478, %cmp.i.i479
  br i1 %spec.select.i.i480, label %to_clk.exit476.to_clk.exit484_crit_edge, label %if.end.i482

to_clk.exit476.to_clk.exit484_crit_edge:          ; preds = %to_clk.exit476
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit484

if.end.i482:                                      ; preds = %to_clk.exit476
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i481 = getelementptr inbounds %struct.clk_hw, ptr %call.i477, i32 0, i32 1
  %64 = ptrtoint ptr %clk.i481 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk.i481, align 4
  br label %to_clk.exit484

to_clk.exit484:                                   ; preds = %if.end.i482, %to_clk.exit476.to_clk.exit484_crit_edge
  %retval.0.i483 = phi ptr [ %65, %if.end.i482 ], [ %call.i477, %to_clk.exit476.to_clk.exit484_crit_edge ]
  store ptr %retval.0.i483, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 32), align 4
  %call.i485 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i486 = icmp eq ptr %call.i485, null
  %cmp.i.i487 = icmp ugt ptr %call.i485, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i488 = or i1 %tobool.not.i.i486, %cmp.i.i487
  br i1 %spec.select.i.i488, label %to_clk.exit484.to_clk.exit492_crit_edge, label %if.end.i490

to_clk.exit484.to_clk.exit492_crit_edge:          ; preds = %to_clk.exit484
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit492

if.end.i490:                                      ; preds = %to_clk.exit484
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i489 = getelementptr inbounds %struct.clk_hw, ptr %call.i485, i32 0, i32 1
  %66 = ptrtoint ptr %clk.i489 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clk.i489, align 4
  br label %to_clk.exit492

to_clk.exit492:                                   ; preds = %if.end.i490, %to_clk.exit484.to_clk.exit492_crit_edge
  %retval.0.i491 = phi ptr [ %67, %if.end.i490 ], [ %call.i485, %to_clk.exit484.to_clk.exit492_crit_edge ]
  store ptr %retval.0.i491, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 33), align 4
  %call.i493 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i494 = icmp eq ptr %call.i493, null
  %cmp.i.i495 = icmp ugt ptr %call.i493, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i496 = or i1 %tobool.not.i.i494, %cmp.i.i495
  br i1 %spec.select.i.i496, label %to_clk.exit492.to_clk.exit500_crit_edge, label %if.end.i498

to_clk.exit492.to_clk.exit500_crit_edge:          ; preds = %to_clk.exit492
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit500

if.end.i498:                                      ; preds = %to_clk.exit492
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i497 = getelementptr inbounds %struct.clk_hw, ptr %call.i493, i32 0, i32 1
  %68 = ptrtoint ptr %clk.i497 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk.i497, align 4
  br label %to_clk.exit500

to_clk.exit500:                                   ; preds = %if.end.i498, %to_clk.exit492.to_clk.exit500_crit_edge
  %retval.0.i499 = phi ptr [ %69, %if.end.i498 ], [ %call.i493, %to_clk.exit492.to_clk.exit500_crit_edge ]
  store ptr %retval.0.i499, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 34), align 4
  %call.i501 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr56, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i502 = icmp eq ptr %call.i501, null
  %cmp.i.i503 = icmp ugt ptr %call.i501, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i504 = or i1 %tobool.not.i.i502, %cmp.i.i503
  br i1 %spec.select.i.i504, label %to_clk.exit500.to_clk.exit508_crit_edge, label %if.end.i506

to_clk.exit500.to_clk.exit508_crit_edge:          ; preds = %to_clk.exit500
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit508

if.end.i506:                                      ; preds = %to_clk.exit500
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i505 = getelementptr inbounds %struct.clk_hw, ptr %call.i501, i32 0, i32 1
  %70 = ptrtoint ptr %clk.i505 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clk.i505, align 4
  br label %to_clk.exit508

to_clk.exit508:                                   ; preds = %if.end.i506, %to_clk.exit500.to_clk.exit508_crit_edge
  %retval.0.i507 = phi ptr [ %71, %if.end.i506 ], [ %call.i501, %to_clk.exit500.to_clk.exit508_crit_edge ]
  store ptr %retval.0.i507, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 35), align 4
  %add.ptr104 = getelementptr i8, ptr %base, i32 36
  %call.i509 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr104, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i510 = icmp eq ptr %call.i509, null
  %cmp.i.i511 = icmp ugt ptr %call.i509, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i512 = or i1 %tobool.not.i.i510, %cmp.i.i511
  br i1 %spec.select.i.i512, label %to_clk.exit508.to_clk.exit516_crit_edge, label %if.end.i514

to_clk.exit508.to_clk.exit516_crit_edge:          ; preds = %to_clk.exit508
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit516

if.end.i514:                                      ; preds = %to_clk.exit508
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i513 = getelementptr inbounds %struct.clk_hw, ptr %call.i509, i32 0, i32 1
  %72 = ptrtoint ptr %clk.i513 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clk.i513, align 4
  br label %to_clk.exit516

to_clk.exit516:                                   ; preds = %if.end.i514, %to_clk.exit508.to_clk.exit516_crit_edge
  %retval.0.i515 = phi ptr [ %73, %if.end.i514 ], [ %call.i509, %to_clk.exit508.to_clk.exit516_crit_edge ]
  store ptr %retval.0.i515, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 36), align 4
  %call.i517 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr104, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i518 = icmp eq ptr %call.i517, null
  %cmp.i.i519 = icmp ugt ptr %call.i517, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i520 = or i1 %tobool.not.i.i518, %cmp.i.i519
  br i1 %spec.select.i.i520, label %to_clk.exit516.to_clk.exit524_crit_edge, label %if.end.i522

to_clk.exit516.to_clk.exit524_crit_edge:          ; preds = %to_clk.exit516
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit524

if.end.i522:                                      ; preds = %to_clk.exit516
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i521 = getelementptr inbounds %struct.clk_hw, ptr %call.i517, i32 0, i32 1
  %74 = ptrtoint ptr %clk.i521 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %clk.i521, align 4
  br label %to_clk.exit524

to_clk.exit524:                                   ; preds = %if.end.i522, %to_clk.exit516.to_clk.exit524_crit_edge
  %retval.0.i523 = phi ptr [ %75, %if.end.i522 ], [ %call.i517, %to_clk.exit516.to_clk.exit524_crit_edge ]
  store ptr %retval.0.i523, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 37), align 4
  %call.i525 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr104, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i526 = icmp eq ptr %call.i525, null
  %cmp.i.i527 = icmp ugt ptr %call.i525, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i528 = or i1 %tobool.not.i.i526, %cmp.i.i527
  br i1 %spec.select.i.i528, label %to_clk.exit524.to_clk.exit532_crit_edge, label %if.end.i530

to_clk.exit524.to_clk.exit532_crit_edge:          ; preds = %to_clk.exit524
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit532

if.end.i530:                                      ; preds = %to_clk.exit524
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i529 = getelementptr inbounds %struct.clk_hw, ptr %call.i525, i32 0, i32 1
  %76 = ptrtoint ptr %clk.i529 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %clk.i529, align 4
  br label %to_clk.exit532

to_clk.exit532:                                   ; preds = %if.end.i530, %to_clk.exit524.to_clk.exit532_crit_edge
  %retval.0.i531 = phi ptr [ %77, %if.end.i530 ], [ %call.i525, %to_clk.exit524.to_clk.exit532_crit_edge ]
  store ptr %retval.0.i531, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 38), align 4
  %call.i533 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.19, i32 noundef 4, ptr noundef %add.ptr104, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i534 = icmp eq ptr %call.i533, null
  %cmp.i.i535 = icmp ugt ptr %call.i533, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i536 = or i1 %tobool.not.i.i534, %cmp.i.i535
  br i1 %spec.select.i.i536, label %to_clk.exit532.to_clk.exit540_crit_edge, label %if.end.i538

to_clk.exit532.to_clk.exit540_crit_edge:          ; preds = %to_clk.exit532
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit540

if.end.i538:                                      ; preds = %to_clk.exit532
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i537 = getelementptr inbounds %struct.clk_hw, ptr %call.i533, i32 0, i32 1
  %78 = ptrtoint ptr %clk.i537 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clk.i537, align 4
  br label %to_clk.exit540

to_clk.exit540:                                   ; preds = %if.end.i538, %to_clk.exit532.to_clk.exit540_crit_edge
  %retval.0.i539 = phi ptr [ %79, %if.end.i538 ], [ %call.i533, %to_clk.exit532.to_clk.exit540_crit_edge ]
  store ptr %retval.0.i539, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 39), align 4
  %call.i541 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr104, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i542 = icmp eq ptr %call.i541, null
  %cmp.i.i543 = icmp ugt ptr %call.i541, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i544 = or i1 %tobool.not.i.i542, %cmp.i.i543
  br i1 %spec.select.i.i544, label %to_clk.exit540.to_clk.exit548_crit_edge, label %if.end.i546

to_clk.exit540.to_clk.exit548_crit_edge:          ; preds = %to_clk.exit540
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit548

if.end.i546:                                      ; preds = %to_clk.exit540
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i545 = getelementptr inbounds %struct.clk_hw, ptr %call.i541, i32 0, i32 1
  %80 = ptrtoint ptr %clk.i545 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clk.i545, align 4
  br label %to_clk.exit548

to_clk.exit548:                                   ; preds = %if.end.i546, %to_clk.exit540.to_clk.exit548_crit_edge
  %retval.0.i547 = phi ptr [ %81, %if.end.i546 ], [ %call.i541, %to_clk.exit540.to_clk.exit548_crit_edge ]
  store ptr %retval.0.i547, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 40), align 4
  %call.i549 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr104, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i550 = icmp eq ptr %call.i549, null
  %cmp.i.i551 = icmp ugt ptr %call.i549, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i552 = or i1 %tobool.not.i.i550, %cmp.i.i551
  br i1 %spec.select.i.i552, label %to_clk.exit548.to_clk.exit556_crit_edge, label %if.end.i554

to_clk.exit548.to_clk.exit556_crit_edge:          ; preds = %to_clk.exit548
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit556

if.end.i554:                                      ; preds = %to_clk.exit548
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i553 = getelementptr inbounds %struct.clk_hw, ptr %call.i549, i32 0, i32 1
  %82 = ptrtoint ptr %clk.i553 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %clk.i553, align 4
  br label %to_clk.exit556

to_clk.exit556:                                   ; preds = %if.end.i554, %to_clk.exit548.to_clk.exit556_crit_edge
  %retval.0.i555 = phi ptr [ %83, %if.end.i554 ], [ %call.i549, %to_clk.exit548.to_clk.exit556_crit_edge ]
  store ptr %retval.0.i555, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 41), align 4
  %call.i557 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr104, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i558 = icmp eq ptr %call.i557, null
  %cmp.i.i559 = icmp ugt ptr %call.i557, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i560 = or i1 %tobool.not.i.i558, %cmp.i.i559
  br i1 %spec.select.i.i560, label %to_clk.exit556.to_clk.exit564_crit_edge, label %if.end.i562

to_clk.exit556.to_clk.exit564_crit_edge:          ; preds = %to_clk.exit556
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit564

if.end.i562:                                      ; preds = %to_clk.exit556
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i561 = getelementptr inbounds %struct.clk_hw, ptr %call.i557, i32 0, i32 1
  %84 = ptrtoint ptr %clk.i561 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %clk.i561, align 4
  br label %to_clk.exit564

to_clk.exit564:                                   ; preds = %if.end.i562, %to_clk.exit556.to_clk.exit564_crit_edge
  %retval.0.i563 = phi ptr [ %85, %if.end.i562 ], [ %call.i557, %to_clk.exit556.to_clk.exit564_crit_edge ]
  store ptr %retval.0.i563, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 42), align 4
  %call.i565 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr104, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i566 = icmp eq ptr %call.i565, null
  %cmp.i.i567 = icmp ugt ptr %call.i565, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i568 = or i1 %tobool.not.i.i566, %cmp.i.i567
  br i1 %spec.select.i.i568, label %to_clk.exit564.to_clk.exit572_crit_edge, label %if.end.i570

to_clk.exit564.to_clk.exit572_crit_edge:          ; preds = %to_clk.exit564
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit572

if.end.i570:                                      ; preds = %to_clk.exit564
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i569 = getelementptr inbounds %struct.clk_hw, ptr %call.i565, i32 0, i32 1
  %86 = ptrtoint ptr %clk.i569 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %clk.i569, align 4
  br label %to_clk.exit572

to_clk.exit572:                                   ; preds = %if.end.i570, %to_clk.exit564.to_clk.exit572_crit_edge
  %retval.0.i571 = phi ptr [ %87, %if.end.i570 ], [ %call.i565, %to_clk.exit564.to_clk.exit572_crit_edge ]
  store ptr %retval.0.i571, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 43), align 4
  %call.i573 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr104, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i574 = icmp eq ptr %call.i573, null
  %cmp.i.i575 = icmp ugt ptr %call.i573, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i576 = or i1 %tobool.not.i.i574, %cmp.i.i575
  br i1 %spec.select.i.i576, label %to_clk.exit572.to_clk.exit580_crit_edge, label %if.end.i578

to_clk.exit572.to_clk.exit580_crit_edge:          ; preds = %to_clk.exit572
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit580

if.end.i578:                                      ; preds = %to_clk.exit572
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i577 = getelementptr inbounds %struct.clk_hw, ptr %call.i573, i32 0, i32 1
  %88 = ptrtoint ptr %clk.i577 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %clk.i577, align 4
  br label %to_clk.exit580

to_clk.exit580:                                   ; preds = %if.end.i578, %to_clk.exit572.to_clk.exit580_crit_edge
  %retval.0.i579 = phi ptr [ %89, %if.end.i578 ], [ %call.i573, %to_clk.exit572.to_clk.exit580_crit_edge ]
  store ptr %retval.0.i579, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 44), align 4
  %call.i581 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.12, i32 noundef 4, ptr noundef %add.ptr104, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i582 = icmp eq ptr %call.i581, null
  %cmp.i.i583 = icmp ugt ptr %call.i581, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i584 = or i1 %tobool.not.i.i582, %cmp.i.i583
  br i1 %spec.select.i.i584, label %to_clk.exit580.to_clk.exit588_crit_edge, label %if.end.i586

to_clk.exit580.to_clk.exit588_crit_edge:          ; preds = %to_clk.exit580
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit588

if.end.i586:                                      ; preds = %to_clk.exit580
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i585 = getelementptr inbounds %struct.clk_hw, ptr %call.i581, i32 0, i32 1
  %90 = ptrtoint ptr %clk.i585 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %clk.i585, align 4
  br label %to_clk.exit588

to_clk.exit588:                                   ; preds = %if.end.i586, %to_clk.exit580.to_clk.exit588_crit_edge
  %retval.0.i587 = phi ptr [ %91, %if.end.i586 ], [ %call.i581, %to_clk.exit580.to_clk.exit588_crit_edge ]
  store ptr %retval.0.i587, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 45), align 4
  %call.i589 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr104, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i590 = icmp eq ptr %call.i589, null
  %cmp.i.i591 = icmp ugt ptr %call.i589, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i592 = or i1 %tobool.not.i.i590, %cmp.i.i591
  br i1 %spec.select.i.i592, label %to_clk.exit588.to_clk.exit596_crit_edge, label %if.end.i594

to_clk.exit588.to_clk.exit596_crit_edge:          ; preds = %to_clk.exit588
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit596

if.end.i594:                                      ; preds = %to_clk.exit588
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i593 = getelementptr inbounds %struct.clk_hw, ptr %call.i589, i32 0, i32 1
  %92 = ptrtoint ptr %clk.i593 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %clk.i593, align 4
  br label %to_clk.exit596

to_clk.exit596:                                   ; preds = %if.end.i594, %to_clk.exit588.to_clk.exit596_crit_edge
  %retval.0.i595 = phi ptr [ %93, %if.end.i594 ], [ %call.i589, %to_clk.exit588.to_clk.exit596_crit_edge ]
  store ptr %retval.0.i595, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 46), align 4
  %call.i597 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.11, i32 noundef 4, ptr noundef %add.ptr104, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i598 = icmp eq ptr %call.i597, null
  %cmp.i.i599 = icmp ugt ptr %call.i597, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i600 = or i1 %tobool.not.i.i598, %cmp.i.i599
  br i1 %spec.select.i.i600, label %to_clk.exit596.to_clk.exit604_crit_edge, label %if.end.i602

to_clk.exit596.to_clk.exit604_crit_edge:          ; preds = %to_clk.exit596
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit604

if.end.i602:                                      ; preds = %to_clk.exit596
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i601 = getelementptr inbounds %struct.clk_hw, ptr %call.i597, i32 0, i32 1
  %94 = ptrtoint ptr %clk.i601 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %clk.i601, align 4
  br label %to_clk.exit604

to_clk.exit604:                                   ; preds = %if.end.i602, %to_clk.exit596.to_clk.exit604_crit_edge
  %retval.0.i603 = phi ptr [ %95, %if.end.i602 ], [ %call.i597, %to_clk.exit596.to_clk.exit604_crit_edge ]
  store ptr %retval.0.i603, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 47), align 4
  %call.i605 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr104, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i606 = icmp eq ptr %call.i605, null
  %cmp.i.i607 = icmp ugt ptr %call.i605, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i608 = or i1 %tobool.not.i.i606, %cmp.i.i607
  br i1 %spec.select.i.i608, label %to_clk.exit604.to_clk.exit612_crit_edge, label %if.end.i610

to_clk.exit604.to_clk.exit612_crit_edge:          ; preds = %to_clk.exit604
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit612

if.end.i610:                                      ; preds = %to_clk.exit604
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i609 = getelementptr inbounds %struct.clk_hw, ptr %call.i605, i32 0, i32 1
  %96 = ptrtoint ptr %clk.i609 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %clk.i609, align 4
  br label %to_clk.exit612

to_clk.exit612:                                   ; preds = %if.end.i610, %to_clk.exit604.to_clk.exit612_crit_edge
  %retval.0.i611 = phi ptr [ %97, %if.end.i610 ], [ %call.i605, %to_clk.exit604.to_clk.exit612_crit_edge ]
  store ptr %retval.0.i611, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 48), align 4
  %call.i613 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr104, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i614 = icmp eq ptr %call.i613, null
  %cmp.i.i615 = icmp ugt ptr %call.i613, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i616 = or i1 %tobool.not.i.i614, %cmp.i.i615
  br i1 %spec.select.i.i616, label %to_clk.exit612.to_clk.exit620_crit_edge, label %if.end.i618

to_clk.exit612.to_clk.exit620_crit_edge:          ; preds = %to_clk.exit612
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit620

if.end.i618:                                      ; preds = %to_clk.exit612
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i617 = getelementptr inbounds %struct.clk_hw, ptr %call.i613, i32 0, i32 1
  %98 = ptrtoint ptr %clk.i617 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %clk.i617, align 4
  br label %to_clk.exit620

to_clk.exit620:                                   ; preds = %if.end.i618, %to_clk.exit612.to_clk.exit620_crit_edge
  %retval.0.i619 = phi ptr [ %99, %if.end.i618 ], [ %call.i613, %to_clk.exit612.to_clk.exit620_crit_edge ]
  store ptr %retval.0.i619, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 49), align 4
  %call.i621 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr104, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i622 = icmp eq ptr %call.i621, null
  %cmp.i.i623 = icmp ugt ptr %call.i621, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i624 = or i1 %tobool.not.i.i622, %cmp.i.i623
  br i1 %spec.select.i.i624, label %to_clk.exit620.to_clk.exit628_crit_edge, label %if.end.i626

to_clk.exit620.to_clk.exit628_crit_edge:          ; preds = %to_clk.exit620
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit628

if.end.i626:                                      ; preds = %to_clk.exit620
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i625 = getelementptr inbounds %struct.clk_hw, ptr %call.i621, i32 0, i32 1
  %100 = ptrtoint ptr %clk.i625 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %clk.i625, align 4
  br label %to_clk.exit628

to_clk.exit628:                                   ; preds = %if.end.i626, %to_clk.exit620.to_clk.exit628_crit_edge
  %retval.0.i627 = phi ptr [ %101, %if.end.i626 ], [ %call.i621, %to_clk.exit620.to_clk.exit628_crit_edge ]
  store ptr %retval.0.i627, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 50), align 4
  %call.i629 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr104, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i630 = icmp eq ptr %call.i629, null
  %cmp.i.i631 = icmp ugt ptr %call.i629, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i632 = or i1 %tobool.not.i.i630, %cmp.i.i631
  br i1 %spec.select.i.i632, label %to_clk.exit628.to_clk.exit636_crit_edge, label %if.end.i634

to_clk.exit628.to_clk.exit636_crit_edge:          ; preds = %to_clk.exit628
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit636

if.end.i634:                                      ; preds = %to_clk.exit628
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i633 = getelementptr inbounds %struct.clk_hw, ptr %call.i629, i32 0, i32 1
  %102 = ptrtoint ptr %clk.i633 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %clk.i633, align 4
  br label %to_clk.exit636

to_clk.exit636:                                   ; preds = %if.end.i634, %to_clk.exit628.to_clk.exit636_crit_edge
  %retval.0.i635 = phi ptr [ %103, %if.end.i634 ], [ %call.i629, %to_clk.exit628.to_clk.exit636_crit_edge ]
  store ptr %retval.0.i635, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 51), align 4
  %add.ptr152 = getelementptr i8, ptr %base, i32 40
  %call.i637 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.8, i32 noundef 4, ptr noundef %add.ptr152, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i638 = icmp eq ptr %call.i637, null
  %cmp.i.i639 = icmp ugt ptr %call.i637, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i640 = or i1 %tobool.not.i.i638, %cmp.i.i639
  br i1 %spec.select.i.i640, label %to_clk.exit636.to_clk.exit644_crit_edge, label %if.end.i642

to_clk.exit636.to_clk.exit644_crit_edge:          ; preds = %to_clk.exit636
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit644

if.end.i642:                                      ; preds = %to_clk.exit636
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i641 = getelementptr inbounds %struct.clk_hw, ptr %call.i637, i32 0, i32 1
  %104 = ptrtoint ptr %clk.i641 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %clk.i641, align 4
  br label %to_clk.exit644

to_clk.exit644:                                   ; preds = %if.end.i642, %to_clk.exit636.to_clk.exit644_crit_edge
  %retval.0.i643 = phi ptr [ %105, %if.end.i642 ], [ %call.i637, %to_clk.exit636.to_clk.exit644_crit_edge ]
  store ptr %retval.0.i643, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 52), align 4
  %call.i645 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr152, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i646 = icmp eq ptr %call.i645, null
  %cmp.i.i647 = icmp ugt ptr %call.i645, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i648 = or i1 %tobool.not.i.i646, %cmp.i.i647
  br i1 %spec.select.i.i648, label %to_clk.exit644.to_clk.exit652_crit_edge, label %if.end.i650

to_clk.exit644.to_clk.exit652_crit_edge:          ; preds = %to_clk.exit644
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit652

if.end.i650:                                      ; preds = %to_clk.exit644
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i649 = getelementptr inbounds %struct.clk_hw, ptr %call.i645, i32 0, i32 1
  %106 = ptrtoint ptr %clk.i649 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %clk.i649, align 4
  br label %to_clk.exit652

to_clk.exit652:                                   ; preds = %if.end.i650, %to_clk.exit644.to_clk.exit652_crit_edge
  %retval.0.i651 = phi ptr [ %107, %if.end.i650 ], [ %call.i645, %to_clk.exit644.to_clk.exit652_crit_edge ]
  store ptr %retval.0.i651, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 53), align 4
  %call.i653 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr152, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i654 = icmp eq ptr %call.i653, null
  %cmp.i.i655 = icmp ugt ptr %call.i653, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i656 = or i1 %tobool.not.i.i654, %cmp.i.i655
  br i1 %spec.select.i.i656, label %to_clk.exit652.to_clk.exit660_crit_edge, label %if.end.i658

to_clk.exit652.to_clk.exit660_crit_edge:          ; preds = %to_clk.exit652
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit660

if.end.i658:                                      ; preds = %to_clk.exit652
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i657 = getelementptr inbounds %struct.clk_hw, ptr %call.i653, i32 0, i32 1
  %108 = ptrtoint ptr %clk.i657 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %clk.i657, align 4
  br label %to_clk.exit660

to_clk.exit660:                                   ; preds = %if.end.i658, %to_clk.exit652.to_clk.exit660_crit_edge
  %retval.0.i659 = phi ptr [ %109, %if.end.i658 ], [ %call.i653, %to_clk.exit652.to_clk.exit660_crit_edge ]
  store ptr %retval.0.i659, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 54), align 4
  %call.i661 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %add.ptr152, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i662 = icmp eq ptr %call.i661, null
  %cmp.i.i663 = icmp ugt ptr %call.i661, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i664 = or i1 %tobool.not.i.i662, %cmp.i.i663
  br i1 %spec.select.i.i664, label %to_clk.exit660.to_clk.exit668_crit_edge, label %if.end.i666

to_clk.exit660.to_clk.exit668_crit_edge:          ; preds = %to_clk.exit660
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit668

if.end.i666:                                      ; preds = %to_clk.exit660
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i665 = getelementptr inbounds %struct.clk_hw, ptr %call.i661, i32 0, i32 1
  %110 = ptrtoint ptr %clk.i665 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %clk.i665, align 4
  br label %to_clk.exit668

to_clk.exit668:                                   ; preds = %if.end.i666, %to_clk.exit660.to_clk.exit668_crit_edge
  %retval.0.i667 = phi ptr [ %111, %if.end.i666 ], [ %call.i661, %to_clk.exit660.to_clk.exit668_crit_edge ]
  store ptr %retval.0.i667, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 55), align 4
  %call.i669 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.12, i32 noundef 4, ptr noundef %add.ptr152, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i670 = icmp eq ptr %call.i669, null
  %cmp.i.i671 = icmp ugt ptr %call.i669, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i672 = or i1 %tobool.not.i.i670, %cmp.i.i671
  br i1 %spec.select.i.i672, label %to_clk.exit668.to_clk.exit676_crit_edge, label %if.end.i674

to_clk.exit668.to_clk.exit676_crit_edge:          ; preds = %to_clk.exit668
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit676

if.end.i674:                                      ; preds = %to_clk.exit668
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i673 = getelementptr inbounds %struct.clk_hw, ptr %call.i669, i32 0, i32 1
  %112 = ptrtoint ptr %clk.i673 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %clk.i673, align 4
  br label %to_clk.exit676

to_clk.exit676:                                   ; preds = %if.end.i674, %to_clk.exit668.to_clk.exit676_crit_edge
  %retval.0.i675 = phi ptr [ %113, %if.end.i674 ], [ %call.i669, %to_clk.exit668.to_clk.exit676_crit_edge ]
  store ptr %retval.0.i675, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 56), align 4
  %call.i677 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.12, i32 noundef 4, ptr noundef %add.ptr152, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i678 = icmp eq ptr %call.i677, null
  %cmp.i.i679 = icmp ugt ptr %call.i677, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i680 = or i1 %tobool.not.i.i678, %cmp.i.i679
  br i1 %spec.select.i.i680, label %to_clk.exit676.to_clk.exit684_crit_edge, label %if.end.i682

to_clk.exit676.to_clk.exit684_crit_edge:          ; preds = %to_clk.exit676
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit684

if.end.i682:                                      ; preds = %to_clk.exit676
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i681 = getelementptr inbounds %struct.clk_hw, ptr %call.i677, i32 0, i32 1
  %114 = ptrtoint ptr %clk.i681 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %clk.i681, align 4
  br label %to_clk.exit684

to_clk.exit684:                                   ; preds = %if.end.i682, %to_clk.exit676.to_clk.exit684_crit_edge
  %retval.0.i683 = phi ptr [ %115, %if.end.i682 ], [ %call.i677, %to_clk.exit676.to_clk.exit684_crit_edge ]
  store ptr %retval.0.i683, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 57), align 4
  %call.i685 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.9, i32 noundef 4, ptr noundef %add.ptr152, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %tobool.not.i.i686 = icmp eq ptr %call.i685, null
  %cmp.i.i687 = icmp ugt ptr %call.i685, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i688 = or i1 %tobool.not.i.i686, %cmp.i.i687
  br i1 %spec.select.i.i688, label %to_clk.exit684.to_clk.exit692_crit_edge, label %if.end.i690

to_clk.exit684.to_clk.exit692_crit_edge:          ; preds = %to_clk.exit684
  call void @__sanitizer_cov_trace_pc() #6
  br label %to_clk.exit692

if.end.i690:                                      ; preds = %to_clk.exit684
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i689 = getelementptr inbounds %struct.clk_hw, ptr %call.i685, i32 0, i32 1
  %116 = ptrtoint ptr %clk.i689 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %clk.i689, align 4
  br label %to_clk.exit692

to_clk.exit692:                                   ; preds = %if.end.i690, %to_clk.exit684.to_clk.exit692_crit_edge
  %retval.0.i691 = phi ptr [ %117, %if.end.i690 ], [ %call.i685, %to_clk.exit684.to_clk.exit692_crit_edge ]
  store ptr %retval.0.i691, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 58), align 4
  tail call void @imx_check_clocks(ptr noundef nonnull @clk, i32 noundef 59) #4
  %118 = load ptr, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 13), align 4
  %119 = load ptr, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 5), align 4
  %call173 = tail call i32 @clk_set_parent(ptr noundef %118, ptr noundef %119) #4
  %120 = load ptr, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 56), align 4
  %call.i693 = tail call i32 @clk_prepare(ptr noundef %120) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i693)
  %tobool.not.i = icmp eq i32 %call.i693, 0
  br i1 %tobool.not.i, label %if.end.i694, label %to_clk.exit692.clk_prepare_enable.exit_crit_edge

to_clk.exit692.clk_prepare_enable.exit_crit_edge: ; preds = %to_clk.exit692
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i694:                                      ; preds = %to_clk.exit692
  %call1.i = tail call i32 @clk_enable(ptr noundef %120) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i694.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i694.clk_prepare_enable.exit_crit_edge:    ; preds = %if.end.i694
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i694
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %120) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i694.clk_prepare_enable.exit_crit_edge, %to_clk.exit692.clk_prepare_enable.exit_crit_edge
  %121 = load ptr, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 25), align 4
  %call.i695 = tail call i32 @clk_prepare(ptr noundef %121) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i695)
  %tobool.not.i696 = icmp eq i32 %call.i695, 0
  br i1 %tobool.not.i696, label %if.end.i699, label %clk_prepare_enable.exit.clk_prepare_enable.exit701_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit701_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit701

if.end.i699:                                      ; preds = %clk_prepare_enable.exit
  %call1.i697 = tail call i32 @clk_enable(ptr noundef %121) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i697)
  %tobool2.not.i698 = icmp eq i32 %call1.i697, 0
  br i1 %tobool2.not.i698, label %if.end.i699.clk_prepare_enable.exit701_crit_edge, label %if.then3.i700

if.end.i699.clk_prepare_enable.exit701_crit_edge: ; preds = %if.end.i699
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit701

if.then3.i700:                                    ; preds = %if.end.i699
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %121) #4
  br label %clk_prepare_enable.exit701

clk_prepare_enable.exit701:                       ; preds = %if.then3.i700, %if.end.i699.clk_prepare_enable.exit701_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit701_crit_edge
  %call176 = tail call i32 @mx31_revision() #4
  %122 = load ptr, ptr getelementptr inbounds ([59 x ptr], ptr @clk, i32 0, i32 25), align 4
  tail call void @clk_disable(ptr noundef %122) #4
  tail call void @clk_unprepare(ptr noundef %122) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pllv1(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clocks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mx31_revision() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_gate2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @__of_table_imx31_ccm, !1, !"__of_table_imx31_ccm", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-imx31.c", i32 152, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-imx31.c", i32 131, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-imx31.c", i32 132, i32 40}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/imx/clk-imx31.c", i32 135, i32 37}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/imx/clk-imx31.c", i32 143, i32 9}
!10 = !{ptr @__func__.mx31_clocks_init_dt, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-imx31.c", i32 143, i32 42}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/imx/clk-imx31.c", i32 56, i32 15}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/imx/clk-imx31.c", i32 57, i32 14}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/imx/clk-imx31.c", i32 58, i32 14}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/imx/clk-imx31.c", i32 59, i32 14}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/imx/clk-imx31.c", i32 60, i32 14}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/imx/clk-imx31.c", i32 61, i32 14}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/imx/clk-imx31.c", i32 62, i32 18}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/imx/clk-imx31.c", i32 63, i32 13}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/imx/clk-imx31.c", i32 64, i32 13}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/imx/clk-imx31.c", i32 65, i32 13}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/imx/clk-imx31.c", i32 66, i32 13}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/imx/clk-imx31.c", i32 67, i32 17}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/imx/clk-imx31.c", i32 68, i32 13}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/imx/clk-imx31.c", i32 69, i32 13}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/imx/clk-imx31.c", i32 70, i32 13}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/imx/clk-imx31.c", i32 71, i32 17}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/imx/clk-imx31.c", i32 72, i32 21}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/imx/clk-imx31.c", i32 73, i32 22}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/imx/clk-imx31.c", i32 74, i32 21}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/imx/clk-imx31.c", i32 75, i32 22}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/imx/clk-imx31.c", i32 76, i32 20}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/imx/clk-imx31.c", i32 77, i32 20}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/imx/clk-imx31.c", i32 78, i32 18}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/imx/clk-imx31.c", i32 79, i32 20}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/imx/clk-imx31.c", i32 80, i32 20}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/imx/clk-imx31.c", i32 81, i32 18}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/imx/clk-imx31.c", i32 82, i32 18}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/imx/clk-imx31.c", i32 83, i32 19}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/imx/clk-imx31.c", i32 84, i32 20}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/imx/clk-imx31.c", i32 85, i32 18}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/imx/clk-imx31.c", i32 86, i32 20}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/imx/clk-imx31.c", i32 87, i32 20}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/imx/clk-imx31.c", i32 88, i32 19}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/imx/clk-imx31.c", i32 89, i32 19}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/imx/clk-imx31.c", i32 90, i32 19}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/imx/clk-imx31.c", i32 91, i32 19}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/imx/clk-imx31.c", i32 92, i32 21}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/imx/clk-imx31.c", i32 93, i32 22}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/imx/clk-imx31.c", i32 94, i32 22}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/imx/clk-imx31.c", i32 95, i32 18}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/imx/clk-imx31.c", i32 96, i32 18}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/imx/clk-imx31.c", i32 97, i32 19}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/imx/clk-imx31.c", i32 98, i32 18}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/imx/clk-imx31.c", i32 99, i32 18}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/imx/clk-imx31.c", i32 100, i32 18}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/imx/clk-imx31.c", i32 101, i32 18}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/imx/clk-imx31.c", i32 102, i32 18}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/imx/clk-imx31.c", i32 103, i32 18}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/imx/clk-imx31.c", i32 104, i32 20}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/imx/clk-imx31.c", i32 105, i32 20}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/imx/clk-imx31.c", i32 106, i32 20}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/imx/clk-imx31.c", i32 107, i32 20}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/imx/clk-imx31.c", i32 108, i32 19}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/imx/clk-imx31.c", i32 109, i32 20}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/imx/clk-imx31.c", i32 110, i32 20}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/imx/clk-imx31.c", i32 111, i32 19}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/imx/clk-imx31.c", i32 112, i32 18}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/imx/clk-imx31.c", i32 113, i32 19}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/imx/clk-imx31.c", i32 114, i32 19}
!130 = !{ptr @mcu_main_sel, !131, !"mcu_main_sel", i1 false, i1 false}
!131 = !{!"../drivers/clk/imx/clk-imx31.c", i32 34, i32 20}
!132 = !{ptr @per_sel, !133, !"per_sel", i1 false, i1 false}
!133 = !{!"../drivers/clk/imx/clk-imx31.c", i32 35, i32 20}
!134 = !{ptr @csi_sel, !135, !"csi_sel", i1 false, i1 false}
!135 = !{!"../drivers/clk/imx/clk-imx31.c", i32 36, i32 20}
!136 = !{ptr @fir_sel, !137, !"fir_sel", i1 false, i1 false}
!137 = !{!"../drivers/clk/imx/clk-imx31.c", i32 37, i32 20}
!138 = !{ptr @clk, !139, !"clk", i1 false, i1 false}
!139 = !{!"../drivers/clk/imx/clk-imx31.c", i32 51, i32 20}
!140 = !{ptr @clk_data, !141, !"clk_data", i1 false, i1 false}
!141 = !{!"../drivers/clk/imx/clk-imx31.c", i32 52, i32 32}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
