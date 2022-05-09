; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c_pt.bc'
source_filename = "../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_pinctrl_desc = type { ptr, i32, i32, i32, ptr, i8, i8, i32 }
%struct.sunxi_desc_pin = type { %struct.pinctrl_pin_desc, i32, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.sunxi_desc_function = type { i32, ptr, i8, i8, i8 }

@__initcall__kmod_pinctrl_sun9i_a80_r__210_178_sun9i_a80_r_pinctrl_driver_init6 = internal global ptr @sun9i_a80_r_pinctrl_driver_init, section ".initcall6.init", align 4
@sun9i_a80_r_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun9i_a80_r_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun9i_a80_r_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun9i-a80-r-pinctrl\00", [44 x i8] zeroinitializer }, align 32
@sun9i_a80_r_pinctrl_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-r-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sun9i_a80_r_pinctrl_data = internal constant { %struct.sunxi_pinctrl_desc, [36 x i8] } { %struct.sunxi_pinctrl_desc { ptr @sun9i_a80_r_pins, i32 25, i32 352, i32 2, ptr null, i8 0, i8 1, i32 1 }, [36 x i8] zeroinitializer }, align 32
@sun9i_a80_r_pins = internal constant { [25 x %struct.sunxi_desc_pin], [108 x i8] } { [25 x %struct.sunxi_desc_pin] [%struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 352, ptr @.str.1, ptr null }, i32 0, ptr @.compoundliteral }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 353, ptr @.str.6, ptr null }, i32 0, ptr @.compoundliteral.7 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 354, ptr @.str.8, ptr null }, i32 0, ptr @.compoundliteral.10 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 355, ptr @.str.11, ptr null }, i32 0, ptr @.compoundliteral.12 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 356, ptr @.str.13, ptr null }, i32 0, ptr @.compoundliteral.14 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 357, ptr @.str.15, ptr null }, i32 0, ptr @.compoundliteral.16 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 358, ptr @.str.17, ptr null }, i32 0, ptr @.compoundliteral.19 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 359, ptr @.str.20, ptr null }, i32 0, ptr @.compoundliteral.22 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 360, ptr @.str.23, ptr null }, i32 0, ptr @.compoundliteral.25 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 361, ptr @.str.26, ptr null }, i32 0, ptr @.compoundliteral.27 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 384, ptr @.str.28, ptr null }, i32 0, ptr @.compoundliteral.29 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 385, ptr @.str.30, ptr null }, i32 0, ptr @.compoundliteral.31 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 386, ptr @.str.32, ptr null }, i32 0, ptr @.compoundliteral.33 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 387, ptr @.str.34, ptr null }, i32 0, ptr @.compoundliteral.35 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 388, ptr @.str.36, ptr null }, i32 0, ptr @.compoundliteral.38 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 392, ptr @.str.39, ptr null }, i32 0, ptr @.compoundliteral.41 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 393, ptr @.str.42, ptr null }, i32 0, ptr @.compoundliteral.43 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 394, ptr @.str.44, ptr null }, i32 0, ptr @.compoundliteral.46 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 395, ptr @.str.47, ptr null }, i32 0, ptr @.compoundliteral.48 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 396, ptr @.str.49, ptr null }, i32 0, ptr @.compoundliteral.50 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 397, ptr @.str.51, ptr null }, i32 0, ptr @.compoundliteral.52 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 398, ptr @.str.53, ptr null }, i32 0, ptr @.compoundliteral.54 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 399, ptr @.str.55, ptr null }, i32 0, ptr @.compoundliteral.56 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 416, ptr @.str.57, ptr null }, i32 0, ptr @.compoundliteral.60 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 417, ptr @.str.61, ptr null }, i32 0, ptr @.compoundliteral.62 }], [108 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL0\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_in\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_out\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s_uart\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL1\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 1 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL2\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s_jtag\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.9, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 2 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL3\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.9, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 3 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL4\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.9, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 4 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL5\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.9, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 5 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL6\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"s_cir_rx\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.18, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 6 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL7\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1wire\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.21, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 7 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL8\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"s_ps2\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.24, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 8 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL9\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.24, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 9 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PM0\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [4 x %struct.sunxi_desc_function], [48 x i8] } { [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 1, i8 0 }, %struct.sunxi_desc_function zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PM1\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { [4 x %struct.sunxi_desc_function], [48 x i8] } { [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 1, i8 1 }, %struct.sunxi_desc_function zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PM2\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [4 x %struct.sunxi_desc_function], [48 x i8] } { [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 1, i8 2 }, %struct.sunxi_desc_function zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PM3\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { [4 x %struct.sunxi_desc_function], [48 x i8] } { [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 1, i8 3 }, %struct.sunxi_desc_function zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PM4\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s_i2s1\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.37, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 1, i8 4 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PM8\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s_i2c1\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.40, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 1, i8 8 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PM9\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.40, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 1, i8 9 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PM10\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s_i2s0\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.45, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.37, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PM11\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.45, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.37, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PM12\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.45, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.37, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PM13\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.45, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.37, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PM14\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.45, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.37, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PM15\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { [4 x %struct.sunxi_desc_function], [48 x i8] } { [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 1, i8 15 }, %struct.sunxi_desc_function zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PN0\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s_i2c0\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"s_rsb\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.58, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.59, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PN1\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.58, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.59, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.63 = private unnamed_addr constant [27 x i8] c"sun9i_a80_r_pinctrl_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 170, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 173, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [26 x i8] c"sun9i_a80_r_pinctrl_match\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 165, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [25 x i8] c"sun9i_a80_r_pinctrl_data\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 150, i32 40 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"sun9i_a80_r_pins\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 21, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 22, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 27, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 32, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 37, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 42, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 47, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 52, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 57, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 62, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 67, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 74, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 78, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 82, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 86, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 90, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 97, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 102, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 107, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 112, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 117, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 122, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 127, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 132, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 138, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [47 x i8] c"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 143, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@llvm.compiler.used = appending global [69 x ptr] [ptr @__initcall__kmod_pinctrl_sun9i_a80_r__210_178_sun9i_a80_r_pinctrl_driver_init6, ptr @sun9i_a80_r_pinctrl_driver, ptr @.str, ptr @sun9i_a80_r_pinctrl_match, ptr @sun9i_a80_r_pinctrl_data, ptr @sun9i_a80_r_pins, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.compoundliteral, ptr @.str.6, ptr @.compoundliteral.7, ptr @.str.8, ptr @.str.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.compoundliteral.62], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_r_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_r_pinctrl_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_r_pinctrl_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_r_pins to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun9i_a80_r_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun9i_a80_r_pinctrl_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun9i_a80_r_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sunxi_pinctrl_init_with_variant(ptr noundef %pdev, ptr noundef nonnull @sun9i_a80_r_pinctrl_data, i32 noundef 0) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_pinctrl_init_with_variant(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !19, !21, !23, !25, !27, !28, !30, !31, !33, !34, !36, !38, !40, !42, !44, !46, !47, !49, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !68, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_pinctrl_sun9i_a80_r__210_178_sun9i_a80_r_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_sun9i_a80_r__210_178_sun9i_a80_r_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 178, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 173, i32 12}
!4 = !{ptr @sun9i_a80_r_pinctrl_driver, !5, !"sun9i_a80_r_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 170, i32 31}
!6 = !{ptr @sun9i_a80_r_pinctrl_data, !7, !"sun9i_a80_r_pinctrl_data", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 150, i32 40}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 22, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 27, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 32, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 37, i32 2}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 42, i32 2}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 47, i32 2}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 52, i32 2}
!27 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.20, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 57, i32 2}
!30 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.23, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 62, i32 2}
!33 = !{ptr @.str.24, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.26, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 67, i32 2}
!36 = !{ptr @.str.28, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 74, i32 2}
!38 = !{ptr @.str.30, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 78, i32 2}
!40 = !{ptr @.str.32, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 82, i32 2}
!42 = !{ptr @.str.34, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 86, i32 2}
!44 = !{ptr @.str.36, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 90, i32 2}
!46 = !{ptr @.str.37, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.39, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 97, i32 2}
!49 = !{ptr @.str.40, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.42, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 102, i32 2}
!52 = !{ptr @.str.44, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 107, i32 2}
!54 = !{ptr @.str.45, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.47, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 112, i32 2}
!57 = !{ptr @.str.49, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 117, i32 2}
!59 = !{ptr @.str.51, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 122, i32 2}
!61 = !{ptr @.str.53, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 127, i32 2}
!63 = !{ptr @.str.55, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 132, i32 2}
!65 = !{ptr @.str.57, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 138, i32 2}
!67 = !{ptr @.str.58, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.59, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.61, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 143, i32 2}
!71 = !{ptr @sun9i_a80_r_pins, !72, !"sun9i_a80_r_pins", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 21, i32 36}
!73 = !{ptr @sun9i_a80_r_pinctrl_match, !74, !"sun9i_a80_r_pinctrl_match", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c", i32 165, i32 34}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
