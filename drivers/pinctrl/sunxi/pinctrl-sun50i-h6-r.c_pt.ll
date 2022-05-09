; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c_pt.bc'
source_filename = "../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c"
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

@__initcall__kmod_pinctrl_sun50i_h6_r__210_130_sun50i_h6_r_pinctrl_driver_init6 = internal global ptr @sun50i_h6_r_pinctrl_driver_init, section ".initcall6.init", align 4
@sun50i_h6_r_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun50i_h6_r_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun50i_h6_r_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun50i-h6-r-pinctrl\00", [44 x i8] zeroinitializer }, align 32
@sun50i_h6_r_pinctrl_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-r-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sun50i_h6_r_pinctrl_data = internal constant { %struct.sunxi_pinctrl_desc, [36 x i8] } { %struct.sunxi_pinctrl_desc { ptr @sun50i_h6_r_pins, i32 16, i32 352, i32 2, ptr null, i8 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sun50i_h6_r_pins = internal constant { [16 x %struct.sunxi_desc_pin], [64 x i8] } { [16 x %struct.sunxi_desc_pin] [%struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 352, ptr @.str.1, ptr null }, i32 0, ptr @.compoundliteral }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 353, ptr @.str.7, ptr null }, i32 0, ptr @.compoundliteral.8 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 354, ptr @.str.9, ptr null }, i32 0, ptr @.compoundliteral.11 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 355, ptr @.str.12, ptr null }, i32 0, ptr @.compoundliteral.13 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 356, ptr @.str.14, ptr null }, i32 0, ptr @.compoundliteral.16 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 357, ptr @.str.17, ptr null }, i32 0, ptr @.compoundliteral.18 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 358, ptr @.str.19, ptr null }, i32 0, ptr @.compoundliteral.20 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 359, ptr @.str.21, ptr null }, i32 0, ptr @.compoundliteral.22 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 360, ptr @.str.23, ptr null }, i32 0, ptr @.compoundliteral.25 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 361, ptr @.str.26, ptr null }, i32 0, ptr @.compoundliteral.28 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 362, ptr @.str.29, ptr null }, i32 0, ptr @.compoundliteral.31 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 384, ptr @.str.32, ptr null }, i32 0, ptr @.compoundliteral.33 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 385, ptr @.str.34, ptr null }, i32 0, ptr @.compoundliteral.35 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 386, ptr @.str.36, ptr null }, i32 0, ptr @.compoundliteral.38 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 387, ptr @.str.39, ptr null }, i32 0, ptr @.compoundliteral.40 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 388, ptr @.str.41, ptr null }, i32 0, ptr @.compoundliteral.42 }], [64 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL0\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_in\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_out\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"s_rsb\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"s_i2c\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [6 x %struct.sunxi_desc_function], [56 x i8] } { [6 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL1\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { [6 x %struct.sunxi_desc_function], [56 x i8] } { [6 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 1 }, %struct.sunxi_desc_function zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL2\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s_uart\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.10, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 2 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL3\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.10, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 3 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL4\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s_jtag\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.15, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 4 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL5\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.15, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 5 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL6\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.15, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 6 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL7\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.15, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 7 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL8\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"s_pwm\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.24, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 8 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL9\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"s_cir_rx\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.27, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 9 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PL10\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"s_w1\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.30, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 0, i8 10 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PM0\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [4 x %struct.sunxi_desc_function], [48 x i8] } { [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 1, i8 0 }, %struct.sunxi_desc_function zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PM1\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { [4 x %struct.sunxi_desc_function], [48 x i8] } { [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 1, i8 1 }, %struct.sunxi_desc_function zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PM2\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1wire\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 1, i8 2 }, %struct.sunxi_desc_function { i32 0, ptr @.str.37, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PM3\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { [4 x %struct.sunxi_desc_function], [48 x i8] } { [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 1, i8 3 }, %struct.sunxi_desc_function zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PM4\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { [4 x %struct.sunxi_desc_function], [48 x i8] } { [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 6, i8 1, i8 4 }, %struct.sunxi_desc_function zeroinitializer], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.43 = private unnamed_addr constant [27 x i8] c"sun50i_h6_r_pinctrl_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 123, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 126, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant [26 x i8] c"sun50i_h6_r_pinctrl_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 118, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [25 x i8] c"sun50i_h6_r_pinctrl_data\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 105, i32 40 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"sun50i_h6_r_pins\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 23, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 24, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 30, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 36, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 41, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 46, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 51, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 56, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 61, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 66, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 71, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 76, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 82, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 86, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 90, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 95, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [47 x i8] c"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 99, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__initcall__kmod_pinctrl_sun50i_h6_r__210_130_sun50i_h6_r_pinctrl_driver_init6, ptr @sun50i_h6_r_pinctrl_driver, ptr @.str, ptr @sun50i_h6_r_pinctrl_match, ptr @sun50i_h6_r_pinctrl_data, ptr @sun50i_h6_r_pins, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.compoundliteral, ptr @.str.7, ptr @.compoundliteral.8, ptr @.str.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_r_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_r_pinctrl_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_r_pinctrl_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_r_pins to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_h6_r_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun50i_h6_r_pinctrl_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_h6_r_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sunxi_pinctrl_init_with_variant(ptr noundef %pdev, ptr noundef nonnull @sun50i_h6_r_pinctrl_data, i32 noundef 0) #3
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !31, !33, !34, !36, !37, !39, !40, !42, !44, !46, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_pinctrl_sun50i_h6_r__210_130_sun50i_h6_r_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_sun50i_h6_r__210_130_sun50i_h6_r_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 130, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 126, i32 12}
!4 = !{ptr @sun50i_h6_r_pinctrl_driver, !5, !"sun50i_h6_r_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 123, i32 31}
!6 = !{ptr @sun50i_h6_r_pinctrl_data, !7, !"sun50i_h6_r_pinctrl_data", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 105, i32 40}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 24, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 30, i32 2}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 36, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 41, i32 2}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 46, i32 2}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 51, i32 2}
!27 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 56, i32 2}
!29 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 61, i32 2}
!31 = !{ptr @.str.23, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 66, i32 2}
!33 = !{ptr @.str.24, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.26, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 71, i32 2}
!36 = !{ptr @.str.27, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.29, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 76, i32 2}
!39 = !{ptr @.str.30, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.32, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 82, i32 2}
!42 = !{ptr @.str.34, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 86, i32 2}
!44 = !{ptr @.str.36, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 90, i32 2}
!46 = !{ptr @.str.37, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.39, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 95, i32 2}
!49 = !{ptr @.str.41, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 99, i32 2}
!51 = !{ptr @sun50i_h6_r_pins, !52, !"sun50i_h6_r_pins", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 23, i32 36}
!53 = !{ptr @sun50i_h6_r_pinctrl_match, !54, !"sun50i_h6_r_pinctrl_match", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-h6-r.c", i32 118, i32 34}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
