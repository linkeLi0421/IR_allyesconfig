; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/bcm/pinctrl-bcm6362.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-bcm6362.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.bcm63xx_pinctrl_soc = type { ptr, ptr, ptr, i32, i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.bcm6362_pingroup = type { ptr, ptr, i32 }
%struct.bcm6362_function = type { ptr, ptr, i32, i32, i32 }
%struct.bcm63xx_pinctrl = type { ptr, ptr, %struct.pinctrl_desc, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }

@__initcall__kmod_pinctrl_bcm6362__223_617_bcm6362_pinctrl_driver_init6 = internal global ptr @bcm6362_pinctrl_driver_init, section ".initcall6.init", align 4
@bcm6362_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm6362_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm6362_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm6362-pinctrl\00", [16 x i8] zeroinitializer }, align 32
@bcm6362_pinctrl_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6362-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm6362_soc = internal constant { %struct.bcm63xx_pinctrl_soc, [44 x i8] } { %struct.bcm63xx_pinctrl_soc { ptr @bcm6362_pctl_ops, ptr @bcm6362_pmx_ops, ptr @bcm6362_pins, i32 48, i32 48 }, [44 x i8] zeroinitializer }, align 32
@bcm6362_pctl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @bcm6362_pinctrl_get_group_count, ptr @bcm6362_pinctrl_get_group_name, ptr @bcm6362_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@bcm6362_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @bcm6362_pinctrl_get_func_count, ptr @bcm6362_pinctrl_get_func_name, ptr @bcm6362_pinctrl_get_groups, ptr @bcm6362_pinctrl_set_mux, ptr @bcm6362_gpio_request_enable, ptr null, ptr null, i8 1 }, [56 x i8] zeroinitializer }, align 32
@bcm6362_pins = internal constant { [48 x %struct.pinctrl_pin_desc], [128 x i8] } { [48 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.1, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.2, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.3, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.4, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.5, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.6, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.7, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.8, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.9, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.10, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.11, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.12, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.13, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.14, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.15, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.16, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.17, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.18, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.19, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.20, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.21, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.22, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.23, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.24, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.28, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.48, ptr null }], [128 x i8] zeroinitializer }, align 32
@bcm6362_groups = internal constant { [49 x %struct.bcm6362_pingroup], [148 x i8] } { [49 x %struct.bcm6362_pingroup] [%struct.bcm6362_pingroup { ptr @.str.1, ptr @gpio0_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.2, ptr @gpio1_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.3, ptr @gpio2_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.4, ptr @gpio3_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.5, ptr @gpio4_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.6, ptr @gpio5_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.7, ptr @gpio6_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.8, ptr @gpio7_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.9, ptr @gpio8_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.10, ptr @gpio9_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.11, ptr @gpio10_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.12, ptr @gpio11_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.13, ptr @gpio12_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.14, ptr @gpio13_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.15, ptr @gpio14_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.16, ptr @gpio15_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.17, ptr @gpio16_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.18, ptr @gpio17_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.19, ptr @gpio18_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.20, ptr @gpio19_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.21, ptr @gpio20_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.22, ptr @gpio21_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.23, ptr @gpio22_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.24, ptr @gpio23_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.25, ptr @gpio24_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.26, ptr @gpio25_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.27, ptr @gpio26_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.28, ptr @gpio27_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.29, ptr @gpio28_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.30, ptr @gpio29_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.31, ptr @gpio30_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.32, ptr @gpio31_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.33, ptr @gpio32_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.34, ptr @gpio33_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.35, ptr @gpio34_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.36, ptr @gpio35_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.37, ptr @gpio36_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.38, ptr @gpio37_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.39, ptr @gpio38_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.40, ptr @gpio39_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.41, ptr @gpio40_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.42, ptr @gpio41_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.43, ptr @gpio42_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.44, ptr @gpio43_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.45, ptr @gpio44_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.46, ptr @gpio45_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.47, ptr @gpio46_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.48, ptr @gpio47_pins, i32 1 }, %struct.bcm6362_pingroup { ptr @.str.49, ptr @nand_grp_pins, i32 14 }], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@gpio0_pins = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@gpio1_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@gpio2_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 2], [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@gpio3_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 3], [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@gpio4_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@gpio5_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 5], [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@gpio6_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 6], [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@gpio7_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 7], [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@gpio8_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 8], [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio9\00", [26 x i8] zeroinitializer }, align 32
@gpio9_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 9], [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio10\00", [25 x i8] zeroinitializer }, align 32
@gpio10_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 10], [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio11\00", [25 x i8] zeroinitializer }, align 32
@gpio11_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 11], [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio12\00", [25 x i8] zeroinitializer }, align 32
@gpio12_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 12], [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio13\00", [25 x i8] zeroinitializer }, align 32
@gpio13_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 13], [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio14\00", [25 x i8] zeroinitializer }, align 32
@gpio14_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 14], [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio15\00", [25 x i8] zeroinitializer }, align 32
@gpio15_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 15], [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio16\00", [25 x i8] zeroinitializer }, align 32
@gpio16_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 16], [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio17\00", [25 x i8] zeroinitializer }, align 32
@gpio17_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 17], [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio18\00", [25 x i8] zeroinitializer }, align 32
@gpio18_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 18], [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio19\00", [25 x i8] zeroinitializer }, align 32
@gpio19_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 19], [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio20\00", [25 x i8] zeroinitializer }, align 32
@gpio20_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 20], [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio21\00", [25 x i8] zeroinitializer }, align 32
@gpio21_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 21], [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio22\00", [25 x i8] zeroinitializer }, align 32
@gpio22_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 22], [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio23\00", [25 x i8] zeroinitializer }, align 32
@gpio23_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 23], [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio24\00", [25 x i8] zeroinitializer }, align 32
@gpio24_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 24], [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio25\00", [25 x i8] zeroinitializer }, align 32
@gpio25_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 25], [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio26\00", [25 x i8] zeroinitializer }, align 32
@gpio26_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 26], [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio27\00", [25 x i8] zeroinitializer }, align 32
@gpio27_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 27], [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio28\00", [25 x i8] zeroinitializer }, align 32
@gpio28_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 28], [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio29\00", [25 x i8] zeroinitializer }, align 32
@gpio29_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 29], [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio30\00", [25 x i8] zeroinitializer }, align 32
@gpio30_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 30], [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio31\00", [25 x i8] zeroinitializer }, align 32
@gpio31_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 31], [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio32\00", [25 x i8] zeroinitializer }, align 32
@gpio32_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 32], [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio33\00", [25 x i8] zeroinitializer }, align 32
@gpio33_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 33], [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio34\00", [25 x i8] zeroinitializer }, align 32
@gpio34_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 34], [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio35\00", [25 x i8] zeroinitializer }, align 32
@gpio35_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 35], [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio36\00", [25 x i8] zeroinitializer }, align 32
@gpio36_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 36], [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio37\00", [25 x i8] zeroinitializer }, align 32
@gpio37_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 37], [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio38\00", [25 x i8] zeroinitializer }, align 32
@gpio38_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 38], [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio39\00", [25 x i8] zeroinitializer }, align 32
@gpio39_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 39], [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio40\00", [25 x i8] zeroinitializer }, align 32
@gpio40_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 40], [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio41\00", [25 x i8] zeroinitializer }, align 32
@gpio41_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 41], [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio42\00", [25 x i8] zeroinitializer }, align 32
@gpio42_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 42], [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio43\00", [25 x i8] zeroinitializer }, align 32
@gpio43_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 43], [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio44\00", [25 x i8] zeroinitializer }, align 32
@gpio44_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 44], [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio45\00", [25 x i8] zeroinitializer }, align 32
@gpio45_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 45], [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio46\00", [25 x i8] zeroinitializer }, align 32
@gpio46_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 46], [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio47\00", [25 x i8] zeroinitializer }, align 32
@gpio47_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 47], [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_grp\00", [23 x i8] zeroinitializer }, align 32
@nand_grp_pins = internal global { [14 x i32], [40 x i8] } { [14 x i32] [i32 8, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 27], [40 x i8] zeroinitializer }, align 32
@bcm6362_funcs = internal constant { [31 x %struct.bcm6362_function], [148 x i8] } { [31 x %struct.bcm6362_function] [%struct.bcm6362_function { ptr @.str.50, ptr @led_groups, i32 24, i32 0, i32 0 }, %struct.bcm6362_function { ptr @.str.51, ptr @usb_device_led_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.52, ptr @sys_irq_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.53, ptr @serial_led_clk_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.54, ptr @serial_led_data_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.55, ptr @robosw_led_data_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.56, ptr @robosw_led_clk_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.57, ptr @robosw_led0_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.58, ptr @robosw_led1_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.59, ptr @inet_led_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.60, ptr @spi_cs2_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.61, ptr @spi_cs3_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.62, ptr @ntr_pulse_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.63, ptr @uart1_scts_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.64, ptr @uart1_srts_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.65, ptr @uart1_sdin_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.66, ptr @uart1_sdout_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.67, ptr @adsl_spi_miso_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.68, ptr @adsl_spi_mosi_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.69, ptr @adsl_spi_clk_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.70, ptr @adsl_spi_cs_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.71, ptr @ephy0_led_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.72, ptr @ephy1_led_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.73, ptr @ephy2_led_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.74, ptr @ephy3_led_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.75, ptr @ext_irq0_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.76, ptr @ext_irq1_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.77, ptr @ext_irq2_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.78, ptr @ext_irq3_groups, i32 1, i32 1, i32 0 }, %struct.bcm6362_function { ptr @.str.79, ptr @wifi_groups, i32 16, i32 2, i32 0 }, %struct.bcm6362_function { ptr @.str.80, ptr @nand_groups, i32 1, i32 3, i32 4 }], [148 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"led\00", [28 x i8] zeroinitializer }, align 32
@led_groups = internal constant { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb_device_led\00", [17 x i8] zeroinitializer }, align 32
@usb_device_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.1], [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sys_irq\00", [24 x i8] zeroinitializer }, align 32
@sys_irq_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"serial_led_clk\00", [17 x i8] zeroinitializer }, align 32
@serial_led_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.3], [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"serial_led_data\00", [16 x i8] zeroinitializer }, align 32
@serial_led_data_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.4], [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"robosw_led_data\00", [16 x i8] zeroinitializer }, align 32
@robosw_led_data_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.5], [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"robosw_led_clk\00", [17 x i8] zeroinitializer }, align 32
@robosw_led_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"robosw_led0\00", [20 x i8] zeroinitializer }, align 32
@robosw_led0_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.7], [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"robosw_led1\00", [20 x i8] zeroinitializer }, align 32
@robosw_led1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.8], [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inet_led\00", [23 x i8] zeroinitializer }, align 32
@inet_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.9], [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_cs2\00", [24 x i8] zeroinitializer }, align 32
@spi_cs2_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.10], [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_cs3\00", [24 x i8] zeroinitializer }, align 32
@spi_cs3_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.11], [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ntr_pulse\00", [22 x i8] zeroinitializer }, align 32
@ntr_pulse_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart1_scts\00", [21 x i8] zeroinitializer }, align 32
@uart1_scts_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart1_srts\00", [21 x i8] zeroinitializer }, align 32
@uart1_srts_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.14], [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart1_sdin\00", [21 x i8] zeroinitializer }, align 32
@uart1_sdin_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.15], [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uart1_sdout\00", [20 x i8] zeroinitializer }, align 32
@uart1_sdout_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.16], [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adsl_spi_miso\00", [18 x i8] zeroinitializer }, align 32
@adsl_spi_miso_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.17], [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adsl_spi_mosi\00", [18 x i8] zeroinitializer }, align 32
@adsl_spi_mosi_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.18], [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adsl_spi_clk\00", [19 x i8] zeroinitializer }, align 32
@adsl_spi_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.19], [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adsl_spi_cs\00", [20 x i8] zeroinitializer }, align 32
@adsl_spi_cs_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.20], [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ephy0_led\00", [22 x i8] zeroinitializer }, align 32
@ephy0_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ephy1_led\00", [22 x i8] zeroinitializer }, align 32
@ephy1_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.22], [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ephy2_led\00", [22 x i8] zeroinitializer }, align 32
@ephy2_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.23], [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ephy3_led\00", [22 x i8] zeroinitializer }, align 32
@ephy3_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ext_irq0\00", [23 x i8] zeroinitializer }, align 32
@ext_irq0_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.25], [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ext_irq1\00", [23 x i8] zeroinitializer }, align 32
@ext_irq1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ext_irq2\00", [23 x i8] zeroinitializer }, align 32
@ext_irq2_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.27], [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ext_irq3\00", [23 x i8] zeroinitializer }, align 32
@ext_irq3_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wifi\00", [27 x i8] zeroinitializer }, align 32
@wifi_groups = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@nand_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.49], [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pinctrl/bcm/pinctrl-bcm6362.c\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.82 = private unnamed_addr constant [23 x i8] c"bcm6362_pinctrl_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 609, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 612, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"bcm6362_pinctrl_match\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 604, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"bcm6362_soc\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 591, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"bcm6362_pctl_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 574, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"bcm6362_pmx_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 582, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"bcm6362_pins\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 60, i32 38 }
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"bcm6362_groups\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 172, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 173, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [11 x i8] c"gpio0_pins\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 111, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 174, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"gpio1_pins\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 112, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 175, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [11 x i8] c"gpio2_pins\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 113, i32 17 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 176, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [11 x i8] c"gpio3_pins\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 114, i32 17 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 177, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [11 x i8] c"gpio4_pins\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 115, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 178, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [11 x i8] c"gpio5_pins\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 116, i32 17 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 179, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [11 x i8] c"gpio6_pins\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 117, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 180, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [11 x i8] c"gpio7_pins\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 118, i32 17 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 181, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [11 x i8] c"gpio8_pins\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 119, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 182, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [11 x i8] c"gpio9_pins\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 120, i32 17 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 183, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [12 x i8] c"gpio10_pins\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 121, i32 17 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 184, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [12 x i8] c"gpio11_pins\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 122, i32 17 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 185, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [12 x i8] c"gpio12_pins\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 123, i32 17 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 186, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [12 x i8] c"gpio13_pins\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 124, i32 17 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 187, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [12 x i8] c"gpio14_pins\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 125, i32 17 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 188, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [12 x i8] c"gpio15_pins\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 126, i32 17 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 189, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [12 x i8] c"gpio16_pins\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 127, i32 17 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 190, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [12 x i8] c"gpio17_pins\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 128, i32 17 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 191, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [12 x i8] c"gpio18_pins\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 129, i32 17 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 192, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [12 x i8] c"gpio19_pins\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 130, i32 17 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 193, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [12 x i8] c"gpio20_pins\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 131, i32 17 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 194, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [12 x i8] c"gpio21_pins\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 132, i32 17 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 195, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [12 x i8] c"gpio22_pins\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 133, i32 17 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 196, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [12 x i8] c"gpio23_pins\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 134, i32 17 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 197, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [12 x i8] c"gpio24_pins\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 135, i32 17 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 198, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [12 x i8] c"gpio25_pins\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 136, i32 17 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 199, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [12 x i8] c"gpio26_pins\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 137, i32 17 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 200, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [12 x i8] c"gpio27_pins\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 138, i32 17 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 201, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [12 x i8] c"gpio28_pins\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 139, i32 17 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 202, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [12 x i8] c"gpio29_pins\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 140, i32 17 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 203, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [12 x i8] c"gpio30_pins\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 141, i32 17 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 204, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [12 x i8] c"gpio31_pins\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 142, i32 17 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 205, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [12 x i8] c"gpio32_pins\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 143, i32 17 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 206, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [12 x i8] c"gpio33_pins\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 144, i32 17 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 207, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [12 x i8] c"gpio34_pins\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 145, i32 17 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 208, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [12 x i8] c"gpio35_pins\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 146, i32 17 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 209, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [12 x i8] c"gpio36_pins\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 147, i32 17 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 210, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [12 x i8] c"gpio37_pins\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 148, i32 17 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 211, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [12 x i8] c"gpio38_pins\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 149, i32 17 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 212, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant [12 x i8] c"gpio39_pins\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 150, i32 17 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 213, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [12 x i8] c"gpio40_pins\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 151, i32 17 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 214, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [12 x i8] c"gpio41_pins\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 152, i32 17 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 215, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [12 x i8] c"gpio42_pins\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 153, i32 17 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 216, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [12 x i8] c"gpio43_pins\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 154, i32 17 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 217, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [12 x i8] c"gpio44_pins\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 155, i32 17 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 218, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [12 x i8] c"gpio45_pins\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 156, i32 17 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 219, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant [12 x i8] c"gpio46_pins\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 157, i32 17 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 220, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [12 x i8] c"gpio47_pins\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 158, i32 17 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 221, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant [14 x i8] c"nand_grp_pins\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 160, i32 17 }
@___asan_gen_.400 = private unnamed_addr constant [14 x i8] c"bcm6362_funcs\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 419, i32 38 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 420, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [11 x i8] c"led_groups\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 224, i32 27 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 421, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [22 x i8] c"usb_device_led_groups\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 251, i32 27 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 422, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [15 x i8] c"sys_irq_groups\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 255, i32 27 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 423, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant [22 x i8] c"serial_led_clk_groups\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 259, i32 27 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 424, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [23 x i8] c"serial_led_data_groups\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 263, i32 27 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 425, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant [23 x i8] c"robosw_led_data_groups\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 267, i32 27 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 426, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [22 x i8] c"robosw_led_clk_groups\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 271, i32 27 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 427, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant [19 x i8] c"robosw_led0_groups\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 275, i32 27 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 428, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant [19 x i8] c"robosw_led1_groups\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 279, i32 27 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 429, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant [16 x i8] c"inet_led_groups\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 283, i32 27 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 430, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [15 x i8] c"spi_cs2_groups\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 287, i32 27 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 431, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant [15 x i8] c"spi_cs3_groups\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 291, i32 27 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 432, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [17 x i8] c"ntr_pulse_groups\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 295, i32 27 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 433, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [18 x i8] c"uart1_scts_groups\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 299, i32 27 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 434, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [18 x i8] c"uart1_srts_groups\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 303, i32 27 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 435, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [18 x i8] c"uart1_sdin_groups\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 307, i32 27 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 436, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant [19 x i8] c"uart1_sdout_groups\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 311, i32 27 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 437, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant [21 x i8] c"adsl_spi_miso_groups\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 315, i32 27 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 438, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant [21 x i8] c"adsl_spi_mosi_groups\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 319, i32 27 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 439, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant [20 x i8] c"adsl_spi_clk_groups\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 323, i32 27 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 440, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant [19 x i8] c"adsl_spi_cs_groups\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 327, i32 27 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 441, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant [17 x i8] c"ephy0_led_groups\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 331, i32 27 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 442, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant [17 x i8] c"ephy1_led_groups\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 335, i32 27 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 443, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant [17 x i8] c"ephy2_led_groups\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 339, i32 27 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 444, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant [17 x i8] c"ephy3_led_groups\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 343, i32 27 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 445, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant [16 x i8] c"ext_irq0_groups\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 347, i32 27 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 446, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant [16 x i8] c"ext_irq1_groups\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 351, i32 27 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 447, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant [16 x i8] c"ext_irq2_groups\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 355, i32 27 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 448, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant [16 x i8] c"ext_irq3_groups\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 359, i32 27 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 449, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant [12 x i8] c"wifi_groups\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 363, i32 27 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 450, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant [12 x i8] c"nand_groups\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 382, i32 27 }
@___asan_gen_.589 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.590 = private constant [41 x i8] c"../drivers/pinctrl/bcm/pinctrl-bcm6362.c\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 553, i32 3 }
@llvm.compiler.used = appending global [171 x ptr] [ptr @__initcall__kmod_pinctrl_bcm6362__223_617_bcm6362_pinctrl_driver_init6, ptr @bcm6362_pinctrl_driver, ptr @.str, ptr @bcm6362_pinctrl_match, ptr @bcm6362_soc, ptr @bcm6362_pctl_ops, ptr @bcm6362_pmx_ops, ptr @bcm6362_pins, ptr @bcm6362_groups, ptr @.str.1, ptr @gpio0_pins, ptr @.str.2, ptr @gpio1_pins, ptr @.str.3, ptr @gpio2_pins, ptr @.str.4, ptr @gpio3_pins, ptr @.str.5, ptr @gpio4_pins, ptr @.str.6, ptr @gpio5_pins, ptr @.str.7, ptr @gpio6_pins, ptr @.str.8, ptr @gpio7_pins, ptr @.str.9, ptr @gpio8_pins, ptr @.str.10, ptr @gpio9_pins, ptr @.str.11, ptr @gpio10_pins, ptr @.str.12, ptr @gpio11_pins, ptr @.str.13, ptr @gpio12_pins, ptr @.str.14, ptr @gpio13_pins, ptr @.str.15, ptr @gpio14_pins, ptr @.str.16, ptr @gpio15_pins, ptr @.str.17, ptr @gpio16_pins, ptr @.str.18, ptr @gpio17_pins, ptr @.str.19, ptr @gpio18_pins, ptr @.str.20, ptr @gpio19_pins, ptr @.str.21, ptr @gpio20_pins, ptr @.str.22, ptr @gpio21_pins, ptr @.str.23, ptr @gpio22_pins, ptr @.str.24, ptr @gpio23_pins, ptr @.str.25, ptr @gpio24_pins, ptr @.str.26, ptr @gpio25_pins, ptr @.str.27, ptr @gpio26_pins, ptr @.str.28, ptr @gpio27_pins, ptr @.str.29, ptr @gpio28_pins, ptr @.str.30, ptr @gpio29_pins, ptr @.str.31, ptr @gpio30_pins, ptr @.str.32, ptr @gpio31_pins, ptr @.str.33, ptr @gpio32_pins, ptr @.str.34, ptr @gpio33_pins, ptr @.str.35, ptr @gpio34_pins, ptr @.str.36, ptr @gpio35_pins, ptr @.str.37, ptr @gpio36_pins, ptr @.str.38, ptr @gpio37_pins, ptr @.str.39, ptr @gpio38_pins, ptr @.str.40, ptr @gpio39_pins, ptr @.str.41, ptr @gpio40_pins, ptr @.str.42, ptr @gpio41_pins, ptr @.str.43, ptr @gpio42_pins, ptr @.str.44, ptr @gpio43_pins, ptr @.str.45, ptr @gpio44_pins, ptr @.str.46, ptr @gpio45_pins, ptr @.str.47, ptr @gpio46_pins, ptr @.str.48, ptr @gpio47_pins, ptr @.str.49, ptr @nand_grp_pins, ptr @bcm6362_funcs, ptr @.str.50, ptr @led_groups, ptr @.str.51, ptr @usb_device_led_groups, ptr @.str.52, ptr @sys_irq_groups, ptr @.str.53, ptr @serial_led_clk_groups, ptr @.str.54, ptr @serial_led_data_groups, ptr @.str.55, ptr @robosw_led_data_groups, ptr @.str.56, ptr @robosw_led_clk_groups, ptr @.str.57, ptr @robosw_led0_groups, ptr @.str.58, ptr @robosw_led1_groups, ptr @.str.59, ptr @inet_led_groups, ptr @.str.60, ptr @spi_cs2_groups, ptr @.str.61, ptr @spi_cs3_groups, ptr @.str.62, ptr @ntr_pulse_groups, ptr @.str.63, ptr @uart1_scts_groups, ptr @.str.64, ptr @uart1_srts_groups, ptr @.str.65, ptr @uart1_sdin_groups, ptr @.str.66, ptr @uart1_sdout_groups, ptr @.str.67, ptr @adsl_spi_miso_groups, ptr @.str.68, ptr @adsl_spi_mosi_groups, ptr @.str.69, ptr @adsl_spi_clk_groups, ptr @.str.70, ptr @adsl_spi_cs_groups, ptr @.str.71, ptr @ephy0_led_groups, ptr @.str.72, ptr @ephy1_led_groups, ptr @.str.73, ptr @ephy2_led_groups, ptr @.str.74, ptr @ephy3_led_groups, ptr @.str.75, ptr @ext_irq0_groups, ptr @.str.76, ptr @ext_irq1_groups, ptr @.str.77, ptr @ext_irq2_groups, ptr @.str.78, ptr @ext_irq3_groups, ptr @.str.79, ptr @wifi_groups, ptr @.str.80, ptr @nand_groups, ptr @.str.81], section "llvm.metadata"
@0 = internal global [170 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6362_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6362_pinctrl_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6362_soc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6362_pctl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6362_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6362_pins to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6362_groups to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio4_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio5_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio6_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio7_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio8_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio9_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio10_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio11_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio12_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio13_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio14_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio15_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio16_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio17_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio18_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio19_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio20_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio21_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio22_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio23_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio24_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio25_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio26_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio27_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio28_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio29_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio30_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio31_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio32_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio33_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio34_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio35_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio36_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio37_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio38_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio39_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio40_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio41_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio42_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio43_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio44_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio45_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio46_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio47_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_grp_pins to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6362_funcs to i32), i32 620, i32 768, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_groups to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_device_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_irq_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_led_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_led_data_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @robosw_led_data_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @robosw_led_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @robosw_led0_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @robosw_led1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_cs2_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_cs3_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntr_pulse_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_scts_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_srts_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_sdin_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_sdout_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsl_spi_miso_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsl_spi_mosi_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsl_spi_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsl_spi_cs_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ephy0_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ephy1_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ephy2_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ephy3_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_irq0_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_irq1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_irq2_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_irq3_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wifi_groups to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6362_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm6362_pinctrl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6362_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bcm63xx_pinctrl_probe(ptr noundef %pdev, ptr noundef nonnull @bcm6362_soc, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm63xx_pinctrl_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm6362_pinctrl_get_group_count(ptr nocapture noundef readnone %pctldev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bcm6362_pinctrl_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %group) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [49 x %struct.bcm6362_pingroup], ptr @bcm6362_groups, i32 0, i32 %group
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm6362_pinctrl_get_group_pins(ptr nocapture noundef readnone %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pins1 = getelementptr [49 x %struct.bcm6362_pingroup], ptr @bcm6362_groups, i32 0, i32 %group, i32 1
  %0 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins1, align 4
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pins, align 4
  %num_pins3 = getelementptr [49 x %struct.bcm6362_pingroup], ptr @bcm6362_groups, i32 0, i32 %group, i32 2
  %3 = ptrtoint ptr %num_pins3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_pins3, align 4
  %5 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm6362_pinctrl_get_func_count(ptr nocapture noundef readnone %pctldev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bcm6362_pinctrl_get_func_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [31 x %struct.bcm6362_function], ptr @bcm6362_funcs, i32 0, i32 %selector
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm6362_pinctrl_get_groups(ptr nocapture noundef readnone %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %groups1 = getelementptr [31 x %struct.bcm6362_function], ptr @bcm6362_funcs, i32 0, i32 %selector, i32 1
  %0 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups1, align 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %groups, align 4
  %num_groups3 = getelementptr [31 x %struct.bcm6362_function], ptr @bcm6362_funcs, i32 0, i32 %selector, i32 2
  %3 = ptrtoint ptr %num_groups3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_groups3, align 4
  %5 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6362_pinctrl_set_mux(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #2 align 64 {
for.body.lr.ph:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %num_pins = getelementptr [49 x %struct.bcm6362_pingroup], ptr @bcm6362_groups, i32 0, i32 %group, i32 2
  %0 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pins, align 4
  %pins = getelementptr [49 x %struct.bcm6362_pingroup], ptr @bcm6362_groups, i32 0, i32 %group, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %umax = call i32 @llvm.umax.i32(i32 %1, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx2 = getelementptr i32, ptr %3, i32 %i.056
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  tail call fastcc void @bcm6362_set_gpio(ptr noundef %call, i32 noundef %5)
  %inc = add nuw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %reg3 = getelementptr [31 x %struct.bcm6362_function], ptr @bcm6362_funcs, i32 0, i32 %selector, i32 3
  %6 = ptrtoint ptr %reg3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg3, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb16
    i32 3, label %sw.bb20
  ]

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %pins4 = getelementptr [49 x %struct.bcm6362_pingroup], ptr @bcm6362_groups, i32 0, i32 %group, i32 1
  %9 = ptrtoint ptr %pins4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pins4, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %shl = shl nuw i32 1, %12
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %pins10 = getelementptr [49 x %struct.bcm6362_pingroup], ptr @bcm6362_groups, i32 0, i32 %group, i32 1
  %13 = ptrtoint ptr %pins10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pins10, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %shl12 = shl nuw i32 1, %16
  br label %sw.epilog

sw.bb16:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %pins17 = getelementptr [49 x %struct.bcm6362_pingroup], ptr @bcm6362_groups, i32 0, i32 %group, i32 1
  %17 = ptrtoint ptr %pins17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pins17, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %shl19 = shl nuw i32 1, %20
  br label %sw.epilog

sw.bb20:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %basemode_mask = getelementptr [31 x %struct.bcm6362_function], ptr @bcm6362_funcs, i32 0, i32 %selector, i32 4
  %21 = ptrtoint ptr %basemode_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %basemode_mask, align 4
  br label %sw.epilog

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 553, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb16, %sw.bb9, %sw.bb
  %reg.0 = phi i32 [ 56, %sw.bb20 ], [ 28, %sw.bb16 ], [ 24, %sw.bb9 ], [ 16, %sw.bb ]
  %val.0 = phi i32 [ %22, %sw.bb20 ], [ 0, %sw.bb16 ], [ %shl12, %sw.bb9 ], [ %shl, %sw.bb ]
  %mask.0 = phi i32 [ %22, %sw.bb20 ], [ %shl19, %sw.bb16 ], [ %shl12, %sw.bb9 ], [ %shl, %sw.bb ]
  %regs = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %reg.0, i32 noundef %mask.0, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6362_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  tail call fastcc void @bcm6362_set_gpio(ptr noundef %call, i32 noundef %offset)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm6362_set_gpio(ptr nocapture noundef readonly %pc, i32 noundef %pin) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data = getelementptr [48 x %struct.pinctrl_pin_desc], ptr @bcm6362_pins, i32 0, i32 %pin, i32 2
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 4
  %rem.i = and i32 %pin, 31
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  %regs = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %pc, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 56, i32 noundef %2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %pin)
  %cmp = icmp ult i32 %pin, 32
  %regs3 = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %pc, i32 0, i32 1
  %5 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs3, align 4
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 24, i32 noundef %rem.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %pin)
  %cmp5 = icmp ult i32 %pin, 24
  br i1 %cmp5, label %if.then6, label %if.then2.if.end12_crit_edge

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs3, align 4
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 16, i32 noundef %rem.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 28, i32 noundef %rem.i, i32 noundef %rem.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then6, %if.then2.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 170)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 170)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340}
!llvm.module.flags = !{!342, !343, !344, !345, !346, !347, !348, !349}
!llvm.ident = !{!350}

!0 = !{ptr @__initcall__kmod_pinctrl_bcm6362__223_617_bcm6362_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_bcm6362__223_617_bcm6362_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 617, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 612, i32 11}
!4 = !{ptr @bcm6362_pinctrl_driver, !5, !"bcm6362_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 609, i32 31}
!6 = !{ptr @bcm6362_soc, !7, !"bcm6362_soc", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 591, i32 41}
!8 = !{ptr @bcm6362_pctl_ops, !9, !"bcm6362_pctl_ops", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 574, i32 33}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 173, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 174, i32 2}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 175, i32 2}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 176, i32 2}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 177, i32 2}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 178, i32 2}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 179, i32 2}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 180, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 181, i32 2}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 182, i32 2}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 183, i32 2}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 184, i32 2}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 185, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 186, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 187, i32 2}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 188, i32 2}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 189, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 190, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 191, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 192, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 193, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 194, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 195, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 196, i32 2}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 197, i32 2}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 198, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 199, i32 2}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 200, i32 2}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 201, i32 2}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 202, i32 2}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 203, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 204, i32 2}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 205, i32 2}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 206, i32 2}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 207, i32 2}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 208, i32 2}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 209, i32 2}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 210, i32 2}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 211, i32 2}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 212, i32 2}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 213, i32 2}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 214, i32 2}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 215, i32 2}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 216, i32 2}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 217, i32 2}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 218, i32 2}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 219, i32 2}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 220, i32 2}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 221, i32 2}
!108 = !{ptr @bcm6362_groups, !109, !"bcm6362_groups", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 172, i32 32}
!110 = !{ptr @gpio0_pins, !111, !"gpio0_pins", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 111, i32 17}
!112 = !{ptr @gpio1_pins, !113, !"gpio1_pins", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 112, i32 17}
!114 = !{ptr @gpio2_pins, !115, !"gpio2_pins", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 113, i32 17}
!116 = !{ptr @gpio3_pins, !117, !"gpio3_pins", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 114, i32 17}
!118 = !{ptr @gpio4_pins, !119, !"gpio4_pins", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 115, i32 17}
!120 = !{ptr @gpio5_pins, !121, !"gpio5_pins", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 116, i32 17}
!122 = !{ptr @gpio6_pins, !123, !"gpio6_pins", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 117, i32 17}
!124 = !{ptr @gpio7_pins, !125, !"gpio7_pins", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 118, i32 17}
!126 = !{ptr @gpio8_pins, !127, !"gpio8_pins", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 119, i32 17}
!128 = !{ptr @gpio9_pins, !129, !"gpio9_pins", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 120, i32 17}
!130 = !{ptr @gpio10_pins, !131, !"gpio10_pins", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 121, i32 17}
!132 = !{ptr @gpio11_pins, !133, !"gpio11_pins", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 122, i32 17}
!134 = !{ptr @gpio12_pins, !135, !"gpio12_pins", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 123, i32 17}
!136 = !{ptr @gpio13_pins, !137, !"gpio13_pins", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 124, i32 17}
!138 = !{ptr @gpio14_pins, !139, !"gpio14_pins", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 125, i32 17}
!140 = !{ptr @gpio15_pins, !141, !"gpio15_pins", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 126, i32 17}
!142 = !{ptr @gpio16_pins, !143, !"gpio16_pins", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 127, i32 17}
!144 = !{ptr @gpio17_pins, !145, !"gpio17_pins", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 128, i32 17}
!146 = !{ptr @gpio18_pins, !147, !"gpio18_pins", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 129, i32 17}
!148 = !{ptr @gpio19_pins, !149, !"gpio19_pins", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 130, i32 17}
!150 = !{ptr @gpio20_pins, !151, !"gpio20_pins", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 131, i32 17}
!152 = !{ptr @gpio21_pins, !153, !"gpio21_pins", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 132, i32 17}
!154 = !{ptr @gpio22_pins, !155, !"gpio22_pins", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 133, i32 17}
!156 = !{ptr @gpio23_pins, !157, !"gpio23_pins", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 134, i32 17}
!158 = !{ptr @gpio24_pins, !159, !"gpio24_pins", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 135, i32 17}
!160 = !{ptr @gpio25_pins, !161, !"gpio25_pins", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 136, i32 17}
!162 = !{ptr @gpio26_pins, !163, !"gpio26_pins", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 137, i32 17}
!164 = !{ptr @gpio27_pins, !165, !"gpio27_pins", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 138, i32 17}
!166 = !{ptr @gpio28_pins, !167, !"gpio28_pins", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 139, i32 17}
!168 = !{ptr @gpio29_pins, !169, !"gpio29_pins", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 140, i32 17}
!170 = !{ptr @gpio30_pins, !171, !"gpio30_pins", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 141, i32 17}
!172 = !{ptr @gpio31_pins, !173, !"gpio31_pins", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 142, i32 17}
!174 = !{ptr @gpio32_pins, !175, !"gpio32_pins", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 143, i32 17}
!176 = !{ptr @gpio33_pins, !177, !"gpio33_pins", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 144, i32 17}
!178 = !{ptr @gpio34_pins, !179, !"gpio34_pins", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 145, i32 17}
!180 = !{ptr @gpio35_pins, !181, !"gpio35_pins", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 146, i32 17}
!182 = !{ptr @gpio36_pins, !183, !"gpio36_pins", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 147, i32 17}
!184 = !{ptr @gpio37_pins, !185, !"gpio37_pins", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 148, i32 17}
!186 = !{ptr @gpio38_pins, !187, !"gpio38_pins", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 149, i32 17}
!188 = !{ptr @gpio39_pins, !189, !"gpio39_pins", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 150, i32 17}
!190 = !{ptr @gpio40_pins, !191, !"gpio40_pins", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 151, i32 17}
!192 = !{ptr @gpio41_pins, !193, !"gpio41_pins", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 152, i32 17}
!194 = !{ptr @gpio42_pins, !195, !"gpio42_pins", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 153, i32 17}
!196 = !{ptr @gpio43_pins, !197, !"gpio43_pins", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 154, i32 17}
!198 = !{ptr @gpio44_pins, !199, !"gpio44_pins", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 155, i32 17}
!200 = !{ptr @gpio45_pins, !201, !"gpio45_pins", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 156, i32 17}
!202 = !{ptr @gpio46_pins, !203, !"gpio46_pins", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 157, i32 17}
!204 = !{ptr @gpio47_pins, !205, !"gpio47_pins", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 158, i32 17}
!206 = !{ptr @nand_grp_pins, !207, !"nand_grp_pins", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 160, i32 17}
!208 = !{ptr @bcm6362_pmx_ops, !209, !"bcm6362_pmx_ops", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 582, i32 32}
!210 = !{ptr @.str.50, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 420, i32 2}
!212 = !{ptr @.str.51, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 421, i32 2}
!214 = !{ptr @.str.52, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 422, i32 2}
!216 = !{ptr @.str.53, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 423, i32 2}
!218 = !{ptr @.str.54, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 424, i32 2}
!220 = !{ptr @.str.55, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 425, i32 2}
!222 = !{ptr @.str.56, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 426, i32 2}
!224 = !{ptr @.str.57, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 427, i32 2}
!226 = !{ptr @.str.58, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 428, i32 2}
!228 = !{ptr @.str.59, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 429, i32 2}
!230 = !{ptr @.str.60, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 430, i32 2}
!232 = !{ptr @.str.61, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 431, i32 2}
!234 = !{ptr @.str.62, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 432, i32 2}
!236 = !{ptr @.str.63, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 433, i32 2}
!238 = !{ptr @.str.64, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 434, i32 2}
!240 = !{ptr @.str.65, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 435, i32 2}
!242 = !{ptr @.str.66, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 436, i32 2}
!244 = !{ptr @.str.67, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 437, i32 2}
!246 = !{ptr @.str.68, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 438, i32 2}
!248 = !{ptr @.str.69, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 439, i32 2}
!250 = !{ptr @.str.70, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 440, i32 2}
!252 = !{ptr @.str.71, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 441, i32 2}
!254 = !{ptr @.str.72, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 442, i32 2}
!256 = !{ptr @.str.73, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 443, i32 2}
!258 = !{ptr @.str.74, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 444, i32 2}
!260 = !{ptr @.str.75, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 445, i32 2}
!262 = !{ptr @.str.76, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 446, i32 2}
!264 = !{ptr @.str.77, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 447, i32 2}
!266 = !{ptr @.str.78, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 448, i32 2}
!268 = !{ptr @.str.79, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 449, i32 2}
!270 = !{ptr @.str.80, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 450, i32 2}
!272 = !{ptr @bcm6362_funcs, !273, !"bcm6362_funcs", i1 false, i1 false}
!273 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 419, i32 38}
!274 = !{ptr @led_groups, !275, !"led_groups", i1 false, i1 false}
!275 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 224, i32 27}
!276 = !{ptr @usb_device_led_groups, !277, !"usb_device_led_groups", i1 false, i1 false}
!277 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 251, i32 27}
!278 = !{ptr @sys_irq_groups, !279, !"sys_irq_groups", i1 false, i1 false}
!279 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 255, i32 27}
!280 = !{ptr @serial_led_clk_groups, !281, !"serial_led_clk_groups", i1 false, i1 false}
!281 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 259, i32 27}
!282 = !{ptr @serial_led_data_groups, !283, !"serial_led_data_groups", i1 false, i1 false}
!283 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 263, i32 27}
!284 = !{ptr @robosw_led_data_groups, !285, !"robosw_led_data_groups", i1 false, i1 false}
!285 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 267, i32 27}
!286 = !{ptr @robosw_led_clk_groups, !287, !"robosw_led_clk_groups", i1 false, i1 false}
!287 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 271, i32 27}
!288 = !{ptr @robosw_led0_groups, !289, !"robosw_led0_groups", i1 false, i1 false}
!289 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 275, i32 27}
!290 = !{ptr @robosw_led1_groups, !291, !"robosw_led1_groups", i1 false, i1 false}
!291 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 279, i32 27}
!292 = !{ptr @inet_led_groups, !293, !"inet_led_groups", i1 false, i1 false}
!293 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 283, i32 27}
!294 = !{ptr @spi_cs2_groups, !295, !"spi_cs2_groups", i1 false, i1 false}
!295 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 287, i32 27}
!296 = !{ptr @spi_cs3_groups, !297, !"spi_cs3_groups", i1 false, i1 false}
!297 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 291, i32 27}
!298 = !{ptr @ntr_pulse_groups, !299, !"ntr_pulse_groups", i1 false, i1 false}
!299 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 295, i32 27}
!300 = !{ptr @uart1_scts_groups, !301, !"uart1_scts_groups", i1 false, i1 false}
!301 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 299, i32 27}
!302 = !{ptr @uart1_srts_groups, !303, !"uart1_srts_groups", i1 false, i1 false}
!303 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 303, i32 27}
!304 = !{ptr @uart1_sdin_groups, !305, !"uart1_sdin_groups", i1 false, i1 false}
!305 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 307, i32 27}
!306 = !{ptr @uart1_sdout_groups, !307, !"uart1_sdout_groups", i1 false, i1 false}
!307 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 311, i32 27}
!308 = !{ptr @adsl_spi_miso_groups, !309, !"adsl_spi_miso_groups", i1 false, i1 false}
!309 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 315, i32 27}
!310 = !{ptr @adsl_spi_mosi_groups, !311, !"adsl_spi_mosi_groups", i1 false, i1 false}
!311 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 319, i32 27}
!312 = !{ptr @adsl_spi_clk_groups, !313, !"adsl_spi_clk_groups", i1 false, i1 false}
!313 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 323, i32 27}
!314 = !{ptr @adsl_spi_cs_groups, !315, !"adsl_spi_cs_groups", i1 false, i1 false}
!315 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 327, i32 27}
!316 = !{ptr @ephy0_led_groups, !317, !"ephy0_led_groups", i1 false, i1 false}
!317 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 331, i32 27}
!318 = !{ptr @ephy1_led_groups, !319, !"ephy1_led_groups", i1 false, i1 false}
!319 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 335, i32 27}
!320 = !{ptr @ephy2_led_groups, !321, !"ephy2_led_groups", i1 false, i1 false}
!321 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 339, i32 27}
!322 = !{ptr @ephy3_led_groups, !323, !"ephy3_led_groups", i1 false, i1 false}
!323 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 343, i32 27}
!324 = !{ptr @ext_irq0_groups, !325, !"ext_irq0_groups", i1 false, i1 false}
!325 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 347, i32 27}
!326 = !{ptr @ext_irq1_groups, !327, !"ext_irq1_groups", i1 false, i1 false}
!327 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 351, i32 27}
!328 = !{ptr @ext_irq2_groups, !329, !"ext_irq2_groups", i1 false, i1 false}
!329 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 355, i32 27}
!330 = !{ptr @ext_irq3_groups, !331, !"ext_irq3_groups", i1 false, i1 false}
!331 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 359, i32 27}
!332 = !{ptr @wifi_groups, !333, !"wifi_groups", i1 false, i1 false}
!333 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 363, i32 27}
!334 = !{ptr @nand_groups, !335, !"nand_groups", i1 false, i1 false}
!335 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 382, i32 27}
!336 = !{ptr @.str.81, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 553, i32 3}
!338 = !{ptr @bcm6362_pins, !339, !"bcm6362_pins", i1 false, i1 false}
!339 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 60, i32 38}
!340 = !{ptr @bcm6362_pinctrl_match, !341, !"bcm6362_pinctrl_match", i1 false, i1 false}
!341 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6362.c", i32 604, i32 34}
!342 = !{i32 1, !"wchar_size", i32 2}
!343 = !{i32 1, !"min_enum_size", i32 4}
!344 = !{i32 8, !"branch-target-enforcement", i32 0}
!345 = !{i32 8, !"sign-return-address", i32 0}
!346 = !{i32 8, !"sign-return-address-all", i32 0}
!347 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!348 = !{i32 7, !"uwtable", i32 1}
!349 = !{i32 7, !"frame-pointer", i32 2}
!350 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
