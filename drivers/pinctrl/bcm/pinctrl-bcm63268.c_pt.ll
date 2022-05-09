; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/bcm/pinctrl-bcm63268.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-bcm63268.c"
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
%struct.bcm63268_pingroup = type { ptr, ptr, i32 }
%struct.bcm63268_function = type { ptr, ptr, i32, i32, i32 }
%struct.bcm63xx_pinctrl = type { ptr, ptr, %struct.pinctrl_desc, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }

@__initcall__kmod_pinctrl_bcm63268__223_643_bcm63268_pinctrl_driver_init6 = internal global ptr @bcm63268_pinctrl_driver_init, section ".initcall6.init", align 4
@bcm63268_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm63268_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm63268_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm63268-pinctrl\00", [47 x i8] zeroinitializer }, align 32
@bcm63268_pinctrl_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm63268-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm63268_soc = internal constant { %struct.bcm63xx_pinctrl_soc, [44 x i8] } { %struct.bcm63xx_pinctrl_soc { ptr @bcm63268_pctl_ops, ptr @bcm63268_pmx_ops, ptr @bcm63268_pins, i32 52, i32 52 }, [44 x i8] zeroinitializer }, align 32
@bcm63268_pctl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @bcm63268_pinctrl_get_group_count, ptr @bcm63268_pinctrl_get_group_name, ptr @bcm63268_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@bcm63268_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @bcm63268_pinctrl_get_func_count, ptr @bcm63268_pinctrl_get_func_name, ptr @bcm63268_pinctrl_get_groups, ptr @bcm63268_pinctrl_set_mux, ptr @bcm63268_gpio_request_enable, ptr null, ptr null, i8 1 }, [56 x i8] zeroinitializer }, align 32
@bcm63268_pins = internal constant { [52 x %struct.pinctrl_pin_desc], [144 x i8] } { [52 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.1, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.2, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.3, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.4, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.5, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.6, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.7, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.8, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.9, ptr inttoptr (i32 32 to ptr) }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.10, ptr inttoptr (i32 32 to ptr) }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.11, ptr inttoptr (i32 64 to ptr) }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.12, ptr inttoptr (i32 64 to ptr) }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.13, ptr inttoptr (i32 128 to ptr) }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.14, ptr inttoptr (i32 128 to ptr) }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.25, ptr inttoptr (i32 260 to ptr) }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.26, ptr inttoptr (i32 260 to ptr) }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.27, ptr inttoptr (i32 516 to ptr) }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.28, ptr inttoptr (i32 516 to ptr) }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.29, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.30, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.31, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.32, ptr inttoptr (i32 4 to ptr) }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.48, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.49, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.50, ptr null }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.51, ptr null }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.52, ptr null }], [144 x i8] zeroinitializer }, align 32
@bcm63268_groups = internal constant { [58 x %struct.bcm63268_pingroup], [168 x i8] } { [58 x %struct.bcm63268_pingroup] [%struct.bcm63268_pingroup { ptr @.str.1, ptr @gpio0_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.2, ptr @gpio1_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.3, ptr @gpio2_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.4, ptr @gpio3_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.5, ptr @gpio4_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.6, ptr @gpio5_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.7, ptr @gpio6_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.8, ptr @gpio7_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.9, ptr @gpio8_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.10, ptr @gpio9_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.11, ptr @gpio10_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.12, ptr @gpio11_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.13, ptr @gpio12_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.14, ptr @gpio13_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.15, ptr @gpio14_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.16, ptr @gpio15_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.17, ptr @gpio16_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.18, ptr @gpio17_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.19, ptr @gpio18_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.20, ptr @gpio19_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.21, ptr @gpio20_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.22, ptr @gpio21_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.23, ptr @gpio22_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.24, ptr @gpio23_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.25, ptr @gpio24_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.26, ptr @gpio25_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.27, ptr @gpio26_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.28, ptr @gpio27_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.29, ptr @gpio28_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.30, ptr @gpio29_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.31, ptr @gpio30_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.32, ptr @gpio31_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.33, ptr @gpio32_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.34, ptr @gpio33_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.35, ptr @gpio34_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.36, ptr @gpio35_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.37, ptr @gpio36_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.38, ptr @gpio37_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.39, ptr @gpio38_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.40, ptr @gpio39_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.41, ptr @gpio40_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.42, ptr @gpio41_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.43, ptr @gpio42_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.44, ptr @gpio43_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.45, ptr @gpio44_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.46, ptr @gpio45_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.47, ptr @gpio46_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.48, ptr @gpio47_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.49, ptr @gpio48_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.50, ptr @gpio49_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.51, ptr @gpio50_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.52, ptr @gpio51_pins, i32 1 }, %struct.bcm63268_pingroup { ptr @.str.53, ptr @nand_grp_pins, i32 14 }, %struct.bcm63268_pingroup { ptr @.str.54, ptr @dectpd_grp_pins, i32 2 }, %struct.bcm63268_pingroup { ptr @.str.55, ptr @vdsl_phy0_grp_pins, i32 2 }, %struct.bcm63268_pingroup { ptr @.str.56, ptr @vdsl_phy1_grp_pins, i32 2 }, %struct.bcm63268_pingroup { ptr @.str.57, ptr @vdsl_phy2_grp_pins, i32 2 }, %struct.bcm63268_pingroup { ptr @.str.58, ptr @vdsl_phy3_grp_pins, i32 2 }], [168 x i8] zeroinitializer }, align 32
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
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio48\00", [25 x i8] zeroinitializer }, align 32
@gpio48_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 48], [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio49\00", [25 x i8] zeroinitializer }, align 32
@gpio49_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 49], [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio50\00", [25 x i8] zeroinitializer }, align 32
@gpio50_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 50], [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio51\00", [25 x i8] zeroinitializer }, align 32
@gpio51_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 51], [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_grp\00", [23 x i8] zeroinitializer }, align 32
@nand_grp_pins = internal global { [14 x i32], [40 x i8] } { [14 x i32] [i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31], [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dectpd_grp\00", [21 x i8] zeroinitializer }, align 32
@dectpd_grp_pins = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 8, i32 9], [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdsl_phy0_grp\00", [18 x i8] zeroinitializer }, align 32
@vdsl_phy0_grp_pins = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 10, i32 11], [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdsl_phy1_grp\00", [18 x i8] zeroinitializer }, align 32
@vdsl_phy1_grp_pins = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 12, i32 13], [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdsl_phy2_grp\00", [18 x i8] zeroinitializer }, align 32
@vdsl_phy2_grp_pins = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 24, i32 25], [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdsl_phy3_grp\00", [18 x i8] zeroinitializer }, align 32
@vdsl_phy3_grp_pins = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 26, i32 27], [24 x i8] zeroinitializer }, align 32
@bcm63268_funcs = internal constant { [26 x %struct.bcm63268_function], [152 x i8] } { [26 x %struct.bcm63268_function] [%struct.bcm63268_function { ptr @.str.59, ptr @led_groups, i32 24, i32 0, i32 0 }, %struct.bcm63268_function { ptr @.str.60, ptr @serial_led_clk_groups, i32 1, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.61, ptr @serial_led_data_groups, i32 1, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.62, ptr @hsspi_cs6_groups, i32 1, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.63, ptr @hsspi_cs7_groups, i32 1, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.64, ptr @uart1_scts_groups, i32 2, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.65, ptr @uart1_srts_groups, i32 2, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.66, ptr @uart1_sdin_groups, i32 2, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.67, ptr @uart1_sdout_groups, i32 2, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.68, ptr @ntr_pulse_in_groups, i32 2, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.69, ptr @dsl_ntr_pulse_out_groups, i32 2, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.70, ptr @hsspi_cs4_groups, i32 1, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.71, ptr @hsspi_cs5_groups, i32 1, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.72, ptr @adsl_spi_miso_groups, i32 1, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.73, ptr @adsl_spi_mosi_groups, i32 1, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.74, ptr @vreg_clk_groups, i32 1, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.75, ptr @pcie_clkreq_b_groups, i32 1, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.76, ptr @switch_led_clk_groups, i32 1, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.77, ptr @switch_led_data_groups, i32 1, i32 1, i32 0 }, %struct.bcm63268_function { ptr @.str.78, ptr @wifi_groups, i32 20, i32 2, i32 0 }, %struct.bcm63268_function { ptr @.str.79, ptr @nand_groups, i32 1, i32 3, i32 4 }, %struct.bcm63268_function { ptr @.str.80, ptr @dectpd_groups, i32 1, i32 3, i32 32 }, %struct.bcm63268_function { ptr @.str.81, ptr @vdsl_phy_override_0_groups, i32 1, i32 3, i32 64 }, %struct.bcm63268_function { ptr @.str.82, ptr @vdsl_phy_override_1_groups, i32 1, i32 3, i32 128 }, %struct.bcm63268_function { ptr @.str.83, ptr @vdsl_phy_override_2_groups, i32 1, i32 3, i32 256 }, %struct.bcm63268_function { ptr @.str.84, ptr @vdsl_phy_override_3_groups, i32 1, i32 3, i32 512 }], [152 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"led\00", [28 x i8] zeroinitializer }, align 32
@led_groups = internal constant { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"serial_led_clk\00", [17 x i8] zeroinitializer }, align 32
@serial_led_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.1], [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"serial_led_data\00", [16 x i8] zeroinitializer }, align 32
@serial_led_data_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hsspi_cs6\00", [22 x i8] zeroinitializer }, align 32
@hsspi_cs6_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.9], [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hsspi_cs7\00", [22 x i8] zeroinitializer }, align 32
@hsspi_cs7_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.10], [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart1_scts\00", [21 x i8] zeroinitializer }, align 32
@uart1_scts_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.11, ptr @.str.25], [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart1_srts\00", [21 x i8] zeroinitializer }, align 32
@uart1_srts_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.12, ptr @.str.26], [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart1_sdin\00", [21 x i8] zeroinitializer }, align 32
@uart1_sdin_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.13, ptr @.str.27], [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uart1_sdout\00", [20 x i8] zeroinitializer }, align 32
@uart1_sdout_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.14, ptr @.str.28], [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ntr_pulse_in\00", [19 x i8] zeroinitializer }, align 32
@ntr_pulse_in_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.15, ptr @.str.29], [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dsl_ntr_pulse_out\00", [46 x i8] zeroinitializer }, align 32
@dsl_ntr_pulse_out_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.16, ptr @.str.30], [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hsspi_cs4\00", [22 x i8] zeroinitializer }, align 32
@hsspi_cs4_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.17], [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hsspi_cs5\00", [22 x i8] zeroinitializer }, align 32
@hsspi_cs5_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.18], [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adsl_spi_miso\00", [18 x i8] zeroinitializer }, align 32
@adsl_spi_miso_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.19], [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adsl_spi_mosi\00", [18 x i8] zeroinitializer }, align 32
@adsl_spi_mosi_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.20], [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vreg_clk\00", [23 x i8] zeroinitializer }, align 32
@vreg_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.23], [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcie_clkreq_b\00", [18 x i8] zeroinitializer }, align 32
@pcie_clkreq_b_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"switch_led_clk\00", [17 x i8] zeroinitializer }, align 32
@switch_led_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.31], [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"switch_led_data\00", [16 x i8] zeroinitializer }, align 32
@switch_led_data_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.32], [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wifi\00", [27 x i8] zeroinitializer }, align 32
@wifi_groups = internal constant { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@nand_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.53], [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dectpd\00", [25 x i8] zeroinitializer }, align 32
@dectpd_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.54], [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdsl_phy_override_0\00", [44 x i8] zeroinitializer }, align 32
@vdsl_phy_override_0_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.85], [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdsl_phy_override_1\00", [44 x i8] zeroinitializer }, align 32
@vdsl_phy_override_1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.86], [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdsl_phy_override_2\00", [44 x i8] zeroinitializer }, align 32
@vdsl_phy_override_2_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.87], [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdsl_phy_override_3\00", [44 x i8] zeroinitializer }, align 32
@vdsl_phy_override_3_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.88], [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vdsl_phy_override_0_grp\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vdsl_phy_override_1_grp\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vdsl_phy_override_2_grp\00", [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vdsl_phy_override_3_grp\00", [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/pinctrl/bcm/pinctrl-bcm63268.c\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.90 = private unnamed_addr constant [24 x i8] c"bcm63268_pinctrl_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 635, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 638, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant [23 x i8] c"bcm63268_pinctrl_match\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 630, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"bcm63268_soc\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 617, i32 41 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"bcm63268_pctl_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 600, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"bcm63268_pmx_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 608, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant [14 x i8] c"bcm63268_pins\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 65, i32 38 }
@___asan_gen_.111 = private unnamed_addr constant [16 x i8] c"bcm63268_groups\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 195, i32 33 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 196, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [11 x i8] c"gpio0_pins\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 124, i32 17 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 197, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [11 x i8] c"gpio1_pins\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 125, i32 17 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 198, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [11 x i8] c"gpio2_pins\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 126, i32 17 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 199, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [11 x i8] c"gpio3_pins\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 127, i32 17 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 200, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [11 x i8] c"gpio4_pins\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 128, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 201, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [11 x i8] c"gpio5_pins\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 129, i32 17 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 202, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [11 x i8] c"gpio6_pins\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 130, i32 17 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 203, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [11 x i8] c"gpio7_pins\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 131, i32 17 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 204, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [11 x i8] c"gpio8_pins\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 132, i32 17 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 205, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [11 x i8] c"gpio9_pins\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 133, i32 17 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 206, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [12 x i8] c"gpio10_pins\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 134, i32 17 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 207, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [12 x i8] c"gpio11_pins\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 135, i32 17 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 208, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"gpio12_pins\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 136, i32 17 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 209, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [12 x i8] c"gpio13_pins\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 137, i32 17 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 210, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [12 x i8] c"gpio14_pins\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 138, i32 17 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 211, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [12 x i8] c"gpio15_pins\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 139, i32 17 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 212, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [12 x i8] c"gpio16_pins\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 140, i32 17 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 213, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [12 x i8] c"gpio17_pins\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 141, i32 17 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 214, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [12 x i8] c"gpio18_pins\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 142, i32 17 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 215, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [12 x i8] c"gpio19_pins\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 143, i32 17 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 216, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [12 x i8] c"gpio20_pins\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 144, i32 17 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 217, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [12 x i8] c"gpio21_pins\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 145, i32 17 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 218, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [12 x i8] c"gpio22_pins\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 146, i32 17 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 219, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [12 x i8] c"gpio23_pins\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 147, i32 17 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 220, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [12 x i8] c"gpio24_pins\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 148, i32 17 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 221, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [12 x i8] c"gpio25_pins\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 149, i32 17 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 222, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [12 x i8] c"gpio26_pins\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 150, i32 17 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 223, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [12 x i8] c"gpio27_pins\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 151, i32 17 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 224, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [12 x i8] c"gpio28_pins\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 152, i32 17 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 225, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant [12 x i8] c"gpio29_pins\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 153, i32 17 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 226, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [12 x i8] c"gpio30_pins\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 154, i32 17 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 227, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [12 x i8] c"gpio31_pins\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 155, i32 17 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 228, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant [12 x i8] c"gpio32_pins\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 156, i32 17 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 229, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [12 x i8] c"gpio33_pins\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 157, i32 17 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 230, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [12 x i8] c"gpio34_pins\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 158, i32 17 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 231, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [12 x i8] c"gpio35_pins\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 159, i32 17 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 232, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [12 x i8] c"gpio36_pins\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 160, i32 17 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 233, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [12 x i8] c"gpio37_pins\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 161, i32 17 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 234, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [12 x i8] c"gpio38_pins\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 162, i32 17 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 235, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [12 x i8] c"gpio39_pins\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 163, i32 17 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 236, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [12 x i8] c"gpio40_pins\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 164, i32 17 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 237, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant [12 x i8] c"gpio41_pins\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 165, i32 17 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 238, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [12 x i8] c"gpio42_pins\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 166, i32 17 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 239, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [12 x i8] c"gpio43_pins\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 167, i32 17 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 240, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant [12 x i8] c"gpio44_pins\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 168, i32 17 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 241, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [12 x i8] c"gpio45_pins\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 169, i32 17 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 242, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [12 x i8] c"gpio46_pins\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 170, i32 17 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 243, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant [12 x i8] c"gpio47_pins\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 171, i32 17 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 244, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [12 x i8] c"gpio48_pins\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 172, i32 17 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 245, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [12 x i8] c"gpio49_pins\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 173, i32 17 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 246, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant [12 x i8] c"gpio50_pins\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 174, i32 17 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 247, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant [12 x i8] c"gpio51_pins\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 175, i32 17 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 250, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant [14 x i8] c"nand_grp_pins\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 177, i32 17 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 251, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant [16 x i8] c"dectpd_grp_pins\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 182, i32 17 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 252, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant [19 x i8] c"vdsl_phy0_grp_pins\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 183, i32 17 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 253, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [19 x i8] c"vdsl_phy1_grp_pins\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 184, i32 17 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 254, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant [19 x i8] c"vdsl_phy2_grp_pins\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 185, i32 17 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 255, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [19 x i8] c"vdsl_phy3_grp_pins\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 186, i32 17 }
@___asan_gen_.462 = private unnamed_addr constant [15 x i8] c"bcm63268_funcs\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 443, i32 39 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 444, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant [11 x i8] c"led_groups\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 258, i32 27 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 445, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [22 x i8] c"serial_led_clk_groups\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 285, i32 27 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 446, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant [23 x i8] c"serial_led_data_groups\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 289, i32 27 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 447, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant [17 x i8] c"hsspi_cs6_groups\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 301, i32 27 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 448, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant [17 x i8] c"hsspi_cs7_groups\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 305, i32 27 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 449, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant [18 x i8] c"uart1_scts_groups\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 309, i32 27 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 450, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant [18 x i8] c"uart1_srts_groups\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 314, i32 27 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 451, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [18 x i8] c"uart1_sdin_groups\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 319, i32 27 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 452, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [19 x i8] c"uart1_sdout_groups\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 324, i32 27 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 453, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant [20 x i8] c"ntr_pulse_in_groups\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 329, i32 27 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 454, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [25 x i8] c"dsl_ntr_pulse_out_groups\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 334, i32 27 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 455, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant [17 x i8] c"hsspi_cs4_groups\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 293, i32 27 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 456, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant [17 x i8] c"hsspi_cs5_groups\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 297, i32 27 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 457, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant [21 x i8] c"adsl_spi_miso_groups\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 339, i32 27 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 458, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant [21 x i8] c"adsl_spi_mosi_groups\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 343, i32 27 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 459, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant [16 x i8] c"vreg_clk_groups\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 347, i32 27 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 460, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant [21 x i8] c"pcie_clkreq_b_groups\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 351, i32 27 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 461, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant [22 x i8] c"switch_led_clk_groups\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 355, i32 27 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 462, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant [23 x i8] c"switch_led_data_groups\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 359, i32 27 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 463, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant [12 x i8] c"wifi_groups\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 363, i32 27 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 464, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant [12 x i8] c"nand_groups\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 386, i32 27 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 465, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant [14 x i8] c"dectpd_groups\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 390, i32 27 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 466, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant [27 x i8] c"vdsl_phy_override_0_groups\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 394, i32 27 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 468, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant [27 x i8] c"vdsl_phy_override_1_groups\00", align 1
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 398, i32 27 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 470, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant [27 x i8] c"vdsl_phy_override_2_groups\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 402, i32 27 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 472, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant [27 x i8] c"vdsl_phy_override_3_groups\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 406, i32 27 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 395, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 399, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 403, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 407, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.634 = private constant [42 x i8] c"../drivers/pinctrl/bcm/pinctrl-bcm63268.c\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 579, i32 3 }
@llvm.compiler.used = appending global [183 x ptr] [ptr @__initcall__kmod_pinctrl_bcm63268__223_643_bcm63268_pinctrl_driver_init6, ptr @bcm63268_pinctrl_driver, ptr @.str, ptr @bcm63268_pinctrl_match, ptr @bcm63268_soc, ptr @bcm63268_pctl_ops, ptr @bcm63268_pmx_ops, ptr @bcm63268_pins, ptr @bcm63268_groups, ptr @.str.1, ptr @gpio0_pins, ptr @.str.2, ptr @gpio1_pins, ptr @.str.3, ptr @gpio2_pins, ptr @.str.4, ptr @gpio3_pins, ptr @.str.5, ptr @gpio4_pins, ptr @.str.6, ptr @gpio5_pins, ptr @.str.7, ptr @gpio6_pins, ptr @.str.8, ptr @gpio7_pins, ptr @.str.9, ptr @gpio8_pins, ptr @.str.10, ptr @gpio9_pins, ptr @.str.11, ptr @gpio10_pins, ptr @.str.12, ptr @gpio11_pins, ptr @.str.13, ptr @gpio12_pins, ptr @.str.14, ptr @gpio13_pins, ptr @.str.15, ptr @gpio14_pins, ptr @.str.16, ptr @gpio15_pins, ptr @.str.17, ptr @gpio16_pins, ptr @.str.18, ptr @gpio17_pins, ptr @.str.19, ptr @gpio18_pins, ptr @.str.20, ptr @gpio19_pins, ptr @.str.21, ptr @gpio20_pins, ptr @.str.22, ptr @gpio21_pins, ptr @.str.23, ptr @gpio22_pins, ptr @.str.24, ptr @gpio23_pins, ptr @.str.25, ptr @gpio24_pins, ptr @.str.26, ptr @gpio25_pins, ptr @.str.27, ptr @gpio26_pins, ptr @.str.28, ptr @gpio27_pins, ptr @.str.29, ptr @gpio28_pins, ptr @.str.30, ptr @gpio29_pins, ptr @.str.31, ptr @gpio30_pins, ptr @.str.32, ptr @gpio31_pins, ptr @.str.33, ptr @gpio32_pins, ptr @.str.34, ptr @gpio33_pins, ptr @.str.35, ptr @gpio34_pins, ptr @.str.36, ptr @gpio35_pins, ptr @.str.37, ptr @gpio36_pins, ptr @.str.38, ptr @gpio37_pins, ptr @.str.39, ptr @gpio38_pins, ptr @.str.40, ptr @gpio39_pins, ptr @.str.41, ptr @gpio40_pins, ptr @.str.42, ptr @gpio41_pins, ptr @.str.43, ptr @gpio42_pins, ptr @.str.44, ptr @gpio43_pins, ptr @.str.45, ptr @gpio44_pins, ptr @.str.46, ptr @gpio45_pins, ptr @.str.47, ptr @gpio46_pins, ptr @.str.48, ptr @gpio47_pins, ptr @.str.49, ptr @gpio48_pins, ptr @.str.50, ptr @gpio49_pins, ptr @.str.51, ptr @gpio50_pins, ptr @.str.52, ptr @gpio51_pins, ptr @.str.53, ptr @nand_grp_pins, ptr @.str.54, ptr @dectpd_grp_pins, ptr @.str.55, ptr @vdsl_phy0_grp_pins, ptr @.str.56, ptr @vdsl_phy1_grp_pins, ptr @.str.57, ptr @vdsl_phy2_grp_pins, ptr @.str.58, ptr @vdsl_phy3_grp_pins, ptr @bcm63268_funcs, ptr @.str.59, ptr @led_groups, ptr @.str.60, ptr @serial_led_clk_groups, ptr @.str.61, ptr @serial_led_data_groups, ptr @.str.62, ptr @hsspi_cs6_groups, ptr @.str.63, ptr @hsspi_cs7_groups, ptr @.str.64, ptr @uart1_scts_groups, ptr @.str.65, ptr @uart1_srts_groups, ptr @.str.66, ptr @uart1_sdin_groups, ptr @.str.67, ptr @uart1_sdout_groups, ptr @.str.68, ptr @ntr_pulse_in_groups, ptr @.str.69, ptr @dsl_ntr_pulse_out_groups, ptr @.str.70, ptr @hsspi_cs4_groups, ptr @.str.71, ptr @hsspi_cs5_groups, ptr @.str.72, ptr @adsl_spi_miso_groups, ptr @.str.73, ptr @adsl_spi_mosi_groups, ptr @.str.74, ptr @vreg_clk_groups, ptr @.str.75, ptr @pcie_clkreq_b_groups, ptr @.str.76, ptr @switch_led_clk_groups, ptr @.str.77, ptr @switch_led_data_groups, ptr @.str.78, ptr @wifi_groups, ptr @.str.79, ptr @nand_groups, ptr @.str.80, ptr @dectpd_groups, ptr @.str.81, ptr @vdsl_phy_override_0_groups, ptr @.str.82, ptr @vdsl_phy_override_1_groups, ptr @.str.83, ptr @vdsl_phy_override_2_groups, ptr @.str.84, ptr @vdsl_phy_override_3_groups, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89], section "llvm.metadata"
@0 = internal global [182 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63268_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63268_pinctrl_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63268_soc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63268_pctl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63268_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63268_pins to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63268_groups to i32), i32 696, i32 864, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio4_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio5_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio6_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio7_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio8_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio9_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio10_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio11_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio12_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio13_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio14_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio15_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio16_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio17_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio18_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio19_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio20_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio21_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio22_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio23_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio24_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio25_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio26_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio27_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio28_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio29_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio30_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio31_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio32_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio33_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio34_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio35_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio36_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio37_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio38_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio39_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio40_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio41_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio42_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio43_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio44_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio45_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio46_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio47_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio48_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio49_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio50_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio51_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_grp_pins to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dectpd_grp_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdsl_phy0_grp_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdsl_phy1_grp_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdsl_phy2_grp_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdsl_phy3_grp_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63268_funcs to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_groups to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_led_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_led_data_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsspi_cs6_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsspi_cs7_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_scts_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_srts_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_sdin_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_sdout_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntr_pulse_in_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsl_ntr_pulse_out_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsspi_cs4_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsspi_cs5_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsl_spi_miso_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsl_spi_mosi_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vreg_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_clkreq_b_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_led_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_led_data_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wifi_groups to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dectpd_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdsl_phy_override_0_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdsl_phy_override_1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdsl_phy_override_2_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdsl_phy_override_3_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63268_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm63268_pinctrl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63268_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bcm63xx_pinctrl_probe(ptr noundef %pdev, ptr noundef nonnull @bcm63268_soc, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm63xx_pinctrl_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm63268_pinctrl_get_group_count(ptr nocapture noundef readnone %pctldev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 58
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bcm63268_pinctrl_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %group) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [58 x %struct.bcm63268_pingroup], ptr @bcm63268_groups, i32 0, i32 %group
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm63268_pinctrl_get_group_pins(ptr nocapture noundef readnone %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pins1 = getelementptr [58 x %struct.bcm63268_pingroup], ptr @bcm63268_groups, i32 0, i32 %group, i32 1
  %0 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins1, align 4
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pins, align 4
  %num_pins3 = getelementptr [58 x %struct.bcm63268_pingroup], ptr @bcm63268_groups, i32 0, i32 %group, i32 2
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
define internal i32 @bcm63268_pinctrl_get_func_count(ptr nocapture noundef readnone %pctldev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bcm63268_pinctrl_get_func_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [26 x %struct.bcm63268_function], ptr @bcm63268_funcs, i32 0, i32 %selector
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm63268_pinctrl_get_groups(ptr nocapture noundef readnone %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %groups1 = getelementptr [26 x %struct.bcm63268_function], ptr @bcm63268_funcs, i32 0, i32 %selector, i32 1
  %0 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups1, align 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %groups, align 4
  %num_groups3 = getelementptr [26 x %struct.bcm63268_function], ptr @bcm63268_funcs, i32 0, i32 %selector, i32 2
  %3 = ptrtoint ptr %num_groups3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_groups3, align 4
  %5 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63268_pinctrl_set_mux(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #2 align 64 {
for.body.lr.ph:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %num_pins = getelementptr [58 x %struct.bcm63268_pingroup], ptr @bcm63268_groups, i32 0, i32 %group, i32 2
  %0 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pins, align 4
  %pins = getelementptr [58 x %struct.bcm63268_pingroup], ptr @bcm63268_groups, i32 0, i32 %group, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %umax = call i32 @llvm.umax.i32(i32 %1, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx2 = getelementptr i32, ptr %3, i32 %i.057
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  tail call fastcc void @bcm63268_set_gpio(ptr noundef %call, i32 noundef %5)
  %inc = add nuw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %reg3 = getelementptr [26 x %struct.bcm63268_function], ptr @bcm63268_funcs, i32 0, i32 %selector, i32 3
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
  %pins4 = getelementptr [58 x %struct.bcm63268_pingroup], ptr @bcm63268_groups, i32 0, i32 %group, i32 1
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
  %pins10 = getelementptr [58 x %struct.bcm63268_pingroup], ptr @bcm63268_groups, i32 0, i32 %group, i32 1
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
  %pins17 = getelementptr [58 x %struct.bcm63268_pingroup], ptr @bcm63268_groups, i32 0, i32 %group, i32 1
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
  %mask21 = getelementptr [26 x %struct.bcm63268_function], ptr @bcm63268_funcs, i32 0, i32 %selector, i32 4
  %21 = ptrtoint ptr %mask21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask21, align 4
  br label %sw.epilog

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.89, i32 noundef 579, i32 noundef 9, ptr noundef null) #7
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
define internal i32 @bcm63268_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  tail call fastcc void @bcm63268_set_gpio(ptr noundef %call, i32 noundef %offset)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm63268_set_gpio(ptr nocapture noundef readonly %pc, i32 noundef %pin) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data = getelementptr [52 x %struct.pinctrl_pin_desc], ptr @bcm63268_pins, i32 0, i32 %pin, i32 2
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 4
  %rem.i = and i32 %pin, 31
  %shl = shl nuw i32 1, %rem.i
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
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %regs3 = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %pc, i32 0, i32 1
  %5 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs3, align 4
  %call.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 24, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %pin)
  %cmp5 = icmp ult i32 %pin, 24
  br i1 %cmp5, label %if.then6, label %if.then2.if.end15_crit_edge

if.then2.if.end15_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs3, align 4
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 16, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %pin)
  %cmp10 = icmp ult i32 %pin, 52
  br i1 %cmp10, label %if.then11, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %regs12 = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %pc, i32 0, i32 1
  %9 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs12, align 4
  %call.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 28, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.else.if.end15_crit_edge, %if.then6, %if.then2.if.end15_crit_edge
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 182)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 182)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364}
!llvm.module.flags = !{!366, !367, !368, !369, !370, !371, !372, !373}
!llvm.ident = !{!374}

!0 = !{ptr @__initcall__kmod_pinctrl_bcm63268__223_643_bcm63268_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_bcm63268__223_643_bcm63268_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 643, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 638, i32 11}
!4 = !{ptr @bcm63268_pinctrl_driver, !5, !"bcm63268_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 635, i32 31}
!6 = !{ptr @bcm63268_soc, !7, !"bcm63268_soc", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 617, i32 41}
!8 = !{ptr @bcm63268_pctl_ops, !9, !"bcm63268_pctl_ops", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 600, i32 33}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 196, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 197, i32 2}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 198, i32 2}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 199, i32 2}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 200, i32 2}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 201, i32 2}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 202, i32 2}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 203, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 204, i32 2}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 205, i32 2}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 206, i32 2}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 207, i32 2}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 208, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 209, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 210, i32 2}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 211, i32 2}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 212, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 213, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 214, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 215, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 216, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 217, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 218, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 219, i32 2}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 220, i32 2}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 221, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 222, i32 2}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 223, i32 2}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 224, i32 2}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 225, i32 2}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 226, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 227, i32 2}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 228, i32 2}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 229, i32 2}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 230, i32 2}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 231, i32 2}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 232, i32 2}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 233, i32 2}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 234, i32 2}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 235, i32 2}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 236, i32 2}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 237, i32 2}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 238, i32 2}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 239, i32 2}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 240, i32 2}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 241, i32 2}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 242, i32 2}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 243, i32 2}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 244, i32 2}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 245, i32 2}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 246, i32 2}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 247, i32 2}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 250, i32 2}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 251, i32 2}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 252, i32 2}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 253, i32 2}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 254, i32 2}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 255, i32 2}
!126 = !{ptr @bcm63268_groups, !127, !"bcm63268_groups", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 195, i32 33}
!128 = !{ptr @gpio0_pins, !129, !"gpio0_pins", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 124, i32 17}
!130 = !{ptr @gpio1_pins, !131, !"gpio1_pins", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 125, i32 17}
!132 = !{ptr @gpio2_pins, !133, !"gpio2_pins", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 126, i32 17}
!134 = !{ptr @gpio3_pins, !135, !"gpio3_pins", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 127, i32 17}
!136 = !{ptr @gpio4_pins, !137, !"gpio4_pins", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 128, i32 17}
!138 = !{ptr @gpio5_pins, !139, !"gpio5_pins", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 129, i32 17}
!140 = !{ptr @gpio6_pins, !141, !"gpio6_pins", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 130, i32 17}
!142 = !{ptr @gpio7_pins, !143, !"gpio7_pins", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 131, i32 17}
!144 = !{ptr @gpio8_pins, !145, !"gpio8_pins", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 132, i32 17}
!146 = !{ptr @gpio9_pins, !147, !"gpio9_pins", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 133, i32 17}
!148 = !{ptr @gpio10_pins, !149, !"gpio10_pins", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 134, i32 17}
!150 = !{ptr @gpio11_pins, !151, !"gpio11_pins", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 135, i32 17}
!152 = !{ptr @gpio12_pins, !153, !"gpio12_pins", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 136, i32 17}
!154 = !{ptr @gpio13_pins, !155, !"gpio13_pins", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 137, i32 17}
!156 = !{ptr @gpio14_pins, !157, !"gpio14_pins", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 138, i32 17}
!158 = !{ptr @gpio15_pins, !159, !"gpio15_pins", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 139, i32 17}
!160 = !{ptr @gpio16_pins, !161, !"gpio16_pins", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 140, i32 17}
!162 = !{ptr @gpio17_pins, !163, !"gpio17_pins", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 141, i32 17}
!164 = !{ptr @gpio18_pins, !165, !"gpio18_pins", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 142, i32 17}
!166 = !{ptr @gpio19_pins, !167, !"gpio19_pins", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 143, i32 17}
!168 = !{ptr @gpio20_pins, !169, !"gpio20_pins", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 144, i32 17}
!170 = !{ptr @gpio21_pins, !171, !"gpio21_pins", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 145, i32 17}
!172 = !{ptr @gpio22_pins, !173, !"gpio22_pins", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 146, i32 17}
!174 = !{ptr @gpio23_pins, !175, !"gpio23_pins", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 147, i32 17}
!176 = !{ptr @gpio24_pins, !177, !"gpio24_pins", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 148, i32 17}
!178 = !{ptr @gpio25_pins, !179, !"gpio25_pins", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 149, i32 17}
!180 = !{ptr @gpio26_pins, !181, !"gpio26_pins", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 150, i32 17}
!182 = !{ptr @gpio27_pins, !183, !"gpio27_pins", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 151, i32 17}
!184 = !{ptr @gpio28_pins, !185, !"gpio28_pins", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 152, i32 17}
!186 = !{ptr @gpio29_pins, !187, !"gpio29_pins", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 153, i32 17}
!188 = !{ptr @gpio30_pins, !189, !"gpio30_pins", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 154, i32 17}
!190 = !{ptr @gpio31_pins, !191, !"gpio31_pins", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 155, i32 17}
!192 = !{ptr @gpio32_pins, !193, !"gpio32_pins", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 156, i32 17}
!194 = !{ptr @gpio33_pins, !195, !"gpio33_pins", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 157, i32 17}
!196 = !{ptr @gpio34_pins, !197, !"gpio34_pins", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 158, i32 17}
!198 = !{ptr @gpio35_pins, !199, !"gpio35_pins", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 159, i32 17}
!200 = !{ptr @gpio36_pins, !201, !"gpio36_pins", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 160, i32 17}
!202 = !{ptr @gpio37_pins, !203, !"gpio37_pins", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 161, i32 17}
!204 = !{ptr @gpio38_pins, !205, !"gpio38_pins", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 162, i32 17}
!206 = !{ptr @gpio39_pins, !207, !"gpio39_pins", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 163, i32 17}
!208 = !{ptr @gpio40_pins, !209, !"gpio40_pins", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 164, i32 17}
!210 = !{ptr @gpio41_pins, !211, !"gpio41_pins", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 165, i32 17}
!212 = !{ptr @gpio42_pins, !213, !"gpio42_pins", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 166, i32 17}
!214 = !{ptr @gpio43_pins, !215, !"gpio43_pins", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 167, i32 17}
!216 = !{ptr @gpio44_pins, !217, !"gpio44_pins", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 168, i32 17}
!218 = !{ptr @gpio45_pins, !219, !"gpio45_pins", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 169, i32 17}
!220 = !{ptr @gpio46_pins, !221, !"gpio46_pins", i1 false, i1 false}
!221 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 170, i32 17}
!222 = !{ptr @gpio47_pins, !223, !"gpio47_pins", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 171, i32 17}
!224 = !{ptr @gpio48_pins, !225, !"gpio48_pins", i1 false, i1 false}
!225 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 172, i32 17}
!226 = !{ptr @gpio49_pins, !227, !"gpio49_pins", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 173, i32 17}
!228 = !{ptr @gpio50_pins, !229, !"gpio50_pins", i1 false, i1 false}
!229 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 174, i32 17}
!230 = !{ptr @gpio51_pins, !231, !"gpio51_pins", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 175, i32 17}
!232 = !{ptr @nand_grp_pins, !233, !"nand_grp_pins", i1 false, i1 false}
!233 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 177, i32 17}
!234 = !{ptr @dectpd_grp_pins, !235, !"dectpd_grp_pins", i1 false, i1 false}
!235 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 182, i32 17}
!236 = !{ptr @vdsl_phy0_grp_pins, !237, !"vdsl_phy0_grp_pins", i1 false, i1 false}
!237 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 183, i32 17}
!238 = !{ptr @vdsl_phy1_grp_pins, !239, !"vdsl_phy1_grp_pins", i1 false, i1 false}
!239 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 184, i32 17}
!240 = !{ptr @vdsl_phy2_grp_pins, !241, !"vdsl_phy2_grp_pins", i1 false, i1 false}
!241 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 185, i32 17}
!242 = !{ptr @vdsl_phy3_grp_pins, !243, !"vdsl_phy3_grp_pins", i1 false, i1 false}
!243 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 186, i32 17}
!244 = !{ptr @bcm63268_pmx_ops, !245, !"bcm63268_pmx_ops", i1 false, i1 false}
!245 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 608, i32 32}
!246 = !{ptr @.str.59, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 444, i32 2}
!248 = !{ptr @.str.60, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 445, i32 2}
!250 = !{ptr @.str.61, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 446, i32 2}
!252 = !{ptr @.str.62, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 447, i32 2}
!254 = !{ptr @.str.63, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 448, i32 2}
!256 = !{ptr @.str.64, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 449, i32 2}
!258 = !{ptr @.str.65, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 450, i32 2}
!260 = !{ptr @.str.66, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 451, i32 2}
!262 = !{ptr @.str.67, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 452, i32 2}
!264 = !{ptr @.str.68, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 453, i32 2}
!266 = !{ptr @.str.69, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 454, i32 2}
!268 = !{ptr @.str.70, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 455, i32 2}
!270 = !{ptr @.str.71, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 456, i32 2}
!272 = !{ptr @.str.72, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 457, i32 2}
!274 = !{ptr @.str.73, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 458, i32 2}
!276 = !{ptr @.str.74, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 459, i32 2}
!278 = !{ptr @.str.75, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 460, i32 2}
!280 = !{ptr @.str.76, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 461, i32 2}
!282 = !{ptr @.str.77, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 462, i32 2}
!284 = !{ptr @.str.78, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 463, i32 2}
!286 = !{ptr @.str.79, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 464, i32 2}
!288 = !{ptr @.str.80, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 465, i32 2}
!290 = !{ptr @.str.81, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 466, i32 2}
!292 = !{ptr @.str.82, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 468, i32 2}
!294 = !{ptr @.str.83, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 470, i32 2}
!296 = !{ptr @.str.84, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 472, i32 2}
!298 = !{ptr @bcm63268_funcs, !299, !"bcm63268_funcs", i1 false, i1 false}
!299 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 443, i32 39}
!300 = !{ptr @led_groups, !301, !"led_groups", i1 false, i1 false}
!301 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 258, i32 27}
!302 = !{ptr @serial_led_clk_groups, !303, !"serial_led_clk_groups", i1 false, i1 false}
!303 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 285, i32 27}
!304 = !{ptr @serial_led_data_groups, !305, !"serial_led_data_groups", i1 false, i1 false}
!305 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 289, i32 27}
!306 = !{ptr @hsspi_cs6_groups, !307, !"hsspi_cs6_groups", i1 false, i1 false}
!307 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 301, i32 27}
!308 = !{ptr @hsspi_cs7_groups, !309, !"hsspi_cs7_groups", i1 false, i1 false}
!309 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 305, i32 27}
!310 = !{ptr @uart1_scts_groups, !311, !"uart1_scts_groups", i1 false, i1 false}
!311 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 309, i32 27}
!312 = !{ptr @uart1_srts_groups, !313, !"uart1_srts_groups", i1 false, i1 false}
!313 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 314, i32 27}
!314 = !{ptr @uart1_sdin_groups, !315, !"uart1_sdin_groups", i1 false, i1 false}
!315 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 319, i32 27}
!316 = !{ptr @uart1_sdout_groups, !317, !"uart1_sdout_groups", i1 false, i1 false}
!317 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 324, i32 27}
!318 = !{ptr @ntr_pulse_in_groups, !319, !"ntr_pulse_in_groups", i1 false, i1 false}
!319 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 329, i32 27}
!320 = !{ptr @dsl_ntr_pulse_out_groups, !321, !"dsl_ntr_pulse_out_groups", i1 false, i1 false}
!321 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 334, i32 27}
!322 = !{ptr @hsspi_cs4_groups, !323, !"hsspi_cs4_groups", i1 false, i1 false}
!323 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 293, i32 27}
!324 = !{ptr @hsspi_cs5_groups, !325, !"hsspi_cs5_groups", i1 false, i1 false}
!325 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 297, i32 27}
!326 = !{ptr @adsl_spi_miso_groups, !327, !"adsl_spi_miso_groups", i1 false, i1 false}
!327 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 339, i32 27}
!328 = !{ptr @adsl_spi_mosi_groups, !329, !"adsl_spi_mosi_groups", i1 false, i1 false}
!329 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 343, i32 27}
!330 = !{ptr @vreg_clk_groups, !331, !"vreg_clk_groups", i1 false, i1 false}
!331 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 347, i32 27}
!332 = !{ptr @pcie_clkreq_b_groups, !333, !"pcie_clkreq_b_groups", i1 false, i1 false}
!333 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 351, i32 27}
!334 = !{ptr @switch_led_clk_groups, !335, !"switch_led_clk_groups", i1 false, i1 false}
!335 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 355, i32 27}
!336 = !{ptr @switch_led_data_groups, !337, !"switch_led_data_groups", i1 false, i1 false}
!337 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 359, i32 27}
!338 = !{ptr @wifi_groups, !339, !"wifi_groups", i1 false, i1 false}
!339 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 363, i32 27}
!340 = !{ptr @nand_groups, !341, !"nand_groups", i1 false, i1 false}
!341 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 386, i32 27}
!342 = !{ptr @dectpd_groups, !343, !"dectpd_groups", i1 false, i1 false}
!343 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 390, i32 27}
!344 = !{ptr @.str.85, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 395, i32 2}
!346 = !{ptr @vdsl_phy_override_0_groups, !347, !"vdsl_phy_override_0_groups", i1 false, i1 false}
!347 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 394, i32 27}
!348 = !{ptr @.str.86, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 399, i32 2}
!350 = !{ptr @vdsl_phy_override_1_groups, !351, !"vdsl_phy_override_1_groups", i1 false, i1 false}
!351 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 398, i32 27}
!352 = !{ptr @.str.87, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 403, i32 2}
!354 = !{ptr @vdsl_phy_override_2_groups, !355, !"vdsl_phy_override_2_groups", i1 false, i1 false}
!355 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 402, i32 27}
!356 = !{ptr @.str.88, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 407, i32 2}
!358 = !{ptr @vdsl_phy_override_3_groups, !359, !"vdsl_phy_override_3_groups", i1 false, i1 false}
!359 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 406, i32 27}
!360 = !{ptr @.str.89, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 579, i32 3}
!362 = !{ptr @bcm63268_pins, !363, !"bcm63268_pins", i1 false, i1 false}
!363 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 65, i32 38}
!364 = !{ptr @bcm63268_pinctrl_match, !365, !"bcm63268_pinctrl_match", i1 false, i1 false}
!365 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm63268.c", i32 630, i32 34}
!366 = !{i32 1, !"wchar_size", i32 2}
!367 = !{i32 1, !"min_enum_size", i32 4}
!368 = !{i32 8, !"branch-target-enforcement", i32 0}
!369 = !{i32 8, !"sign-return-address", i32 0}
!370 = !{i32 8, !"sign-return-address-all", i32 0}
!371 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!372 = !{i32 7, !"uwtable", i32 1}
!373 = !{i32 7, !"frame-pointer", i32 2}
!374 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
