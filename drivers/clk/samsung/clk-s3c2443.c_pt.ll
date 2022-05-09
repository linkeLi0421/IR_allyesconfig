; ModuleID = '/llk/IR_all_yes/drivers/clk/samsung/clk-s3c2443.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-s3c2443.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.samsung_pll_clock = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.samsung_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8 }
%struct.samsung_div_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.samsung_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8 }
%struct.samsung_clock_alias = type { i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.clk_div_table = type { i32, i32 }

@reg_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: failed to map registers\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.s3c2443_common_clk_init = private unnamed_addr constant [24 x i8] c"s3c2443_common_clk_init\00", align 1
@s3c2416_pll_clks = internal global [2 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 7, ptr @.str.7, ptr @.str.8, i32 64, i32 16, i32 0, i32 13, ptr null }, %struct.samsung_pll_clock { i32 8, ptr @.str.9, ptr @.str.10, i32 64, i32 24, i32 4, i32 14, ptr null }], section ".init.data", align 4
@s3c2443_pll_clks = internal global [2 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 7, ptr @.str.7, ptr @.str.8, i32 64, i32 16, i32 0, i32 1, ptr null }, %struct.samsung_pll_clock { i32 8, ptr @.str.9, ptr @.str.10, i32 64, i32 24, i32 4, i32 0, ptr null }], section ".init.data", align 4
@s3c2443_common_muxes = internal global [6 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 0, ptr @.str.10, ptr @epllref_p, i8 4, i32 128, i32 32, i8 7, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 2, ptr @.str.11, ptr @esysclk_p, i8 2, i32 128, i32 32, i8 6, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.8, ptr @mpllref_p, i8 2, i32 128, i32 32, i8 3, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 1, ptr @.str.12, ptr @msysclk_p, i8 2, i32 128, i32 32, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 4, ptr @.str.13, ptr @armclk_p, i8 2, i32 128, i32 36, i8 13, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.14, ptr @i2s0_p, i8 4, i32 128, i32 32, i8 14, i8 2, i8 0 }], section ".init.data", align 4
@s3c2443_common_dividers = internal global [10 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 0, ptr @.str.15, ptr @.str.3, i32 0, i32 36, i8 6, i8 3, i8 0, ptr @mdivclk_d }, %struct.samsung_div_clock { i32 0, ptr @.str.19, ptr @.str.12, i32 0, i32 36, i8 4, i8 2, i8 0, ptr null }, %struct.samsung_div_clock { i32 5, ptr @.str.17, ptr @.str.19, i32 0, i32 36, i8 0, i8 2, i8 0, ptr @hclk_d }, %struct.samsung_div_clock { i32 6, ptr @.str.20, ptr @.str.17, i32 0, i32 36, i8 2, i8 1, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.21, ptr @.str.11, i32 0, i32 40, i8 24, i8 2, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.22, ptr @.str.11, i32 0, i32 40, i8 16, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.18, ptr @.str.11, i32 0, i32 40, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.23, ptr @.str.11, i32 0, i32 40, i8 8, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.24, ptr @.str.11, i32 0, i32 40, i8 6, i8 2, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.25, ptr @.str.11, i32 0, i32 40, i8 4, i8 2, i8 0, ptr null }], section ".init.data", align 4
@s3c2443_common_gates = internal global [31 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 21, ptr @.str.26, ptr @.str.4, i32 0, i32 56, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 20, ptr @.str.27, ptr @.str.24, i32 0, i32 56, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 17, ptr @.str.28, ptr @.str.22, i32 0, i32 56, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 18, ptr @.str.29, ptr @.str.14, i32 0, i32 56, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 23, ptr @.str.30, ptr @.str.23, i32 0, i32 56, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 24, ptr @.str.31, ptr @.str.25, i32 0, i32 56, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 65, ptr @.str.32, ptr @.str.17, i32 8, i32 48, i8 19, i8 0 }, %struct.samsung_gate_clock { i32 64, ptr @.str.33, ptr @.str.17, i32 8, i32 48, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 62, ptr @.str.34, ptr @.str.17, i32 0, i32 48, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 59, ptr @.str.35, ptr @.str.17, i32 0, i32 48, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 58, ptr @.str.36, ptr @.str.17, i32 0, i32 48, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 57, ptr @.str.37, ptr @.str.17, i32 0, i32 48, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 53, ptr @.str.38, ptr @.str.17, i32 8, i32 48, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 52, ptr @.str.39, ptr @.str.17, i32 8, i32 48, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 51, ptr @.str.40, ptr @.str.17, i32 8, i32 48, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 50, ptr @.str.41, ptr @.str.17, i32 8, i32 48, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 49, ptr @.str.42, ptr @.str.17, i32 8, i32 48, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 48, ptr @.str.43, ptr @.str.17, i32 8, i32 48, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 85, ptr @.str.44, ptr @.str.20, i32 8, i32 52, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 84, ptr @.str.45, ptr @.str.20, i32 0, i32 52, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 83, ptr @.str.46, ptr @.str.20, i32 0, i32 52, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 82, ptr @.str.47, ptr @.str.20, i32 0, i32 52, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 81, ptr @.str.48, ptr @.str.20, i32 0, i32 52, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 80, ptr @.str.49, ptr @.str.20, i32 0, i32 52, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 79, ptr @.str.50, ptr @.str.20, i32 0, i32 52, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 78, ptr @.str.51, ptr @.str.20, i32 0, i32 52, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 76, ptr @.str.52, ptr @.str.20, i32 0, i32 52, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 75, ptr @.str.53, ptr @.str.20, i32 0, i32 52, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 74, ptr @.str.54, ptr @.str.20, i32 0, i32 52, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 73, ptr @.str.55, ptr @.str.20, i32 0, i32 52, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 72, ptr @.str.56, ptr @.str.20, i32 0, i32 52, i8 0, i8 0 }], section ".init.data", align 4
@s3c2443_common_aliases = internal global [31 x %struct.samsung_clock_alias] [%struct.samsung_clock_alias { i32 1, ptr null, ptr @.str.12 }, %struct.samsung_clock_alias { i32 4, ptr null, ptr @.str.13 }, %struct.samsung_clock_alias { i32 7, ptr null, ptr @.str.7 }, %struct.samsung_clock_alias { i32 8, ptr null, ptr @.str.9 }, %struct.samsung_clock_alias { i32 5, ptr null, ptr @.str.17 }, %struct.samsung_clock_alias { i32 64, ptr null, ptr @.str.57 }, %struct.samsung_clock_alias { i32 72, ptr @.str.58, ptr @.str.59 }, %struct.samsung_clock_alias { i32 73, ptr @.str.60, ptr @.str.59 }, %struct.samsung_clock_alias { i32 74, ptr @.str.61, ptr @.str.59 }, %struct.samsung_clock_alias { i32 75, ptr @.str.62, ptr @.str.59 }, %struct.samsung_clock_alias { i32 72, ptr @.str.58, ptr @.str.63 }, %struct.samsung_clock_alias { i32 73, ptr @.str.60, ptr @.str.63 }, %struct.samsung_clock_alias { i32 74, ptr @.str.61, ptr @.str.63 }, %struct.samsung_clock_alias { i32 75, ptr @.str.62, ptr @.str.63 }, %struct.samsung_clock_alias { i32 23, ptr null, ptr @.str.64 }, %struct.samsung_clock_alias { i32 82, ptr null, ptr @.str.65 }, %struct.samsung_clock_alias { i32 84, ptr null, ptr @.str.45 }, %struct.samsung_clock_alias { i32 83, ptr null, ptr @.str.66 }, %struct.samsung_clock_alias { i32 79, ptr null, ptr @.str.50 }, %struct.samsung_clock_alias { i32 76, ptr @.str.67, ptr @.str.68 }, %struct.samsung_clock_alias { i32 59, ptr null, ptr @.str.35 }, %struct.samsung_clock_alias { i32 58, ptr null, ptr @.str.36 }, %struct.samsung_clock_alias { i32 24, ptr null, ptr @.str.69 }, %struct.samsung_clock_alias { i32 78, ptr @.str.70, ptr @.str.71 }, %struct.samsung_clock_alias { i32 78, ptr @.str.70, ptr @.str.72 }, %struct.samsung_clock_alias { i32 62, ptr @.str.73, ptr @.str.74 }, %struct.samsung_clock_alias { i32 62, ptr @.str.73, ptr @.str.75 }, %struct.samsung_clock_alias { i32 81, ptr @.str.76, ptr @.str.77 }, %struct.samsung_clock_alias { i32 18, ptr null, ptr @.str.78 }, %struct.samsung_clock_alias { i32 57, ptr null, ptr @.str.37 }, %struct.samsung_clock_alias { i32 17, ptr null, ptr @.str.28 }], section ".init.data", align 4
@s3c2450_dividers = internal global [4 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 0, ptr @.str.79, ptr @.str.11, i32 0, i32 40, i8 26, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.80, ptr @.str.11, i32 0, i32 44, i8 24, i8 2, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.81, ptr @.str.12, i32 0, i32 44, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.82, ptr @.str.11, i32 0, i32 44, i8 12, i8 4, i8 0, ptr null }], section ".init.data", align 4
@s3c2450_muxes = internal global [3 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 0, ptr @.str.83, ptr @s3c2450_cam_p, i8 2, i32 128, i32 32, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 33, ptr @.str.84, ptr @s3c2450_hsspi1_p, i8 2, i32 128, i32 32, i8 19, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.85, ptr @i2s1_p, i8 4, i32 128, i32 32, i8 12, i8 2, i8 0 }], section ".init.data", align 4
@s3c2450_gates = internal global [8 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 19, ptr @.str.88, ptr @.str.82, i32 0, i32 56, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 63, ptr @.str.89, ptr @.str.17, i32 0, i32 48, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 56, ptr @.str.90, ptr @.str.17, i32 0, i32 48, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 55, ptr @.str.91, ptr @.str.17, i32 8, i32 48, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 54, ptr @.str.92, ptr @.str.17, i32 8, i32 48, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 89, ptr @.str.93, ptr @.str.20, i32 0, i32 52, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 88, ptr @.str.94, ptr @.str.20, i32 0, i32 52, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 86, ptr @.str.95, ptr @.str.20, i32 0, i32 52, i8 14, i8 0 }], section ".init.data", align 4
@s3c2450_aliases = internal global [4 x %struct.samsung_clock_alias] [%struct.samsung_clock_alias { i32 86, ptr @.str.96, ptr @.str.71 }, %struct.samsung_clock_alias { i32 86, ptr @.str.96, ptr @.str.72 }, %struct.samsung_clock_alias { i32 33, ptr @.str.96, ptr @.str.97 }, %struct.samsung_clock_alias { i32 88, ptr @.str.98, ptr @.str.68 }], section ".init.data", align 4
@s3c2416_dividers = internal global [3 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 3, ptr @.str.16, ptr @.str.12, i32 0, i32 36, i8 9, i8 3, i8 0, ptr @armdiv_s3c2416_d }, %struct.samsung_div_clock { i32 0, ptr @.str.99, ptr @.str.12, i32 0, i32 44, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.100, ptr @.str.11, i32 0, i32 44, i8 6, i8 2, i8 0, ptr null }], section ".init.data", align 4
@s3c2416_muxes = internal global [3 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 34, ptr @.str.101, ptr @s3c2416_hsmmc0_p, i8 2, i32 128, i32 32, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 35, ptr @.str.102, ptr @s3c2416_hsmmc1_p, i8 2, i32 128, i32 32, i8 17, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 32, ptr @.str.103, ptr @s3c2416_hsspi0_p, i8 2, i32 128, i32 32, i8 18, i8 1, i8 0 }], section ".init.data", align 4
@s3c2416_gates = internal global [7 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 0, ptr @.str.106, ptr @.str.99, i32 0, i32 56, i8 19, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.105, ptr @.str.21, i32 0, i32 56, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.104, ptr @.str.100, i32 0, i32 56, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 66, ptr @.str.107, ptr @.str.17, i32 0, i32 48, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 61, ptr @.str.108, ptr @.str.17, i32 0, i32 48, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 60, ptr @.str.109, ptr @.str.17, i32 8, i32 48, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 90, ptr @.str.110, ptr @.str.20, i32 0, i32 52, i8 19, i8 0 }], section ".init.data", align 4
@s3c2416_aliases = internal global [6 x %struct.samsung_clock_alias] [%struct.samsung_clock_alias { i32 61, ptr @.str.111, ptr @.str.74 }, %struct.samsung_clock_alias { i32 61, ptr @.str.111, ptr @.str.75 }, %struct.samsung_clock_alias { i32 34, ptr @.str.111, ptr @.str.112 }, %struct.samsung_clock_alias { i32 35, ptr @.str.73, ptr @.str.112 }, %struct.samsung_clock_alias { i32 32, ptr @.str.70, ptr @.str.97 }, %struct.samsung_clock_alias { i32 3, ptr null, ptr @.str.16 }], section ".init.data", align 4
@s3c2443_dividers = internal global [2 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 3, ptr @.str.16, ptr @.str.12, i32 0, i32 36, i8 9, i8 4, i8 0, ptr @armdiv_s3c2443_d }, %struct.samsung_div_clock { i32 0, ptr @.str.79, ptr @.str.11, i32 0, i32 40, i8 26, i8 4, i8 0, ptr null }], section ".init.data", align 4
@s3c2443_gates = internal global [6 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 16, ptr @.str.113, ptr @.str.21, i32 0, i32 56, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 22, ptr @.str.114, ptr @.str.79, i32 0, i32 56, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 63, ptr @.str.89, ptr @.str.17, i32 8, i32 48, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 56, ptr @.str.90, ptr @.str.17, i32 0, i32 48, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 86, ptr @.str.95, ptr @.str.20, i32 0, i32 52, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 77, ptr @.str.115, ptr @.str.20, i32 0, i32 52, i8 5, i8 0 }], section ".init.data", align 4
@s3c2443_aliases = internal global [7 x %struct.samsung_clock_alias] [%struct.samsung_clock_alias { i32 16, ptr @.str.70, ptr @.str.97 }, %struct.samsung_clock_alias { i32 20, ptr @.str.73, ptr @.str.112 }, %struct.samsung_clock_alias { i32 22, ptr null, ptr @.str.116 }, %struct.samsung_clock_alias { i32 86, ptr @.str.117, ptr @.str.71 }, %struct.samsung_clock_alias { i32 77, ptr null, ptr @.str.115 }, %struct.samsung_clock_alias { i32 63, ptr null, ptr @.str.89 }, %struct.samsung_clock_alias { i32 3, ptr null, ptr @.str.16 }], section ".init.data", align 4
@s3c2443_clk_regs = internal global [12 x i32] [i32 0, i32 4, i32 16, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 52, i32 48, i32 56], section ".init.data", align 4
@s3c2443_restart_handler = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @s3c2443_restart, ptr null, i32 129 }, [20 x i8] zeroinitializer }, align 32
@s3c2443_common_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.s3c2443_common_clk_init, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014cannot register restart handler, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/samsung/clk-s3c2443.c\00", [62 x i8] zeroinitializer }, align 32
@s3c2443_common_clk_init._entry_ptr = internal global ptr @s3c2443_common_clk_init._entry, section ".printk_index", align 4
@__of_table_s3c2416_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2416-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2416_clk_init }, section "__clk_of_table", align 4
@__of_table_s3c2443_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2443-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2443_clk_init }, section "__clk_of_table", align 4
@__of_table_s3c2450_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2450-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2450_clk_init }, section "__clk_of_table", align 4
@s3c2443_common_frate_clks = internal global [4 x %struct.samsung_fixed_rate_clock] [%struct.samsung_fixed_rate_clock { i32 0, ptr @.str.3, ptr null, i32 0, i32 0 }, %struct.samsung_fixed_rate_clock { i32 0, ptr @.str.4, ptr null, i32 0, i32 0 }, %struct.samsung_fixed_rate_clock { i32 0, ptr @.str.5, ptr null, i32 0, i32 0 }, %struct.samsung_fixed_rate_clock { i32 0, ptr @.str.6, ptr null, i32 0, i32 0 }], section ".init.data", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xti\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ext\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ext_i2s\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ext_uart\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpll\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpllref\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"epll\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"epllref\00", [24 x i8] zeroinitializer }, align 32
@epllref_p = internal constant [4 x ptr] [ptr @.str.8, ptr @.str.8, ptr @.str.3, ptr @.str.4], section ".init.rodata", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"esysclk\00", [24 x i8] zeroinitializer }, align 32
@esysclk_p = internal constant [2 x ptr] [ptr @.str.10, ptr @.str.9], section ".init.rodata", align 4
@mpllref_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.15], section ".init.rodata", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msysclk\00", [24 x i8] zeroinitializer }, align 32
@msysclk_p = internal constant [2 x ptr] [ptr @.str.8, ptr @.str.7], section ".init.rodata", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armclk\00", [25 x i8] zeroinitializer }, align 32
@armclk_p = internal constant [2 x ptr] [ptr @.str.16, ptr @.str.17], section ".init.rodata", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mux_i2s0\00", [23 x i8] zeroinitializer }, align 32
@i2s0_p = internal constant [4 x ptr] [ptr @.str.18, ptr @.str.5, ptr @.str.10, ptr @.str.10], section ".init.rodata", align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mdivclk\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armdiv\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_i2s0\00", [23 x i8] zeroinitializer }, align 32
@mdivclk_d = internal global { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 3 }, %struct.clk_div_table { i32 2, i32 5 }, %struct.clk_div_table { i32 3, i32 7 }, %struct.clk_div_table { i32 4, i32 9 }, %struct.clk_div_table { i32 5, i32 11 }, %struct.clk_div_table { i32 6, i32 13 }, %struct.clk_div_table { i32 7, i32 15 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"prediv\00", [25 x i8] zeroinitializer }, align 32
@hclk_d = internal global { [4 x %struct.clk_div_table], [32 x i8] } { [4 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"div_hsspi0_epll\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_fimd\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_uart\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"div_hsmmc1\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"div_usbhost\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sclk_hsmmcext\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_hsmmc1\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_fimd\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_i2s0\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_uart\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sclk_usbhost\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dram\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssmc\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hsmmc1\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb-device\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb-host\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma5\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma4\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma3\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma2\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma1\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma0\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wdt\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s0\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ac97\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi0\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c0\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c2440-uart.0\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c2440-uart.1\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c2440-uart.2\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c2440-uart.3\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_uart_baud2\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_uart_baud3\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timers\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s3c2410-i2c.0\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb-bus-host\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s3c2443-spi.0\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_busclk0\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3c-sdhci.1\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hsmmc\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmc_busclk.0\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"samsung-i2s.0\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iis\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2s-if\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div_cam\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"div_hsspi1_epll\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"div_hsspi1_mpll\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_i2s1\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mux_cam\00", [24 x i8] zeroinitializer }, align 32
@s3c2450_cam_p = internal constant [2 x ptr] [ptr @.str.79, ptr @.str.17], section ".init.rodata", align 4
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mux_hsspi1\00", [21 x i8] zeroinitializer }, align 32
@s3c2450_hsspi1_p = internal constant [2 x ptr] [ptr @.str.86, ptr @.str.87], section ".init.rodata", align 4
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mux_i2s1\00", [23 x i8] zeroinitializer }, align 32
@i2s1_p = internal constant [4 x ptr] [ptr @.str.82, ptr @.str.5, ptr @.str.10, ptr @.str.10], section ".init.rodata", align 4
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hsspi1_epll\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hsspi1_mpll\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_i2s1\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cfc\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cam\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma7\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma6\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s1\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi1\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s3c2443-spi.1\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_busclk2\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s3c2410-i2c.1\00", [18 x i8] zeroinitializer }, align 32
@armdiv_s3c2416_d = internal global { [7 x %struct.clk_div_table], [40 x i8] } { [7 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"div_hsspi0_mpll\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"div_hsmmc0\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mux_hsmmc0\00", [21 x i8] zeroinitializer }, align 32
@s3c2416_hsmmc0_p = internal constant [2 x ptr] [ptr @.str.104, ptr @.str.26], section ".init.rodata", align 4
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mux_hsmmc1\00", [21 x i8] zeroinitializer }, align 32
@s3c2416_hsmmc1_p = internal constant [2 x ptr] [ptr @.str.27, ptr @.str.26], section ".init.rodata", align 4
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mux_hsspi0\00", [21 x i8] zeroinitializer }, align 32
@s3c2416_hsspi0_p = internal constant [2 x ptr] [ptr @.str.105, ptr @.str.106], section ".init.rodata", align 4
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_hsmmc0\00", [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hsspi0_epll\00", [20 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hsspi0_mpll\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2d\00", [29 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hsmmc0\00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"irom\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pcm\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3c-sdhci.0\00", [20 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmc_busclk.2\00", [19 x i8] zeroinitializer }, align 32
@armdiv_s3c2443_d = internal global { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 8, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 9, i32 4 }, %struct.clk_div_table { i32 10, i32 6 }, %struct.clk_div_table { i32 11, i32 8 }, %struct.clk_div_table { i32 13, i32 12 }, %struct.clk_div_table { i32 15, i32 16 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_hsspi0\00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sclk_cam\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sdi\00", [28 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"camif-upll\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s3c2410-spi.0\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.118 = private unnamed_addr constant [9 x i8] c"reg_base\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 42, i32 22 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 353, i32 10 }
@___asan_gen_.124 = private unnamed_addr constant [24 x i8] c"s3c2443_restart_handler\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 318, i32 30 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 419, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 328, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 329, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 330, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 331, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 182, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 183, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 72, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 74, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 75, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 76, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 65, i32 29 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 67, i32 21 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 67, i32 32 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 68, i32 19 }
@___asan_gen_.184 = private unnamed_addr constant [10 x i8] c"mdivclk_d\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 86, i32 29 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 100, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"hclk_d\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 79, i32 29 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 102, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 103, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 104, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 106, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 107, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 108, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 112, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 113, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 114, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 115, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 116, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 117, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 118, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 119, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 120, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 121, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 122, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 123, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 124, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 125, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 126, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 127, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 128, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 129, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 130, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 131, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 132, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 133, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 134, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 135, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 136, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 137, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 138, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 139, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 140, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 141, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 142, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 151, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 152, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 153, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 154, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 155, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 156, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 160, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 161, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 163, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 165, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 168, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 169, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 170, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 171, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 172, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 173, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 174, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 281, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 282, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 283, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 284, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 288, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 289, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 290, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 277, i32 29 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 277, i32 44 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 294, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 295, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 296, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 297, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 298, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 299, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 300, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 301, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 305, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 307, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 308, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [17 x i8] c"armdiv_s3c2416_d\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 190, i32 29 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 202, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 203, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 207, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 208, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 209, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 186, i32 29 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 188, i32 29 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 188, i32 44 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 216, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 217, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 218, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 219, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 223, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 225, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant [17 x i8] c"armdiv_s3c2443_d\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 238, i32 29 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 256, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 257, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 261, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 267, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.491 = private constant [37 x i8] c"../drivers/clk/samsung/clk-s3c2443.c\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 268, i32 2 }
@llvm.compiler.used = appending global [129 x ptr] [ptr @__of_table_s3c2416_clk, ptr @__of_table_s3c2443_clk, ptr @__of_table_s3c2450_clk, ptr @s3c2443_common_clk_init._entry, ptr @s3c2443_common_clk_init._entry_ptr, ptr @reg_base, ptr @.str, ptr @s3c2443_restart_handler, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @mdivclk_d, ptr @.str.19, ptr @hclk_d, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @armdiv_s3c2416_d, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @armdiv_s3c2443_d, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2443_restart_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2443_common_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdivclk_d to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclk_d to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armdiv_s3c2416_d to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armdiv_s3c2443_d to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c2443_common_clk_init(ptr noundef %np, i32 noundef %xti_f, i32 noundef %current_soc, ptr noundef %base) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %base, ptr @reg_base, align 4
  %tobool.not = icmp eq ptr %np, null
  br i1 %tobool.not, label %if.then6, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @of_iomap(ptr noundef nonnull %np, i32 noundef 0) #5
  store ptr %call, ptr @reg_base, align 4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s3c2443_common_clk_init) #8
  unreachable

if.end3:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @reg_base, align 4
  %call4 = tail call ptr @samsung_clk_init(ptr noundef nonnull %np, ptr noundef %0, i32 noundef 91) #5
  br label %if.end7

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = load ptr, ptr @reg_base, align 4
  %call443 = tail call ptr @samsung_clk_init(ptr noundef null, ptr noundef %1, i32 noundef 91) #5
  store i32 %xti_f, ptr getelementptr inbounds ([4 x %struct.samsung_fixed_rate_clock], ptr @s3c2443_common_frate_clks, i32 0, i32 0, i32 4), align 4
  tail call void @samsung_clk_register_fixed_rate(ptr noundef %call443, ptr noundef nonnull @s3c2443_common_frate_clks, i32 noundef 4) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3
  %call444 = phi ptr [ %call443, %if.then6 ], [ %call4, %if.end3 ]
  %switch.and = and i32 %current_soc, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %2 = select i1 %switch.selectcmp, ptr @s3c2416_pll_clks, ptr @s3c2443_pll_clks
  %3 = load ptr, ptr @reg_base, align 4
  tail call void @samsung_clk_register_pll(ptr noundef %call444, ptr noundef nonnull %2, i32 noundef 2, ptr noundef %3) #5
  tail call void @samsung_clk_register_mux(ptr noundef %call444, ptr noundef nonnull @s3c2443_common_muxes, i32 noundef 6) #5
  tail call void @samsung_clk_register_div(ptr noundef %call444, ptr noundef nonnull @s3c2443_common_dividers, i32 noundef 10) #5
  tail call void @samsung_clk_register_gate(ptr noundef %call444, ptr noundef nonnull @s3c2443_common_gates, i32 noundef 31) #5
  tail call void @samsung_clk_register_alias(ptr noundef %call444, ptr noundef nonnull @s3c2443_common_aliases, i32 noundef 31) #5
  %4 = zext i32 %current_soc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %current_soc, label %if.end7.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %if.end7.sw.bb11_crit_edge
    i32 1, label %sw.bb12
  ]

if.end7.sw.bb11_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @samsung_clk_register_div(ptr noundef %call444, ptr noundef nonnull @s3c2450_dividers, i32 noundef 4) #5
  tail call void @samsung_clk_register_mux(ptr noundef %call444, ptr noundef nonnull @s3c2450_muxes, i32 noundef 3) #5
  tail call void @samsung_clk_register_gate(ptr noundef %call444, ptr noundef nonnull @s3c2450_gates, i32 noundef 8) #5
  tail call void @samsung_clk_register_alias(ptr noundef %call444, ptr noundef nonnull @s3c2450_aliases, i32 noundef 4) #5
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb, %if.end7.sw.bb11_crit_edge
  tail call void @samsung_clk_register_div(ptr noundef %call444, ptr noundef nonnull @s3c2416_dividers, i32 noundef 3) #5
  tail call void @samsung_clk_register_mux(ptr noundef %call444, ptr noundef nonnull @s3c2416_muxes, i32 noundef 3) #5
  tail call void @samsung_clk_register_gate(ptr noundef %call444, ptr noundef nonnull @s3c2416_gates, i32 noundef 7) #5
  tail call void @samsung_clk_register_alias(ptr noundef %call444, ptr noundef nonnull @s3c2416_aliases, i32 noundef 6) #5
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @samsung_clk_register_div(ptr noundef %call444, ptr noundef nonnull @s3c2443_dividers, i32 noundef 2) #5
  tail call void @samsung_clk_register_gate(ptr noundef %call444, ptr noundef nonnull @s3c2443_gates, i32 noundef 6) #5
  tail call void @samsung_clk_register_alias(ptr noundef %call444, ptr noundef nonnull @s3c2443_aliases, i32 noundef 7) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb11, %if.end7.sw.epilog_crit_edge
  %5 = load ptr, ptr @reg_base, align 4
  tail call void @samsung_clk_extended_sleep_init(ptr noundef %5, ptr noundef nonnull @s3c2443_clk_regs, i32 noundef 12, ptr noundef null, i32 noundef 0) #5
  tail call void @samsung_clk_of_add_provider(ptr noundef %np, ptr noundef %call444) #5
  %call13 = tail call i32 @register_restart_handler(ptr noundef nonnull @s3c2443_restart_handler) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %sw.epilog.if.end17_crit_edge, label %do.end

sw.epilog.if.end17_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call13) #9
  br label %if.end17

if.end17:                                         ; preds = %do.end, %sw.epilog.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @samsung_clk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_pll(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_mux(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_div(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_gate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_alias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_extended_sleep_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_of_add_provider(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c2416_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c2443_common_clk_init(ptr noundef %np, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c2443_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c2443_common_clk_init(ptr noundef %np, i32 noundef 0, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c2450_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c2443_common_clk_init(ptr noundef %np, i32 noundef 0, i32 noundef 2, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_fixed_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2443_restart(ptr nocapture noundef readnone %this, i32 noundef %mode, ptr nocapture noundef readnone %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @reg_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1396450371) #5, !srcloc !321
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !158, !160, !162, !164, !166, !168, !170, !172, !173, !175, !177, !178, !180, !182, !183, !185, !187, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310}
!llvm.module.flags = !{!312, !313, !314, !315, !316, !317, !318, !319}
!llvm.ident = !{!320}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 353, i32 10}
!2 = !{ptr @__func__.s3c2443_common_clk_init, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 353, i32 43}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 419, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @s3c2443_common_clk_init._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @s3c2443_common_clk_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__of_table_s3c2416_clk, !10, !"__of_table_s3c2416_clk", i1 false, i1 false}
!10 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 426, i32 1}
!11 = !{ptr @__of_table_s3c2443_clk, !12, !"__of_table_s3c2443_clk", i1 false, i1 false}
!12 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 432, i32 1}
!13 = !{ptr @__of_table_s3c2450_clk, !14, !"__of_table_s3c2450_clk", i1 false, i1 false}
!14 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 438, i32 1}
!15 = !{ptr @reg_base, !16, !"reg_base", i1 false, i1 false}
!16 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 42, i32 22}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 328, i32 2}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 329, i32 2}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 330, i32 2}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 331, i32 2}
!25 = !{ptr @s3c2443_common_frate_clks, !26, !"s3c2443_common_frate_clks", i1 false, i1 false}
!26 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 327, i32 40}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 182, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 183, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @s3c2416_pll_clks, !34, !"s3c2416_pll_clks", i1 false, i1 false}
!34 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 181, i32 33}
!35 = !{ptr @s3c2443_pll_clks, !36, !"s3c2443_pll_clks", i1 false, i1 false}
!36 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 233, i32 33}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 72, i32 2}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 74, i32 2}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 75, i32 2}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 76, i32 2}
!45 = !{ptr @s3c2443_common_muxes, !46, !"s3c2443_common_muxes", i1 false, i1 false}
!46 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 70, i32 33}
!47 = !{ptr @epllref_p, !48, !"epllref_p", i1 false, i1 false}
!48 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 63, i32 1}
!49 = !{ptr @esysclk_p, !50, !"esysclk_p", i1 false, i1 false}
!50 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 64, i32 1}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 65, i32 29}
!53 = !{ptr @mpllref_p, !54, !"mpllref_p", i1 false, i1 false}
!54 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 65, i32 1}
!55 = !{ptr @msysclk_p, !56, !"msysclk_p", i1 false, i1 false}
!56 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 66, i32 1}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 67, i32 21}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 67, i32 32}
!61 = !{ptr @armclk_p, !62, !"armclk_p", i1 false, i1 false}
!62 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 67, i32 1}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 68, i32 19}
!65 = !{ptr @i2s0_p, !66, !"i2s0_p", i1 false, i1 false}
!66 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 68, i32 1}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 100, i32 2}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 102, i32 2}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 103, i32 2}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 104, i32 2}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 106, i32 2}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 107, i32 2}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 108, i32 2}
!81 = !{ptr @s3c2443_common_dividers, !82, !"s3c2443_common_dividers", i1 false, i1 false}
!82 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 98, i32 33}
!83 = !{ptr @mdivclk_d, !84, !"mdivclk_d", i1 false, i1 false}
!84 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 86, i32 29}
!85 = !{ptr @hclk_d, !86, !"hclk_d", i1 false, i1 false}
!86 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 79, i32 29}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 112, i32 2}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 113, i32 2}
!91 = !{ptr @.str.28, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 114, i32 2}
!93 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 115, i32 2}
!95 = !{ptr @.str.30, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 116, i32 2}
!97 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 117, i32 2}
!99 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 118, i32 2}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 119, i32 2}
!103 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 120, i32 2}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 121, i32 2}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 122, i32 2}
!109 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 123, i32 2}
!111 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 124, i32 2}
!113 = !{ptr @.str.39, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 125, i32 2}
!115 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 126, i32 2}
!117 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 127, i32 2}
!119 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 128, i32 2}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 129, i32 2}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 130, i32 2}
!125 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 131, i32 2}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 132, i32 2}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 133, i32 2}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 134, i32 2}
!133 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 135, i32 2}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 136, i32 2}
!137 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 137, i32 2}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 138, i32 2}
!141 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 139, i32 2}
!143 = !{ptr @.str.54, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 140, i32 2}
!145 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 141, i32 2}
!147 = !{ptr @.str.56, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 142, i32 2}
!149 = !{ptr @s3c2443_common_gates, !150, !"s3c2443_common_gates", i1 false, i1 false}
!150 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 111, i32 34}
!151 = !{ptr @.str.57, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 151, i32 2}
!153 = !{ptr @.str.58, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 152, i32 2}
!155 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 153, i32 2}
!158 = !{ptr @.str.61, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 154, i32 2}
!160 = !{ptr @.str.62, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 155, i32 2}
!162 = !{ptr @.str.63, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 156, i32 2}
!164 = !{ptr @.str.64, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 160, i32 2}
!166 = !{ptr @.str.65, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 161, i32 2}
!168 = !{ptr @.str.66, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 163, i32 2}
!170 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 165, i32 2}
!172 = !{ptr @.str.68, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.69, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 168, i32 2}
!175 = !{ptr @.str.70, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 169, i32 2}
!177 = !{ptr @.str.71, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.72, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 170, i32 2}
!180 = !{ptr @.str.73, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 171, i32 2}
!182 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 172, i32 2}
!185 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 173, i32 2}
!187 = !{ptr @.str.77, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.78, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 174, i32 2}
!190 = !{ptr @s3c2443_common_aliases, !191, !"s3c2443_common_aliases", i1 false, i1 false}
!191 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 145, i32 35}
!192 = !{ptr @.str.79, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 281, i32 2}
!194 = !{ptr @.str.80, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 282, i32 2}
!196 = !{ptr @.str.81, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 283, i32 2}
!198 = !{ptr @.str.82, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 284, i32 2}
!200 = !{ptr @s3c2450_dividers, !201, !"s3c2450_dividers", i1 false, i1 false}
!201 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 280, i32 33}
!202 = !{ptr @.str.83, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 288, i32 2}
!204 = !{ptr @.str.84, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 289, i32 2}
!206 = !{ptr @.str.85, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 290, i32 2}
!208 = !{ptr @s3c2450_muxes, !209, !"s3c2450_muxes", i1 false, i1 false}
!209 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 287, i32 33}
!210 = !{ptr @s3c2450_cam_p, !211, !"s3c2450_cam_p", i1 false, i1 false}
!211 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 276, i32 1}
!212 = !{ptr @.str.86, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 277, i32 29}
!214 = !{ptr @.str.87, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 277, i32 44}
!216 = !{ptr @s3c2450_hsspi1_p, !217, !"s3c2450_hsspi1_p", i1 false, i1 false}
!217 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 277, i32 1}
!218 = !{ptr @i2s1_p, !219, !"i2s1_p", i1 false, i1 false}
!219 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 278, i32 1}
!220 = !{ptr @.str.88, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 294, i32 2}
!222 = !{ptr @.str.89, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 295, i32 2}
!224 = !{ptr @.str.90, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 296, i32 2}
!226 = !{ptr @.str.91, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 297, i32 2}
!228 = !{ptr @.str.92, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 298, i32 2}
!230 = !{ptr @.str.93, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 299, i32 2}
!232 = !{ptr @.str.94, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 300, i32 2}
!234 = !{ptr @.str.95, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 301, i32 2}
!236 = !{ptr @s3c2450_gates, !237, !"s3c2450_gates", i1 false, i1 false}
!237 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 293, i32 34}
!238 = !{ptr @.str.96, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 305, i32 2}
!240 = !{ptr @.str.97, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 307, i32 2}
!242 = !{ptr @.str.98, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 308, i32 2}
!244 = !{ptr @s3c2450_aliases, !245, !"s3c2450_aliases", i1 false, i1 false}
!245 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 304, i32 35}
!246 = !{ptr @.str.99, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 202, i32 2}
!248 = !{ptr @.str.100, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 203, i32 2}
!250 = !{ptr @s3c2416_dividers, !251, !"s3c2416_dividers", i1 false, i1 false}
!251 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 200, i32 33}
!252 = !{ptr @armdiv_s3c2416_d, !253, !"armdiv_s3c2416_d", i1 false, i1 false}
!253 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 190, i32 29}
!254 = !{ptr @.str.101, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 207, i32 2}
!256 = !{ptr @.str.102, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 208, i32 2}
!258 = !{ptr @.str.103, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 209, i32 2}
!260 = !{ptr @s3c2416_muxes, !261, !"s3c2416_muxes", i1 false, i1 false}
!261 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 206, i32 33}
!262 = !{ptr @.str.104, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 186, i32 29}
!264 = !{ptr @s3c2416_hsmmc0_p, !265, !"s3c2416_hsmmc0_p", i1 false, i1 false}
!265 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 186, i32 1}
!266 = !{ptr @s3c2416_hsmmc1_p, !267, !"s3c2416_hsmmc1_p", i1 false, i1 false}
!267 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 187, i32 1}
!268 = !{ptr @.str.105, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 188, i32 29}
!270 = !{ptr @.str.106, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 188, i32 44}
!272 = !{ptr @s3c2416_hsspi0_p, !273, !"s3c2416_hsspi0_p", i1 false, i1 false}
!273 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 188, i32 1}
!274 = !{ptr @.str.107, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 216, i32 2}
!276 = !{ptr @.str.108, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 217, i32 2}
!278 = !{ptr @.str.109, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 218, i32 2}
!280 = !{ptr @.str.110, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 219, i32 2}
!282 = !{ptr @s3c2416_gates, !283, !"s3c2416_gates", i1 false, i1 false}
!283 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 212, i32 34}
!284 = !{ptr @.str.111, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 223, i32 2}
!286 = !{ptr @.str.112, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 225, i32 2}
!288 = !{ptr @s3c2416_aliases, !289, !"s3c2416_aliases", i1 false, i1 false}
!289 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 222, i32 35}
!290 = !{ptr @s3c2443_dividers, !291, !"s3c2443_dividers", i1 false, i1 false}
!291 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 250, i32 33}
!292 = !{ptr @armdiv_s3c2443_d, !293, !"armdiv_s3c2443_d", i1 false, i1 false}
!293 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 238, i32 29}
!294 = !{ptr @.str.113, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 256, i32 2}
!296 = !{ptr @.str.114, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 257, i32 2}
!298 = !{ptr @.str.115, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 261, i32 2}
!300 = !{ptr @s3c2443_gates, !301, !"s3c2443_gates", i1 false, i1 false}
!301 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 255, i32 34}
!302 = !{ptr @.str.116, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 267, i32 2}
!304 = !{ptr @.str.117, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 268, i32 2}
!306 = !{ptr @s3c2443_aliases, !307, !"s3c2443_aliases", i1 false, i1 false}
!307 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 264, i32 35}
!308 = !{ptr @s3c2443_clk_regs, !309, !"s3c2443_clk_regs", i1 false, i1 false}
!309 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 48, i32 22}
!310 = !{ptr @s3c2443_restart_handler, !311, !"s3c2443_restart_handler", i1 false, i1 false}
!311 = !{!"../drivers/clk/samsung/clk-s3c2443.c", i32 318, i32 30}
!312 = !{i32 1, !"wchar_size", i32 2}
!313 = !{i32 1, !"min_enum_size", i32 4}
!314 = !{i32 8, !"branch-target-enforcement", i32 0}
!315 = !{i32 8, !"sign-return-address", i32 0}
!316 = !{i32 8, !"sign-return-address-all", i32 0}
!317 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!318 = !{i32 7, !"uwtable", i32 1}
!319 = !{i32 7, !"frame-pointer", i32 2}
!320 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!321 = !{i64 4041381}
