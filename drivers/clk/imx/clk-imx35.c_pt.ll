; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-imx35.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx35.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.arm_ahb_div = type { i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_imx35 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx35-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mx35_clocks_init_dt }, section "__clk_of_table", align 4
@clk = internal global { [83 x ptr], [84 x i8] } zeroinitializer, align 32
@clk_data = internal global { %struct.clk_onecell_data, [24 x i8] } zeroinitializer, align 32
@clk_consumer = internal constant { [16 x %struct.arm_ahb_div], [48 x i8] } { [16 x %struct.arm_ahb_div] [%struct.arm_ahb_div { i8 1, i8 4, i8 0 }, %struct.arm_ahb_div { i8 1, i8 3, i8 1 }, %struct.arm_ahb_div { i8 2, i8 2, i8 0 }, %struct.arm_ahb_div zeroinitializer, %struct.arm_ahb_div zeroinitializer, %struct.arm_ahb_div zeroinitializer, %struct.arm_ahb_div { i8 4, i8 1, i8 0 }, %struct.arm_ahb_div { i8 1, i8 5, i8 0 }, %struct.arm_ahb_div { i8 1, i8 8, i8 0 }, %struct.arm_ahb_div { i8 1, i8 6, i8 1 }, %struct.arm_ahb_div { i8 2, i8 4, i8 0 }, %struct.arm_ahb_div zeroinitializer, %struct.arm_ahb_div zeroinitializer, %struct.arm_ahb_div zeroinitializer, %struct.arm_ahb_div { i8 4, i8 2, i8 0 }, %struct.arm_ahb_div zeroinitializer], [48 x i8] zeroinitializer }, align 32
@_mx35_clocks_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013i.MX35 clk: illegal consumer mux selection 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_mx35_clocks_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/imx/clk-imx35.c\00", [36 x i8] zeroinitializer }, align 32
@_mx35_clocks_init._entry_ptr = internal global ptr @_mx35_clocks_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ckih\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ckil\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpll\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ppll\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mpll_075\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arm\00", [28 x i8] zeroinitializer }, align 32
@hsp_div_532 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\04\08\03\00", [28 x i8] zeroinitializer }, align 32
@hsp_div_400 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\06\03\00", [28 x i8] zeroinitializer }, align 32
@_mx35_clocks_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013i.MX35 clk: illegal hsp clk selection 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@_mx35_clocks_init._entry_ptr.11 = internal global ptr @_mx35_clocks_init._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hsp\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arm_per_div\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ahb_per_div\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipg_per\00", [24 x i8] zeroinitializer }, align 32
@ipg_per_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.16, ptr @.str.15], [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@std_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.6, ptr @.str.8], [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_div\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"esdhc_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"esdhc1_div\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"esdhc2_div\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"esdhc3_div\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spdif_div_pre\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spdif_div_post\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ssi_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssi1_div_pre\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi1_div_post\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssi2_div_pre\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi2_div_post\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_div\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nfc_div\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"csi_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"csi_div\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"asrc_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pata_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"audmux_gate\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"can1_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"can2_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cspi1_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cspi2_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ect_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"edio_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emi_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"epit1_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"epit2_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"esai_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"esdhc1_gate\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"esdhc2_gate\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"esdhc3_gate\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fec_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio1_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio2_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio3_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpt_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c1_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c2_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c3_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iomuxc_gate\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipu_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kpp_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mlb_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mshc_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"owire_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rngc_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtc_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtic_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scc_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdma_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spba_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi1_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi2_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart1_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart2_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart3_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usbotg_gate\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wdog_gate\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"admux_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iim_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpu2d_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i.MX35\00", [25 x i8] zeroinitializer }, align 32
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@___asan_gen_.89 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 83, i32 20 }
@___asan_gen_.92 = private unnamed_addr constant [9 x i8] c"clk_data\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 59, i32 32 }
@___asan_gen_.95 = private unnamed_addr constant [13 x i8] c"clk_consumer\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 37, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 99, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 107, i32 14 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 108, i32 14 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 109, i32 14 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 110, i32 14 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 112, i32 14 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 115, i32 14 }
@___asan_gen_.128 = private unnamed_addr constant [12 x i8] c"hsp_div_532\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 56, i32 13 }
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"hsp_div_400\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 57, i32 13 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 126, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 130, i32 13 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 132, i32 13 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 133, i32 13 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 135, i32 21 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 136, i32 21 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 137, i32 17 }
@___asan_gen_.158 = private unnamed_addr constant [12 x i8] c"ipg_per_sel\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 62, i32 20 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 139, i32 18 }
@___asan_gen_.164 = private unnamed_addr constant [8 x i8] c"std_sel\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 61, i32 20 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 140, i32 18 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 142, i32 19 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 143, i32 20 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 144, i32 20 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 145, i32 20 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 147, i32 19 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 148, i32 23 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 149, i32 24 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 151, i32 17 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 152, i32 22 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 153, i32 23 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 154, i32 22 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 155, i32 23 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 157, i32 17 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 158, i32 17 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 160, i32 17 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 162, i32 17 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 163, i32 17 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 165, i32 19 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 166, i32 19 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 167, i32 21 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 168, i32 19 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 169, i32 19 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 170, i32 20 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 171, i32 20 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 172, i32 18 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 173, i32 19 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 174, i32 18 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 175, i32 20 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 176, i32 20 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 177, i32 19 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 178, i32 21 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 179, i32 21 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 180, i32 21 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 182, i32 18 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 183, i32 20 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 184, i32 20 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 185, i32 20 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 186, i32 18 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 187, i32 19 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 188, i32 19 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 189, i32 19 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 190, i32 21 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 191, i32 18 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 192, i32 18 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 193, i32 18 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 194, i32 19 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 195, i32 20 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 196, i32 18 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 197, i32 19 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 199, i32 18 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 200, i32 19 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 201, i32 18 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 202, i32 19 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 203, i32 19 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 204, i32 20 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 205, i32 19 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 206, i32 19 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 207, i32 20 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 208, i32 20 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 209, i32 20 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 210, i32 21 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 211, i32 19 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 212, i32 18 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 213, i32 20 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 215, i32 18 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 216, i32 18 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 217, i32 20 }
@___asan_gen_.374 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.375 = private constant [31 x i8] c"../drivers/clk/imx/clk-imx35.c\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 240, i32 24 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__of_table_imx35, ptr @_mx35_clocks_init._entry, ptr @_mx35_clocks_init._entry.9, ptr @_mx35_clocks_init._entry_ptr, ptr @_mx35_clocks_init._entry_ptr.11, ptr @clk, ptr @clk_data, ptr @clk_consumer, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @hsp_div_532, ptr @hsp_div_400, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ipg_per_sel, ptr @.str.18, ptr @std_sel, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk to i32), i32 332, i32 416, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_consumer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_mx35_clocks_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsp_div_532 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsp_div_400 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_mx35_clocks_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipg_per_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mx35_clocks_init_dt(ptr noundef %ccm_node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_mx35_clocks_init() #6
  store ptr @clk, ptr @clk_data, align 4
  store i32 83, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %call = tail call i32 @of_clk_add_provider(ptr noundef %ccm_node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_mx35_clocks_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef 1408761856, i32 noundef 4096) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !200

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/imx/clk-imx35.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 93, 0\0A.popsection", ""() #3, !srcloc !201
  unreachable

do.end9:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !202
  %shr = lshr i32 %0, 16
  %and = and i32 %shr, 15
  %arrayidx = getelementptr [16 x %struct.arm_ahb_div], ptr @clk_consumer, i32 0, i32 %and
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool11.not = icmp eq i8 %2, 0
  br i1 %tobool11.not, label %do.end15, label %do.end9.if.end17_crit_edge

do.end9.if.end17_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

do.end15:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and) #7
  br label %if.end17

if.end17:                                         ; preds = %do.end15, %do.end9.if.end17_crit_edge
  %aad.0 = phi ptr [ %arrayidx, %do.end9.if.end17_crit_edge ], [ @clk_consumer, %do.end15 ]
  %call.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 24000000, i32 noundef 0, i32 noundef 0) #3
  %tobool.not.i.i = icmp eq ptr %call.i, null
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end17.to_clk.exit_crit_edge, label %if.end.i

if.end17.to_clk.exit_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit

if.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk.i, align 4
  br label %to_clk.exit

to_clk.exit:                                      ; preds = %if.end.i, %if.end17.to_clk.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %call.i, %if.end17.to_clk.exit_crit_edge ]
  store ptr %retval.0.i, ptr @clk, align 4
  %call.i375 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 32768, i32 noundef 0, i32 noundef 0) #3
  %tobool.not.i.i376 = icmp eq ptr %call.i375, null
  %cmp.i.i377 = icmp ugt ptr %call.i375, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i378 = or i1 %tobool.not.i.i376, %cmp.i.i377
  br i1 %spec.select.i.i378, label %to_clk.exit.to_clk.exit382_crit_edge, label %if.end.i380

to_clk.exit.to_clk.exit382_crit_edge:             ; preds = %to_clk.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit382

if.end.i380:                                      ; preds = %to_clk.exit
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i379 = getelementptr inbounds %struct.clk_hw, ptr %call.i375, i32 0, i32 1
  %5 = ptrtoint ptr %clk.i379 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk.i379, align 4
  br label %to_clk.exit382

to_clk.exit382:                                   ; preds = %if.end.i380, %to_clk.exit.to_clk.exit382_crit_edge
  %retval.0.i381 = phi ptr [ %6, %if.end.i380 ], [ %call.i375, %to_clk.exit.to_clk.exit382_crit_edge ]
  store ptr %retval.0.i381, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 82), align 4
  %add.ptr22 = getelementptr i8, ptr %call, i32 28
  %call23 = tail call ptr @imx_clk_hw_pllv1(i32 noundef 5, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %add.ptr22) #3
  %tobool.not.i.i383 = icmp eq ptr %call23, null
  %cmp.i.i384 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i385 = or i1 %tobool.not.i.i383, %cmp.i.i384
  br i1 %spec.select.i.i385, label %to_clk.exit382.to_clk.exit389_crit_edge, label %if.end.i387

to_clk.exit382.to_clk.exit389_crit_edge:          ; preds = %to_clk.exit382
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit389

if.end.i387:                                      ; preds = %to_clk.exit382
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i386 = getelementptr inbounds %struct.clk_hw, ptr %call23, i32 0, i32 1
  %7 = ptrtoint ptr %clk.i386 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk.i386, align 4
  br label %to_clk.exit389

to_clk.exit389:                                   ; preds = %if.end.i387, %to_clk.exit382.to_clk.exit389_crit_edge
  %retval.0.i388 = phi ptr [ %8, %if.end.i387 ], [ %call23, %to_clk.exit382.to_clk.exit389_crit_edge ]
  store ptr %retval.0.i388, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 1), align 4
  %add.ptr25 = getelementptr i8, ptr %call, i32 32
  %call26 = tail call ptr @imx_clk_hw_pllv1(i32 noundef 5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef %add.ptr25) #3
  %tobool.not.i.i390 = icmp eq ptr %call26, null
  %cmp.i.i391 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i392 = or i1 %tobool.not.i.i390, %cmp.i.i391
  br i1 %spec.select.i.i392, label %to_clk.exit389.to_clk.exit396_crit_edge, label %if.end.i394

to_clk.exit389.to_clk.exit396_crit_edge:          ; preds = %to_clk.exit389
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit396

if.end.i394:                                      ; preds = %to_clk.exit389
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i393 = getelementptr inbounds %struct.clk_hw, ptr %call26, i32 0, i32 1
  %9 = ptrtoint ptr %clk.i393 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk.i393, align 4
  br label %to_clk.exit396

to_clk.exit396:                                   ; preds = %if.end.i394, %to_clk.exit389.to_clk.exit396_crit_edge
  %retval.0.i395 = phi ptr [ %10, %if.end.i394 ], [ %call26, %to_clk.exit389.to_clk.exit396_crit_edge ]
  store ptr %retval.0.i395, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 2), align 4
  %call.i397 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef 3, i32 noundef 4) #3
  %tobool.not.i.i398 = icmp eq ptr %call.i397, null
  %cmp.i.i399 = icmp ugt ptr %call.i397, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i400 = or i1 %tobool.not.i.i398, %cmp.i.i399
  br i1 %spec.select.i.i400, label %to_clk.exit396.to_clk.exit404_crit_edge, label %if.end.i402

to_clk.exit396.to_clk.exit404_crit_edge:          ; preds = %to_clk.exit396
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit404

if.end.i402:                                      ; preds = %to_clk.exit396
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i401 = getelementptr inbounds %struct.clk_hw, ptr %call.i397, i32 0, i32 1
  %11 = ptrtoint ptr %clk.i401 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk.i401, align 4
  br label %to_clk.exit404

to_clk.exit404:                                   ; preds = %if.end.i402, %to_clk.exit396.to_clk.exit404_crit_edge
  %retval.0.i403 = phi ptr [ %12, %if.end.i402 ], [ %call.i397, %to_clk.exit396.to_clk.exit404_crit_edge ]
  store ptr %retval.0.i403, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 1), align 4
  %sel = getelementptr inbounds %struct.arm_ahb_div, ptr %aad.0, i32 0, i32 2
  %13 = ptrtoint ptr %sel to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool30.not = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %aad.0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %aad.0, align 1
  %conv36 = zext i8 %16 to i32
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %to_clk.exit404
  %call.i405 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 4, i32 noundef 1, i32 noundef %conv36) #3
  %tobool.not.i.i406 = icmp eq ptr %call.i405, null
  %cmp.i.i407 = icmp ugt ptr %call.i405, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i408 = or i1 %tobool.not.i.i406, %cmp.i.i407
  br i1 %spec.select.i.i408, label %if.then31.if.end39_crit_edge, label %if.then31.if.end39.sink.split_crit_edge

if.then31.if.end39.sink.split_crit_edge:          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39.sink.split

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

if.else:                                          ; preds = %to_clk.exit404
  %call.i413 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef 1, i32 noundef %conv36) #3
  %tobool.not.i.i414 = icmp eq ptr %call.i413, null
  %cmp.i.i415 = icmp ugt ptr %call.i413, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i416 = or i1 %tobool.not.i.i414, %cmp.i.i415
  br i1 %spec.select.i.i416, label %if.else.if.end39_crit_edge, label %if.else.if.end39.sink.split_crit_edge

if.else.if.end39.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39.sink.split

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

if.end39.sink.split:                              ; preds = %if.else.if.end39.sink.split_crit_edge, %if.then31.if.end39.sink.split_crit_edge
  %call.i413.sink = phi ptr [ %call.i405, %if.then31.if.end39.sink.split_crit_edge ], [ %call.i413, %if.else.if.end39.sink.split_crit_edge ]
  %clk.i417 = getelementptr inbounds %struct.clk_hw, ptr %call.i413.sink, i32 0, i32 1
  %17 = ptrtoint ptr %clk.i417 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk.i417, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %if.else.if.end39_crit_edge, %if.then31.if.end39_crit_edge
  %storemerge = phi ptr [ %call.i405, %if.then31.if.end39_crit_edge ], [ %call.i413, %if.else.if.end39_crit_edge ], [ %18, %if.end39.sink.split ]
  store ptr %storemerge, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 4), align 4
  %call40 = tail call i32 @clk_get_rate(ptr noundef %storemerge) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000000, i32 %call40)
  %cmp = icmp ugt i32 %call40, 400000000
  %hsp_div_532.hsp_div_400 = select i1 %cmp, ptr @hsp_div_532, ptr @hsp_div_400
  %shr45 = lshr i32 %0, 20
  %and46 = and i32 %shr45, 3
  %arrayidx47 = getelementptr i8, ptr %hsp_div_532.hsp_div_400, i32 %and46
  %19 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool48.not = icmp eq i8 %20, 0
  br i1 %tobool48.not, label %do.end52, label %if.end39.if.end55_crit_edge

if.end39.if.end55_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end55

do.end52:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %and46) #7
  br label %if.end55

if.end55:                                         ; preds = %do.end52, %if.end39.if.end55_crit_edge
  %hsp_sel.0 = phi i32 [ %and46, %if.end39.if.end55_crit_edge ], [ 0, %do.end52 ]
  %arrayidx56 = getelementptr i8, ptr %hsp_div_532.hsp_div_400, i32 %hsp_sel.0
  %21 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %22 to i32
  %call.i421 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef 4, i32 noundef 1, i32 noundef %conv57) #3
  %tobool.not.i.i422 = icmp eq ptr %call.i421, null
  %cmp.i.i423 = icmp ugt ptr %call.i421, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i424 = or i1 %tobool.not.i.i422, %cmp.i.i423
  br i1 %spec.select.i.i424, label %if.end55.to_clk.exit428_crit_edge, label %if.end.i426

if.end55.to_clk.exit428_crit_edge:                ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit428

if.end.i426:                                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i425 = getelementptr inbounds %struct.clk_hw, ptr %call.i421, i32 0, i32 1
  %23 = ptrtoint ptr %clk.i425 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk.i425, align 4
  br label %to_clk.exit428

to_clk.exit428:                                   ; preds = %if.end.i426, %if.end55.to_clk.exit428_crit_edge
  %retval.0.i427 = phi ptr [ %24, %if.end.i426 ], [ %call.i421, %if.end55.to_clk.exit428_crit_edge ]
  store ptr %retval.0.i427, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 5), align 4
  %ahb = getelementptr inbounds %struct.arm_ahb_div, ptr %aad.0, i32 0, i32 1
  %25 = ptrtoint ptr %ahb to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ahb, align 1
  %conv60 = zext i8 %26 to i32
  %call.i429 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef 4, i32 noundef 1, i32 noundef %conv60) #3
  %tobool.not.i.i430 = icmp eq ptr %call.i429, null
  %cmp.i.i431 = icmp ugt ptr %call.i429, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i432 = or i1 %tobool.not.i.i430, %cmp.i.i431
  br i1 %spec.select.i.i432, label %to_clk.exit428.to_clk.exit436_crit_edge, label %if.end.i434

to_clk.exit428.to_clk.exit436_crit_edge:          ; preds = %to_clk.exit428
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit436

if.end.i434:                                      ; preds = %to_clk.exit428
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i433 = getelementptr inbounds %struct.clk_hw, ptr %call.i429, i32 0, i32 1
  %27 = ptrtoint ptr %clk.i433 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk.i433, align 4
  br label %to_clk.exit436

to_clk.exit436:                                   ; preds = %if.end.i434, %to_clk.exit428.to_clk.exit436_crit_edge
  %retval.0.i435 = phi ptr [ %28, %if.end.i434 ], [ %call.i429, %to_clk.exit428.to_clk.exit436_crit_edge ]
  store ptr %retval.0.i435, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 8), align 4
  %call.i437 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %tobool.not.i.i438 = icmp eq ptr %call.i437, null
  %cmp.i.i439 = icmp ugt ptr %call.i437, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i440 = or i1 %tobool.not.i.i438, %cmp.i.i439
  br i1 %spec.select.i.i440, label %to_clk.exit436.to_clk.exit444_crit_edge, label %if.end.i442

to_clk.exit436.to_clk.exit444_crit_edge:          ; preds = %to_clk.exit436
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit444

if.end.i442:                                      ; preds = %to_clk.exit436
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i441 = getelementptr inbounds %struct.clk_hw, ptr %call.i437, i32 0, i32 1
  %29 = ptrtoint ptr %clk.i441 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk.i441, align 4
  br label %to_clk.exit444

to_clk.exit444:                                   ; preds = %if.end.i442, %to_clk.exit436.to_clk.exit444_crit_edge
  %retval.0.i443 = phi ptr [ %30, %if.end.i442 ], [ %call.i437, %to_clk.exit436.to_clk.exit444_crit_edge ]
  store ptr %retval.0.i443, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 9), align 4
  %add.ptr65 = getelementptr i8, ptr %call, i32 20
  %call.i445 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr65, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i446 = icmp eq ptr %call.i445, null
  %cmp.i.i447 = icmp ugt ptr %call.i445, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i448 = or i1 %tobool.not.i.i446, %cmp.i.i447
  br i1 %spec.select.i.i448, label %to_clk.exit444.to_clk.exit452_crit_edge, label %if.end.i450

to_clk.exit444.to_clk.exit452_crit_edge:          ; preds = %to_clk.exit444
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit452

if.end.i450:                                      ; preds = %to_clk.exit444
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i449 = getelementptr inbounds %struct.clk_hw, ptr %call.i445, i32 0, i32 1
  %31 = ptrtoint ptr %clk.i449 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk.i449, align 4
  br label %to_clk.exit452

to_clk.exit452:                                   ; preds = %if.end.i450, %to_clk.exit444.to_clk.exit452_crit_edge
  %retval.0.i451 = phi ptr [ %32, %if.end.i450 ], [ %call.i445, %to_clk.exit444.to_clk.exit452_crit_edge ]
  store ptr %retval.0.i451, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 10), align 4
  %call.i453 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i454 = icmp eq ptr %call.i453, null
  %cmp.i.i455 = icmp ugt ptr %call.i453, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i456 = or i1 %tobool.not.i.i454, %cmp.i.i455
  br i1 %spec.select.i.i456, label %to_clk.exit452.to_clk.exit460_crit_edge, label %if.end.i458

to_clk.exit452.to_clk.exit460_crit_edge:          ; preds = %to_clk.exit452
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit460

if.end.i458:                                      ; preds = %to_clk.exit452
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i457 = getelementptr inbounds %struct.clk_hw, ptr %call.i453, i32 0, i32 1
  %33 = ptrtoint ptr %clk.i457 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk.i457, align 4
  br label %to_clk.exit460

to_clk.exit460:                                   ; preds = %if.end.i458, %to_clk.exit452.to_clk.exit460_crit_edge
  %retval.0.i459 = phi ptr [ %34, %if.end.i458 ], [ %call.i453, %to_clk.exit452.to_clk.exit460_crit_edge ]
  store ptr %retval.0.i459, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 11), align 4
  %call.i461 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.17, i8 noundef zeroext 2, ptr noundef nonnull @ipg_per_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr, i8 noundef zeroext 26, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i462 = icmp eq ptr %call.i461, null
  %cmp.i.i463 = icmp ugt ptr %call.i461, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i464 = or i1 %tobool.not.i.i462, %cmp.i.i463
  br i1 %spec.select.i.i464, label %to_clk.exit460.to_clk.exit468_crit_edge, label %if.end.i466

to_clk.exit460.to_clk.exit468_crit_edge:          ; preds = %to_clk.exit460
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit468

if.end.i466:                                      ; preds = %to_clk.exit460
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i465 = getelementptr inbounds %struct.clk_hw, ptr %call.i461, i32 0, i32 1
  %35 = ptrtoint ptr %clk.i465 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk.i465, align 4
  br label %to_clk.exit468

to_clk.exit468:                                   ; preds = %if.end.i466, %to_clk.exit460.to_clk.exit468_crit_edge
  %retval.0.i467 = phi ptr [ %36, %if.end.i466 ], [ %call.i461, %to_clk.exit460.to_clk.exit468_crit_edge ]
  store ptr %retval.0.i467, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 12), align 4
  %add.ptr74 = getelementptr i8, ptr %call, i32 16
  %call.i469 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.18, i8 noundef zeroext 2, ptr noundef nonnull @std_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr74, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i470 = icmp eq ptr %call.i469, null
  %cmp.i.i471 = icmp ugt ptr %call.i469, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i472 = or i1 %tobool.not.i.i470, %cmp.i.i471
  br i1 %spec.select.i.i472, label %to_clk.exit468.to_clk.exit476_crit_edge, label %if.end.i474

to_clk.exit468.to_clk.exit476_crit_edge:          ; preds = %to_clk.exit468
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit476

if.end.i474:                                      ; preds = %to_clk.exit468
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i473 = getelementptr inbounds %struct.clk_hw, ptr %call.i469, i32 0, i32 1
  %37 = ptrtoint ptr %clk.i473 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk.i473, align 4
  br label %to_clk.exit476

to_clk.exit476:                                   ; preds = %if.end.i474, %to_clk.exit468.to_clk.exit476_crit_edge
  %retval.0.i475 = phi ptr [ %38, %if.end.i474 ], [ %call.i469, %to_clk.exit468.to_clk.exit476_crit_edge ]
  store ptr %retval.0.i475, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 13), align 4
  %call.i477 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr65, i8 noundef zeroext 10, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i478 = icmp eq ptr %call.i477, null
  %cmp.i.i479 = icmp ugt ptr %call.i477, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i480 = or i1 %tobool.not.i.i478, %cmp.i.i479
  br i1 %spec.select.i.i480, label %to_clk.exit476.to_clk.exit484_crit_edge, label %if.end.i482

to_clk.exit476.to_clk.exit484_crit_edge:          ; preds = %to_clk.exit476
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit484

if.end.i482:                                      ; preds = %to_clk.exit476
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i481 = getelementptr inbounds %struct.clk_hw, ptr %call.i477, i32 0, i32 1
  %39 = ptrtoint ptr %clk.i481 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk.i481, align 4
  br label %to_clk.exit484

to_clk.exit484:                                   ; preds = %if.end.i482, %to_clk.exit476.to_clk.exit484_crit_edge
  %retval.0.i483 = phi ptr [ %40, %if.end.i482 ], [ %call.i477, %to_clk.exit476.to_clk.exit484_crit_edge ]
  store ptr %retval.0.i483, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 14), align 4
  %call.i485 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.20, i8 noundef zeroext 2, ptr noundef nonnull @std_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr65, i8 noundef zeroext 9, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i486 = icmp eq ptr %call.i485, null
  %cmp.i.i487 = icmp ugt ptr %call.i485, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i488 = or i1 %tobool.not.i.i486, %cmp.i.i487
  br i1 %spec.select.i.i488, label %to_clk.exit484.to_clk.exit492_crit_edge, label %if.end.i490

to_clk.exit484.to_clk.exit492_crit_edge:          ; preds = %to_clk.exit484
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit492

if.end.i490:                                      ; preds = %to_clk.exit484
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i489 = getelementptr inbounds %struct.clk_hw, ptr %call.i485, i32 0, i32 1
  %41 = ptrtoint ptr %clk.i489 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk.i489, align 4
  br label %to_clk.exit492

to_clk.exit492:                                   ; preds = %if.end.i490, %to_clk.exit484.to_clk.exit492_crit_edge
  %retval.0.i491 = phi ptr [ %42, %if.end.i490 ], [ %call.i485, %to_clk.exit484.to_clk.exit492_crit_edge ]
  store ptr %retval.0.i491, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 15), align 4
  %call.i493 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr74, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i494 = icmp eq ptr %call.i493, null
  %cmp.i.i495 = icmp ugt ptr %call.i493, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i496 = or i1 %tobool.not.i.i494, %cmp.i.i495
  br i1 %spec.select.i.i496, label %to_clk.exit492.to_clk.exit500_crit_edge, label %if.end.i498

to_clk.exit492.to_clk.exit500_crit_edge:          ; preds = %to_clk.exit492
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit500

if.end.i498:                                      ; preds = %to_clk.exit492
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i497 = getelementptr inbounds %struct.clk_hw, ptr %call.i493, i32 0, i32 1
  %43 = ptrtoint ptr %clk.i497 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk.i497, align 4
  br label %to_clk.exit500

to_clk.exit500:                                   ; preds = %if.end.i498, %to_clk.exit492.to_clk.exit500_crit_edge
  %retval.0.i499 = phi ptr [ %44, %if.end.i498 ], [ %call.i493, %to_clk.exit492.to_clk.exit500_crit_edge ]
  store ptr %retval.0.i499, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 16), align 4
  %call.i501 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr74, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i502 = icmp eq ptr %call.i501, null
  %cmp.i.i503 = icmp ugt ptr %call.i501, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i504 = or i1 %tobool.not.i.i502, %cmp.i.i503
  br i1 %spec.select.i.i504, label %to_clk.exit500.to_clk.exit508_crit_edge, label %if.end.i506

to_clk.exit500.to_clk.exit508_crit_edge:          ; preds = %to_clk.exit500
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit508

if.end.i506:                                      ; preds = %to_clk.exit500
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i505 = getelementptr inbounds %struct.clk_hw, ptr %call.i501, i32 0, i32 1
  %45 = ptrtoint ptr %clk.i505 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clk.i505, align 4
  br label %to_clk.exit508

to_clk.exit508:                                   ; preds = %if.end.i506, %to_clk.exit500.to_clk.exit508_crit_edge
  %retval.0.i507 = phi ptr [ %46, %if.end.i506 ], [ %call.i501, %to_clk.exit500.to_clk.exit508_crit_edge ]
  store ptr %retval.0.i507, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 17), align 4
  %call.i509 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.20, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr74, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i510 = icmp eq ptr %call.i509, null
  %cmp.i.i511 = icmp ugt ptr %call.i509, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i512 = or i1 %tobool.not.i.i510, %cmp.i.i511
  br i1 %spec.select.i.i512, label %to_clk.exit508.to_clk.exit516_crit_edge, label %if.end.i514

to_clk.exit508.to_clk.exit516_crit_edge:          ; preds = %to_clk.exit508
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit516

if.end.i514:                                      ; preds = %to_clk.exit508
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i513 = getelementptr inbounds %struct.clk_hw, ptr %call.i509, i32 0, i32 1
  %47 = ptrtoint ptr %clk.i513 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk.i513, align 4
  br label %to_clk.exit516

to_clk.exit516:                                   ; preds = %if.end.i514, %to_clk.exit508.to_clk.exit516_crit_edge
  %retval.0.i515 = phi ptr [ %48, %if.end.i514 ], [ %call.i509, %to_clk.exit508.to_clk.exit516_crit_edge ]
  store ptr %retval.0.i515, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 18), align 4
  %call.i517 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, i8 noundef zeroext 2, ptr noundef nonnull @std_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr74, i8 noundef zeroext 22, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i518 = icmp eq ptr %call.i517, null
  %cmp.i.i519 = icmp ugt ptr %call.i517, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i520 = or i1 %tobool.not.i.i518, %cmp.i.i519
  br i1 %spec.select.i.i520, label %to_clk.exit516.to_clk.exit524_crit_edge, label %if.end.i522

to_clk.exit516.to_clk.exit524_crit_edge:          ; preds = %to_clk.exit516
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit524

if.end.i522:                                      ; preds = %to_clk.exit516
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i521 = getelementptr inbounds %struct.clk_hw, ptr %call.i517, i32 0, i32 1
  %49 = ptrtoint ptr %clk.i521 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clk.i521, align 4
  br label %to_clk.exit524

to_clk.exit524:                                   ; preds = %if.end.i522, %to_clk.exit516.to_clk.exit524_crit_edge
  %retval.0.i523 = phi ptr [ %50, %if.end.i522 ], [ %call.i517, %to_clk.exit516.to_clk.exit524_crit_edge ]
  store ptr %retval.0.i523, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 19), align 4
  %call.i525 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr74, i8 noundef zeroext 29, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i526 = icmp eq ptr %call.i525, null
  %cmp.i.i527 = icmp ugt ptr %call.i525, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i528 = or i1 %tobool.not.i.i526, %cmp.i.i527
  br i1 %spec.select.i.i528, label %to_clk.exit524.to_clk.exit532_crit_edge, label %if.end.i530

to_clk.exit524.to_clk.exit532_crit_edge:          ; preds = %to_clk.exit524
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit532

if.end.i530:                                      ; preds = %to_clk.exit524
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i529 = getelementptr inbounds %struct.clk_hw, ptr %call.i525, i32 0, i32 1
  %51 = ptrtoint ptr %clk.i529 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk.i529, align 4
  br label %to_clk.exit532

to_clk.exit532:                                   ; preds = %if.end.i530, %to_clk.exit524.to_clk.exit532_crit_edge
  %retval.0.i531 = phi ptr [ %52, %if.end.i530 ], [ %call.i525, %to_clk.exit524.to_clk.exit532_crit_edge ]
  store ptr %retval.0.i531, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 20), align 4
  %call.i533 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr74, i8 noundef zeroext 23, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i534 = icmp eq ptr %call.i533, null
  %cmp.i.i535 = icmp ugt ptr %call.i533, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i536 = or i1 %tobool.not.i.i534, %cmp.i.i535
  br i1 %spec.select.i.i536, label %to_clk.exit532.to_clk.exit540_crit_edge, label %if.end.i538

to_clk.exit532.to_clk.exit540_crit_edge:          ; preds = %to_clk.exit532
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit540

if.end.i538:                                      ; preds = %to_clk.exit532
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i537 = getelementptr inbounds %struct.clk_hw, ptr %call.i533, i32 0, i32 1
  %53 = ptrtoint ptr %clk.i537 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk.i537, align 4
  br label %to_clk.exit540

to_clk.exit540:                                   ; preds = %if.end.i538, %to_clk.exit532.to_clk.exit540_crit_edge
  %retval.0.i539 = phi ptr [ %54, %if.end.i538 ], [ %call.i533, %to_clk.exit532.to_clk.exit540_crit_edge ]
  store ptr %retval.0.i539, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 21), align 4
  %add.ptr101 = getelementptr i8, ptr %call, i32 12
  %call.i541 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, i8 noundef zeroext 2, ptr noundef nonnull @std_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr101, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i542 = icmp eq ptr %call.i541, null
  %cmp.i.i543 = icmp ugt ptr %call.i541, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i544 = or i1 %tobool.not.i.i542, %cmp.i.i543
  br i1 %spec.select.i.i544, label %to_clk.exit540.to_clk.exit548_crit_edge, label %if.end.i546

to_clk.exit540.to_clk.exit548_crit_edge:          ; preds = %to_clk.exit540
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit548

if.end.i546:                                      ; preds = %to_clk.exit540
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i545 = getelementptr inbounds %struct.clk_hw, ptr %call.i541, i32 0, i32 1
  %55 = ptrtoint ptr %clk.i545 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk.i545, align 4
  br label %to_clk.exit548

to_clk.exit548:                                   ; preds = %if.end.i546, %to_clk.exit540.to_clk.exit548_crit_edge
  %retval.0.i547 = phi ptr [ %56, %if.end.i546 ], [ %call.i541, %to_clk.exit540.to_clk.exit548_crit_edge ]
  store ptr %retval.0.i547, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 22), align 4
  %call.i549 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr101, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i550 = icmp eq ptr %call.i549, null
  %cmp.i.i551 = icmp ugt ptr %call.i549, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i552 = or i1 %tobool.not.i.i550, %cmp.i.i551
  br i1 %spec.select.i.i552, label %to_clk.exit548.to_clk.exit556_crit_edge, label %if.end.i554

to_clk.exit548.to_clk.exit556_crit_edge:          ; preds = %to_clk.exit548
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit556

if.end.i554:                                      ; preds = %to_clk.exit548
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i553 = getelementptr inbounds %struct.clk_hw, ptr %call.i549, i32 0, i32 1
  %57 = ptrtoint ptr %clk.i553 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clk.i553, align 4
  br label %to_clk.exit556

to_clk.exit556:                                   ; preds = %if.end.i554, %to_clk.exit548.to_clk.exit556_crit_edge
  %retval.0.i555 = phi ptr [ %58, %if.end.i554 ], [ %call.i549, %to_clk.exit548.to_clk.exit556_crit_edge ]
  store ptr %retval.0.i555, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 23), align 4
  %call.i557 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr101, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i558 = icmp eq ptr %call.i557, null
  %cmp.i.i559 = icmp ugt ptr %call.i557, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i560 = or i1 %tobool.not.i.i558, %cmp.i.i559
  br i1 %spec.select.i.i560, label %to_clk.exit556.to_clk.exit564_crit_edge, label %if.end.i562

to_clk.exit556.to_clk.exit564_crit_edge:          ; preds = %to_clk.exit556
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit564

if.end.i562:                                      ; preds = %to_clk.exit556
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i561 = getelementptr inbounds %struct.clk_hw, ptr %call.i557, i32 0, i32 1
  %59 = ptrtoint ptr %clk.i561 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %clk.i561, align 4
  br label %to_clk.exit564

to_clk.exit564:                                   ; preds = %if.end.i562, %to_clk.exit556.to_clk.exit564_crit_edge
  %retval.0.i563 = phi ptr [ %60, %if.end.i562 ], [ %call.i557, %to_clk.exit556.to_clk.exit564_crit_edge ]
  store ptr %retval.0.i563, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 24), align 4
  %call.i565 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr101, i8 noundef zeroext 27, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i566 = icmp eq ptr %call.i565, null
  %cmp.i.i567 = icmp ugt ptr %call.i565, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i568 = or i1 %tobool.not.i.i566, %cmp.i.i567
  br i1 %spec.select.i.i568, label %to_clk.exit564.to_clk.exit572_crit_edge, label %if.end.i570

to_clk.exit564.to_clk.exit572_crit_edge:          ; preds = %to_clk.exit564
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit572

if.end.i570:                                      ; preds = %to_clk.exit564
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i569 = getelementptr inbounds %struct.clk_hw, ptr %call.i565, i32 0, i32 1
  %61 = ptrtoint ptr %clk.i569 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clk.i569, align 4
  br label %to_clk.exit572

to_clk.exit572:                                   ; preds = %if.end.i570, %to_clk.exit564.to_clk.exit572_crit_edge
  %retval.0.i571 = phi ptr [ %62, %if.end.i570 ], [ %call.i565, %to_clk.exit564.to_clk.exit572_crit_edge ]
  store ptr %retval.0.i571, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 25), align 4
  %call.i573 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr101, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i574 = icmp eq ptr %call.i573, null
  %cmp.i.i575 = icmp ugt ptr %call.i573, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i576 = or i1 %tobool.not.i.i574, %cmp.i.i575
  br i1 %spec.select.i.i576, label %to_clk.exit572.to_clk.exit580_crit_edge, label %if.end.i578

to_clk.exit572.to_clk.exit580_crit_edge:          ; preds = %to_clk.exit572
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit580

if.end.i578:                                      ; preds = %to_clk.exit572
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i577 = getelementptr inbounds %struct.clk_hw, ptr %call.i573, i32 0, i32 1
  %63 = ptrtoint ptr %clk.i577 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clk.i577, align 4
  br label %to_clk.exit580

to_clk.exit580:                                   ; preds = %if.end.i578, %to_clk.exit572.to_clk.exit580_crit_edge
  %retval.0.i579 = phi ptr [ %64, %if.end.i578 ], [ %call.i573, %to_clk.exit572.to_clk.exit580_crit_edge ]
  store ptr %retval.0.i579, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 26), align 4
  %call.i581 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, i8 noundef zeroext 2, ptr noundef nonnull @std_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr65, i8 noundef zeroext 9, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i582 = icmp eq ptr %call.i581, null
  %cmp.i.i583 = icmp ugt ptr %call.i581, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i584 = or i1 %tobool.not.i.i582, %cmp.i.i583
  br i1 %spec.select.i.i584, label %to_clk.exit580.to_clk.exit588_crit_edge, label %if.end.i586

to_clk.exit580.to_clk.exit588_crit_edge:          ; preds = %to_clk.exit580
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit588

if.end.i586:                                      ; preds = %to_clk.exit580
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i585 = getelementptr inbounds %struct.clk_hw, ptr %call.i581, i32 0, i32 1
  %65 = ptrtoint ptr %clk.i585 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clk.i585, align 4
  br label %to_clk.exit588

to_clk.exit588:                                   ; preds = %if.end.i586, %to_clk.exit580.to_clk.exit588_crit_edge
  %retval.0.i587 = phi ptr [ %66, %if.end.i586 ], [ %call.i581, %to_clk.exit580.to_clk.exit588_crit_edge ]
  store ptr %retval.0.i587, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 27), align 4
  %call.i589 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr65, i8 noundef zeroext 22, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i590 = icmp eq ptr %call.i589, null
  %cmp.i.i591 = icmp ugt ptr %call.i589, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i592 = or i1 %tobool.not.i.i590, %cmp.i.i591
  br i1 %spec.select.i.i592, label %to_clk.exit588.to_clk.exit596_crit_edge, label %if.end.i594

to_clk.exit588.to_clk.exit596_crit_edge:          ; preds = %to_clk.exit588
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit596

if.end.i594:                                      ; preds = %to_clk.exit588
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i593 = getelementptr inbounds %struct.clk_hw, ptr %call.i589, i32 0, i32 1
  %67 = ptrtoint ptr %clk.i593 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clk.i593, align 4
  br label %to_clk.exit596

to_clk.exit596:                                   ; preds = %if.end.i594, %to_clk.exit588.to_clk.exit596_crit_edge
  %retval.0.i595 = phi ptr [ %68, %if.end.i594 ], [ %call.i589, %to_clk.exit588.to_clk.exit596_crit_edge ]
  store ptr %retval.0.i595, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 28), align 4
  %call.i597 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.13, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr65, i8 noundef zeroext 28, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i598 = icmp eq ptr %call.i597, null
  %cmp.i.i599 = icmp ugt ptr %call.i597, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i600 = or i1 %tobool.not.i.i598, %cmp.i.i599
  br i1 %spec.select.i.i600, label %to_clk.exit596.to_clk.exit604_crit_edge, label %if.end.i602

to_clk.exit596.to_clk.exit604_crit_edge:          ; preds = %to_clk.exit596
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit604

if.end.i602:                                      ; preds = %to_clk.exit596
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i601 = getelementptr inbounds %struct.clk_hw, ptr %call.i597, i32 0, i32 1
  %69 = ptrtoint ptr %clk.i601 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clk.i601, align 4
  br label %to_clk.exit604

to_clk.exit604:                                   ; preds = %if.end.i602, %to_clk.exit596.to_clk.exit604_crit_edge
  %retval.0.i603 = phi ptr [ %70, %if.end.i602 ], [ %call.i597, %to_clk.exit596.to_clk.exit604_crit_edge ]
  store ptr %retval.0.i603, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 29), align 4
  %call.i605 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, i8 noundef zeroext 2, ptr noundef nonnull @std_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr101, i8 noundef zeroext 7, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i606 = icmp eq ptr %call.i605, null
  %cmp.i.i607 = icmp ugt ptr %call.i605, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i608 = or i1 %tobool.not.i.i606, %cmp.i.i607
  br i1 %spec.select.i.i608, label %to_clk.exit604.to_clk.exit612_crit_edge, label %if.end.i610

to_clk.exit604.to_clk.exit612_crit_edge:          ; preds = %to_clk.exit604
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit612

if.end.i610:                                      ; preds = %to_clk.exit604
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i609 = getelementptr inbounds %struct.clk_hw, ptr %call.i605, i32 0, i32 1
  %71 = ptrtoint ptr %clk.i609 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %clk.i609, align 4
  br label %to_clk.exit612

to_clk.exit612:                                   ; preds = %if.end.i610, %to_clk.exit604.to_clk.exit612_crit_edge
  %retval.0.i611 = phi ptr [ %72, %if.end.i610 ], [ %call.i605, %to_clk.exit604.to_clk.exit612_crit_edge ]
  store ptr %retval.0.i611, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 79), align 4
  %call.i613 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr101, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %tobool.not.i.i614 = icmp eq ptr %call.i613, null
  %cmp.i.i615 = icmp ugt ptr %call.i613, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i616 = or i1 %tobool.not.i.i614, %cmp.i.i615
  br i1 %spec.select.i.i616, label %to_clk.exit612.to_clk.exit620_crit_edge, label %if.end.i618

to_clk.exit612.to_clk.exit620_crit_edge:          ; preds = %to_clk.exit612
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit620

if.end.i618:                                      ; preds = %to_clk.exit612
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i617 = getelementptr inbounds %struct.clk_hw, ptr %call.i613, i32 0, i32 1
  %73 = ptrtoint ptr %clk.i617 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %clk.i617, align 4
  br label %to_clk.exit620

to_clk.exit620:                                   ; preds = %if.end.i618, %to_clk.exit612.to_clk.exit620_crit_edge
  %retval.0.i619 = phi ptr [ %74, %if.end.i618 ], [ %call.i613, %to_clk.exit612.to_clk.exit620_crit_edge ]
  store ptr %retval.0.i619, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 78), align 4
  %add.ptr131 = getelementptr i8, ptr %call, i32 44
  %call.i621 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i622 = icmp eq ptr %call.i621, null
  %cmp.i.i623 = icmp ugt ptr %call.i621, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i624 = or i1 %tobool.not.i.i622, %cmp.i.i623
  br i1 %spec.select.i.i624, label %to_clk.exit620.to_clk.exit628_crit_edge, label %if.end.i626

to_clk.exit620.to_clk.exit628_crit_edge:          ; preds = %to_clk.exit620
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit628

if.end.i626:                                      ; preds = %to_clk.exit620
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i625 = getelementptr inbounds %struct.clk_hw, ptr %call.i621, i32 0, i32 1
  %75 = ptrtoint ptr %clk.i625 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clk.i625, align 4
  br label %to_clk.exit628

to_clk.exit628:                                   ; preds = %if.end.i626, %to_clk.exit620.to_clk.exit628_crit_edge
  %retval.0.i627 = phi ptr [ %76, %if.end.i626 ], [ %call.i621, %to_clk.exit620.to_clk.exit628_crit_edge ]
  store ptr %retval.0.i627, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 30), align 4
  %call.i629 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i630 = icmp eq ptr %call.i629, null
  %cmp.i.i631 = icmp ugt ptr %call.i629, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i632 = or i1 %tobool.not.i.i630, %cmp.i.i631
  br i1 %spec.select.i.i632, label %to_clk.exit628.to_clk.exit636_crit_edge, label %if.end.i634

to_clk.exit628.to_clk.exit636_crit_edge:          ; preds = %to_clk.exit628
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit636

if.end.i634:                                      ; preds = %to_clk.exit628
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i633 = getelementptr inbounds %struct.clk_hw, ptr %call.i629, i32 0, i32 1
  %77 = ptrtoint ptr %clk.i633 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %clk.i633, align 4
  br label %to_clk.exit636

to_clk.exit636:                                   ; preds = %if.end.i634, %to_clk.exit628.to_clk.exit636_crit_edge
  %retval.0.i635 = phi ptr [ %78, %if.end.i634 ], [ %call.i629, %to_clk.exit628.to_clk.exit636_crit_edge ]
  store ptr %retval.0.i635, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 31), align 4
  %call.i637 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i638 = icmp eq ptr %call.i637, null
  %cmp.i.i639 = icmp ugt ptr %call.i637, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i640 = or i1 %tobool.not.i.i638, %cmp.i.i639
  br i1 %spec.select.i.i640, label %to_clk.exit636.to_clk.exit644_crit_edge, label %if.end.i642

to_clk.exit636.to_clk.exit644_crit_edge:          ; preds = %to_clk.exit636
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit644

if.end.i642:                                      ; preds = %to_clk.exit636
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i641 = getelementptr inbounds %struct.clk_hw, ptr %call.i637, i32 0, i32 1
  %79 = ptrtoint ptr %clk.i641 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %clk.i641, align 4
  br label %to_clk.exit644

to_clk.exit644:                                   ; preds = %if.end.i642, %to_clk.exit636.to_clk.exit644_crit_edge
  %retval.0.i643 = phi ptr [ %80, %if.end.i642 ], [ %call.i637, %to_clk.exit636.to_clk.exit644_crit_edge ]
  store ptr %retval.0.i643, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 32), align 4
  %call.i645 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i646 = icmp eq ptr %call.i645, null
  %cmp.i.i647 = icmp ugt ptr %call.i645, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i648 = or i1 %tobool.not.i.i646, %cmp.i.i647
  br i1 %spec.select.i.i648, label %to_clk.exit644.to_clk.exit652_crit_edge, label %if.end.i650

to_clk.exit644.to_clk.exit652_crit_edge:          ; preds = %to_clk.exit644
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit652

if.end.i650:                                      ; preds = %to_clk.exit644
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i649 = getelementptr inbounds %struct.clk_hw, ptr %call.i645, i32 0, i32 1
  %81 = ptrtoint ptr %clk.i649 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %clk.i649, align 4
  br label %to_clk.exit652

to_clk.exit652:                                   ; preds = %if.end.i650, %to_clk.exit644.to_clk.exit652_crit_edge
  %retval.0.i651 = phi ptr [ %82, %if.end.i650 ], [ %call.i645, %to_clk.exit644.to_clk.exit652_crit_edge ]
  store ptr %retval.0.i651, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 33), align 4
  %call.i653 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i654 = icmp eq ptr %call.i653, null
  %cmp.i.i655 = icmp ugt ptr %call.i653, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i656 = or i1 %tobool.not.i.i654, %cmp.i.i655
  br i1 %spec.select.i.i656, label %to_clk.exit652.to_clk.exit660_crit_edge, label %if.end.i658

to_clk.exit652.to_clk.exit660_crit_edge:          ; preds = %to_clk.exit652
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit660

if.end.i658:                                      ; preds = %to_clk.exit652
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i657 = getelementptr inbounds %struct.clk_hw, ptr %call.i653, i32 0, i32 1
  %83 = ptrtoint ptr %clk.i657 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %clk.i657, align 4
  br label %to_clk.exit660

to_clk.exit660:                                   ; preds = %if.end.i658, %to_clk.exit652.to_clk.exit660_crit_edge
  %retval.0.i659 = phi ptr [ %84, %if.end.i658 ], [ %call.i653, %to_clk.exit652.to_clk.exit660_crit_edge ]
  store ptr %retval.0.i659, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 34), align 4
  %call.i661 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i662 = icmp eq ptr %call.i661, null
  %cmp.i.i663 = icmp ugt ptr %call.i661, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i664 = or i1 %tobool.not.i.i662, %cmp.i.i663
  br i1 %spec.select.i.i664, label %to_clk.exit660.to_clk.exit668_crit_edge, label %if.end.i666

to_clk.exit660.to_clk.exit668_crit_edge:          ; preds = %to_clk.exit660
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit668

if.end.i666:                                      ; preds = %to_clk.exit660
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i665 = getelementptr inbounds %struct.clk_hw, ptr %call.i661, i32 0, i32 1
  %85 = ptrtoint ptr %clk.i665 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %clk.i665, align 4
  br label %to_clk.exit668

to_clk.exit668:                                   ; preds = %if.end.i666, %to_clk.exit660.to_clk.exit668_crit_edge
  %retval.0.i667 = phi ptr [ %86, %if.end.i666 ], [ %call.i661, %to_clk.exit660.to_clk.exit668_crit_edge ]
  store ptr %retval.0.i667, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 35), align 4
  %call.i669 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i670 = icmp eq ptr %call.i669, null
  %cmp.i.i671 = icmp ugt ptr %call.i669, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i672 = or i1 %tobool.not.i.i670, %cmp.i.i671
  br i1 %spec.select.i.i672, label %to_clk.exit668.to_clk.exit676_crit_edge, label %if.end.i674

to_clk.exit668.to_clk.exit676_crit_edge:          ; preds = %to_clk.exit668
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit676

if.end.i674:                                      ; preds = %to_clk.exit668
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i673 = getelementptr inbounds %struct.clk_hw, ptr %call.i669, i32 0, i32 1
  %87 = ptrtoint ptr %clk.i673 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %clk.i673, align 4
  br label %to_clk.exit676

to_clk.exit676:                                   ; preds = %if.end.i674, %to_clk.exit668.to_clk.exit676_crit_edge
  %retval.0.i675 = phi ptr [ %88, %if.end.i674 ], [ %call.i669, %to_clk.exit668.to_clk.exit676_crit_edge ]
  store ptr %retval.0.i675, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 36), align 4
  %call.i677 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i678 = icmp eq ptr %call.i677, null
  %cmp.i.i679 = icmp ugt ptr %call.i677, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i680 = or i1 %tobool.not.i.i678, %cmp.i.i679
  br i1 %spec.select.i.i680, label %to_clk.exit676.to_clk.exit684_crit_edge, label %if.end.i682

to_clk.exit676.to_clk.exit684_crit_edge:          ; preds = %to_clk.exit676
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit684

if.end.i682:                                      ; preds = %to_clk.exit676
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i681 = getelementptr inbounds %struct.clk_hw, ptr %call.i677, i32 0, i32 1
  %89 = ptrtoint ptr %clk.i681 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %clk.i681, align 4
  br label %to_clk.exit684

to_clk.exit684:                                   ; preds = %if.end.i682, %to_clk.exit676.to_clk.exit684_crit_edge
  %retval.0.i683 = phi ptr [ %90, %if.end.i682 ], [ %call.i677, %to_clk.exit676.to_clk.exit684_crit_edge ]
  store ptr %retval.0.i683, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 37), align 4
  %call.i685 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i686 = icmp eq ptr %call.i685, null
  %cmp.i.i687 = icmp ugt ptr %call.i685, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i688 = or i1 %tobool.not.i.i686, %cmp.i.i687
  br i1 %spec.select.i.i688, label %to_clk.exit684.to_clk.exit692_crit_edge, label %if.end.i690

to_clk.exit684.to_clk.exit692_crit_edge:          ; preds = %to_clk.exit684
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit692

if.end.i690:                                      ; preds = %to_clk.exit684
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i689 = getelementptr inbounds %struct.clk_hw, ptr %call.i685, i32 0, i32 1
  %91 = ptrtoint ptr %clk.i689 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %clk.i689, align 4
  br label %to_clk.exit692

to_clk.exit692:                                   ; preds = %if.end.i690, %to_clk.exit684.to_clk.exit692_crit_edge
  %retval.0.i691 = phi ptr [ %92, %if.end.i690 ], [ %call.i685, %to_clk.exit684.to_clk.exit692_crit_edge ]
  store ptr %retval.0.i691, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 38), align 4
  %call.i693 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i694 = icmp eq ptr %call.i693, null
  %cmp.i.i695 = icmp ugt ptr %call.i693, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i696 = or i1 %tobool.not.i.i694, %cmp.i.i695
  br i1 %spec.select.i.i696, label %to_clk.exit692.to_clk.exit700_crit_edge, label %if.end.i698

to_clk.exit692.to_clk.exit700_crit_edge:          ; preds = %to_clk.exit692
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit700

if.end.i698:                                      ; preds = %to_clk.exit692
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i697 = getelementptr inbounds %struct.clk_hw, ptr %call.i693, i32 0, i32 1
  %93 = ptrtoint ptr %clk.i697 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %clk.i697, align 4
  br label %to_clk.exit700

to_clk.exit700:                                   ; preds = %if.end.i698, %to_clk.exit692.to_clk.exit700_crit_edge
  %retval.0.i699 = phi ptr [ %94, %if.end.i698 ], [ %call.i693, %to_clk.exit692.to_clk.exit700_crit_edge ]
  store ptr %retval.0.i699, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 39), align 4
  %call.i701 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i702 = icmp eq ptr %call.i701, null
  %cmp.i.i703 = icmp ugt ptr %call.i701, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i704 = or i1 %tobool.not.i.i702, %cmp.i.i703
  br i1 %spec.select.i.i704, label %to_clk.exit700.to_clk.exit708_crit_edge, label %if.end.i706

to_clk.exit700.to_clk.exit708_crit_edge:          ; preds = %to_clk.exit700
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit708

if.end.i706:                                      ; preds = %to_clk.exit700
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i705 = getelementptr inbounds %struct.clk_hw, ptr %call.i701, i32 0, i32 1
  %95 = ptrtoint ptr %clk.i705 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %clk.i705, align 4
  br label %to_clk.exit708

to_clk.exit708:                                   ; preds = %if.end.i706, %to_clk.exit700.to_clk.exit708_crit_edge
  %retval.0.i707 = phi ptr [ %96, %if.end.i706 ], [ %call.i701, %to_clk.exit700.to_clk.exit708_crit_edge ]
  store ptr %retval.0.i707, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 40), align 4
  %call.i709 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i710 = icmp eq ptr %call.i709, null
  %cmp.i.i711 = icmp ugt ptr %call.i709, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i712 = or i1 %tobool.not.i.i710, %cmp.i.i711
  br i1 %spec.select.i.i712, label %to_clk.exit708.to_clk.exit716_crit_edge, label %if.end.i714

to_clk.exit708.to_clk.exit716_crit_edge:          ; preds = %to_clk.exit708
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit716

if.end.i714:                                      ; preds = %to_clk.exit708
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i713 = getelementptr inbounds %struct.clk_hw, ptr %call.i709, i32 0, i32 1
  %97 = ptrtoint ptr %clk.i713 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %clk.i713, align 4
  br label %to_clk.exit716

to_clk.exit716:                                   ; preds = %if.end.i714, %to_clk.exit708.to_clk.exit716_crit_edge
  %retval.0.i715 = phi ptr [ %98, %if.end.i714 ], [ %call.i709, %to_clk.exit708.to_clk.exit716_crit_edge ]
  store ptr %retval.0.i715, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 41), align 4
  %call.i717 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i718 = icmp eq ptr %call.i717, null
  %cmp.i.i719 = icmp ugt ptr %call.i717, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i720 = or i1 %tobool.not.i.i718, %cmp.i.i719
  br i1 %spec.select.i.i720, label %to_clk.exit716.to_clk.exit724_crit_edge, label %if.end.i722

to_clk.exit716.to_clk.exit724_crit_edge:          ; preds = %to_clk.exit716
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit724

if.end.i722:                                      ; preds = %to_clk.exit716
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i721 = getelementptr inbounds %struct.clk_hw, ptr %call.i717, i32 0, i32 1
  %99 = ptrtoint ptr %clk.i721 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %clk.i721, align 4
  br label %to_clk.exit724

to_clk.exit724:                                   ; preds = %if.end.i722, %to_clk.exit716.to_clk.exit724_crit_edge
  %retval.0.i723 = phi ptr [ %100, %if.end.i722 ], [ %call.i717, %to_clk.exit716.to_clk.exit724_crit_edge ]
  store ptr %retval.0.i723, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 42), align 4
  %call.i725 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i726 = icmp eq ptr %call.i725, null
  %cmp.i.i727 = icmp ugt ptr %call.i725, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i728 = or i1 %tobool.not.i.i726, %cmp.i.i727
  br i1 %spec.select.i.i728, label %to_clk.exit724.to_clk.exit732_crit_edge, label %if.end.i730

to_clk.exit724.to_clk.exit732_crit_edge:          ; preds = %to_clk.exit724
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit732

if.end.i730:                                      ; preds = %to_clk.exit724
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i729 = getelementptr inbounds %struct.clk_hw, ptr %call.i725, i32 0, i32 1
  %101 = ptrtoint ptr %clk.i729 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %clk.i729, align 4
  br label %to_clk.exit732

to_clk.exit732:                                   ; preds = %if.end.i730, %to_clk.exit724.to_clk.exit732_crit_edge
  %retval.0.i731 = phi ptr [ %102, %if.end.i730 ], [ %call.i725, %to_clk.exit724.to_clk.exit732_crit_edge ]
  store ptr %retval.0.i731, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 43), align 4
  %call.i733 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.22, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i734 = icmp eq ptr %call.i733, null
  %cmp.i.i735 = icmp ugt ptr %call.i733, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i736 = or i1 %tobool.not.i.i734, %cmp.i.i735
  br i1 %spec.select.i.i736, label %to_clk.exit732.to_clk.exit740_crit_edge, label %if.end.i738

to_clk.exit732.to_clk.exit740_crit_edge:          ; preds = %to_clk.exit732
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit740

if.end.i738:                                      ; preds = %to_clk.exit732
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i737 = getelementptr inbounds %struct.clk_hw, ptr %call.i733, i32 0, i32 1
  %103 = ptrtoint ptr %clk.i737 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %clk.i737, align 4
  br label %to_clk.exit740

to_clk.exit740:                                   ; preds = %if.end.i738, %to_clk.exit732.to_clk.exit740_crit_edge
  %retval.0.i739 = phi ptr [ %104, %if.end.i738 ], [ %call.i733, %to_clk.exit732.to_clk.exit740_crit_edge ]
  store ptr %retval.0.i739, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 44), align 4
  %call.i741 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %add.ptr131, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i742 = icmp eq ptr %call.i741, null
  %cmp.i.i743 = icmp ugt ptr %call.i741, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i744 = or i1 %tobool.not.i.i742, %cmp.i.i743
  br i1 %spec.select.i.i744, label %to_clk.exit740.to_clk.exit748_crit_edge, label %if.end.i746

to_clk.exit740.to_clk.exit748_crit_edge:          ; preds = %to_clk.exit740
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit748

if.end.i746:                                      ; preds = %to_clk.exit740
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i745 = getelementptr inbounds %struct.clk_hw, ptr %call.i741, i32 0, i32 1
  %105 = ptrtoint ptr %clk.i745 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %clk.i745, align 4
  br label %to_clk.exit748

to_clk.exit748:                                   ; preds = %if.end.i746, %to_clk.exit740.to_clk.exit748_crit_edge
  %retval.0.i747 = phi ptr [ %106, %if.end.i746 ], [ %call.i741, %to_clk.exit740.to_clk.exit748_crit_edge ]
  store ptr %retval.0.i747, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 45), align 4
  %add.ptr179 = getelementptr i8, ptr %call, i32 48
  %call.i749 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i750 = icmp eq ptr %call.i749, null
  %cmp.i.i751 = icmp ugt ptr %call.i749, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i752 = or i1 %tobool.not.i.i750, %cmp.i.i751
  br i1 %spec.select.i.i752, label %to_clk.exit748.to_clk.exit756_crit_edge, label %if.end.i754

to_clk.exit748.to_clk.exit756_crit_edge:          ; preds = %to_clk.exit748
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit756

if.end.i754:                                      ; preds = %to_clk.exit748
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i753 = getelementptr inbounds %struct.clk_hw, ptr %call.i749, i32 0, i32 1
  %107 = ptrtoint ptr %clk.i753 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %clk.i753, align 4
  br label %to_clk.exit756

to_clk.exit756:                                   ; preds = %if.end.i754, %to_clk.exit748.to_clk.exit756_crit_edge
  %retval.0.i755 = phi ptr [ %108, %if.end.i754 ], [ %call.i749, %to_clk.exit748.to_clk.exit756_crit_edge ]
  store ptr %retval.0.i755, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 46), align 4
  %call.i757 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i758 = icmp eq ptr %call.i757, null
  %cmp.i.i759 = icmp ugt ptr %call.i757, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i760 = or i1 %tobool.not.i.i758, %cmp.i.i759
  br i1 %spec.select.i.i760, label %to_clk.exit756.to_clk.exit764_crit_edge, label %if.end.i762

to_clk.exit756.to_clk.exit764_crit_edge:          ; preds = %to_clk.exit756
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit764

if.end.i762:                                      ; preds = %to_clk.exit756
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i761 = getelementptr inbounds %struct.clk_hw, ptr %call.i757, i32 0, i32 1
  %109 = ptrtoint ptr %clk.i761 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %clk.i761, align 4
  br label %to_clk.exit764

to_clk.exit764:                                   ; preds = %if.end.i762, %to_clk.exit756.to_clk.exit764_crit_edge
  %retval.0.i763 = phi ptr [ %110, %if.end.i762 ], [ %call.i757, %to_clk.exit756.to_clk.exit764_crit_edge ]
  store ptr %retval.0.i763, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 47), align 4
  %call.i765 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i766 = icmp eq ptr %call.i765, null
  %cmp.i.i767 = icmp ugt ptr %call.i765, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i768 = or i1 %tobool.not.i.i766, %cmp.i.i767
  br i1 %spec.select.i.i768, label %to_clk.exit764.to_clk.exit772_crit_edge, label %if.end.i770

to_clk.exit764.to_clk.exit772_crit_edge:          ; preds = %to_clk.exit764
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit772

if.end.i770:                                      ; preds = %to_clk.exit764
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i769 = getelementptr inbounds %struct.clk_hw, ptr %call.i765, i32 0, i32 1
  %111 = ptrtoint ptr %clk.i769 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %clk.i769, align 4
  br label %to_clk.exit772

to_clk.exit772:                                   ; preds = %if.end.i770, %to_clk.exit764.to_clk.exit772_crit_edge
  %retval.0.i771 = phi ptr [ %112, %if.end.i770 ], [ %call.i765, %to_clk.exit764.to_clk.exit772_crit_edge ]
  store ptr %retval.0.i771, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 48), align 4
  %call.i773 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i774 = icmp eq ptr %call.i773, null
  %cmp.i.i775 = icmp ugt ptr %call.i773, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i776 = or i1 %tobool.not.i.i774, %cmp.i.i775
  br i1 %spec.select.i.i776, label %to_clk.exit772.to_clk.exit780_crit_edge, label %if.end.i778

to_clk.exit772.to_clk.exit780_crit_edge:          ; preds = %to_clk.exit772
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit780

if.end.i778:                                      ; preds = %to_clk.exit772
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i777 = getelementptr inbounds %struct.clk_hw, ptr %call.i773, i32 0, i32 1
  %113 = ptrtoint ptr %clk.i777 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %clk.i777, align 4
  br label %to_clk.exit780

to_clk.exit780:                                   ; preds = %if.end.i778, %to_clk.exit772.to_clk.exit780_crit_edge
  %retval.0.i779 = phi ptr [ %114, %if.end.i778 ], [ %call.i773, %to_clk.exit772.to_clk.exit780_crit_edge ]
  store ptr %retval.0.i779, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 49), align 4
  %call.i781 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i782 = icmp eq ptr %call.i781, null
  %cmp.i.i783 = icmp ugt ptr %call.i781, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i784 = or i1 %tobool.not.i.i782, %cmp.i.i783
  br i1 %spec.select.i.i784, label %to_clk.exit780.to_clk.exit788_crit_edge, label %if.end.i786

to_clk.exit780.to_clk.exit788_crit_edge:          ; preds = %to_clk.exit780
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit788

if.end.i786:                                      ; preds = %to_clk.exit780
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i785 = getelementptr inbounds %struct.clk_hw, ptr %call.i781, i32 0, i32 1
  %115 = ptrtoint ptr %clk.i785 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %clk.i785, align 4
  br label %to_clk.exit788

to_clk.exit788:                                   ; preds = %if.end.i786, %to_clk.exit780.to_clk.exit788_crit_edge
  %retval.0.i787 = phi ptr [ %116, %if.end.i786 ], [ %call.i781, %to_clk.exit780.to_clk.exit788_crit_edge ]
  store ptr %retval.0.i787, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 50), align 4
  %call.i789 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.17, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i790 = icmp eq ptr %call.i789, null
  %cmp.i.i791 = icmp ugt ptr %call.i789, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i792 = or i1 %tobool.not.i.i790, %cmp.i.i791
  br i1 %spec.select.i.i792, label %to_clk.exit788.to_clk.exit796_crit_edge, label %if.end.i794

to_clk.exit788.to_clk.exit796_crit_edge:          ; preds = %to_clk.exit788
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit796

if.end.i794:                                      ; preds = %to_clk.exit788
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i793 = getelementptr inbounds %struct.clk_hw, ptr %call.i789, i32 0, i32 1
  %117 = ptrtoint ptr %clk.i793 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %clk.i793, align 4
  br label %to_clk.exit796

to_clk.exit796:                                   ; preds = %if.end.i794, %to_clk.exit788.to_clk.exit796_crit_edge
  %retval.0.i795 = phi ptr [ %118, %if.end.i794 ], [ %call.i789, %to_clk.exit788.to_clk.exit796_crit_edge ]
  store ptr %retval.0.i795, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 51), align 4
  %call.i797 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.17, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i798 = icmp eq ptr %call.i797, null
  %cmp.i.i799 = icmp ugt ptr %call.i797, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i800 = or i1 %tobool.not.i.i798, %cmp.i.i799
  br i1 %spec.select.i.i800, label %to_clk.exit796.to_clk.exit804_crit_edge, label %if.end.i802

to_clk.exit796.to_clk.exit804_crit_edge:          ; preds = %to_clk.exit796
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit804

if.end.i802:                                      ; preds = %to_clk.exit796
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i801 = getelementptr inbounds %struct.clk_hw, ptr %call.i797, i32 0, i32 1
  %119 = ptrtoint ptr %clk.i801 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %clk.i801, align 4
  br label %to_clk.exit804

to_clk.exit804:                                   ; preds = %if.end.i802, %to_clk.exit796.to_clk.exit804_crit_edge
  %retval.0.i803 = phi ptr [ %120, %if.end.i802 ], [ %call.i797, %to_clk.exit796.to_clk.exit804_crit_edge ]
  store ptr %retval.0.i803, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 52), align 4
  %call.i805 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.17, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i806 = icmp eq ptr %call.i805, null
  %cmp.i.i807 = icmp ugt ptr %call.i805, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i808 = or i1 %tobool.not.i.i806, %cmp.i.i807
  br i1 %spec.select.i.i808, label %to_clk.exit804.to_clk.exit812_crit_edge, label %if.end.i810

to_clk.exit804.to_clk.exit812_crit_edge:          ; preds = %to_clk.exit804
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit812

if.end.i810:                                      ; preds = %to_clk.exit804
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i809 = getelementptr inbounds %struct.clk_hw, ptr %call.i805, i32 0, i32 1
  %121 = ptrtoint ptr %clk.i809 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %clk.i809, align 4
  br label %to_clk.exit812

to_clk.exit812:                                   ; preds = %if.end.i810, %to_clk.exit804.to_clk.exit812_crit_edge
  %retval.0.i811 = phi ptr [ %122, %if.end.i810 ], [ %call.i805, %to_clk.exit804.to_clk.exit812_crit_edge ]
  store ptr %retval.0.i811, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 53), align 4
  %call.i813 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i814 = icmp eq ptr %call.i813, null
  %cmp.i.i815 = icmp ugt ptr %call.i813, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i816 = or i1 %tobool.not.i.i814, %cmp.i.i815
  br i1 %spec.select.i.i816, label %to_clk.exit812.to_clk.exit820_crit_edge, label %if.end.i818

to_clk.exit812.to_clk.exit820_crit_edge:          ; preds = %to_clk.exit812
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit820

if.end.i818:                                      ; preds = %to_clk.exit812
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i817 = getelementptr inbounds %struct.clk_hw, ptr %call.i813, i32 0, i32 1
  %123 = ptrtoint ptr %clk.i817 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %clk.i817, align 4
  br label %to_clk.exit820

to_clk.exit820:                                   ; preds = %if.end.i818, %to_clk.exit812.to_clk.exit820_crit_edge
  %retval.0.i819 = phi ptr [ %124, %if.end.i818 ], [ %call.i813, %to_clk.exit812.to_clk.exit820_crit_edge ]
  store ptr %retval.0.i819, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 54), align 4
  %call.i821 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.12, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i822 = icmp eq ptr %call.i821, null
  %cmp.i.i823 = icmp ugt ptr %call.i821, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i824 = or i1 %tobool.not.i.i822, %cmp.i.i823
  br i1 %spec.select.i.i824, label %to_clk.exit820.to_clk.exit828_crit_edge, label %if.end.i826

to_clk.exit820.to_clk.exit828_crit_edge:          ; preds = %to_clk.exit820
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit828

if.end.i826:                                      ; preds = %to_clk.exit820
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i825 = getelementptr inbounds %struct.clk_hw, ptr %call.i821, i32 0, i32 1
  %125 = ptrtoint ptr %clk.i825 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %clk.i825, align 4
  br label %to_clk.exit828

to_clk.exit828:                                   ; preds = %if.end.i826, %to_clk.exit820.to_clk.exit828_crit_edge
  %retval.0.i827 = phi ptr [ %126, %if.end.i826 ], [ %call.i821, %to_clk.exit820.to_clk.exit828_crit_edge ]
  store ptr %retval.0.i827, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 55), align 4
  %call.i829 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i830 = icmp eq ptr %call.i829, null
  %cmp.i.i831 = icmp ugt ptr %call.i829, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i832 = or i1 %tobool.not.i.i830, %cmp.i.i831
  br i1 %spec.select.i.i832, label %to_clk.exit828.to_clk.exit836_crit_edge, label %if.end.i834

to_clk.exit828.to_clk.exit836_crit_edge:          ; preds = %to_clk.exit828
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit836

if.end.i834:                                      ; preds = %to_clk.exit828
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i833 = getelementptr inbounds %struct.clk_hw, ptr %call.i829, i32 0, i32 1
  %127 = ptrtoint ptr %clk.i833 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %clk.i833, align 4
  br label %to_clk.exit836

to_clk.exit836:                                   ; preds = %if.end.i834, %to_clk.exit828.to_clk.exit836_crit_edge
  %retval.0.i835 = phi ptr [ %128, %if.end.i834 ], [ %call.i829, %to_clk.exit828.to_clk.exit836_crit_edge ]
  store ptr %retval.0.i835, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 56), align 4
  %call.i837 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i838 = icmp eq ptr %call.i837, null
  %cmp.i.i839 = icmp ugt ptr %call.i837, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i840 = or i1 %tobool.not.i.i838, %cmp.i.i839
  br i1 %spec.select.i.i840, label %to_clk.exit836.to_clk.exit844_crit_edge, label %if.end.i842

to_clk.exit836.to_clk.exit844_crit_edge:          ; preds = %to_clk.exit836
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit844

if.end.i842:                                      ; preds = %to_clk.exit836
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i841 = getelementptr inbounds %struct.clk_hw, ptr %call.i837, i32 0, i32 1
  %129 = ptrtoint ptr %clk.i841 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %clk.i841, align 4
  br label %to_clk.exit844

to_clk.exit844:                                   ; preds = %if.end.i842, %to_clk.exit836.to_clk.exit844_crit_edge
  %retval.0.i843 = phi ptr [ %130, %if.end.i842 ], [ %call.i837, %to_clk.exit836.to_clk.exit844_crit_edge ]
  store ptr %retval.0.i843, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 57), align 4
  %call.i845 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i846 = icmp eq ptr %call.i845, null
  %cmp.i.i847 = icmp ugt ptr %call.i845, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i848 = or i1 %tobool.not.i.i846, %cmp.i.i847
  br i1 %spec.select.i.i848, label %to_clk.exit844.to_clk.exit852_crit_edge, label %if.end.i850

to_clk.exit844.to_clk.exit852_crit_edge:          ; preds = %to_clk.exit844
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit852

if.end.i850:                                      ; preds = %to_clk.exit844
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i849 = getelementptr inbounds %struct.clk_hw, ptr %call.i845, i32 0, i32 1
  %131 = ptrtoint ptr %clk.i849 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %clk.i849, align 4
  br label %to_clk.exit852

to_clk.exit852:                                   ; preds = %if.end.i850, %to_clk.exit844.to_clk.exit852_crit_edge
  %retval.0.i851 = phi ptr [ %132, %if.end.i850 ], [ %call.i845, %to_clk.exit844.to_clk.exit852_crit_edge ]
  store ptr %retval.0.i851, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 58), align 4
  %call.i853 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.17, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i854 = icmp eq ptr %call.i853, null
  %cmp.i.i855 = icmp ugt ptr %call.i853, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i856 = or i1 %tobool.not.i.i854, %cmp.i.i855
  br i1 %spec.select.i.i856, label %to_clk.exit852.to_clk.exit860_crit_edge, label %if.end.i858

to_clk.exit852.to_clk.exit860_crit_edge:          ; preds = %to_clk.exit852
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit860

if.end.i858:                                      ; preds = %to_clk.exit852
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i857 = getelementptr inbounds %struct.clk_hw, ptr %call.i853, i32 0, i32 1
  %133 = ptrtoint ptr %clk.i857 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %clk.i857, align 4
  br label %to_clk.exit860

to_clk.exit860:                                   ; preds = %if.end.i858, %to_clk.exit852.to_clk.exit860_crit_edge
  %retval.0.i859 = phi ptr [ %134, %if.end.i858 ], [ %call.i853, %to_clk.exit852.to_clk.exit860_crit_edge ]
  store ptr %retval.0.i859, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 59), align 4
  %call.i861 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.17, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i862 = icmp eq ptr %call.i861, null
  %cmp.i.i863 = icmp ugt ptr %call.i861, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i864 = or i1 %tobool.not.i.i862, %cmp.i.i863
  br i1 %spec.select.i.i864, label %to_clk.exit860.to_clk.exit868_crit_edge, label %if.end.i866

to_clk.exit860.to_clk.exit868_crit_edge:          ; preds = %to_clk.exit860
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit868

if.end.i866:                                      ; preds = %to_clk.exit860
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i865 = getelementptr inbounds %struct.clk_hw, ptr %call.i861, i32 0, i32 1
  %135 = ptrtoint ptr %clk.i865 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %clk.i865, align 4
  br label %to_clk.exit868

to_clk.exit868:                                   ; preds = %if.end.i866, %to_clk.exit860.to_clk.exit868_crit_edge
  %retval.0.i867 = phi ptr [ %136, %if.end.i866 ], [ %call.i861, %to_clk.exit860.to_clk.exit868_crit_edge ]
  store ptr %retval.0.i867, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 60), align 4
  %call.i869 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr179, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i870 = icmp eq ptr %call.i869, null
  %cmp.i.i871 = icmp ugt ptr %call.i869, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i872 = or i1 %tobool.not.i.i870, %cmp.i.i871
  br i1 %spec.select.i.i872, label %to_clk.exit868.to_clk.exit876_crit_edge, label %if.end.i874

to_clk.exit868.to_clk.exit876_crit_edge:          ; preds = %to_clk.exit868
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit876

if.end.i874:                                      ; preds = %to_clk.exit868
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i873 = getelementptr inbounds %struct.clk_hw, ptr %call.i869, i32 0, i32 1
  %137 = ptrtoint ptr %clk.i873 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %clk.i873, align 4
  br label %to_clk.exit876

to_clk.exit876:                                   ; preds = %if.end.i874, %to_clk.exit868.to_clk.exit876_crit_edge
  %retval.0.i875 = phi ptr [ %138, %if.end.i874 ], [ %call.i869, %to_clk.exit868.to_clk.exit876_crit_edge ]
  store ptr %retval.0.i875, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 61), align 4
  %add.ptr227 = getelementptr i8, ptr %call, i32 52
  %call.i877 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr227, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i878 = icmp eq ptr %call.i877, null
  %cmp.i.i879 = icmp ugt ptr %call.i877, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i880 = or i1 %tobool.not.i.i878, %cmp.i.i879
  br i1 %spec.select.i.i880, label %to_clk.exit876.to_clk.exit884_crit_edge, label %if.end.i882

to_clk.exit876.to_clk.exit884_crit_edge:          ; preds = %to_clk.exit876
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit884

if.end.i882:                                      ; preds = %to_clk.exit876
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i881 = getelementptr inbounds %struct.clk_hw, ptr %call.i877, i32 0, i32 1
  %139 = ptrtoint ptr %clk.i881 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %clk.i881, align 4
  br label %to_clk.exit884

to_clk.exit884:                                   ; preds = %if.end.i882, %to_clk.exit876.to_clk.exit884_crit_edge
  %retval.0.i883 = phi ptr [ %140, %if.end.i882 ], [ %call.i877, %to_clk.exit876.to_clk.exit884_crit_edge ]
  store ptr %retval.0.i883, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 62), align 4
  %call.i885 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef %add.ptr227, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i886 = icmp eq ptr %call.i885, null
  %cmp.i.i887 = icmp ugt ptr %call.i885, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i888 = or i1 %tobool.not.i.i886, %cmp.i.i887
  br i1 %spec.select.i.i888, label %to_clk.exit884.to_clk.exit892_crit_edge, label %if.end.i890

to_clk.exit884.to_clk.exit892_crit_edge:          ; preds = %to_clk.exit884
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit892

if.end.i890:                                      ; preds = %to_clk.exit884
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i889 = getelementptr inbounds %struct.clk_hw, ptr %call.i885, i32 0, i32 1
  %141 = ptrtoint ptr %clk.i889 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %clk.i889, align 4
  br label %to_clk.exit892

to_clk.exit892:                                   ; preds = %if.end.i890, %to_clk.exit884.to_clk.exit892_crit_edge
  %retval.0.i891 = phi ptr [ %142, %if.end.i890 ], [ %call.i885, %to_clk.exit884.to_clk.exit892_crit_edge ]
  store ptr %retval.0.i891, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 63), align 4
  %call.i893 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr227, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i894 = icmp eq ptr %call.i893, null
  %cmp.i.i895 = icmp ugt ptr %call.i893, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i896 = or i1 %tobool.not.i.i894, %cmp.i.i895
  br i1 %spec.select.i.i896, label %to_clk.exit892.to_clk.exit900_crit_edge, label %if.end.i898

to_clk.exit892.to_clk.exit900_crit_edge:          ; preds = %to_clk.exit892
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit900

if.end.i898:                                      ; preds = %to_clk.exit892
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i897 = getelementptr inbounds %struct.clk_hw, ptr %call.i893, i32 0, i32 1
  %143 = ptrtoint ptr %clk.i897 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %clk.i897, align 4
  br label %to_clk.exit900

to_clk.exit900:                                   ; preds = %if.end.i898, %to_clk.exit892.to_clk.exit900_crit_edge
  %retval.0.i899 = phi ptr [ %144, %if.end.i898 ], [ %call.i893, %to_clk.exit892.to_clk.exit900_crit_edge ]
  store ptr %retval.0.i899, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 64), align 4
  %call.i901 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef %add.ptr227, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i902 = icmp eq ptr %call.i901, null
  %cmp.i.i903 = icmp ugt ptr %call.i901, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i904 = or i1 %tobool.not.i.i902, %cmp.i.i903
  br i1 %spec.select.i.i904, label %to_clk.exit900.to_clk.exit908_crit_edge, label %if.end.i906

to_clk.exit900.to_clk.exit908_crit_edge:          ; preds = %to_clk.exit900
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit908

if.end.i906:                                      ; preds = %to_clk.exit900
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i905 = getelementptr inbounds %struct.clk_hw, ptr %call.i901, i32 0, i32 1
  %145 = ptrtoint ptr %clk.i905 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %clk.i905, align 4
  br label %to_clk.exit908

to_clk.exit908:                                   ; preds = %if.end.i906, %to_clk.exit900.to_clk.exit908_crit_edge
  %retval.0.i907 = phi ptr [ %146, %if.end.i906 ], [ %call.i901, %to_clk.exit900.to_clk.exit908_crit_edge ]
  store ptr %retval.0.i907, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 65), align 4
  %call.i909 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr227, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i910 = icmp eq ptr %call.i909, null
  %cmp.i.i911 = icmp ugt ptr %call.i909, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i912 = or i1 %tobool.not.i.i910, %cmp.i.i911
  br i1 %spec.select.i.i912, label %to_clk.exit908.to_clk.exit916_crit_edge, label %if.end.i914

to_clk.exit908.to_clk.exit916_crit_edge:          ; preds = %to_clk.exit908
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit916

if.end.i914:                                      ; preds = %to_clk.exit908
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i913 = getelementptr inbounds %struct.clk_hw, ptr %call.i909, i32 0, i32 1
  %147 = ptrtoint ptr %clk.i913 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %clk.i913, align 4
  br label %to_clk.exit916

to_clk.exit916:                                   ; preds = %if.end.i914, %to_clk.exit908.to_clk.exit916_crit_edge
  %retval.0.i915 = phi ptr [ %148, %if.end.i914 ], [ %call.i909, %to_clk.exit908.to_clk.exit916_crit_edge ]
  store ptr %retval.0.i915, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 66), align 4
  %call.i917 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.26, i32 noundef 4, ptr noundef %add.ptr227, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i918 = icmp eq ptr %call.i917, null
  %cmp.i.i919 = icmp ugt ptr %call.i917, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i920 = or i1 %tobool.not.i.i918, %cmp.i.i919
  br i1 %spec.select.i.i920, label %to_clk.exit916.to_clk.exit924_crit_edge, label %if.end.i922

to_clk.exit916.to_clk.exit924_crit_edge:          ; preds = %to_clk.exit916
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit924

if.end.i922:                                      ; preds = %to_clk.exit916
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i921 = getelementptr inbounds %struct.clk_hw, ptr %call.i917, i32 0, i32 1
  %149 = ptrtoint ptr %clk.i921 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %clk.i921, align 4
  br label %to_clk.exit924

to_clk.exit924:                                   ; preds = %if.end.i922, %to_clk.exit916.to_clk.exit924_crit_edge
  %retval.0.i923 = phi ptr [ %150, %if.end.i922 ], [ %call.i917, %to_clk.exit916.to_clk.exit924_crit_edge ]
  store ptr %retval.0.i923, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 67), align 4
  %call.i925 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.29, i32 noundef 4, ptr noundef %add.ptr227, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i926 = icmp eq ptr %call.i925, null
  %cmp.i.i927 = icmp ugt ptr %call.i925, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i928 = or i1 %tobool.not.i.i926, %cmp.i.i927
  br i1 %spec.select.i.i928, label %to_clk.exit924.to_clk.exit932_crit_edge, label %if.end.i930

to_clk.exit924.to_clk.exit932_crit_edge:          ; preds = %to_clk.exit924
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit932

if.end.i930:                                      ; preds = %to_clk.exit924
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i929 = getelementptr inbounds %struct.clk_hw, ptr %call.i925, i32 0, i32 1
  %151 = ptrtoint ptr %clk.i929 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %clk.i929, align 4
  br label %to_clk.exit932

to_clk.exit932:                                   ; preds = %if.end.i930, %to_clk.exit924.to_clk.exit932_crit_edge
  %retval.0.i931 = phi ptr [ %152, %if.end.i930 ], [ %call.i925, %to_clk.exit924.to_clk.exit932_crit_edge ]
  store ptr %retval.0.i931, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 68), align 4
  %call.i933 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.31, i32 noundef 4, ptr noundef %add.ptr227, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i934 = icmp eq ptr %call.i933, null
  %cmp.i.i935 = icmp ugt ptr %call.i933, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i936 = or i1 %tobool.not.i.i934, %cmp.i.i935
  br i1 %spec.select.i.i936, label %to_clk.exit932.to_clk.exit940_crit_edge, label %if.end.i938

to_clk.exit932.to_clk.exit940_crit_edge:          ; preds = %to_clk.exit932
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit940

if.end.i938:                                      ; preds = %to_clk.exit932
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i937 = getelementptr inbounds %struct.clk_hw, ptr %call.i933, i32 0, i32 1
  %153 = ptrtoint ptr %clk.i937 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %clk.i937, align 4
  br label %to_clk.exit940

to_clk.exit940:                                   ; preds = %if.end.i938, %to_clk.exit932.to_clk.exit940_crit_edge
  %retval.0.i939 = phi ptr [ %154, %if.end.i938 ], [ %call.i933, %to_clk.exit932.to_clk.exit940_crit_edge ]
  store ptr %retval.0.i939, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 69), align 4
  %call.i941 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.19, i32 noundef 4, ptr noundef %add.ptr227, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i942 = icmp eq ptr %call.i941, null
  %cmp.i.i943 = icmp ugt ptr %call.i941, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i944 = or i1 %tobool.not.i.i942, %cmp.i.i943
  br i1 %spec.select.i.i944, label %to_clk.exit940.to_clk.exit948_crit_edge, label %if.end.i946

to_clk.exit940.to_clk.exit948_crit_edge:          ; preds = %to_clk.exit940
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit948

if.end.i946:                                      ; preds = %to_clk.exit940
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i945 = getelementptr inbounds %struct.clk_hw, ptr %call.i941, i32 0, i32 1
  %155 = ptrtoint ptr %clk.i945 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %clk.i945, align 4
  br label %to_clk.exit948

to_clk.exit948:                                   ; preds = %if.end.i946, %to_clk.exit940.to_clk.exit948_crit_edge
  %retval.0.i947 = phi ptr [ %156, %if.end.i946 ], [ %call.i941, %to_clk.exit940.to_clk.exit948_crit_edge ]
  store ptr %retval.0.i947, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 70), align 4
  %call.i949 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.19, i32 noundef 4, ptr noundef %add.ptr227, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i950 = icmp eq ptr %call.i949, null
  %cmp.i.i951 = icmp ugt ptr %call.i949, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i952 = or i1 %tobool.not.i.i950, %cmp.i.i951
  br i1 %spec.select.i.i952, label %to_clk.exit948.to_clk.exit956_crit_edge, label %if.end.i954

to_clk.exit948.to_clk.exit956_crit_edge:          ; preds = %to_clk.exit948
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit956

if.end.i954:                                      ; preds = %to_clk.exit948
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i953 = getelementptr inbounds %struct.clk_hw, ptr %call.i949, i32 0, i32 1
  %157 = ptrtoint ptr %clk.i953 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %clk.i953, align 4
  br label %to_clk.exit956

to_clk.exit956:                                   ; preds = %if.end.i954, %to_clk.exit948.to_clk.exit956_crit_edge
  %retval.0.i955 = phi ptr [ %158, %if.end.i954 ], [ %call.i949, %to_clk.exit948.to_clk.exit956_crit_edge ]
  store ptr %retval.0.i955, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 71), align 4
  %call.i957 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.19, i32 noundef 4, ptr noundef %add.ptr227, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i958 = icmp eq ptr %call.i957, null
  %cmp.i.i959 = icmp ugt ptr %call.i957, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i960 = or i1 %tobool.not.i.i958, %cmp.i.i959
  br i1 %spec.select.i.i960, label %to_clk.exit956.to_clk.exit964_crit_edge, label %if.end.i962

to_clk.exit956.to_clk.exit964_crit_edge:          ; preds = %to_clk.exit956
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit964

if.end.i962:                                      ; preds = %to_clk.exit956
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i961 = getelementptr inbounds %struct.clk_hw, ptr %call.i957, i32 0, i32 1
  %159 = ptrtoint ptr %clk.i961 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %clk.i961, align 4
  br label %to_clk.exit964

to_clk.exit964:                                   ; preds = %if.end.i962, %to_clk.exit956.to_clk.exit964_crit_edge
  %retval.0.i963 = phi ptr [ %160, %if.end.i962 ], [ %call.i957, %to_clk.exit956.to_clk.exit964_crit_edge ]
  store ptr %retval.0.i963, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 72), align 4
  %call.i965 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef %add.ptr227, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i966 = icmp eq ptr %call.i965, null
  %cmp.i.i967 = icmp ugt ptr %call.i965, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i968 = or i1 %tobool.not.i.i966, %cmp.i.i967
  br i1 %spec.select.i.i968, label %to_clk.exit964.to_clk.exit972_crit_edge, label %if.end.i970

to_clk.exit964.to_clk.exit972_crit_edge:          ; preds = %to_clk.exit964
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit972

if.end.i970:                                      ; preds = %to_clk.exit964
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i969 = getelementptr inbounds %struct.clk_hw, ptr %call.i965, i32 0, i32 1
  %161 = ptrtoint ptr %clk.i969 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %clk.i969, align 4
  br label %to_clk.exit972

to_clk.exit972:                                   ; preds = %if.end.i970, %to_clk.exit964.to_clk.exit972_crit_edge
  %retval.0.i971 = phi ptr [ %162, %if.end.i970 ], [ %call.i965, %to_clk.exit964.to_clk.exit972_crit_edge ]
  store ptr %retval.0.i971, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 73), align 4
  %call.i973 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr227, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i974 = icmp eq ptr %call.i973, null
  %cmp.i.i975 = icmp ugt ptr %call.i973, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i976 = or i1 %tobool.not.i.i974, %cmp.i.i975
  br i1 %spec.select.i.i976, label %to_clk.exit972.to_clk.exit980_crit_edge, label %if.end.i978

to_clk.exit972.to_clk.exit980_crit_edge:          ; preds = %to_clk.exit972
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit980

if.end.i978:                                      ; preds = %to_clk.exit972
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i977 = getelementptr inbounds %struct.clk_hw, ptr %call.i973, i32 0, i32 1
  %163 = ptrtoint ptr %clk.i977 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %clk.i977, align 4
  br label %to_clk.exit980

to_clk.exit980:                                   ; preds = %if.end.i978, %to_clk.exit972.to_clk.exit980_crit_edge
  %retval.0.i979 = phi ptr [ %164, %if.end.i978 ], [ %call.i973, %to_clk.exit972.to_clk.exit980_crit_edge ]
  store ptr %retval.0.i979, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 74), align 4
  %call.i981 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.66, i32 noundef 4, ptr noundef %add.ptr227, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i982 = icmp eq ptr %call.i981, null
  %cmp.i.i983 = icmp ugt ptr %call.i981, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i984 = or i1 %tobool.not.i.i982, %cmp.i.i983
  br i1 %spec.select.i.i984, label %to_clk.exit980.to_clk.exit988_crit_edge, label %if.end.i986

to_clk.exit980.to_clk.exit988_crit_edge:          ; preds = %to_clk.exit980
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit988

if.end.i986:                                      ; preds = %to_clk.exit980
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i985 = getelementptr inbounds %struct.clk_hw, ptr %call.i981, i32 0, i32 1
  %165 = ptrtoint ptr %clk.i985 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %clk.i985, align 4
  br label %to_clk.exit988

to_clk.exit988:                                   ; preds = %if.end.i986, %to_clk.exit980.to_clk.exit988_crit_edge
  %retval.0.i987 = phi ptr [ %166, %if.end.i986 ], [ %call.i981, %to_clk.exit980.to_clk.exit988_crit_edge ]
  store ptr %retval.0.i987, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 75), align 4
  %call.i989 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr227, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i990 = icmp eq ptr %call.i989, null
  %cmp.i.i991 = icmp ugt ptr %call.i989, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i992 = or i1 %tobool.not.i.i990, %cmp.i.i991
  br i1 %spec.select.i.i992, label %to_clk.exit988.to_clk.exit996_crit_edge, label %if.end.i994

to_clk.exit988.to_clk.exit996_crit_edge:          ; preds = %to_clk.exit988
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit996

if.end.i994:                                      ; preds = %to_clk.exit988
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i993 = getelementptr inbounds %struct.clk_hw, ptr %call.i989, i32 0, i32 1
  %167 = ptrtoint ptr %clk.i993 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %clk.i993, align 4
  br label %to_clk.exit996

to_clk.exit996:                                   ; preds = %if.end.i994, %to_clk.exit988.to_clk.exit996_crit_edge
  %retval.0.i995 = phi ptr [ %168, %if.end.i994 ], [ %call.i989, %to_clk.exit988.to_clk.exit996_crit_edge ]
  store ptr %retval.0.i995, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 76), align 4
  %add.ptr272 = getelementptr i8, ptr %call, i32 56
  %call.i997 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.36, i32 noundef 4, ptr noundef %add.ptr272, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i998 = icmp eq ptr %call.i997, null
  %cmp.i.i999 = icmp ugt ptr %call.i997, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1000 = or i1 %tobool.not.i.i998, %cmp.i.i999
  br i1 %spec.select.i.i1000, label %to_clk.exit996.to_clk.exit1004_crit_edge, label %if.end.i1002

to_clk.exit996.to_clk.exit1004_crit_edge:         ; preds = %to_clk.exit996
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit1004

if.end.i1002:                                     ; preds = %to_clk.exit996
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i1001 = getelementptr inbounds %struct.clk_hw, ptr %call.i997, i32 0, i32 1
  %169 = ptrtoint ptr %clk.i1001 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %clk.i1001, align 4
  br label %to_clk.exit1004

to_clk.exit1004:                                  ; preds = %if.end.i1002, %to_clk.exit996.to_clk.exit1004_crit_edge
  %retval.0.i1003 = phi ptr [ %170, %if.end.i1002 ], [ %call.i997, %to_clk.exit996.to_clk.exit1004_crit_edge ]
  store ptr %retval.0.i1003, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 77), align 4
  %call.i1005 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef %add.ptr272, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i1006 = icmp eq ptr %call.i1005, null
  %cmp.i.i1007 = icmp ugt ptr %call.i1005, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1008 = or i1 %tobool.not.i.i1006, %cmp.i.i1007
  br i1 %spec.select.i.i1008, label %to_clk.exit1004.to_clk.exit1012_crit_edge, label %if.end.i1010

to_clk.exit1004.to_clk.exit1012_crit_edge:        ; preds = %to_clk.exit1004
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit1012

if.end.i1010:                                     ; preds = %to_clk.exit1004
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i1009 = getelementptr inbounds %struct.clk_hw, ptr %call.i1005, i32 0, i32 1
  %171 = ptrtoint ptr %clk.i1009 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %clk.i1009, align 4
  br label %to_clk.exit1012

to_clk.exit1012:                                  ; preds = %if.end.i1010, %to_clk.exit1004.to_clk.exit1012_crit_edge
  %retval.0.i1011 = phi ptr [ %172, %if.end.i1010 ], [ %call.i1005, %to_clk.exit1004.to_clk.exit1012_crit_edge ]
  store ptr %retval.0.i1011, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 80), align 4
  %call.i1013 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef %add.ptr272, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %tobool.not.i.i1014 = icmp eq ptr %call.i1013, null
  %cmp.i.i1015 = icmp ugt ptr %call.i1013, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i1016 = or i1 %tobool.not.i.i1014, %cmp.i.i1015
  br i1 %spec.select.i.i1016, label %to_clk.exit1012.to_clk.exit1020_crit_edge, label %if.end.i1018

to_clk.exit1012.to_clk.exit1020_crit_edge:        ; preds = %to_clk.exit1012
  call void @__sanitizer_cov_trace_pc() #5
  br label %to_clk.exit1020

if.end.i1018:                                     ; preds = %to_clk.exit1012
  call void @__sanitizer_cov_trace_pc() #5
  %clk.i1017 = getelementptr inbounds %struct.clk_hw, ptr %call.i1013, i32 0, i32 1
  %173 = ptrtoint ptr %clk.i1017 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %clk.i1017, align 4
  br label %to_clk.exit1020

to_clk.exit1020:                                  ; preds = %if.end.i1018, %to_clk.exit1012.to_clk.exit1020_crit_edge
  %retval.0.i1019 = phi ptr [ %174, %if.end.i1018 ], [ %call.i1013, %to_clk.exit1012.to_clk.exit1020_crit_edge ]
  store ptr %retval.0.i1019, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 81), align 4
  tail call void @imx_check_clocks(ptr noundef nonnull @clk, i32 noundef 83) #3
  %175 = load ptr, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 66), align 4
  %call.i1021 = tail call i32 @clk_prepare(ptr noundef %175) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1021)
  %tobool.not.i = icmp eq i32 %call.i1021, 0
  br i1 %tobool.not.i, label %if.end.i1022, label %to_clk.exit1020.clk_prepare_enable.exit_crit_edge

to_clk.exit1020.clk_prepare_enable.exit_crit_edge: ; preds = %to_clk.exit1020
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.end.i1022:                                     ; preds = %to_clk.exit1020
  %call1.i = tail call i32 @clk_enable(ptr noundef %175) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i1022.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i1022.clk_prepare_enable.exit_crit_edge:   ; preds = %if.end.i1022
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i1022
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %175) #3
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i1022.clk_prepare_enable.exit_crit_edge, %to_clk.exit1020.clk_prepare_enable.exit_crit_edge
  %176 = load ptr, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 47), align 4
  %call.i1023 = tail call i32 @clk_prepare(ptr noundef %176) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1023)
  %tobool.not.i1024 = icmp eq i32 %call.i1023, 0
  br i1 %tobool.not.i1024, label %if.end.i1027, label %clk_prepare_enable.exit.clk_prepare_enable.exit1029_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit1029_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1029

if.end.i1027:                                     ; preds = %clk_prepare_enable.exit
  %call1.i1025 = tail call i32 @clk_enable(ptr noundef %176) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1025)
  %tobool2.not.i1026 = icmp eq i32 %call1.i1025, 0
  br i1 %tobool2.not.i1026, label %if.end.i1027.clk_prepare_enable.exit1029_crit_edge, label %if.then3.i1028

if.end.i1027.clk_prepare_enable.exit1029_crit_edge: ; preds = %if.end.i1027
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1029

if.then3.i1028:                                   ; preds = %if.end.i1027
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %176) #3
  br label %clk_prepare_enable.exit1029

clk_prepare_enable.exit1029:                      ; preds = %if.then3.i1028, %if.end.i1027.clk_prepare_enable.exit1029_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit1029_crit_edge
  %177 = load ptr, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 48), align 4
  %call.i1030 = tail call i32 @clk_prepare(ptr noundef %177) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1030)
  %tobool.not.i1031 = icmp eq i32 %call.i1030, 0
  br i1 %tobool.not.i1031, label %if.end.i1034, label %clk_prepare_enable.exit1029.clk_prepare_enable.exit1036_crit_edge

clk_prepare_enable.exit1029.clk_prepare_enable.exit1036_crit_edge: ; preds = %clk_prepare_enable.exit1029
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1036

if.end.i1034:                                     ; preds = %clk_prepare_enable.exit1029
  %call1.i1032 = tail call i32 @clk_enable(ptr noundef %177) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1032)
  %tobool2.not.i1033 = icmp eq i32 %call1.i1032, 0
  br i1 %tobool2.not.i1033, label %if.end.i1034.clk_prepare_enable.exit1036_crit_edge, label %if.then3.i1035

if.end.i1034.clk_prepare_enable.exit1036_crit_edge: ; preds = %if.end.i1034
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1036

if.then3.i1035:                                   ; preds = %if.end.i1034
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %177) #3
  br label %clk_prepare_enable.exit1036

clk_prepare_enable.exit1036:                      ; preds = %if.then3.i1035, %if.end.i1034.clk_prepare_enable.exit1036_crit_edge, %clk_prepare_enable.exit1029.clk_prepare_enable.exit1036_crit_edge
  %178 = load ptr, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 49), align 4
  %call.i1037 = tail call i32 @clk_prepare(ptr noundef %178) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1037)
  %tobool.not.i1038 = icmp eq i32 %call.i1037, 0
  br i1 %tobool.not.i1038, label %if.end.i1041, label %clk_prepare_enable.exit1036.clk_prepare_enable.exit1043_crit_edge

clk_prepare_enable.exit1036.clk_prepare_enable.exit1043_crit_edge: ; preds = %clk_prepare_enable.exit1036
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1043

if.end.i1041:                                     ; preds = %clk_prepare_enable.exit1036
  %call1.i1039 = tail call i32 @clk_enable(ptr noundef %178) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1039)
  %tobool2.not.i1040 = icmp eq i32 %call1.i1039, 0
  br i1 %tobool2.not.i1040, label %if.end.i1041.clk_prepare_enable.exit1043_crit_edge, label %if.then3.i1042

if.end.i1041.clk_prepare_enable.exit1043_crit_edge: ; preds = %if.end.i1041
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1043

if.then3.i1042:                                   ; preds = %if.end.i1041
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %178) #3
  br label %clk_prepare_enable.exit1043

clk_prepare_enable.exit1043:                      ; preds = %if.then3.i1042, %if.end.i1041.clk_prepare_enable.exit1043_crit_edge, %clk_prepare_enable.exit1036.clk_prepare_enable.exit1043_crit_edge
  %179 = load ptr, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 80), align 4
  %call.i1044 = tail call i32 @clk_prepare(ptr noundef %179) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1044)
  %tobool.not.i1045 = icmp eq i32 %call.i1044, 0
  br i1 %tobool.not.i1045, label %if.end.i1048, label %clk_prepare_enable.exit1043.clk_prepare_enable.exit1050_crit_edge

clk_prepare_enable.exit1043.clk_prepare_enable.exit1050_crit_edge: ; preds = %clk_prepare_enable.exit1043
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1050

if.end.i1048:                                     ; preds = %clk_prepare_enable.exit1043
  %call1.i1046 = tail call i32 @clk_enable(ptr noundef %179) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1046)
  %tobool2.not.i1047 = icmp eq i32 %call1.i1046, 0
  br i1 %tobool2.not.i1047, label %if.end.i1048.clk_prepare_enable.exit1050_crit_edge, label %if.then3.i1049

if.end.i1048.clk_prepare_enable.exit1050_crit_edge: ; preds = %if.end.i1048
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1050

if.then3.i1049:                                   ; preds = %if.end.i1048
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %179) #3
  br label %clk_prepare_enable.exit1050

clk_prepare_enable.exit1050:                      ; preds = %if.then3.i1049, %if.end.i1048.clk_prepare_enable.exit1050_crit_edge, %clk_prepare_enable.exit1043.clk_prepare_enable.exit1050_crit_edge
  %180 = load ptr, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 39), align 4
  %call.i1051 = tail call i32 @clk_prepare(ptr noundef %180) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1051)
  %tobool.not.i1052 = icmp eq i32 %call.i1051, 0
  br i1 %tobool.not.i1052, label %if.end.i1055, label %clk_prepare_enable.exit1050.clk_prepare_enable.exit1057_crit_edge

clk_prepare_enable.exit1050.clk_prepare_enable.exit1057_crit_edge: ; preds = %clk_prepare_enable.exit1050
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1057

if.end.i1055:                                     ; preds = %clk_prepare_enable.exit1050
  %call1.i1053 = tail call i32 @clk_enable(ptr noundef %180) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1053)
  %tobool2.not.i1054 = icmp eq i32 %call1.i1053, 0
  br i1 %tobool2.not.i1054, label %if.end.i1055.clk_prepare_enable.exit1057_crit_edge, label %if.then3.i1056

if.end.i1055.clk_prepare_enable.exit1057_crit_edge: ; preds = %if.end.i1055
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1057

if.then3.i1056:                                   ; preds = %if.end.i1055
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %180) #3
  br label %clk_prepare_enable.exit1057

clk_prepare_enable.exit1057:                      ; preds = %if.then3.i1056, %if.end.i1055.clk_prepare_enable.exit1057_crit_edge, %clk_prepare_enable.exit1050.clk_prepare_enable.exit1057_crit_edge
  %181 = load ptr, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 75), align 4
  %call.i1058 = tail call i32 @clk_prepare(ptr noundef %181) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1058)
  %tobool.not.i1059 = icmp eq i32 %call.i1058, 0
  br i1 %tobool.not.i1059, label %if.end.i1062, label %clk_prepare_enable.exit1057.clk_prepare_enable.exit1064_crit_edge

clk_prepare_enable.exit1057.clk_prepare_enable.exit1064_crit_edge: ; preds = %clk_prepare_enable.exit1057
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1064

if.end.i1062:                                     ; preds = %clk_prepare_enable.exit1057
  %call1.i1060 = tail call i32 @clk_enable(ptr noundef %181) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1060)
  %tobool2.not.i1061 = icmp eq i32 %call1.i1060, 0
  br i1 %tobool2.not.i1061, label %if.end.i1062.clk_prepare_enable.exit1064_crit_edge, label %if.then3.i1063

if.end.i1062.clk_prepare_enable.exit1064_crit_edge: ; preds = %if.end.i1062
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1064

if.then3.i1063:                                   ; preds = %if.end.i1062
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %181) #3
  br label %clk_prepare_enable.exit1064

clk_prepare_enable.exit1064:                      ; preds = %if.then3.i1063, %if.end.i1062.clk_prepare_enable.exit1064_crit_edge, %clk_prepare_enable.exit1057.clk_prepare_enable.exit1064_crit_edge
  %182 = load ptr, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 54), align 4
  %call.i1065 = tail call i32 @clk_prepare(ptr noundef %182) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1065)
  %tobool.not.i1066 = icmp eq i32 %call.i1065, 0
  br i1 %tobool.not.i1066, label %if.end.i1069, label %clk_prepare_enable.exit1064.clk_prepare_enable.exit1071_crit_edge

clk_prepare_enable.exit1064.clk_prepare_enable.exit1071_crit_edge: ; preds = %clk_prepare_enable.exit1064
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1071

if.end.i1069:                                     ; preds = %clk_prepare_enable.exit1064
  %call1.i1067 = tail call i32 @clk_enable(ptr noundef %182) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1067)
  %tobool2.not.i1068 = icmp eq i32 %call1.i1067, 0
  br i1 %tobool2.not.i1068, label %if.end.i1069.clk_prepare_enable.exit1071_crit_edge, label %if.then3.i1070

if.end.i1069.clk_prepare_enable.exit1071_crit_edge: ; preds = %if.end.i1069
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1071

if.then3.i1070:                                   ; preds = %if.end.i1069
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %182) #3
  br label %clk_prepare_enable.exit1071

clk_prepare_enable.exit1071:                      ; preds = %if.then3.i1070, %if.end.i1069.clk_prepare_enable.exit1071_crit_edge, %clk_prepare_enable.exit1064.clk_prepare_enable.exit1071_crit_edge
  %183 = load ptr, ptr getelementptr inbounds ([83 x ptr], ptr @clk, i32 0, i32 64), align 4
  %call.i1072 = tail call i32 @clk_prepare(ptr noundef %183) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1072)
  %tobool.not.i1073 = icmp eq i32 %call.i1072, 0
  br i1 %tobool.not.i1073, label %if.end.i1076, label %clk_prepare_enable.exit1071.clk_prepare_enable.exit1078_crit_edge

clk_prepare_enable.exit1071.clk_prepare_enable.exit1078_crit_edge: ; preds = %clk_prepare_enable.exit1071
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1078

if.end.i1076:                                     ; preds = %clk_prepare_enable.exit1071
  %call1.i1074 = tail call i32 @clk_enable(ptr noundef %183) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1074)
  %tobool2.not.i1075 = icmp eq i32 %call1.i1074, 0
  br i1 %tobool2.not.i1075, label %if.end.i1076.clk_prepare_enable.exit1078_crit_edge, label %if.then3.i1077

if.end.i1076.clk_prepare_enable.exit1078_crit_edge: ; preds = %if.end.i1076
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1078

if.then3.i1077:                                   ; preds = %if.end.i1076
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %183) #3
  br label %clk_prepare_enable.exit1078

clk_prepare_enable.exit1078:                      ; preds = %if.then3.i1077, %if.end.i1076.clk_prepare_enable.exit1078_crit_edge, %clk_prepare_enable.exit1071.clk_prepare_enable.exit1078_crit_edge
  tail call void @imx_register_uart_clocks(i32 noundef 4) #3
  %call290 = tail call i32 @mx35_revision() #3
  tail call void @imx_print_silicon_rev(ptr noundef nonnull @.str.88, i32 noundef %call290) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pllv1(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clocks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_register_uart_clocks(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_print_silicon_rev(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mx35_revision() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

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

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @__of_table_imx35, !1, !"__of_table_imx35", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-imx35.c", i32 251, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-imx35.c", i32 99, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @_mx35_clocks_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @_mx35_clocks_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/imx/clk-imx35.c", i32 107, i32 14}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-imx35.c", i32 108, i32 14}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/imx/clk-imx35.c", i32 109, i32 14}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/imx/clk-imx35.c", i32 110, i32 14}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/imx/clk-imx35.c", i32 112, i32 14}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/imx/clk-imx35.c", i32 115, i32 14}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/imx/clk-imx35.c", i32 126, i32 3}
!22 = !{ptr @_mx35_clocks_init._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @_mx35_clocks_init._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/imx/clk-imx35.c", i32 130, i32 13}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/imx/clk-imx35.c", i32 132, i32 13}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/imx/clk-imx35.c", i32 133, i32 13}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/imx/clk-imx35.c", i32 135, i32 21}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/imx/clk-imx35.c", i32 136, i32 21}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/imx/clk-imx35.c", i32 137, i32 17}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/imx/clk-imx35.c", i32 139, i32 18}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/imx/clk-imx35.c", i32 140, i32 18}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/imx/clk-imx35.c", i32 142, i32 19}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/imx/clk-imx35.c", i32 143, i32 20}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/imx/clk-imx35.c", i32 144, i32 20}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/imx/clk-imx35.c", i32 145, i32 20}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/imx/clk-imx35.c", i32 147, i32 19}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/imx/clk-imx35.c", i32 148, i32 23}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/imx/clk-imx35.c", i32 149, i32 24}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/imx/clk-imx35.c", i32 151, i32 17}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/imx/clk-imx35.c", i32 152, i32 22}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/imx/clk-imx35.c", i32 153, i32 23}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/imx/clk-imx35.c", i32 154, i32 22}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/imx/clk-imx35.c", i32 155, i32 23}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/imx/clk-imx35.c", i32 157, i32 17}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/imx/clk-imx35.c", i32 158, i32 17}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/imx/clk-imx35.c", i32 160, i32 17}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/imx/clk-imx35.c", i32 162, i32 17}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/imx/clk-imx35.c", i32 163, i32 17}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/imx/clk-imx35.c", i32 165, i32 19}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/imx/clk-imx35.c", i32 166, i32 19}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/imx/clk-imx35.c", i32 167, i32 21}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/imx/clk-imx35.c", i32 168, i32 19}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/imx/clk-imx35.c", i32 169, i32 19}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/imx/clk-imx35.c", i32 170, i32 20}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/imx/clk-imx35.c", i32 171, i32 20}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/imx/clk-imx35.c", i32 172, i32 18}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/imx/clk-imx35.c", i32 173, i32 19}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/imx/clk-imx35.c", i32 174, i32 18}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/imx/clk-imx35.c", i32 175, i32 20}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/imx/clk-imx35.c", i32 176, i32 20}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/imx/clk-imx35.c", i32 177, i32 19}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/imx/clk-imx35.c", i32 178, i32 21}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/imx/clk-imx35.c", i32 179, i32 21}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/imx/clk-imx35.c", i32 180, i32 21}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/imx/clk-imx35.c", i32 182, i32 18}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/imx/clk-imx35.c", i32 183, i32 20}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/imx/clk-imx35.c", i32 184, i32 20}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/imx/clk-imx35.c", i32 185, i32 20}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/imx/clk-imx35.c", i32 186, i32 18}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/imx/clk-imx35.c", i32 187, i32 19}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/imx/clk-imx35.c", i32 188, i32 19}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/imx/clk-imx35.c", i32 189, i32 19}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/imx/clk-imx35.c", i32 190, i32 21}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/imx/clk-imx35.c", i32 191, i32 18}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/imx/clk-imx35.c", i32 192, i32 18}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/imx/clk-imx35.c", i32 193, i32 18}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/imx/clk-imx35.c", i32 194, i32 19}
!132 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/imx/clk-imx35.c", i32 195, i32 20}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/imx/clk-imx35.c", i32 196, i32 18}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/imx/clk-imx35.c", i32 197, i32 19}
!139 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/imx/clk-imx35.c", i32 199, i32 18}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/imx/clk-imx35.c", i32 200, i32 19}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/imx/clk-imx35.c", i32 201, i32 18}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/imx/clk-imx35.c", i32 202, i32 19}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/imx/clk-imx35.c", i32 203, i32 19}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/imx/clk-imx35.c", i32 204, i32 20}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/imx/clk-imx35.c", i32 205, i32 19}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/imx/clk-imx35.c", i32 206, i32 19}
!155 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/imx/clk-imx35.c", i32 207, i32 20}
!157 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/imx/clk-imx35.c", i32 208, i32 20}
!159 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/imx/clk-imx35.c", i32 209, i32 20}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/imx/clk-imx35.c", i32 210, i32 21}
!163 = !{ptr @.str.82, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/imx/clk-imx35.c", i32 211, i32 19}
!165 = !{ptr @.str.83, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/imx/clk-imx35.c", i32 212, i32 18}
!167 = !{ptr @.str.84, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/imx/clk-imx35.c", i32 213, i32 20}
!169 = !{ptr @.str.85, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/imx/clk-imx35.c", i32 215, i32 18}
!171 = !{ptr @.str.86, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/imx/clk-imx35.c", i32 216, i32 18}
!173 = !{ptr @.str.87, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/imx/clk-imx35.c", i32 217, i32 20}
!175 = !{ptr @.str.88, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/imx/clk-imx35.c", i32 240, i32 24}
!177 = !{ptr @clk_consumer, !178, !"clk_consumer", i1 false, i1 false}
!178 = !{!"../drivers/clk/imx/clk-imx35.c", i32 37, i32 27}
!179 = !{ptr @hsp_div_532, !180, !"hsp_div_532", i1 false, i1 false}
!180 = !{!"../drivers/clk/imx/clk-imx35.c", i32 56, i32 13}
!181 = !{ptr @hsp_div_400, !182, !"hsp_div_400", i1 false, i1 false}
!182 = !{!"../drivers/clk/imx/clk-imx35.c", i32 57, i32 13}
!183 = !{ptr @ipg_per_sel, !184, !"ipg_per_sel", i1 false, i1 false}
!184 = !{!"../drivers/clk/imx/clk-imx35.c", i32 62, i32 20}
!185 = !{ptr @std_sel, !186, !"std_sel", i1 false, i1 false}
!186 = !{!"../drivers/clk/imx/clk-imx35.c", i32 61, i32 20}
!187 = !{ptr @clk, !188, !"clk", i1 false, i1 false}
!188 = !{!"../drivers/clk/imx/clk-imx35.c", i32 83, i32 20}
!189 = !{ptr @clk_data, !190, !"clk_data", i1 false, i1 false}
!190 = !{!"../drivers/clk/imx/clk-imx35.c", i32 59, i32 32}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{!"branch_weights", i32 1, i32 2000}
!201 = !{i64 2153687358, i64 2153687849, i64 2153687395, i64 2153687451, i64 2153687485, i64 2153687509, i64 2153687550, i64 2153687571, i64 2153687599, i64 2153687633}
!202 = !{i64 5820553}
