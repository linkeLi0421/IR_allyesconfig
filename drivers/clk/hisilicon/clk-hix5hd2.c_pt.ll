; ModuleID = '/llk/IR_all_yes/drivers/clk/hisilicon/clk-hix5hd2.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hix5hd2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.hix5hd2_complex_clock = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.hisi_clock_data = type { %struct.clk_onecell_data, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.hix5hd2_clk_complex = type { %struct.clk_hw, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_hix5hd2_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hix5hd2-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hix5hd2_clk_init }, section "__clk_of_table", align 4
@hix5hd2_fixed_rate_clks = internal global [30 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 1, ptr @.str, ptr null, i32 0, i32 1200000000 }, %struct.hisi_fixed_rate_clock { i32 2, ptr @.str.1, ptr null, i32 0, i32 400000000 }, %struct.hisi_fixed_rate_clock { i32 3, ptr @.str.2, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 4, ptr @.str.3, ptr null, i32 0, i32 24000000 }, %struct.hisi_fixed_rate_clock { i32 5, ptr @.str.4, ptr null, i32 0, i32 600000000 }, %struct.hisi_fixed_rate_clock { i32 6, ptr @.str.5, ptr null, i32 0, i32 300000000 }, %struct.hisi_fixed_rate_clock { i32 7, ptr @.str.6, ptr null, i32 0, i32 75000000 }, %struct.hisi_fixed_rate_clock { i32 8, ptr @.str.7, ptr null, i32 0, i32 200000000 }, %struct.hisi_fixed_rate_clock { i32 9, ptr @.str.8, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 10, ptr @.str.9, ptr null, i32 0, i32 40000000 }, %struct.hisi_fixed_rate_clock { i32 11, ptr @.str.10, ptr null, i32 0, i32 150000000 }, %struct.hisi_fixed_rate_clock { i32 12, ptr @.str.11, ptr null, i32 0, i32 1728000000 }, %struct.hisi_fixed_rate_clock { i32 13, ptr @.str.12, ptr null, i32 0, i32 28000000 }, %struct.hisi_fixed_rate_clock { i32 14, ptr @.str.13, ptr null, i32 0, i32 432000000 }, %struct.hisi_fixed_rate_clock { i32 15, ptr @.str.14, ptr null, i32 0, i32 345000000 }, %struct.hisi_fixed_rate_clock { i32 16, ptr @.str.15, ptr null, i32 0, i32 288000000 }, %struct.hisi_fixed_rate_clock { i32 17, ptr @.str.16, ptr null, i32 0, i32 60000000 }, %struct.hisi_fixed_rate_clock { i32 18, ptr @.str.17, ptr null, i32 0, i32 750000000 }, %struct.hisi_fixed_rate_clock { i32 19, ptr @.str.18, ptr null, i32 0, i32 500000000 }, %struct.hisi_fixed_rate_clock { i32 20, ptr @.str.19, ptr null, i32 0, i32 54000000 }, %struct.hisi_fixed_rate_clock { i32 21, ptr @.str.20, ptr null, i32 0, i32 27000000 }, %struct.hisi_fixed_rate_clock { i32 22, ptr @.str.21, ptr null, i32 0, i32 1500000000 }, %struct.hisi_fixed_rate_clock { i32 23, ptr @.str.22, ptr null, i32 0, i32 375000000 }, %struct.hisi_fixed_rate_clock { i32 24, ptr @.str.23, ptr null, i32 0, i32 187000000 }, %struct.hisi_fixed_rate_clock { i32 25, ptr @.str.24, ptr null, i32 0, i32 250000000 }, %struct.hisi_fixed_rate_clock { i32 26, ptr @.str.25, ptr null, i32 0, i32 125000000 }, %struct.hisi_fixed_rate_clock { i32 27, ptr @.str.26, ptr null, i32 0, i32 2000000 }, %struct.hisi_fixed_rate_clock { i32 28, ptr @.str.27, ptr null, i32 0, i32 50000000 }, %struct.hisi_fixed_rate_clock { i32 29, ptr @.str.28, ptr null, i32 0, i32 25000000 }, %struct.hisi_fixed_rate_clock { i32 30, ptr @.str.29, ptr null, i32 0, i32 83333333 }], section ".init.data", align 4
@hix5hd2_mux_clks = internal global [4 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 64, ptr @.str.30, ptr @sfc_mux_p, i8 5, i32 4, i32 92, i8 8, i8 3, i8 0, ptr @sfc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 65, ptr @.str.31, ptr @sdio_mux_p, i8 4, i32 4, i32 160, i8 8, i8 2, i8 0, ptr @sdio_mux_table, ptr null }, %struct.hisi_mux_clock { i32 67, ptr @.str.32, ptr @sdio_mux_p, i8 4, i32 4, i32 156, i8 8, i8 2, i8 0, ptr @sdio_mux_table, ptr null }, %struct.hisi_mux_clock { i32 66, ptr @.str.33, ptr @fephy_mux_p, i8 2, i32 4, i32 288, i8 8, i8 2, i8 0, ptr @fephy_mux_table, ptr null }], section ".init.data", align 4
@hix5hd2_gate_clks = internal global [25 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 129, ptr @.str.35, ptr @.str.30, i32 4, i32 92, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 128, ptr @.str.36, ptr @.str.35, i32 4, i32 92, i8 4, i8 1, ptr null }, %struct.hisi_gate_clock { i32 137, ptr @.str.37, ptr @.str.7, i32 4, i32 156, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 136, ptr @.str.38, ptr @.str.32, i32 4, i32 156, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 138, ptr @.str.39, ptr @.str.38, i32 4, i32 156, i8 4, i8 1, ptr null }, %struct.hisi_gate_clock { i32 131, ptr @.str.40, ptr @.str.7, i32 4, i32 160, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 130, ptr @.str.41, ptr @.str.31, i32 4, i32 160, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 132, ptr @.str.42, ptr @.str.41, i32 4, i32 160, i8 4, i8 1, ptr null }, %struct.hisi_gate_clock { i32 133, ptr @.str.43, ptr null, i32 0, i32 204, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 134, ptr @.str.44, ptr @.str.43, i32 0, i32 204, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 135, ptr @.str.45, ptr @.str.44, i32 4, i32 288, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 139, ptr @.str.46, ptr @.str.3, i32 4, i32 376, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 140, ptr @.str.47, ptr @.str.46, i32 4, i32 376, i8 4, i8 1, ptr null }, %struct.hisi_gate_clock { i32 141, ptr @.str.48, ptr @.str.8, i32 4, i32 108, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 142, ptr @.str.49, ptr @.str.48, i32 4, i32 108, i8 5, i8 1, ptr null }, %struct.hisi_gate_clock { i32 143, ptr @.str.50, ptr @.str.8, i32 4, i32 108, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 144, ptr @.str.51, ptr @.str.50, i32 4, i32 108, i8 9, i8 1, ptr null }, %struct.hisi_gate_clock { i32 145, ptr @.str.52, ptr @.str.8, i32 4, i32 108, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 146, ptr @.str.53, ptr @.str.52, i32 4, i32 108, i8 13, i8 1, ptr null }, %struct.hisi_gate_clock { i32 147, ptr @.str.54, ptr @.str.8, i32 4, i32 108, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 148, ptr @.str.55, ptr @.str.54, i32 4, i32 108, i8 17, i8 1, ptr null }, %struct.hisi_gate_clock { i32 149, ptr @.str.56, ptr @.str.8, i32 4, i32 108, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 150, ptr @.str.57, ptr @.str.56, i32 4, i32 108, i8 21, i8 1, ptr null }, %struct.hisi_gate_clock { i32 151, ptr @.str.58, ptr @.str.8, i32 4, i32 108, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 152, ptr @.str.59, ptr @.str.58, i32 4, i32 108, i8 1, i8 1, ptr null }], section ".init.data", align 4
@hix5hd2_complex_clks = internal global [4 x %struct.hix5hd2_complex_clock] [%struct.hix5hd2_complex_clock { ptr @.str.63, ptr @.str.45, i32 192, i32 204, i32 10, i32 1280, i32 288, i32 0, i32 16, i32 1 }, %struct.hix5hd2_complex_clock { ptr @.str.64, ptr @.str.44, i32 193, i32 204, i32 20, i32 2560, i32 360, i32 2, i32 0, i32 1 }, %struct.hix5hd2_complex_clock { ptr @.str.65, ptr null, i32 194, i32 168, i32 31, i32 768, i32 172, i32 1, i32 0, i32 0 }, %struct.hix5hd2_complex_clock { ptr @.str.66, ptr null, i32 195, i32 184, i32 255, i32 258048, i32 188, i32 7, i32 16128, i32 0 }], section ".init.data", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1200m\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"400m\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"48m\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"24m\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"600m\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"300m\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"75m\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"200m\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"100m\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"40m\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"150m\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1728m\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"28p8m\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"432m\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"345p6m\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"288m\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"60m\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"750m\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"500m\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"54m\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"27m\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1500m\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"375m\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"187m\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"250m\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"125m\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2m\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"50m\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"25m\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"83m\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sfc_mux\00", [24 x i8] zeroinitializer }, align 32
@sfc_mux_p = internal constant [5 x ptr] [ptr @.str.3, ptr @.str.10, ptr @.str.7, ptr @.str.8, ptr @.str.6], section ".init.rodata", align 4
@sfc_mux_table = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 4, i32 5, i32 6, i32 7], [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mmc_mux\00", [24 x i8] zeroinitializer }, align 32
@sdio_mux_p = internal constant [4 x ptr] [ptr @.str.6, ptr @.str.8, ptr @.str.27, ptr @.str.34], section ".init.rodata", align 4
@sdio_mux_table = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sd_mux\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fephy_mux\00", [22 x i8] zeroinitializer }, align 32
@fephy_mux_p = internal constant [2 x ptr] [ptr @.str.28, ptr @.str.25], section ".init.rodata", align 4
@fephy_mux_table = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"15m\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_sfc\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rst_sfc\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_sd_biu\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_sd_ciu\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rst_sd_ciu\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_mmc_biu\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_mmc_ciu\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rst_mmc_ciu\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_fwd_bus\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_fwd_sys\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_fephy\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_wdg0\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rst_wdg0\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c0\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rst_i2c0\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c1\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rst_i2c1\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c2\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rst_i2c2\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c3\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rst_i2c3\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c4\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rst_i2c4\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c5\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rst_i2c5\00", [23 x i8] zeroinitializer }, align 32
@clk_ether_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_ether_prepare, ptr @clk_ether_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_complex_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_complex_enable, ptr @clk_complex_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@hix5hd2_clk_register_complex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.62, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: failed to register clock %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hix5hd2_clk_register_complex\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/clk/hisilicon/clk-hix5hd2.c\00", [60 x i8] zeroinitializer }, align 32
@hix5hd2_clk_register_complex._entry_ptr = internal global ptr @hix5hd2_clk_register_complex._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_mac0\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_mac1\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_sata\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_usb\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 14, i32 25 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 15, i32 24 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 16, i32 23 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 17, i32 23 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 18, i32 24 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 19, i32 24 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 20, i32 23 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 21, i32 24 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 22, i32 24 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 23, i32 23 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 24, i32 24 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 25, i32 25 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 26, i32 25 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 27, i32 24 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 28, i32 26 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 29, i32 24 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 30, i32 23 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 31, i32 24 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 32, i32 24 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 33, i32 23 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 34, i32 23 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 35, i32 25 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 36, i32 24 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 37, i32 24 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 38, i32 24 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 39, i32 24 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 40, i32 25 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 41, i32 23 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 42, i32 23 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 43, i32 23 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 59, i32 21 }
@___asan_gen_.160 = private unnamed_addr constant [14 x i8] c"sfc_mux_table\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 48, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 61, i32 21 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"sdio_mux_table\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 52, i32 12 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 63, i32 20 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 65, i32 23 }
@___asan_gen_.175 = private unnamed_addr constant [16 x i8] c"fephy_mux_table\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 55, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 51, i32 25 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 72, i32 21 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 74, i32 21 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 77, i32 24 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 79, i32 24 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 81, i32 24 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 84, i32 25 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 86, i32 25 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 88, i32 25 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 91, i32 25 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 92, i32 25 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 93, i32 26 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 96, i32 22 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 98, i32 22 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 101, i32 21 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 103, i32 21 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 105, i32 21 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 107, i32 21 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 109, i32 21 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 111, i32 21 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 113, i32 21 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 115, i32 21 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 117, i32 21 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 119, i32 21 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 121, i32 21 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 123, i32 21 }
@___asan_gen_.256 = private unnamed_addr constant [14 x i8] c"clk_ether_ops\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 208, i32 29 }
@___asan_gen_.259 = private unnamed_addr constant [16 x i8] c"clk_complex_ops\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 247, i32 29 }
@___asan_gen_.262 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 290, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 157, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 159, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 161, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [39 x i8] c"../drivers/clk/hisilicon/clk-hix5hd2.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 163, i32 3 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__of_table_hix5hd2_clk, ptr @hix5hd2_clk_register_complex._entry, ptr @hix5hd2_clk_register_complex._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @sfc_mux_table, ptr @.str.31, ptr @sdio_mux_table, ptr @.str.32, ptr @.str.33, ptr @fephy_mux_table, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @clk_ether_ops, ptr @clk_complex_ops, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfc_mux_table to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_mux_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fephy_mux_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_ether_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_complex_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_clk_register_complex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hix5hd2_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 256) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hix5hd2_fixed_rate_clks, i32 noundef 30, ptr noundef nonnull %call) #7
  %call2 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hix5hd2_mux_clks, i32 noundef 4, ptr noundef nonnull %call) #7
  %call3 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hix5hd2_gate_clks, i32 noundef 25, ptr noundef nonnull %call) #7
  tail call fastcc void @hix5hd2_clk_register_complex(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_mux(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_gate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hix5hd2_clk_register_complex(ptr nocapture noundef readonly %data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.hisi_clock_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %ops6 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.02 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %2 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 40) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %i.02
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %init, align 4
  %type = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %i.02, i32 9
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp4 = icmp eq i32 %8, 1
  %spec.select4 = select i1 %cmp4, ptr @clk_ether_ops, ptr @clk_complex_ops
  %9 = ptrtoint ptr %ops6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select4, ptr %ops6, align 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %flags, align 4
  %parent_name = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %i.02, i32 1
  %11 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent_name, align 4
  %tobool9.not = icmp eq ptr %12, null
  %spec.select = select i1 %tobool9.not, ptr null, ptr %parent_name
  %13 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %spec.select, ptr %parent_names, align 4
  %tobool14.not = icmp ne ptr %12, null
  %conv = zext i1 %tobool14.not to i8
  %14 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %num_parents, align 4
  %ctrl_reg = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %i.02, i32 3
  %15 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrl_reg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %16
  %ctrl_reg17 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %ctrl_reg17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %ctrl_reg17, align 8
  %ctrl_clk_mask = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %i.02, i32 4
  %18 = ptrtoint ptr %ctrl_clk_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctrl_clk_mask, align 4
  %ctrl_clk_mask19 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %ctrl_clk_mask19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ctrl_clk_mask19, align 4
  %ctrl_rst_mask = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %i.02, i32 5
  %21 = ptrtoint ptr %ctrl_rst_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctrl_rst_mask, align 4
  %ctrl_rst_mask21 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %ctrl_rst_mask21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ctrl_rst_mask21, align 8
  %phy_reg = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %i.02, i32 6
  %24 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phy_reg, align 4
  %add.ptr23 = getelementptr i8, ptr %1, i32 %25
  %phy_reg24 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %call7.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %phy_reg24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr23, ptr %phy_reg24, align 4
  %phy_clk_mask = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %i.02, i32 7
  %27 = ptrtoint ptr %phy_clk_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phy_clk_mask, align 4
  %phy_clk_mask26 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %call7.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %phy_clk_mask26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %phy_clk_mask26, align 8
  %phy_rst_mask = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %i.02, i32 8
  %30 = ptrtoint ptr %phy_rst_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %phy_rst_mask, align 4
  %phy_rst_mask28 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %call7.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %phy_rst_mask28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %phy_rst_mask28, align 4
  %init29 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %init29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %init, ptr %init29, align 8
  %call31 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, ptr noundef %35) #12
  br label %for.inc

if.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %id = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %i.02, i32 2
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 4
  %arrayidx40 = getelementptr ptr, ptr %37, i32 %39
  %40 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call31, ptr %arrayidx40, align 4
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  br label %cleanup43

for.inc:                                          ; preds = %if.end37, %if.then33
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup43_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup43_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

cleanup43:                                        ; preds = %for.inc.cleanup43_crit_edge, %cleanup
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_ether_prepare(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_reg = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !169
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %ctrl_clk_mask = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl_clk_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl_clk_mask, align 4
  %ctrl_rst_mask = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %ctrl_rst_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl_rst_mask, align 4
  %or = or i32 %3, %5
  %or2 = or i32 %or, %7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or2)
  %9 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !170
  %11 = ptrtoint ptr %ctrl_rst_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctrl_rst_mask, align 4
  %neg = xor i32 %12, -1
  %and = and i32 %or2, %neg
  %13 = tail call i32 @llvm.bswap.i32(i32 %and)
  %14 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #7, !srcloc !170
  %phy_reg = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 5
  %16 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_reg, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !169
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %phy_clk_mask = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 6
  %20 = ptrtoint ptr %phy_clk_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phy_clk_mask, align 4
  %or9 = or i32 %19, %21
  %phy_rst_mask = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 7
  %22 = ptrtoint ptr %phy_rst_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phy_rst_mask, align 4
  %neg10 = xor i32 %23, -1
  %and11 = and i32 %or9, %neg10
  %24 = tail call i32 @llvm.bswap.i32(i32 %and11)
  %25 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #7
  %37 = ptrtoint ptr %phy_clk_mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phy_clk_mask, align 4
  %neg14 = xor i32 %38, -1
  %and15 = and i32 %and11, %neg14
  %39 = ptrtoint ptr %phy_rst_mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %phy_rst_mask, align 4
  %or17 = or i32 %and15, %40
  %41 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %42 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #7, !srcloc !170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #7
  %54 = ptrtoint ptr %phy_clk_mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phy_clk_mask, align 4
  %or26 = or i32 %55, %or17
  %56 = ptrtoint ptr %phy_rst_mask to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %phy_rst_mask, align 4
  %neg28 = xor i32 %57, -1
  %and29 = and i32 %or26, %neg28
  %58 = tail call i32 @llvm.bswap.i32(i32 %and29)
  %59 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %phy_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #7, !srcloc !170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748000) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_ether_unprepare(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_reg = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !169
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %ctrl_clk_mask = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl_clk_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl_clk_mask, align 4
  %neg = xor i32 %5, -1
  %and = and i32 %3, %neg
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %7 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !170
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_complex_enable(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_reg = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !169
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %ctrl_clk_mask = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl_clk_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl_clk_mask, align 4
  %or = or i32 %3, %5
  %ctrl_rst_mask = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %ctrl_rst_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl_rst_mask, align 4
  %neg = xor i32 %7, -1
  %and = and i32 %or, %neg
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  %9 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !170
  %phy_reg = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 5
  %11 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_reg, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !169
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %phy_clk_mask = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 6
  %15 = ptrtoint ptr %phy_clk_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_clk_mask, align 4
  %or6 = or i32 %14, %16
  %phy_rst_mask = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 7
  %17 = ptrtoint ptr %phy_rst_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phy_rst_mask, align 4
  %neg7 = xor i32 %18, -1
  %and8 = and i32 %or6, %neg7
  %19 = tail call i32 @llvm.bswap.i32(i32 %and8)
  %20 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #7, !srcloc !170
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_complex_disable(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_reg = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !169
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %ctrl_rst_mask = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %ctrl_rst_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl_rst_mask, align 4
  %or = or i32 %3, %5
  %ctrl_clk_mask = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %ctrl_clk_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl_clk_mask, align 4
  %neg = xor i32 %7, -1
  %and = and i32 %or, %neg
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  %9 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !170
  %phy_reg = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 5
  %11 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_reg, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !169
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %phy_rst_mask = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 7
  %15 = ptrtoint ptr %phy_rst_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_rst_mask, align 4
  %or6 = or i32 %14, %16
  %phy_clk_mask = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %hw, i32 0, i32 6
  %17 = ptrtoint ptr %phy_clk_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phy_clk_mask, align 4
  %neg7 = xor i32 %18, -1
  %and8 = and i32 %or6, %neg7
  %19 = tail call i32 @llvm.bswap.i32(i32 %and8)
  %20 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #7, !srcloc !170
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !144, !145, !146, !148, !150, !152, !154, !156, !158}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @__of_table_hix5hd2_clk, !1, !"__of_table_hix5hd2_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 319, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 14, i32 25}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 15, i32 24}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 16, i32 23}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 17, i32 23}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 18, i32 24}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 19, i32 24}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 20, i32 23}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 21, i32 24}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 22, i32 24}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 23, i32 23}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 24, i32 24}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 25, i32 25}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 26, i32 25}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 27, i32 24}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 28, i32 26}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 29, i32 24}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 30, i32 23}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 31, i32 24}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 32, i32 24}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 33, i32 23}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 34, i32 23}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 35, i32 25}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 36, i32 24}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 37, i32 24}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 38, i32 24}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 39, i32 24}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 40, i32 25}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 41, i32 23}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 42, i32 23}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 43, i32 23}
!62 = !{ptr @hix5hd2_fixed_rate_clks, !63, !"hix5hd2_fixed_rate_clks", i1 false, i1 false}
!63 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 13, i32 37}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 59, i32 21}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 61, i32 21}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 63, i32 20}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 65, i32 23}
!72 = !{ptr @hix5hd2_mux_clks, !73, !"hix5hd2_mux_clks", i1 false, i1 false}
!73 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 58, i32 30}
!74 = !{ptr @sfc_mux_p, !75, !"sfc_mux_p", i1 false, i1 false}
!75 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 46, i32 26}
!76 = !{ptr @sfc_mux_table, !77, !"sfc_mux_table", i1 false, i1 false}
!77 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 48, i32 12}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 51, i32 25}
!80 = !{ptr @sdio_mux_p, !81, !"sdio_mux_p", i1 false, i1 false}
!81 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 50, i32 26}
!82 = !{ptr @sdio_mux_table, !83, !"sdio_mux_table", i1 false, i1 false}
!83 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 52, i32 12}
!84 = !{ptr @fephy_mux_p, !85, !"fephy_mux_p", i1 false, i1 false}
!85 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 54, i32 26}
!86 = !{ptr @fephy_mux_table, !87, !"fephy_mux_table", i1 false, i1 false}
!87 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 55, i32 12}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 72, i32 21}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 74, i32 21}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 77, i32 24}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 79, i32 24}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 81, i32 24}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 84, i32 25}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 86, i32 25}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 88, i32 25}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 91, i32 25}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 92, i32 25}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 93, i32 26}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 96, i32 22}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 98, i32 22}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 101, i32 21}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 103, i32 21}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 105, i32 21}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 107, i32 21}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 109, i32 21}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 111, i32 21}
!126 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 113, i32 21}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 115, i32 21}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 117, i32 21}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 119, i32 21}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 121, i32 21}
!136 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 123, i32 21}
!138 = !{ptr @hix5hd2_gate_clks, !139, !"hix5hd2_gate_clks", i1 false, i1 false}
!139 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 70, i32 31}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 290, i32 4}
!142 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @hix5hd2_clk_register_complex._entry, !141, !"_entry", i1 false, i1 false}
!145 = !{ptr @hix5hd2_clk_register_complex._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @clk_ether_ops, !147, !"clk_ether_ops", i1 false, i1 false}
!147 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 208, i32 29}
!148 = !{ptr @clk_complex_ops, !149, !"clk_complex_ops", i1 false, i1 false}
!149 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 247, i32 29}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 157, i32 3}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 159, i32 3}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 161, i32 3}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 163, i32 3}
!158 = !{ptr @hix5hd2_complex_clks, !159, !"hix5hd2_complex_clks", i1 false, i1 false}
!159 = !{!"../drivers/clk/hisilicon/clk-hix5hd2.c", i32 156, i32 37}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{i64 3998737}
!170 = !{i64 3998319}
