; ModuleID = '/llk/IR_all_yes/drivers/clk/samsung/clk-s3c2412.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-s3c2412.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.samsung_pll_clock = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.samsung_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8 }
%struct.samsung_div_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.samsung_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8 }
%struct.samsung_fixed_factor_clock = type { i32, ptr, ptr, i32, i32, i32 }
%struct.samsung_clock_alias = type { i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.clk_div_table = type { i32, i32 }

@reg_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: failed to map registers\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.s3c2412_common_clk_init = private unnamed_addr constant [24 x i8] c"s3c2412_common_clk_init\00", align 1
@s3c2412_plls = internal global [2 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 2, ptr @.str.6, ptr @.str.4, i32 64, i32 4, i32 0, i32 17, ptr null }, %struct.samsung_pll_clock { i32 3, ptr @.str.7, ptr @.str.8, i32 64, i32 8, i32 0, i32 16, ptr null }], section ".init.data", align 4
@s3c2412_muxes = internal global [10 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 0, ptr @.str.9, ptr @erefclk_p, i8 4, i32 128, i32 28, i8 14, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.8, ptr @urefclk_p, i8 4, i32 128, i32 28, i8 12, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.10, ptr @camclk_p, i8 2, i32 128, i32 28, i8 11, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.11, ptr @usbclk_p, i8 2, i32 128, i32 28, i8 10, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.12, ptr @i2sclk_p, i8 2, i32 128, i32 28, i8 9, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.13, ptr @uartclk_p, i8 2, i32 128, i32 28, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 6, ptr @.str.14, ptr @usysclk_p, i8 2, i32 128, i32 28, i8 5, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 5, ptr @.str.15, ptr @msysclk_p, i8 2, i32 128, i32 28, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 4, ptr @.str.16, ptr @mdivclk_p, i8 2, i32 128, i32 28, i8 3, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 10, ptr @.str.17, ptr @armclk_p, i8 2, i32 128, i32 20, i8 4, i8 1, i8 0 }], section ".init.data", align 4
@s3c2412_dividers = internal global [9 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 0, ptr @.str.19, ptr @.str.4, i32 0, i32 28, i8 0, i8 3, i8 0, ptr @divxti_d }, %struct.samsung_div_clock { i32 0, ptr @.str.21, ptr @.str.10, i32 0, i32 20, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.22, ptr @.str.12, i32 0, i32 20, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.23, ptr @.str.13, i32 0, i32 20, i8 8, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.24, ptr @.str.11, i32 0, i32 20, i8 6, i8 1, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.25, ptr @.str.18, i32 0, i32 20, i8 5, i8 1, i8 0, ptr null }, %struct.samsung_div_clock { i32 9, ptr @.str.20, ptr @.str.15, i32 0, i32 20, i8 3, i8 1, i8 0, ptr null }, %struct.samsung_div_clock { i32 8, ptr @.str.26, ptr @.str.18, i32 0, i32 20, i8 2, i8 1, i8 0, ptr null }, %struct.samsung_div_clock { i32 7, ptr @.str.18, ptr @.str.20, i32 0, i32 20, i8 0, i8 2, i8 0, ptr null }], section ".init.data", align 4
@s3c2412_gates = internal global [28 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 32, ptr @.str.27, ptr @.str.26, i32 0, i32 12, i8 28, i8 0 }, %struct.samsung_gate_clock { i32 33, ptr @.str.28, ptr @.str.26, i32 0, i32 12, i8 27, i8 0 }, %struct.samsung_gate_clock { i32 34, ptr @.str.29, ptr @.str.26, i32 0, i32 12, i8 26, i8 0 }, %struct.samsung_gate_clock { i32 35, ptr @.str.30, ptr @.str.26, i32 0, i32 12, i8 25, i8 0 }, %struct.samsung_gate_clock { i32 36, ptr @.str.31, ptr @.str.26, i32 0, i32 12, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 37, ptr @.str.32, ptr @.str.26, i32 0, i32 12, i8 23, i8 0 }, %struct.samsung_gate_clock { i32 38, ptr @.str.33, ptr @.str.26, i32 8, i32 12, i8 22, i8 0 }, %struct.samsung_gate_clock { i32 39, ptr @.str.34, ptr @.str.26, i32 0, i32 12, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 40, ptr @.str.35, ptr @.str.26, i32 0, i32 12, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 41, ptr @.str.36, ptr @.str.26, i32 0, i32 12, i8 19, i8 0 }, %struct.samsung_gate_clock { i32 42, ptr @.str.37, ptr @.str.26, i32 0, i32 12, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 43, ptr @.str.38, ptr @.str.26, i32 0, i32 12, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 44, ptr @.str.39, ptr @.str.26, i32 0, i32 12, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 16, ptr @.str.40, ptr @.str.21, i32 0, i32 12, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 17, ptr @.str.41, ptr @.str.23, i32 0, i32 12, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 18, ptr @.str.42, ptr @.str.22, i32 0, i32 12, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 20, ptr @.str.43, ptr @.str.24, i32 0, i32 12, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 19, ptr @.str.44, ptr @.str.24, i32 0, i32 12, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 48, ptr @.str.45, ptr @.str.25, i32 8, i32 12, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 49, ptr @.str.46, ptr @.str.47, i32 8, i32 12, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 50, ptr @.str.48, ptr @.str.18, i32 8, i32 12, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 51, ptr @.str.49, ptr @.str.18, i32 0, i32 12, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 52, ptr @.str.50, ptr @.str.18, i32 0, i32 12, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 53, ptr @.str.51, ptr @.str.18, i32 0, i32 12, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 54, ptr @.str.52, ptr @.str.18, i32 8, i32 12, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 55, ptr @.str.53, ptr @.str.18, i32 8, i32 12, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 56, ptr @.str.54, ptr @.str.18, i32 8, i32 12, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 57, ptr @.str.55, ptr @.str.18, i32 8, i32 12, i8 0, i8 0 }], section ".init.data", align 4
@s3c2412_ffactor = internal global [1 x %struct.samsung_fixed_factor_clock] [%struct.samsung_fixed_factor_clock { i32 0, ptr @.str.47, ptr @.str.18, i32 2, i32 1, i32 4 }], section ".init.data", align 4
@s3c2412_aliases = internal global [20 x %struct.samsung_clock_alias] [%struct.samsung_clock_alias { i32 41, ptr @.str.56, ptr @.str.57 }, %struct.samsung_clock_alias { i32 40, ptr @.str.58, ptr @.str.57 }, %struct.samsung_clock_alias { i32 39, ptr @.str.59, ptr @.str.57 }, %struct.samsung_clock_alias { i32 41, ptr @.str.56, ptr @.str.60 }, %struct.samsung_clock_alias { i32 40, ptr @.str.58, ptr @.str.60 }, %struct.samsung_clock_alias { i32 39, ptr @.str.59, ptr @.str.60 }, %struct.samsung_clock_alias { i32 17, ptr null, ptr @.str.61 }, %struct.samsung_clock_alias { i32 35, ptr @.str.62, ptr @.str.30 }, %struct.samsung_clock_alias { i32 36, ptr null, ptr @.str.31 }, %struct.samsung_clock_alias { i32 37, ptr null, ptr @.str.32 }, %struct.samsung_clock_alias { i32 43, ptr null, ptr @.str.63 }, %struct.samsung_clock_alias { i32 52, ptr null, ptr @.str.50 }, %struct.samsung_clock_alias { i32 44, ptr null, ptr @.str.39 }, %struct.samsung_clock_alias { i32 19, ptr null, ptr @.str.64 }, %struct.samsung_clock_alias { i32 51, ptr null, ptr @.str.49 }, %struct.samsung_clock_alias { i32 20, ptr null, ptr @.str.65 }, %struct.samsung_clock_alias { i32 10, ptr null, ptr @.str.17 }, %struct.samsung_clock_alias { i32 7, ptr null, ptr @.str.18 }, %struct.samsung_clock_alias { i32 2, ptr null, ptr @.str.6 }, %struct.samsung_clock_alias { i32 5, ptr null, ptr @.str.66 }], section ".init.data", align 4
@s3c2412_clk_regs = internal global [6 x i32] [i32 0, i32 4, i32 8, i32 12, i32 20, i32 28], section ".init.data", align 4
@s3c2412_restart_handler = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @s3c2412_restart, ptr null, i32 129 }, [20 x i8] zeroinitializer }, align 32
@s3c2412_common_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.s3c2412_common_clk_init, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014cannot register restart handler, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/samsung/clk-s3c2412.c\00", [62 x i8] zeroinitializer }, align 32
@s3c2412_common_clk_init._entry_ptr = internal global ptr @s3c2412_common_clk_init._entry, section ".printk_index", align 4
@__of_table_s3c2412_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2412-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2412_clk_init }, section "__clk_of_table", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xtal\00", [27 x i8] zeroinitializer }, align 32
@__const.s3c2412_common_clk_register_fixed_ext.xti_alias = private unnamed_addr constant %struct.samsung_clock_alias { i32 1, ptr null, ptr @.str.3 }, align 4
@s3c2412_common_frate_clks = internal global [2 x %struct.samsung_fixed_rate_clock] [%struct.samsung_fixed_rate_clock { i32 1, ptr @.str.4, ptr null, i32 0, i32 0 }, %struct.samsung_fixed_rate_clock { i32 0, ptr @.str.5, ptr null, i32 0, i32 0 }], section ".init.data", align 4
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xti\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ext\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpll\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"upll\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"urefclk\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"erefclk\00", [24 x i8] zeroinitializer }, align 32
@erefclk_p = internal constant [4 x ptr] [ptr @.str.4, ptr @.str.4, ptr @.str.4, ptr @.str.5], section ".init.rodata", align 4
@urefclk_p = internal constant [4 x ptr] [ptr @.str.4, ptr @.str.4, ptr @.str.4, ptr @.str.5], section ".init.rodata", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mux_cam\00", [24 x i8] zeroinitializer }, align 32
@camclk_p = internal constant [2 x ptr] [ptr @.str.14, ptr @.str.18], section ".init.rodata", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mux_usb\00", [24 x i8] zeroinitializer }, align 32
@usbclk_p = internal constant [2 x ptr] [ptr @.str.14, ptr @.str.18], section ".init.rodata", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mux_i2s\00", [24 x i8] zeroinitializer }, align 32
@i2sclk_p = internal constant [2 x ptr] [ptr @.str.9, ptr @.str.6], section ".init.rodata", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mux_uart\00", [23 x i8] zeroinitializer }, align 32
@uartclk_p = internal constant [2 x ptr] [ptr @.str.9, ptr @.str.6], section ".init.rodata", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usysclk\00", [24 x i8] zeroinitializer }, align 32
@usysclk_p = internal constant [2 x ptr] [ptr @.str.8, ptr @.str.7], section ".init.rodata", align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msysclk\00", [24 x i8] zeroinitializer }, align 32
@msysclk_p = internal constant [2 x ptr] [ptr @.str.16, ptr @.str.6], section ".init.rodata", align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mdivclk\00", [24 x i8] zeroinitializer }, align 32
@mdivclk_p = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.19], section ".init.rodata", align 4
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armclk\00", [25 x i8] zeroinitializer }, align 32
@armclk_p = internal constant [2 x ptr] [ptr @.str.20, ptr @.str.18], section ".init.rodata", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div_xti\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armdiv\00", [25 x i8] zeroinitializer }, align 32
@divxti_d = internal global { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 6 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 10 }, %struct.clk_div_table { i32 6, i32 12 }, %struct.clk_div_table { i32 7, i32 14 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div_cam\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div_i2s\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_uart\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div_usb\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"div_hclk_half\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wdt\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2s\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sdi\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb-device\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sclk_cam\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_uart\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sclk_i2s\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_usbh\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_usbd\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_half\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hclkx2\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ff_hclk\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdram\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb-host\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma3\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma2\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma1\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma0\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c2412-uart.0\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c2412-uart.1\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c2412-uart.2\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_uart_baud2\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_uart_baud3\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s3c2410-i2c.0\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timers\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb-bus-gadget\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb-bus-host\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fclk\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.67 = private unnamed_addr constant [9 x i8] c"reg_base\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 28, i32 22 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 216, i32 10 }
@___asan_gen_.73 = private unnamed_addr constant [24 x i8] c"s3c2412_restart_handler\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 176, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 247, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 196, i32 41 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 187, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 188, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 101, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 102, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 88, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 90, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 91, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 92, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 93, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 94, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 95, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 96, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 97, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 78, i32 32 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 84, i32 29 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 85, i32 21 }
@___asan_gen_.139 = private unnamed_addr constant [9 x i8] c"divxti_d\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 43, i32 29 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 57, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 58, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 59, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 60, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 61, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 63, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 106, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 107, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 108, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 109, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 110, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 111, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 112, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 113, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 114, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 115, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 116, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 117, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 118, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 119, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 120, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 121, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 122, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 123, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 124, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 125, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 126, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 127, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 128, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 129, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 130, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 131, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 132, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 133, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 137, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 138, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 139, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 140, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 143, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 144, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 147, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 150, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 152, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private constant [37 x i8] c"../drivers/clk/samsung/clk-s3c2412.c\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 156, i32 2 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__of_table_s3c2412_clk, ptr @s3c2412_common_clk_init._entry, ptr @s3c2412_common_clk_init._entry_ptr, ptr @reg_base, ptr @.str, ptr @s3c2412_restart_handler, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @divxti_d, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2412_restart_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2412_common_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @divxti_d to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c2412_common_clk_init(ptr noundef %np, i32 noundef %xti_f, i32 noundef %ext_f, ptr noundef %base) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %base, ptr @reg_base, align 4
  %tobool.not = icmp eq ptr %np, null
  br i1 %tobool.not, label %if.then6, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @of_iomap(ptr noundef nonnull %np, i32 noundef 0) #6
  store ptr %call, ptr @reg_base, align 4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s3c2412_common_clk_init) #9
  unreachable

if.end3:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @reg_base, align 4
  %call4 = tail call ptr @samsung_clk_init(ptr noundef nonnull %np, ptr noundef %0, i32 noundef 58) #6
  br label %if.end7

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load ptr, ptr @reg_base, align 4
  %call425 = tail call ptr @samsung_clk_init(ptr noundef null, ptr noundef %1, i32 noundef 58) #6
  tail call fastcc void @s3c2412_common_clk_register_fixed_ext(ptr noundef %call425, i32 noundef %xti_f, i32 noundef %ext_f) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3
  %call426 = phi ptr [ %call425, %if.then6 ], [ %call4, %if.end3 ]
  %2 = load ptr, ptr @reg_base, align 4
  tail call void @samsung_clk_register_pll(ptr noundef %call426, ptr noundef nonnull @s3c2412_plls, i32 noundef 2, ptr noundef %2) #6
  tail call void @samsung_clk_register_mux(ptr noundef %call426, ptr noundef nonnull @s3c2412_muxes, i32 noundef 10) #6
  tail call void @samsung_clk_register_div(ptr noundef %call426, ptr noundef nonnull @s3c2412_dividers, i32 noundef 9) #6
  tail call void @samsung_clk_register_gate(ptr noundef %call426, ptr noundef nonnull @s3c2412_gates, i32 noundef 28) #6
  tail call void @samsung_clk_register_fixed_factor(ptr noundef %call426, ptr noundef nonnull @s3c2412_ffactor, i32 noundef 1) #6
  tail call void @samsung_clk_register_alias(ptr noundef %call426, ptr noundef nonnull @s3c2412_aliases, i32 noundef 20) #6
  %3 = load ptr, ptr @reg_base, align 4
  tail call void @samsung_clk_extended_sleep_init(ptr noundef %3, ptr noundef nonnull @s3c2412_clk_regs, i32 noundef 6, ptr noundef null, i32 noundef 0) #6
  tail call void @samsung_clk_of_add_provider(ptr noundef %np, ptr noundef %call426) #6
  %call8 = tail call i32 @register_restart_handler(ptr noundef nonnull @s3c2412_restart_handler) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %do.end

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call8) #11
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.end7.if.end12_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @samsung_clk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c2412_common_clk_register_fixed_ext(ptr noundef %ctx, i32 noundef %xti_f, i32 noundef %ext_f) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %xti_alias = alloca %struct.samsung_clock_alias, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %xti_alias) #6
  %0 = call ptr @memcpy(ptr %xti_alias, ptr @__const.s3c2412_common_clk_register_fixed_ext.xti_alias, i32 12)
  store i32 %xti_f, ptr getelementptr inbounds ([2 x %struct.samsung_fixed_rate_clock], ptr @s3c2412_common_frate_clks, i32 0, i32 0, i32 4), align 4
  store i32 %ext_f, ptr getelementptr inbounds ([2 x %struct.samsung_fixed_rate_clock], ptr @s3c2412_common_frate_clks, i32 0, i32 1, i32 4), align 4
  tail call void @samsung_clk_register_fixed_rate(ptr noundef %ctx, ptr noundef nonnull @s3c2412_common_frate_clks, i32 noundef 2) #6
  call void @samsung_clk_register_alias(ptr noundef %ctx, ptr noundef nonnull %xti_alias, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %xti_alias) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_pll(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_mux(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_div(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_gate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_fixed_factor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_alias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_extended_sleep_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_of_add_provider(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c2412_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c2412_common_clk_init(ptr noundef %np, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_fixed_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2412_restart(ptr nocapture noundef readnone %this, i32 noundef %mode, ptr nocapture noundef readnone %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @reg_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !187
  %1 = load ptr, ptr @reg_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 1396450322) #6, !srcloc !187
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 216, i32 10}
!2 = !{ptr @__func__.s3c2412_common_clk_init, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 216, i32 43}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 247, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @s3c2412_common_clk_init._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @s3c2412_common_clk_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__of_table_s3c2412_clk, !10, !"__of_table_s3c2412_clk", i1 false, i1 false}
!10 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 254, i32 1}
!11 = !{ptr @reg_base, !12, !"reg_base", i1 false, i1 false}
!12 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 28, i32 22}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 196, i32 41}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 187, i32 2}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 188, i32 2}
!19 = !{ptr @s3c2412_common_frate_clks, !20, !"s3c2412_common_frate_clks", i1 false, i1 false}
!20 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 186, i32 40}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 101, i32 2}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 102, i32 2}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @s3c2412_plls, !27, !"s3c2412_plls", i1 false, i1 false}
!27 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 100, i32 33}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 88, i32 2}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 90, i32 2}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 91, i32 2}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 92, i32 2}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 93, i32 2}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 94, i32 2}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 95, i32 2}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 96, i32 2}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 97, i32 2}
!46 = !{ptr @s3c2412_muxes, !47, !"s3c2412_muxes", i1 false, i1 false}
!47 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 87, i32 33}
!48 = !{ptr @erefclk_p, !49, !"erefclk_p", i1 false, i1 false}
!49 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 75, i32 1}
!50 = !{ptr @urefclk_p, !51, !"urefclk_p", i1 false, i1 false}
!51 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 76, i32 1}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 78, i32 32}
!54 = !{ptr @camclk_p, !55, !"camclk_p", i1 false, i1 false}
!55 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 78, i32 1}
!56 = !{ptr @usbclk_p, !57, !"usbclk_p", i1 false, i1 false}
!57 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 79, i32 1}
!58 = !{ptr @i2sclk_p, !59, !"i2sclk_p", i1 false, i1 false}
!59 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 80, i32 1}
!60 = !{ptr @uartclk_p, !61, !"uartclk_p", i1 false, i1 false}
!61 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 81, i32 1}
!62 = !{ptr @usysclk_p, !63, !"usysclk_p", i1 false, i1 false}
!63 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 82, i32 1}
!64 = !{ptr @msysclk_p, !65, !"msysclk_p", i1 false, i1 false}
!65 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 83, i32 1}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 84, i32 29}
!68 = !{ptr @mdivclk_p, !69, !"mdivclk_p", i1 false, i1 false}
!69 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 84, i32 1}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 85, i32 21}
!72 = !{ptr @armclk_p, !73, !"armclk_p", i1 false, i1 false}
!73 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 85, i32 1}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 57, i32 2}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 58, i32 2}
!78 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 59, i32 2}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 60, i32 2}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 61, i32 2}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 63, i32 2}
!86 = !{ptr @s3c2412_dividers, !87, !"s3c2412_dividers", i1 false, i1 false}
!87 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 55, i32 33}
!88 = !{ptr @divxti_d, !89, !"divxti_d", i1 false, i1 false}
!89 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 43, i32 29}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 106, i32 2}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 107, i32 2}
!94 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 108, i32 2}
!96 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 109, i32 2}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 110, i32 2}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 111, i32 2}
!102 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 112, i32 2}
!104 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 113, i32 2}
!106 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 114, i32 2}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 115, i32 2}
!110 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 116, i32 2}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 117, i32 2}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 118, i32 2}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 119, i32 2}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 120, i32 2}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 121, i32 2}
!122 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 122, i32 2}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 123, i32 2}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 124, i32 2}
!128 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 125, i32 2}
!130 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 126, i32 2}
!133 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 127, i32 2}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 128, i32 2}
!137 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 129, i32 2}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 130, i32 2}
!141 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 131, i32 2}
!143 = !{ptr @.str.54, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 132, i32 2}
!145 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 133, i32 2}
!147 = !{ptr @s3c2412_gates, !148, !"s3c2412_gates", i1 false, i1 false}
!148 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 105, i32 34}
!149 = !{ptr @s3c2412_ffactor, !150, !"s3c2412_ffactor", i1 false, i1 false}
!150 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 67, i32 42}
!151 = !{ptr @.str.56, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 137, i32 2}
!153 = !{ptr @.str.57, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.58, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 138, i32 2}
!156 = !{ptr @.str.59, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 139, i32 2}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 140, i32 2}
!160 = !{ptr @.str.61, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 143, i32 2}
!162 = !{ptr @.str.62, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 144, i32 2}
!164 = !{ptr @.str.63, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 147, i32 2}
!166 = !{ptr @.str.64, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 150, i32 2}
!168 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 152, i32 2}
!170 = !{ptr @.str.66, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 156, i32 2}
!172 = !{ptr @s3c2412_aliases, !173, !"s3c2412_aliases", i1 false, i1 false}
!173 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 136, i32 35}
!174 = !{ptr @s3c2412_clk_regs, !175, !"s3c2412_clk_regs", i1 false, i1 false}
!175 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 34, i32 22}
!176 = !{ptr @s3c2412_restart_handler, !177, !"s3c2412_restart_handler", i1 false, i1 false}
!177 = !{!"../drivers/clk/samsung/clk-s3c2412.c", i32 176, i32 30}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{i64 4034914}
