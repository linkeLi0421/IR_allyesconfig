; ModuleID = '/llk/IR_all_yes/drivers/clk/hisilicon/clk-hi6220.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hi6220.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.hisi_fixed_factor_clock = type { i32, ptr, ptr, i32, i32, i32 }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hi6220_divider_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@__of_table_hi6220_clk_ao = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-aoctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi6220_clk_ao_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_hi6220_clk_sys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-sysctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi6220_clk_sys_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_hi6220_clk_media = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-mediactrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi6220_clk_media_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_hi6220_clk_power = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-pmctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi6220_clk_power_init }, section "__clk_of_table", align 4
@__of_table_hi6220_clk_acpu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-acpu-sctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi6220_clk_acpu_init }, section "__clk_of_table", align 4
@hi6220_fixed_rate_clks = internal global [13 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 1, ptr @.str, ptr null, i32 0, i32 32764 }, %struct.hisi_fixed_rate_clock { i32 2, ptr @.str.1, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 3, ptr @.str.2, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 4, ptr @.str.3, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 5, ptr @.str.4, ptr null, i32 0, i32 200000000 }, %struct.hisi_fixed_rate_clock { i32 6, ptr @.str.5, ptr null, i32 0, i32 245760000 }, %struct.hisi_fixed_rate_clock { i32 7, ptr @.str.6, ptr null, i32 0, i32 1000000000 }, %struct.hisi_fixed_rate_clock { i32 8, ptr @.str.7, ptr null, i32 0, i32 1066000000 }, %struct.hisi_fixed_rate_clock { i32 9, ptr @.str.8, ptr null, i32 0, i32 1190400000 }, %struct.hisi_fixed_rate_clock { i32 10, ptr @.str.9, ptr null, i32 0, i32 1190400000 }, %struct.hisi_fixed_rate_clock { i32 11, ptr @.str.10, ptr null, i32 0, i32 1200000000 }, %struct.hisi_fixed_rate_clock { i32 12, ptr @.str.11, ptr null, i32 0, i32 1440000000 }, %struct.hisi_fixed_rate_clock { i32 13, ptr @.str.12, ptr null, i32 0, i32 1600000000 }], section ".init.data", align 4
@hi6220_fixed_factor_clks = internal global [10 x %struct.hisi_fixed_factor_clock] [%struct.hisi_fixed_factor_clock { i32 14, ptr @.str.13, ptr @.str.8, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 15, ptr @.str.14, ptr @.str.13, i32 1, i32 2, i32 0 }, %struct.hisi_fixed_factor_clock { i32 16, ptr @.str.15, ptr @.str.14, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 17, ptr @.str.16, ptr @.str.17, i32 1, i32 8, i32 0 }, %struct.hisi_fixed_factor_clock { i32 18, ptr @.str.18, ptr @.str.19, i32 1, i32 8, i32 0 }, %struct.hisi_fixed_factor_clock { i32 19, ptr @.str.20, ptr @.str.21, i32 1, i32 8, i32 0 }, %struct.hisi_fixed_factor_clock { i32 20, ptr @.str.22, ptr @.str.23, i32 1, i32 2, i32 0 }, %struct.hisi_fixed_factor_clock { i32 21, ptr @.str.24, ptr @.str.17, i32 1, i32 8, i32 0 }, %struct.hisi_fixed_factor_clock { i32 22, ptr @.str.25, ptr @.str.19, i32 1, i32 8, i32 0 }, %struct.hisi_fixed_factor_clock { i32 23, ptr @.str.26, ptr @.str.21, i32 1, i32 8, i32 0 }], section ".init.data", align 4
@hi6220_separated_gate_clks_ao = internal global [15 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 24, ptr @.str.27, ptr @.str, i32 12, i32 1584, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 25, ptr @.str.28, ptr @.str, i32 12, i32 1584, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 26, ptr @.str.29, ptr @.str, i32 12, i32 1584, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 27, ptr @.str.30, ptr @.str.1, i32 12, i32 1584, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 28, ptr @.str.31, ptr @.str.1, i32 12, i32 1584, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 29, ptr @.str.32, ptr @.str.1, i32 12, i32 1584, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 30, ptr @.str.33, ptr @.str.1, i32 12, i32 1584, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 31, ptr @.str.34, ptr @.str.1, i32 12, i32 1584, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 32, ptr @.str.35, ptr @.str.1, i32 12, i32 1584, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 33, ptr @.str.36, ptr @.str.1, i32 12, i32 1584, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 34, ptr @.str.37, ptr @.str.1, i32 12, i32 1584, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 35, ptr @.str.38, ptr @.str.1, i32 12, i32 1584, i8 23, i8 0, ptr null }, %struct.hisi_gate_clock { i32 36, ptr @.str.39, ptr @.str.1, i32 12, i32 1584, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 37, ptr @.str.40, ptr @.str.1, i32 12, i32 1584, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 38, ptr @.str.41, ptr @.str.1, i32 12, i32 1584, i8 26, i8 0, ptr null }], section ".init.data", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ref32k\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_tcxo\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc1_pad\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc2_pad\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc0_pad\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bbppll0\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpupll\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ddrpll1\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syspll\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"media_syspll\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ddr_sel_src\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"media_pll\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ddrpll0\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_300m\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_150m\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"picophy_src\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmc0srcsel\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc0_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmc1srcsel\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc1_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmc2srcsel\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc2_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpucodec\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"codec_jpeg_aclk\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmc0_sample\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmc1_sample\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmc2_sample\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wdt0_pclk\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wdt1_pclk\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wdt2_pclk\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timer0_pclk\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timer1_pclk\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timer2_pclk\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timer3_pclk\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timer4_pclk\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timer5_pclk\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timer6_pclk\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timer7_pclk\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timer8_pclk\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart0_pclk\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc0_pclk\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc1_pclk\00", [22 x i8] zeroinitializer }, align 32
@hi6220_separated_gate_clks_sys = internal global [34 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 1, ptr @.str.42, ptr @.str.43, i32 12, i32 512, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.44, ptr @.str.45, i32 12, i32 512, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.46, ptr @.str.47, i32 12, i32 512, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 4, ptr @.str.48, ptr @.str.49, i32 12, i32 512, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 5, ptr @.str.50, ptr @.str.51, i32 12, i32 512, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 6, ptr @.str.52, ptr @.str.53, i32 12, i32 512, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 7, ptr @.str.54, ptr @.str.55, i32 12, i32 512, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 8, ptr @.str.56, ptr @.str.57, i32 12, i32 512, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 9, ptr @.str.58, ptr @.str.59, i32 12, i32 528, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 10, ptr @.str.60, ptr @.str.55, i32 12, i32 528, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 11, ptr @.str.61, ptr @.str.55, i32 12, i32 544, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 12, ptr @.str.62, ptr @.str.63, i32 12, i32 560, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 13, ptr @.str.64, ptr @.str.14, i32 12, i32 560, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 14, ptr @.str.65, ptr @.str.14, i32 12, i32 560, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 15, ptr @.str.66, ptr @.str.14, i32 12, i32 560, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 16, ptr @.str.67, ptr @.str.14, i32 12, i32 560, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 17, ptr @.str.68, ptr @.str.69, i32 12, i32 560, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 18, ptr @.str.70, ptr @.str.71, i32 12, i32 560, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 19, ptr @.str.72, ptr @.str.73, i32 12, i32 560, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 20, ptr @.str.74, ptr @.str.75, i32 12, i32 560, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 21, ptr @.str.76, ptr @.str.14, i32 12, i32 560, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 22, ptr @.str.77, ptr @.str.55, i32 12, i32 560, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 59, ptr @.str.78, ptr @.str.57, i32 2052, i32 560, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 23, ptr @.str.79, ptr @.str.80, i32 12, i32 576, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 24, ptr @.str.81, ptr @.str.82, i32 12, i32 624, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 25, ptr @.str.83, ptr @.str.8, i32 12, i32 624, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 26, ptr @.str.84, ptr @.str.8, i32 12, i32 624, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 27, ptr @.str.85, ptr @.str.8, i32 12, i32 624, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 28, ptr @.str.17, ptr @.str.86, i32 12, i32 624, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 29, ptr @.str.19, ptr @.str.87, i32 12, i32 624, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 30, ptr @.str.88, ptr @.str.89, i32 12, i32 624, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 31, ptr @.str.90, ptr @.str.91, i32 12, i32 624, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 32, ptr @.str.21, ptr @.str.92, i32 12, i32 624, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 33, ptr @.str.93, ptr @.str.8, i32 2052, i32 624, i8 12, i8 0, ptr null }], section ".init.data", align 4
@hi6220_mux_clks_sys = internal global [17 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 34, ptr @.str.43, ptr @mmc0_src_p, i8 2, i32 4, i32 4, i8 0, i8 1, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 35, ptr @.str.45, ptr @mmc0_sample_in, i8 2, i32 4, i32 4, i8 0, i8 1, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 36, ptr @.str.47, ptr @mmc1_src_p, i8 2, i32 4, i32 4, i8 2, i8 1, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 37, ptr @.str.49, ptr @mmc1_sample_in, i8 2, i32 4, i32 4, i8 2, i8 1, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 38, ptr @.str.51, ptr @mmc2_src_p, i8 2, i32 4, i32 4, i8 4, i8 1, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 39, ptr @.str.53, ptr @mmc2_sample_in, i8 2, i32 4, i32 4, i8 4, i8 1, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 40, ptr @.str.82, ptr @hifi_src, i8 2, i32 4, i32 1024, i8 0, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 41, ptr @.str.69, ptr @uart1_src, i8 2, i32 4, i32 1024, i8 1, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 42, ptr @.str.71, ptr @uart2_src, i8 2, i32 4, i32 1024, i8 2, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 43, ptr @.str.73, ptr @uart3_src, i8 2, i32 4, i32 1024, i8 3, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 44, ptr @.str.75, ptr @uart4_src, i8 2, i32 4, i32 1024, i8 4, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 45, ptr @.str.94, ptr @mmc0_mux0_p, i8 2, i32 4, i32 1024, i8 5, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 46, ptr @.str.95, ptr @mmc1_mux0_p, i8 2, i32 4, i32 1024, i8 11, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 47, ptr @.str.96, ptr @mmc2_mux0_p, i8 2, i32 4, i32 1024, i8 12, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 48, ptr @.str.86, ptr @mmc0_mux1_p, i8 2, i32 4, i32 1024, i8 13, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 49, ptr @.str.87, ptr @mmc1_mux1_p, i8 2, i32 4, i32 1024, i8 14, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 50, ptr @.str.92, ptr @mmc2_mux1_p, i8 2, i32 4, i32 1024, i8 15, i8 1, i8 4, ptr null, ptr null }], section ".init.data", align 4
@hi6220_div_clks_sys = internal global [8 x %struct.hi6220_divider_clock] [%struct.hi6220_divider_clock { i32 51, ptr @.str.55, ptr @.str.13, i32 4, i32 1168, i8 0, i8 4, i32 7, ptr null }, %struct.hi6220_divider_clock { i32 52, ptr @.str.97, ptr @.str.83, i32 4, i32 1172, i8 0, i8 6, i32 7, ptr null }, %struct.hi6220_divider_clock { i32 53, ptr @.str.98, ptr @.str.84, i32 4, i32 1176, i8 0, i8 6, i32 7, ptr null }, %struct.hi6220_divider_clock { i32 54, ptr @.str.99, ptr @.str.85, i32 4, i32 1180, i8 0, i8 6, i32 7, ptr null }, %struct.hi6220_divider_clock { i32 55, ptr @.str.59, ptr @.str.81, i32 4, i32 1184, i8 0, i8 4, i32 7, ptr null }, %struct.hi6220_divider_clock { i32 56, ptr @.str.101, ptr @.str.88, i32 4, i32 1184, i8 8, i8 6, i32 15, ptr null }, %struct.hi6220_divider_clock { i32 57, ptr @.str.57, ptr @.str.15, i32 4, i32 1184, i8 24, i8 2, i32 31, ptr null }, %struct.hi6220_divider_clock { i32 58, ptr @.str.63, ptr @.str.93, i32 4, i32 1188, i8 0, i8 4, i32 7, ptr null }], section ".init.data", align 4
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc0_src\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmc0_ciuclk\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmc0_smp_in\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc1_src\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmc1_ciuclk\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmc1_smp_in\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc2_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc2_src\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmc2_ciuclk\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmc2_smp_in\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usbotg_hclk\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_bus\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_picophy\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cs_dapb\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hifi_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hifi_div\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dacodec_pclk\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"edmac_aclk\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cs_atb\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cs_atb_div\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c2_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c3_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart1_pclk\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_src\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart2_pclk\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_src\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart3_pclk\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3_src\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart4_pclk\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart4_src\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tsensor_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dapb_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mmu_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ddrc_axi1\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hifi_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hifi_src\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmc0_syspll\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmc1_syspll\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmc2_syspll\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc0_mux1\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc1_mux1\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bbppll_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll0_bbp_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"media_pll_src\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll_media_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc2_mux1\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs_atb_syspll\00", [18 x i8] zeroinitializer }, align 32
@mmc0_src_p = internal global [2 x ptr] [ptr @.str.16, ptr @.str.97], section ".init.data", align 4
@mmc0_sample_in = internal global [2 x ptr] [ptr @.str.24, ptr @.str.4], section ".init.data", align 4
@mmc1_src_p = internal global [2 x ptr] [ptr @.str.18, ptr @.str.98], section ".init.data", align 4
@mmc1_sample_in = internal global [2 x ptr] [ptr @.str.25, ptr @.str.2], section ".init.data", align 4
@mmc2_src_p = internal global [2 x ptr] [ptr @.str.20, ptr @.str.99], section ".init.data", align 4
@mmc2_sample_in = internal global [2 x ptr] [ptr @.str.26, ptr @.str.3], section ".init.data", align 4
@hifi_src = internal global [2 x ptr] [ptr @.str.8, ptr @.str.91], section ".init.data", align 4
@uart1_src = internal global [2 x ptr] [ptr @.str.1, ptr @.str.14], section ".init.data", align 4
@uart2_src = internal global [2 x ptr] [ptr @.str.1, ptr @.str.14], section ".init.data", align 4
@uart3_src = internal global [2 x ptr] [ptr @.str.1, ptr @.str.14], section ".init.data", align 4
@uart4_src = internal global [2 x ptr] [ptr @.str.1, ptr @.str.14], section ".init.data", align 4
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc0_mux0\00", [22 x i8] zeroinitializer }, align 32
@mmc0_mux0_p = internal global [2 x ptr] [ptr @.str.100, ptr @.str.8], section ".init.data", align 4
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc1_mux0\00", [22 x i8] zeroinitializer }, align 32
@mmc1_mux0_p = internal global [2 x ptr] [ptr @.str.100, ptr @.str.8], section ".init.data", align 4
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc2_mux0\00", [22 x i8] zeroinitializer }, align 32
@mmc2_mux0_p = internal global [2 x ptr] [ptr @.str.100, ptr @.str.8], section ".init.data", align 4
@mmc0_mux1_p = internal global [2 x ptr] [ptr @.str.94, ptr @.str.91], section ".init.data", align 4
@mmc1_mux1_p = internal global [2 x ptr] [ptr @.str.95, ptr @.str.91], section ".init.data", align 4
@mmc2_mux1_p = internal global [2 x ptr] [ptr @.str.96, ptr @.str.91], section ".init.data", align 4
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc0_div\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll_ddr_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bbppll0_div\00", [20 x i8] zeroinitializer }, align 32
@hi6220_separated_gate_clks_media = internal global [13 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 1, ptr @.str.102, ptr @.str.22, i32 12, i32 1312, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.103, ptr @.str.22, i32 12, i32 1312, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.104, ptr @.str.105, i32 12, i32 1312, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 4, ptr @.str.106, ptr @.str.107, i32 12, i32 1312, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 5, ptr @.str.108, ptr @.str.105, i32 12, i32 1312, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 6, ptr @.str.109, ptr @.str.79, i32 12, i32 1312, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 7, ptr @.str.110, ptr @.str.1, i32 12, i32 1312, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 8, ptr @.str.111, ptr @.str.1, i32 12, i32 1312, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 9, ptr @.str.112, ptr @.str.90, i32 12, i32 1312, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 10, ptr @.str.113, ptr @.str.90, i32 12, i32 1312, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 11, ptr @.str.114, ptr @.str.90, i32 12, i32 1312, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 12, ptr @.str.115, ptr @.str.116, i32 12, i32 1312, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 13, ptr @.str.117, ptr @.str.9, i32 12, i32 1312, i8 17, i8 0, ptr null }], section ".init.data", align 4
@hi6220_mux_clks_media = internal global [3 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 14, ptr @.str.118, ptr @clk_1440_1200_src, i8 2, i32 4, i32 1308, i8 0, i8 1, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 15, ptr @.str.119, ptr @clk_1000_1200_src, i8 2, i32 4, i32 1308, i8 1, i8 1, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 16, ptr @.str.116, ptr @clk_1000_1440_src, i8 2, i32 4, i32 1308, i8 6, i8 1, i8 0, ptr null, ptr null }], section ".init.data", align 4
@hi6220_div_clks_media = internal global [7 x %struct.hi6220_divider_clock] [%struct.hi6220_divider_clock { i32 17, ptr @.str.23, ptr @.str.90, i32 4, i32 3260, i8 0, i8 4, i32 23, ptr null }, %struct.hi6220_divider_clock { i32 18, ptr @.str.107, ptr @.str.112, i32 4, i32 3260, i8 8, i8 4, i32 15, ptr null }, %struct.hi6220_divider_clock { i32 19, ptr @.str.121, ptr @.str.113, i32 4, i32 3260, i8 24, i8 4, i32 31, ptr null }, %struct.hi6220_divider_clock { i32 20, ptr @.str.105, ptr @.str.114, i32 4, i32 3264, i8 16, i8 3, i32 23, ptr null }, %struct.hi6220_divider_clock { i32 21, ptr @.str.122, ptr @.str.118, i32 4, i32 3264, i8 24, i8 6, i32 31, ptr null }, %struct.hi6220_divider_clock { i32 22, ptr @.str.123, ptr @.str.119, i32 4, i32 3268, i8 8, i8 4, i32 15, ptr null }, %struct.hi6220_divider_clock { i32 23, ptr @.str.124, ptr @.str.115, i32 4, i32 3268, i8 24, i8 6, i32 31, ptr null }], section ".init.data", align 4
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi_pclk\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"g3d_pclk\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aclk_codec_vpu\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ade_core_src\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"isp_sclk\00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"isp_sclk_src\00", [19 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ade_core\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"media_mmu\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cfg_csi4phy\00", [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cfg_csi2phy\00", [20 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isp_sclk_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isp_sclk_gate1\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ade_core_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec_vpu_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_1000_1440\00", [18 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"media_syspll_src\00", [47 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_1440_1200\00", [18 x i8] zeroinitializer }, align 32
@clk_1440_1200_src = internal global [2 x ptr] [ptr @.str.117, ptr @.str.90], section ".init.data", align 4
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_1000_1200\00", [18 x i8] zeroinitializer }, align 32
@clk_1000_1200_src = internal global [2 x ptr] [ptr @.str.120, ptr @.str.117], section ".init.data", align 4
@clk_1000_1440_src = internal global [2 x ptr] [ptr @.str.120, ptr @.str.90], section ".init.data", align 4
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll_gpu_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"isp_sclk1\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ade_pix_src\00", [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"g3d_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"codec_vpu_src\00", [18 x i8] zeroinitializer }, align 32
@hi6220_gate_clks_power = internal global [5 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 1, ptr @.str.120, ptr @.str.6, i32 12, i32 8, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.125, ptr @.str.7, i32 12, i32 16, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.100, ptr @.str.12, i32 12, i32 24, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 4, ptr @.str.91, ptr @.str.11, i32 12, i32 56, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 5, ptr @.str.89, ptr @.str.5, i32 12, i32 72, i8 0, i8 0, ptr null }], section ".init.data", align 4
@hi6220_div_clks_power = internal global [2 x %struct.hi6220_divider_clock] [%struct.hi6220_divider_clock { i32 6, ptr @.str.126, ptr @.str.10, i32 4, i32 1448, i8 0, i8 4, i32 0, ptr null }, %struct.hi6220_divider_clock { i32 7, ptr @.str.80, ptr @.str.126, i32 4, i32 1448, i8 8, i8 2, i32 0, ptr null }], section ".init.data", align 4
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll1_ddr_gate\00", [18 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ddrc_src\00", [23 x i8] zeroinitializer }, align 32
@hi6220_acpu_sc_gate_sep_clks = internal constant { [1 x %struct.hisi_gate_clock], [36 x i8] } { [1 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.127, ptr @.str.62, i32 12, i32 12, i8 11, i8 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sft_at_s\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 26, i32 19 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 27, i32 21 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 28, i32 21 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 29, i32 21 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 30, i32 21 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 31, i32 20 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 32, i32 20 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 33, i32 21 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 34, i32 20 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 35, i32 26 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 36, i32 20 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 37, i32 22 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 38, i32 20 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 42, i32 25 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 43, i32 25 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 44, i32 25 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 45, i32 25 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 45, i32 40 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 46, i32 25 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 46, i32 40 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 47, i32 25 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 47, i32 40 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 48, i32 25 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 48, i32 40 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 49, i32 25 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 50, i32 25 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 51, i32 25 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 55, i32 24 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 56, i32 24 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 57, i32 24 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 58, i32 24 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 59, i32 24 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 60, i32 24 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 61, i32 24 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 62, i32 24 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 63, i32 24 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 64, i32 24 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 65, i32 24 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 66, i32 24 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 67, i32 24 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 68, i32 24 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 69, i32 24 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 113, i32 26 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 113, i32 43 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 114, i32 26 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 114, i32 43 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 115, i32 26 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 115, i32 43 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 116, i32 26 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 116, i32 43 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 117, i32 26 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 117, i32 43 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 118, i32 26 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 118, i32 43 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 119, i32 26 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 119, i32 43 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 120, i32 26 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 120, i32 43 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 121, i32 26 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 121, i32 43 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 122, i32 26 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 123, i32 26 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 124, i32 26 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 124, i32 43 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 125, i32 26 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 126, i32 26 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 127, i32 26 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 128, i32 26 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 129, i32 26 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 129, i32 43 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 130, i32 26 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 130, i32 43 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 131, i32 26 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 131, i32 43 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 132, i32 26 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 132, i32 43 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 133, i32 26 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 134, i32 26 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 135, i32 26 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 136, i32 26 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 136, i32 43 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 137, i32 26 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 137, i32 43 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 138, i32 26 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 139, i32 26 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 140, i32 26 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 141, i32 43 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 142, i32 43 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 143, i32 26 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 143, i32 43 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 144, i32 26 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 144, i32 43 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 145, i32 43 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 146, i32 26 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 161, i32 24 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 162, i32 24 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 163, i32 24 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 96, i32 62 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 99, i32 63 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 102, i32 63 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 94, i32 49 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 175, i32 24 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 206, i32 27 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 207, i32 27 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 208, i32 27 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 208, i32 47 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 209, i32 27 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 209, i32 47 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 210, i32 22 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 211, i32 27 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 212, i32 27 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 213, i32 27 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 214, i32 27 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 215, i32 27 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 216, i32 27 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 217, i32 27 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 217, i32 47 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 218, i32 27 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 222, i32 22 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 223, i32 22 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 201, i32 55 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 230, i32 26 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 232, i32 26 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 233, i32 26 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 234, i32 26 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 260, i32 27 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 267, i32 22 }
@___asan_gen_.509 = private unnamed_addr constant [29 x i8] c"hi6220_acpu_sc_gate_sep_clks\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 288, i32 37 }
@___asan_gen_.512 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.513 = private constant [38 x i8] c"../drivers/clk/hisilicon/clk-hi6220.c\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 289, i32 26 }
@llvm.compiler.used = appending global [134 x ptr] [ptr @__of_table_hi6220_clk_acpu, ptr @__of_table_hi6220_clk_ao, ptr @__of_table_hi6220_clk_media, ptr @__of_table_hi6220_clk_power, ptr @__of_table_hi6220_clk_sys, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @hi6220_acpu_sc_gate_sep_clks, ptr @.str.127], section "llvm.metadata"
@0 = internal global [129 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_acpu_sc_gate_sep_clks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi6220_clk_ao_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #2
  tail call fastcc void @hi6220_clk_ao_init(ptr noundef %np) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi6220_clk_sys_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #2
  tail call fastcc void @hi6220_clk_sys_init(ptr noundef %np) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi6220_clk_media_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #2
  tail call fastcc void @hi6220_clk_media_init(ptr noundef %np) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi6220_clk_power_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 8) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call1 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi6220_gate_clks_power, i32 noundef 5, ptr noundef nonnull %call) #2
  tail call void @hi6220_clk_register_divider(ptr noundef nonnull @hi6220_div_clks_power, i32 noundef 2, ptr noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi6220_clk_acpu_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 1) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi6220_acpu_sc_gate_sep_clks, i32 noundef 1, ptr noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hi6220_clk_ao_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 39) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call1 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi6220_fixed_rate_clks, i32 noundef 13, ptr noundef nonnull %call) #2
  %call2 = tail call i32 @hisi_clk_register_fixed_factor(ptr noundef nonnull @hi6220_fixed_factor_clks, i32 noundef 10, ptr noundef nonnull %call) #2
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi6220_separated_gate_clks_ao, i32 noundef 15, ptr noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_factor(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_clk_register_gate_sep(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hi6220_clk_sys_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 60) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi6220_separated_gate_clks_sys, i32 noundef 34, ptr noundef nonnull %call) #2
  %call1 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi6220_mux_clks_sys, i32 noundef 17, ptr noundef nonnull %call) #2
  tail call void @hi6220_clk_register_divider(ptr noundef nonnull @hi6220_div_clks_sys, i32 noundef 8, ptr noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_mux(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hi6220_clk_register_divider(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hi6220_clk_media_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 24) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi6220_separated_gate_clks_media, i32 noundef 13, ptr noundef nonnull %call) #2
  %call1 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi6220_mux_clks_media, i32 noundef 3, ptr noundef nonnull %call) #2
  tail call void @hi6220_clk_register_divider(ptr noundef nonnull @hi6220_div_clks_media, i32 noundef 7, ptr noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_gate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328}
!llvm.module.flags = !{!330, !331, !332, !333, !334, !335, !336, !337}
!llvm.ident = !{!338}

!0 = !{ptr @__of_table_hi6220_clk_ao, !1, !"__of_table_hi6220_clk_ao", i1 false, i1 false}
!1 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 90, i32 1}
!2 = !{ptr @__of_table_hi6220_clk_sys, !3, !"__of_table_hi6220_clk_sys", i1 false, i1 false}
!3 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 197, i32 1}
!4 = !{ptr @__of_table_hi6220_clk_media, !5, !"__of_table_hi6220_clk_media", i1 false, i1 false}
!5 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 254, i32 1}
!6 = !{ptr @__of_table_hi6220_clk_power, !7, !"__of_table_hi6220_clk_power", i1 false, i1 false}
!7 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 285, i32 1}
!8 = !{ptr @__of_table_hi6220_clk_acpu, !9, !"__of_table_hi6220_clk_acpu", i1 false, i1 false}
!9 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 307, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 26, i32 19}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 27, i32 21}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 28, i32 21}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 29, i32 21}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 30, i32 21}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 31, i32 20}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 32, i32 20}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 33, i32 21}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 34, i32 20}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 35, i32 26}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 36, i32 20}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 37, i32 22}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 38, i32 20}
!36 = !{ptr @hi6220_fixed_rate_clks, !37, !"hi6220_fixed_rate_clks", i1 false, i1 false}
!37 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 25, i32 37}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 42, i32 25}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 43, i32 25}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 44, i32 25}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 45, i32 25}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 45, i32 40}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 46, i32 25}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 46, i32 40}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 47, i32 25}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 47, i32 40}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 48, i32 25}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 48, i32 40}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 49, i32 25}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 50, i32 25}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 51, i32 25}
!66 = !{ptr @hi6220_fixed_factor_clks, !67, !"hi6220_fixed_factor_clks", i1 false, i1 false}
!67 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 41, i32 39}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 55, i32 24}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 56, i32 24}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 57, i32 24}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 58, i32 24}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 59, i32 24}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 60, i32 24}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 61, i32 24}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 62, i32 24}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 63, i32 24}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 64, i32 24}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 65, i32 24}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 66, i32 24}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 67, i32 24}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 68, i32 24}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 69, i32 24}
!98 = !{ptr @hi6220_separated_gate_clks_ao, !99, !"hi6220_separated_gate_clks_ao", i1 false, i1 false}
!99 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 54, i32 31}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 113, i32 26}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 113, i32 43}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 114, i32 26}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 114, i32 43}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 115, i32 26}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 115, i32 43}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 116, i32 26}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 116, i32 43}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 117, i32 26}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 117, i32 43}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 118, i32 26}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 118, i32 43}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 119, i32 26}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 119, i32 43}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 120, i32 26}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 120, i32 43}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 121, i32 26}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 121, i32 43}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 122, i32 26}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 123, i32 26}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 124, i32 26}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 124, i32 43}
!144 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 125, i32 26}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 126, i32 26}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 127, i32 26}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 128, i32 26}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 129, i32 26}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 129, i32 43}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 130, i32 26}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 130, i32 43}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 131, i32 26}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 131, i32 43}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 132, i32 26}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 132, i32 43}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 133, i32 26}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 134, i32 26}
!172 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 135, i32 26}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 136, i32 26}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 136, i32 43}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 137, i32 26}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 137, i32 43}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 138, i32 26}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 139, i32 26}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 140, i32 26}
!188 = !{ptr @.str.86, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 141, i32 43}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 142, i32 43}
!192 = !{ptr @.str.88, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 143, i32 26}
!194 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 143, i32 43}
!196 = !{ptr @.str.90, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 144, i32 26}
!198 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 144, i32 43}
!200 = !{ptr @.str.92, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 145, i32 43}
!202 = !{ptr @.str.93, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 146, i32 26}
!204 = !{ptr @hi6220_separated_gate_clks_sys, !205, !"hi6220_separated_gate_clks_sys", i1 false, i1 false}
!205 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 112, i32 31}
!206 = !{ptr @.str.94, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 161, i32 24}
!208 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 162, i32 24}
!210 = !{ptr @.str.96, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 163, i32 24}
!212 = !{ptr @hi6220_mux_clks_sys, !213, !"hi6220_mux_clks_sys", i1 false, i1 false}
!213 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 149, i32 30}
!214 = !{ptr @.str.97, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 96, i32 62}
!216 = !{ptr @mmc0_src_p, !217, !"mmc0_src_p", i1 false, i1 false}
!217 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 96, i32 20}
!218 = !{ptr @mmc0_sample_in, !219, !"mmc0_sample_in", i1 false, i1 false}
!219 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 103, i32 20}
!220 = !{ptr @.str.98, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 99, i32 63}
!222 = !{ptr @mmc1_src_p, !223, !"mmc1_src_p", i1 false, i1 false}
!223 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 99, i32 20}
!224 = !{ptr @mmc1_sample_in, !225, !"mmc1_sample_in", i1 false, i1 false}
!225 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 104, i32 20}
!226 = !{ptr @.str.99, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 102, i32 63}
!228 = !{ptr @mmc2_src_p, !229, !"mmc2_src_p", i1 false, i1 false}
!229 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 102, i32 20}
!230 = !{ptr @mmc2_sample_in, !231, !"mmc2_sample_in", i1 false, i1 false}
!231 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 105, i32 20}
!232 = !{ptr @hifi_src, !233, !"hifi_src", i1 false, i1 false}
!233 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 110, i32 20}
!234 = !{ptr @uart1_src, !235, !"uart1_src", i1 false, i1 false}
!235 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 106, i32 20}
!236 = !{ptr @uart2_src, !237, !"uart2_src", i1 false, i1 false}
!237 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 107, i32 20}
!238 = !{ptr @uart3_src, !239, !"uart3_src", i1 false, i1 false}
!239 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 108, i32 20}
!240 = !{ptr @uart4_src, !241, !"uart4_src", i1 false, i1 false}
!241 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 109, i32 20}
!242 = !{ptr @.str.100, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 94, i32 49}
!244 = !{ptr @mmc0_mux0_p, !245, !"mmc0_mux0_p", i1 false, i1 false}
!245 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 94, i32 20}
!246 = !{ptr @mmc1_mux0_p, !247, !"mmc1_mux0_p", i1 false, i1 false}
!247 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 97, i32 20}
!248 = !{ptr @mmc2_mux0_p, !249, !"mmc2_mux0_p", i1 false, i1 false}
!249 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 100, i32 20}
!250 = !{ptr @mmc0_mux1_p, !251, !"mmc0_mux1_p", i1 false, i1 false}
!251 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 95, i32 20}
!252 = !{ptr @mmc1_mux1_p, !253, !"mmc1_mux1_p", i1 false, i1 false}
!253 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 98, i32 20}
!254 = !{ptr @mmc2_mux1_p, !255, !"mmc2_mux1_p", i1 false, i1 false}
!255 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 101, i32 20}
!256 = !{ptr @.str.101, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 175, i32 24}
!258 = !{ptr @hi6220_div_clks_sys, !259, !"hi6220_div_clks_sys", i1 false, i1 false}
!259 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 169, i32 36}
!260 = !{ptr @.str.102, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 206, i32 27}
!262 = !{ptr @.str.103, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 207, i32 27}
!264 = !{ptr @.str.104, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 208, i32 27}
!266 = !{ptr @.str.105, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 208, i32 47}
!268 = !{ptr @.str.106, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 209, i32 27}
!270 = !{ptr @.str.107, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 209, i32 47}
!272 = !{ptr @.str.108, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 210, i32 22}
!274 = !{ptr @.str.109, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 211, i32 27}
!276 = !{ptr @.str.110, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 212, i32 27}
!278 = !{ptr @.str.111, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 213, i32 27}
!280 = !{ptr @.str.112, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 214, i32 27}
!282 = !{ptr @.str.113, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 215, i32 27}
!284 = !{ptr @.str.114, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 216, i32 27}
!286 = !{ptr @.str.115, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 217, i32 27}
!288 = !{ptr @.str.116, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 217, i32 47}
!290 = !{ptr @.str.117, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 218, i32 27}
!292 = !{ptr @hi6220_separated_gate_clks_media, !293, !"hi6220_separated_gate_clks_media", i1 false, i1 false}
!293 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 205, i32 31}
!294 = !{ptr @.str.118, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 222, i32 22}
!296 = !{ptr @.str.119, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 223, i32 22}
!298 = !{ptr @hi6220_mux_clks_media, !299, !"hi6220_mux_clks_media", i1 false, i1 false}
!299 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 221, i32 30}
!300 = !{ptr @clk_1440_1200_src, !301, !"clk_1440_1200_src", i1 false, i1 false}
!301 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 202, i32 20}
!302 = !{ptr @.str.120, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 201, i32 55}
!304 = !{ptr @clk_1000_1200_src, !305, !"clk_1000_1200_src", i1 false, i1 false}
!305 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 201, i32 20}
!306 = !{ptr @clk_1000_1440_src, !307, !"clk_1000_1440_src", i1 false, i1 false}
!307 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 203, i32 20}
!308 = !{ptr @.str.121, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 230, i32 26}
!310 = !{ptr @.str.122, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 232, i32 26}
!312 = !{ptr @.str.123, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 233, i32 26}
!314 = !{ptr @.str.124, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 234, i32 26}
!316 = !{ptr @hi6220_div_clks_media, !317, !"hi6220_div_clks_media", i1 false, i1 false}
!317 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 227, i32 36}
!318 = !{ptr @.str.125, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 260, i32 27}
!320 = !{ptr @hi6220_gate_clks_power, !321, !"hi6220_gate_clks_power", i1 false, i1 false}
!321 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 258, i32 31}
!322 = !{ptr @.str.126, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 267, i32 22}
!324 = !{ptr @hi6220_div_clks_power, !325, !"hi6220_div_clks_power", i1 false, i1 false}
!325 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 266, i32 36}
!326 = !{ptr @.str.127, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 289, i32 26}
!328 = !{ptr @hi6220_acpu_sc_gate_sep_clks, !329, !"hi6220_acpu_sc_gate_sep_clks", i1 false, i1 false}
!329 = !{!"../drivers/clk/hisilicon/clk-hi6220.c", i32 288, i32 37}
!330 = !{i32 1, !"wchar_size", i32 2}
!331 = !{i32 1, !"min_enum_size", i32 4}
!332 = !{i32 8, !"branch-target-enforcement", i32 0}
!333 = !{i32 8, !"sign-return-address", i32 0}
!334 = !{i32 8, !"sign-return-address-all", i32 0}
!335 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!336 = !{i32 7, !"uwtable", i32 1}
!337 = !{i32 7, !"frame-pointer", i32 2}
!338 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
