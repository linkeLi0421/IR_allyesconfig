; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c_pt.bc'
source_filename = "../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c"
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

@__initcall__kmod_pinctrl_sun50i_a100_r__210_105_a100_r_pinctrl_driver_init6 = internal global ptr @a100_r_pinctrl_driver_init, section ".initcall6.init", align 4
@a100_r_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @a100_r_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @a100_r_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_a100_r_pinctrl_driver_exit = internal global ptr @a100_r_pinctrl_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sun50iw10p1-r-pinctrl\00", [42 x i8] zeroinitializer }, align 32
@a100_r_pinctrl_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a100-r-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@a100_r_pinctrl_data = internal constant { %struct.sunxi_pinctrl_desc, [36 x i8] } { %struct.sunxi_pinctrl_desc { ptr @a100_r_pins, i32 12, i32 352, i32 1, ptr null, i8 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@a100_r_pins = internal constant { [12 x %struct.sunxi_desc_pin], [48 x i8] } { [12 x %struct.sunxi_desc_pin] [%struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 352, ptr @.str.1, ptr null }, i32 0, ptr @.compoundliteral }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 353, ptr @.str.6, ptr null }, i32 0, ptr @.compoundliteral.7 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 354, ptr @.str.8, ptr null }, i32 0, ptr @.compoundliteral.10 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 355, ptr @.str.11, ptr null }, i32 0, ptr @.compoundliteral.12 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 356, ptr @.str.13, ptr null }, i32 0, ptr @.compoundliteral.15 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 357, ptr @.str.16, ptr null }, i32 0, ptr @.compoundliteral.17 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 358, ptr @.str.18, ptr null }, i32 0, ptr @.compoundliteral.19 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 359, ptr @.str.20, ptr null }, i32 0, ptr @.compoundliteral.21 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 360, ptr @.str.22, ptr null }, i32 0, ptr @.compoundliteral.24 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 361, ptr @.str.25, ptr null }, i32 0, ptr @.compoundliteral.26 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 362, ptr @.str.27, ptr null }, i32 0, ptr @.compoundliteral.29 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 363, ptr @.str.30, ptr null }, i32 0, ptr @.compoundliteral.32 }], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL0\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_in\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_out\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s_i2c0\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL1\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 1 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL2\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s_uart0\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.9, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 2 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL3\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.9, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 3 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL4\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s_jtag\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.14, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 4 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL5\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.14, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 5 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL6\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.14, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 6 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL7\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.14, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 7 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL8\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s_i2c1\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.23, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 8 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PL9\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.23, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 9 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PL10\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"s_pwm\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.28, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 10 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PL11\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"s_cir\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { [5 x %struct.sunxi_desc_function], [36 x i8] } { [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.2, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.31, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 6, i8 0, i8 11 }, %struct.sunxi_desc_function zeroinitializer], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"a100_r_pinctrl_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 98, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 101, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"a100_r_pinctrl_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 92, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"a100_r_pinctrl_data\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 80, i32 40 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"a100_r_pins\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 17, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 18, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 23, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 28, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 33, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 38, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 43, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 48, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 53, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 58, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 63, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 68, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [49 x i8] c"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 73, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @__exitcall_a100_r_pinctrl_driver_exit, ptr @__initcall__kmod_pinctrl_sun50i_a100_r__210_105_a100_r_pinctrl_driver_init6, ptr @a100_r_pinctrl_driver_exit, ptr @a100_r_pinctrl_driver, ptr @.str, ptr @a100_r_pinctrl_match, ptr @a100_r_pinctrl_data, ptr @a100_r_pins, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.compoundliteral, ptr @.str.6, ptr @.compoundliteral.7, ptr @.str.8, ptr @.str.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.str.31, ptr @.compoundliteral.32], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a100_r_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a100_r_pinctrl_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a100_r_pinctrl_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a100_r_pins to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @a100_r_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @a100_r_pinctrl_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @a100_r_pinctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @a100_r_pinctrl_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a100_r_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sunxi_pinctrl_init_with_variant(ptr noundef %pdev, ptr noundef nonnull @a100_r_pinctrl_data, i32 noundef 0) #3
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !31, !33, !34, !36, !38, !39, !41, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_pinctrl_sun50i_a100_r__210_105_a100_r_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_sun50i_a100_r__210_105_a100_r_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 105, i32 1}
!2 = !{ptr @__exitcall_a100_r_pinctrl_driver_exit, !1, !"__exitcall_a100_r_pinctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 101, i32 12}
!5 = !{ptr @a100_r_pinctrl_driver, !6, !"a100_r_pinctrl_driver", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 98, i32 31}
!7 = !{ptr @a100_r_pinctrl_data, !8, !"a100_r_pinctrl_data", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 80, i32 40}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 18, i32 2}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 23, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 28, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 33, i32 2}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 38, i32 2}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 43, i32 2}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 48, i32 2}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 53, i32 2}
!31 = !{ptr @.str.22, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 58, i32 2}
!33 = !{ptr @.str.23, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 63, i32 2}
!36 = !{ptr @.str.27, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 68, i32 2}
!38 = !{ptr @.str.28, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.30, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 73, i32 2}
!41 = !{ptr @.str.31, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @a100_r_pins, !43, !"a100_r_pins", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 17, i32 36}
!44 = !{ptr @a100_r_pinctrl_match, !45, !"a100_r_pinctrl_match", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c", i32 92, i32 34}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
