; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/bcm/pinctrl-bcm6328.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-bcm6328.c"
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
%struct.bcm6328_pingroup = type { ptr, ptr, i32 }
%struct.bcm6328_function = type { ptr, ptr, i32, i8 }
%struct.bcm63xx_pinctrl = type { ptr, ptr, %struct.pinctrl_desc, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }

@__initcall__kmod_pinctrl_bcm6328__223_404_bcm6328_pinctrl_driver_init6 = internal global ptr @bcm6328_pinctrl_driver_init, section ".initcall6.init", align 4
@bcm6328_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm6328_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm6328_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm6328-pinctrl\00", [16 x i8] zeroinitializer }, align 32
@bcm6328_pinctrl_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6328-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm6328_soc = internal constant { %struct.bcm63xx_pinctrl_soc, [44 x i8] } { %struct.bcm63xx_pinctrl_soc { ptr @bcm6328_pctl_ops, ptr @bcm6328_pmx_ops, ptr @bcm6328_pins, i32 34, i32 32 }, [44 x i8] zeroinitializer }, align 32
@bcm6328_pctl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @bcm6328_pinctrl_get_group_count, ptr @bcm6328_pinctrl_get_group_name, ptr @bcm6328_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@bcm6328_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @bcm6328_pinctrl_get_func_count, ptr @bcm6328_pinctrl_get_func_name, ptr @bcm6328_pinctrl_get_groups, ptr @bcm6328_pinctrl_set_mux, ptr @bcm6328_gpio_request_enable, ptr null, ptr null, i8 1 }, [56 x i8] zeroinitializer }, align 32
@bcm6328_pins = internal constant { [34 x %struct.pinctrl_pin_desc], [104 x i8] } { [34 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.1, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.2, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.3, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.4, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.5, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.6, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.7, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.8, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.9, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.10, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.11, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.12, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.13, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.14, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.46, ptr null }], [104 x i8] zeroinitializer }, align 32
@bcm6328_groups = internal constant { [34 x %struct.bcm6328_pingroup], [104 x i8] } { [34 x %struct.bcm6328_pingroup] [%struct.bcm6328_pingroup { ptr @.str.1, ptr @gpio0_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.2, ptr @gpio1_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.3, ptr @gpio2_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.4, ptr @gpio3_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.5, ptr @gpio4_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.6, ptr @gpio5_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.7, ptr @gpio6_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.8, ptr @gpio7_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.9, ptr @gpio8_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.10, ptr @gpio9_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.11, ptr @gpio10_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.12, ptr @gpio11_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.13, ptr @gpio12_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.14, ptr @gpio13_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.15, ptr @gpio14_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.16, ptr @gpio15_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.17, ptr @gpio16_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.18, ptr @gpio17_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.19, ptr @gpio18_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.20, ptr @gpio19_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.21, ptr @gpio20_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.22, ptr @gpio21_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.23, ptr @gpio22_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.24, ptr @gpio23_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.25, ptr @gpio24_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.26, ptr @gpio25_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.27, ptr @gpio26_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.28, ptr @gpio27_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.29, ptr @gpio28_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.30, ptr @gpio29_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.31, ptr @gpio30_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.32, ptr @gpio31_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.33, ptr @hsspi_cs1_pins, i32 1 }, %struct.bcm6328_pingroup { ptr @.str.34, ptr @usb_port1_pins, i32 1 }], [104 x i8] zeroinitializer }, align 32
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
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hsspi_cs1\00", [22 x i8] zeroinitializer }, align 32
@hsspi_cs1_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 36], [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb_port1\00", [22 x i8] zeroinitializer }, align 32
@usb_port1_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 38], [28 x i8] zeroinitializer }, align 32
@bcm6328_funcs = internal constant { [12 x %struct.bcm6328_function], [32 x i8] } { [12 x %struct.bcm6328_function] [%struct.bcm6328_function { ptr @.str.35, ptr @led_groups, i32 24, i8 -128 }, %struct.bcm6328_function { ptr @.str.36, ptr @serial_led_data_groups, i32 1, i8 64 }, %struct.bcm6328_function { ptr @.str.37, ptr @serial_led_clk_groups, i32 1, i8 64 }, %struct.bcm6328_function { ptr @.str.38, ptr @inet_act_led_groups, i32 1, i8 32 }, %struct.bcm6328_function { ptr @.str.39, ptr @pcie_clkreq_groups, i32 1, i8 64 }, %struct.bcm6328_function { ptr @.str.40, ptr @ephy0_act_led_groups, i32 1, i8 32 }, %struct.bcm6328_function { ptr @.str.41, ptr @ephy1_act_led_groups, i32 1, i8 32 }, %struct.bcm6328_function { ptr @.str.42, ptr @ephy2_act_led_groups, i32 1, i8 32 }, %struct.bcm6328_function { ptr @.str.43, ptr @ephy3_act_led_groups, i32 1, i8 32 }, %struct.bcm6328_function { ptr @.str.33, ptr @hsspi_cs1_groups, i32 1, i8 64 }, %struct.bcm6328_function { ptr @.str.44, ptr @usb_host_port_groups, i32 1, i8 32 }, %struct.bcm6328_function { ptr @.str.45, ptr @usb_device_port_groups, i32 1, i8 64 }], [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"led\00", [28 x i8] zeroinitializer }, align 32
@led_groups = internal constant { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"serial_led_data\00", [16 x i8] zeroinitializer }, align 32
@serial_led_data_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.7], [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"serial_led_clk\00", [17 x i8] zeroinitializer }, align 32
@serial_led_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.8], [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inet_act_led\00", [19 x i8] zeroinitializer }, align 32
@inet_act_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcie_clkreq\00", [20 x i8] zeroinitializer }, align 32
@pcie_clkreq_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.17], [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ephy0_act_led\00", [18 x i8] zeroinitializer }, align 32
@ephy0_act_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ephy1_act_led\00", [18 x i8] zeroinitializer }, align 32
@ephy1_act_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.27], [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ephy2_act_led\00", [18 x i8] zeroinitializer }, align 32
@ephy2_act_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ephy3_act_led\00", [18 x i8] zeroinitializer }, align 32
@ephy3_act_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.29], [28 x i8] zeroinitializer }, align 32
@hsspi_cs1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb_host_port\00", [18 x i8] zeroinitializer }, align 32
@usb_host_port_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.34], [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb_device_port\00", [16 x i8] zeroinitializer }, align 32
@usb_device_port_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.34], [28 x i8] zeroinitializer }, align 32
@bcm6328_mux = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32, i32 28, i32 36], [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb_p2\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant [23 x i8] c"bcm6328_pinctrl_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 396, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 399, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"bcm6328_pinctrl_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 391, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"bcm6328_soc\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 378, i32 41 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"bcm6328_pctl_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 361, i32 33 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"bcm6328_pmx_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 369, i32 32 }
@___asan_gen_.65 = private unnamed_addr constant [13 x i8] c"bcm6328_pins\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 50, i32 38 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"bcm6328_groups\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 135, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 136, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"gpio0_pins\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 92, i32 17 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 137, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"gpio1_pins\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 93, i32 17 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 138, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [11 x i8] c"gpio2_pins\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 94, i32 17 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 139, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [11 x i8] c"gpio3_pins\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 95, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 140, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [11 x i8] c"gpio4_pins\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 96, i32 17 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 141, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [11 x i8] c"gpio5_pins\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 97, i32 17 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 142, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [11 x i8] c"gpio6_pins\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 98, i32 17 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 143, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [11 x i8] c"gpio7_pins\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 99, i32 17 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 144, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [11 x i8] c"gpio8_pins\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 100, i32 17 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 145, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [11 x i8] c"gpio9_pins\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 101, i32 17 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 146, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [12 x i8] c"gpio10_pins\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 102, i32 17 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 147, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [12 x i8] c"gpio11_pins\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 103, i32 17 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 148, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [12 x i8] c"gpio12_pins\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 104, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 149, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [12 x i8] c"gpio13_pins\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 105, i32 17 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 150, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [12 x i8] c"gpio14_pins\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 106, i32 17 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 151, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [12 x i8] c"gpio15_pins\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 107, i32 17 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 152, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [12 x i8] c"gpio16_pins\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 108, i32 17 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 153, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [12 x i8] c"gpio17_pins\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 109, i32 17 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 154, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [12 x i8] c"gpio18_pins\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 110, i32 17 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 155, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [12 x i8] c"gpio19_pins\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 111, i32 17 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 156, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [12 x i8] c"gpio20_pins\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 112, i32 17 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 157, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [12 x i8] c"gpio21_pins\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 113, i32 17 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 158, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [12 x i8] c"gpio22_pins\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 114, i32 17 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 159, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [12 x i8] c"gpio23_pins\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 115, i32 17 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 160, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [12 x i8] c"gpio24_pins\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 116, i32 17 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 161, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [12 x i8] c"gpio25_pins\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 117, i32 17 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 162, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [12 x i8] c"gpio26_pins\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 118, i32 17 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 163, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [12 x i8] c"gpio27_pins\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 119, i32 17 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 164, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [12 x i8] c"gpio28_pins\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 120, i32 17 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 165, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [12 x i8] c"gpio29_pins\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 121, i32 17 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 166, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [12 x i8] c"gpio30_pins\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 122, i32 17 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 167, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [12 x i8] c"gpio31_pins\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 123, i32 17 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 169, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [15 x i8] c"hsspi_cs1_pins\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 125, i32 17 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 170, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [15 x i8] c"usb_port1_pins\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 126, i32 17 }
@___asan_gen_.275 = private unnamed_addr constant [14 x i8] c"bcm6328_funcs\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 262, i32 38 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 263, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [11 x i8] c"led_groups\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 174, i32 27 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 264, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [23 x i8] c"serial_led_data_groups\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 202, i32 27 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 265, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant [22 x i8] c"serial_led_clk_groups\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 206, i32 27 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 266, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [20 x i8] c"inet_act_led_groups\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 210, i32 27 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 267, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [19 x i8] c"pcie_clkreq_groups\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 214, i32 27 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 268, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [21 x i8] c"ephy0_act_led_groups\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 218, i32 27 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 269, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [21 x i8] c"ephy1_act_led_groups\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 222, i32 27 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 270, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [21 x i8] c"ephy2_act_led_groups\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 226, i32 27 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 271, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [21 x i8] c"ephy3_act_led_groups\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 230, i32 27 }
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"hsspi_cs1_groups\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 234, i32 27 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 273, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant [21 x i8] c"usb_host_port_groups\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 238, i32 27 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 274, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant [23 x i8] c"usb_device_port_groups\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 242, i32 27 }
@___asan_gen_.347 = private unnamed_addr constant [12 x i8] c"bcm6328_mux\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 44, i32 27 }
@___asan_gen_.350 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.351 = private constant [41 x i8] c"../drivers/pinctrl/bcm/pinctrl-bcm6328.c\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 89, i32 2 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__initcall__kmod_pinctrl_bcm6328__223_404_bcm6328_pinctrl_driver_init6, ptr @bcm6328_pinctrl_driver, ptr @.str, ptr @bcm6328_pinctrl_match, ptr @bcm6328_soc, ptr @bcm6328_pctl_ops, ptr @bcm6328_pmx_ops, ptr @bcm6328_pins, ptr @bcm6328_groups, ptr @.str.1, ptr @gpio0_pins, ptr @.str.2, ptr @gpio1_pins, ptr @.str.3, ptr @gpio2_pins, ptr @.str.4, ptr @gpio3_pins, ptr @.str.5, ptr @gpio4_pins, ptr @.str.6, ptr @gpio5_pins, ptr @.str.7, ptr @gpio6_pins, ptr @.str.8, ptr @gpio7_pins, ptr @.str.9, ptr @gpio8_pins, ptr @.str.10, ptr @gpio9_pins, ptr @.str.11, ptr @gpio10_pins, ptr @.str.12, ptr @gpio11_pins, ptr @.str.13, ptr @gpio12_pins, ptr @.str.14, ptr @gpio13_pins, ptr @.str.15, ptr @gpio14_pins, ptr @.str.16, ptr @gpio15_pins, ptr @.str.17, ptr @gpio16_pins, ptr @.str.18, ptr @gpio17_pins, ptr @.str.19, ptr @gpio18_pins, ptr @.str.20, ptr @gpio19_pins, ptr @.str.21, ptr @gpio20_pins, ptr @.str.22, ptr @gpio21_pins, ptr @.str.23, ptr @gpio22_pins, ptr @.str.24, ptr @gpio23_pins, ptr @.str.25, ptr @gpio24_pins, ptr @.str.26, ptr @gpio25_pins, ptr @.str.27, ptr @gpio26_pins, ptr @.str.28, ptr @gpio27_pins, ptr @.str.29, ptr @gpio28_pins, ptr @.str.30, ptr @gpio29_pins, ptr @.str.31, ptr @gpio30_pins, ptr @.str.32, ptr @gpio31_pins, ptr @.str.33, ptr @hsspi_cs1_pins, ptr @.str.34, ptr @usb_port1_pins, ptr @bcm6328_funcs, ptr @.str.35, ptr @led_groups, ptr @.str.36, ptr @serial_led_data_groups, ptr @.str.37, ptr @serial_led_clk_groups, ptr @.str.38, ptr @inet_act_led_groups, ptr @.str.39, ptr @pcie_clkreq_groups, ptr @.str.40, ptr @ephy0_act_led_groups, ptr @.str.41, ptr @ephy1_act_led_groups, ptr @.str.42, ptr @ephy2_act_led_groups, ptr @.str.43, ptr @ephy3_act_led_groups, ptr @hsspi_cs1_groups, ptr @.str.44, ptr @usb_host_port_groups, ptr @.str.45, ptr @usb_device_port_groups, ptr @bcm6328_mux, ptr @.str.46], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6328_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6328_pinctrl_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6328_soc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6328_pctl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6328_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6328_pins to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6328_groups to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio4_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio5_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio6_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio7_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio8_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio9_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio10_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio11_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio12_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio13_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio14_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio15_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio16_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio17_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio18_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio19_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio20_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio21_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio22_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio23_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio24_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio25_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio26_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio27_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio28_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio29_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio30_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio31_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsspi_cs1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_port1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6328_funcs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_groups to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_led_data_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_led_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet_act_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_clkreq_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ephy0_act_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ephy1_act_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ephy2_act_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ephy3_act_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsspi_cs1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_host_port_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_device_port_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6328_mux to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6328_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm6328_pinctrl_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6328_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bcm63xx_pinctrl_probe(ptr noundef %pdev, ptr noundef nonnull @bcm6328_soc, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm63xx_pinctrl_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm6328_pinctrl_get_group_count(ptr nocapture noundef readnone %pctldev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bcm6328_pinctrl_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %group) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [34 x %struct.bcm6328_pingroup], ptr @bcm6328_groups, i32 0, i32 %group
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm6328_pinctrl_get_group_pins(ptr nocapture noundef readnone %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pins1 = getelementptr [34 x %struct.bcm6328_pingroup], ptr @bcm6328_groups, i32 0, i32 %group, i32 1
  %0 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins1, align 4
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pins, align 4
  %num_pins3 = getelementptr [34 x %struct.bcm6328_pingroup], ptr @bcm6328_groups, i32 0, i32 %group, i32 2
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
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm6328_pinctrl_get_func_count(ptr nocapture noundef readnone %pctldev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bcm6328_pinctrl_get_func_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [12 x %struct.bcm6328_function], ptr @bcm6328_funcs, i32 0, i32 %selector
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm6328_pinctrl_get_groups(ptr nocapture noundef readnone %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %groups1 = getelementptr [12 x %struct.bcm6328_function], ptr @bcm6328_funcs, i32 0, i32 %selector, i32 1
  %0 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups1, align 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %groups, align 4
  %num_groups3 = getelementptr [12 x %struct.bcm6328_function], ptr @bcm6328_funcs, i32 0, i32 %selector, i32 2
  %3 = ptrtoint ptr %num_groups3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_groups3, align 4
  %5 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6328_pinctrl_set_mux(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %pins = getelementptr [34 x %struct.bcm6328_pingroup], ptr @bcm6328_groups, i32 0, i32 %group, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %mode_val = getelementptr [12 x %struct.bcm6328_function], ptr @bcm6328_funcs, i32 0, i32 %selector, i32 3
  %4 = ptrtoint ptr %mode_val to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %mode_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp.i = icmp ult i32 %3, 32
  br i1 %cmp.i, label %if.then.i, label %entry.bcm6328_rmw_mux.exit_crit_edge

entry.bcm6328_rmw_mux.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm6328_rmw_mux.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %shl.i = shl nuw i32 1, %3
  %7 = and i32 %selector, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.not = icmp eq i32 %7, 0
  %spec.select.i = select i1 %tobool.not.i.not, i32 %shl.i, i32 0
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 24, i32 noundef %shl.i, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %bcm6328_rmw_mux.exit

bcm6328_rmw_mux.exit:                             ; preds = %if.then.i, %entry.bcm6328_rmw_mux.exit_crit_edge
  %bf.lshr4 = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr4, 3
  %bf.cast5 = zext i8 %bf.clear to i32
  %regs2.i = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs2.i, align 4
  %div1.i.i = lshr i32 %3, 4
  %arrayidx.i.i = getelementptr [3 x i32], ptr @bcm6328_mux, i32 0, i32 %div1.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %rem.i = shl i32 %3, 1
  %mul.i = and i32 %rem.i, 30
  %shl4.i = shl nuw i32 3, %mul.i
  %shl7.i = shl nuw i32 %bf.cast5, %mul.i
  %call.i15.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %shl4.i, i32 noundef %shl7.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6328_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 32
  br i1 %cmp.i, label %if.then.i, label %entry.bcm6328_rmw_mux.exit_crit_edge

entry.bcm6328_rmw_mux.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm6328_rmw_mux.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %shl.i = shl nuw i32 1, %offset
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 24, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %bcm6328_rmw_mux.exit

bcm6328_rmw_mux.exit:                             ; preds = %if.then.i, %entry.bcm6328_rmw_mux.exit_crit_edge
  %regs2.i = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs2.i, align 4
  %div1.i.i = lshr i32 %offset, 4
  %arrayidx.i.i = getelementptr [3 x i32], ptr @bcm6328_mux, i32 0, i32 %div1.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %rem.i = shl i32 %offset, 1
  %mul.i = and i32 %rem.i, 30
  %shl4.i = shl nuw i32 3, %mul.i
  %call.i15.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %shl4.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204}
!llvm.module.flags = !{!206, !207, !208, !209, !210, !211, !212, !213}
!llvm.ident = !{!214}

!0 = !{ptr @__initcall__kmod_pinctrl_bcm6328__223_404_bcm6328_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_bcm6328__223_404_bcm6328_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 404, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 399, i32 11}
!4 = !{ptr @bcm6328_pinctrl_driver, !5, !"bcm6328_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 396, i32 31}
!6 = !{ptr @bcm6328_soc, !7, !"bcm6328_soc", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 378, i32 41}
!8 = !{ptr @bcm6328_pctl_ops, !9, !"bcm6328_pctl_ops", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 361, i32 33}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 136, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 137, i32 2}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 138, i32 2}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 139, i32 2}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 140, i32 2}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 141, i32 2}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 142, i32 2}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 143, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 144, i32 2}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 145, i32 2}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 146, i32 2}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 147, i32 2}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 148, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 149, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 150, i32 2}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 151, i32 2}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 152, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 153, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 154, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 155, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 156, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 157, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 158, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 159, i32 2}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 160, i32 2}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 161, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 162, i32 2}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 163, i32 2}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 164, i32 2}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 165, i32 2}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 166, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 167, i32 2}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 169, i32 2}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 170, i32 2}
!78 = !{ptr @bcm6328_groups, !79, !"bcm6328_groups", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 135, i32 32}
!80 = !{ptr @gpio0_pins, !81, !"gpio0_pins", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 92, i32 17}
!82 = !{ptr @gpio1_pins, !83, !"gpio1_pins", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 93, i32 17}
!84 = !{ptr @gpio2_pins, !85, !"gpio2_pins", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 94, i32 17}
!86 = !{ptr @gpio3_pins, !87, !"gpio3_pins", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 95, i32 17}
!88 = !{ptr @gpio4_pins, !89, !"gpio4_pins", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 96, i32 17}
!90 = !{ptr @gpio5_pins, !91, !"gpio5_pins", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 97, i32 17}
!92 = !{ptr @gpio6_pins, !93, !"gpio6_pins", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 98, i32 17}
!94 = !{ptr @gpio7_pins, !95, !"gpio7_pins", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 99, i32 17}
!96 = !{ptr @gpio8_pins, !97, !"gpio8_pins", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 100, i32 17}
!98 = !{ptr @gpio9_pins, !99, !"gpio9_pins", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 101, i32 17}
!100 = !{ptr @gpio10_pins, !101, !"gpio10_pins", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 102, i32 17}
!102 = !{ptr @gpio11_pins, !103, !"gpio11_pins", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 103, i32 17}
!104 = !{ptr @gpio12_pins, !105, !"gpio12_pins", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 104, i32 17}
!106 = !{ptr @gpio13_pins, !107, !"gpio13_pins", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 105, i32 17}
!108 = !{ptr @gpio14_pins, !109, !"gpio14_pins", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 106, i32 17}
!110 = !{ptr @gpio15_pins, !111, !"gpio15_pins", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 107, i32 17}
!112 = !{ptr @gpio16_pins, !113, !"gpio16_pins", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 108, i32 17}
!114 = !{ptr @gpio17_pins, !115, !"gpio17_pins", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 109, i32 17}
!116 = !{ptr @gpio18_pins, !117, !"gpio18_pins", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 110, i32 17}
!118 = !{ptr @gpio19_pins, !119, !"gpio19_pins", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 111, i32 17}
!120 = !{ptr @gpio20_pins, !121, !"gpio20_pins", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 112, i32 17}
!122 = !{ptr @gpio21_pins, !123, !"gpio21_pins", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 113, i32 17}
!124 = !{ptr @gpio22_pins, !125, !"gpio22_pins", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 114, i32 17}
!126 = !{ptr @gpio23_pins, !127, !"gpio23_pins", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 115, i32 17}
!128 = !{ptr @gpio24_pins, !129, !"gpio24_pins", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 116, i32 17}
!130 = !{ptr @gpio25_pins, !131, !"gpio25_pins", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 117, i32 17}
!132 = !{ptr @gpio26_pins, !133, !"gpio26_pins", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 118, i32 17}
!134 = !{ptr @gpio27_pins, !135, !"gpio27_pins", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 119, i32 17}
!136 = !{ptr @gpio28_pins, !137, !"gpio28_pins", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 120, i32 17}
!138 = !{ptr @gpio29_pins, !139, !"gpio29_pins", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 121, i32 17}
!140 = !{ptr @gpio30_pins, !141, !"gpio30_pins", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 122, i32 17}
!142 = !{ptr @gpio31_pins, !143, !"gpio31_pins", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 123, i32 17}
!144 = !{ptr @hsspi_cs1_pins, !145, !"hsspi_cs1_pins", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 125, i32 17}
!146 = !{ptr @usb_port1_pins, !147, !"usb_port1_pins", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 126, i32 17}
!148 = !{ptr @bcm6328_pmx_ops, !149, !"bcm6328_pmx_ops", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 369, i32 32}
!150 = !{ptr @.str.35, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 263, i32 2}
!152 = !{ptr @.str.36, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 264, i32 2}
!154 = !{ptr @.str.37, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 265, i32 2}
!156 = !{ptr @.str.38, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 266, i32 2}
!158 = !{ptr @.str.39, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 267, i32 2}
!160 = !{ptr @.str.40, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 268, i32 2}
!162 = !{ptr @.str.41, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 269, i32 2}
!164 = !{ptr @.str.42, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 270, i32 2}
!166 = !{ptr @.str.43, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 271, i32 2}
!168 = !{ptr @.str.44, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 273, i32 2}
!170 = !{ptr @.str.45, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 274, i32 2}
!172 = !{ptr @bcm6328_funcs, !173, !"bcm6328_funcs", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 262, i32 38}
!174 = !{ptr @led_groups, !175, !"led_groups", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 174, i32 27}
!176 = !{ptr @serial_led_data_groups, !177, !"serial_led_data_groups", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 202, i32 27}
!178 = !{ptr @serial_led_clk_groups, !179, !"serial_led_clk_groups", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 206, i32 27}
!180 = !{ptr @inet_act_led_groups, !181, !"inet_act_led_groups", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 210, i32 27}
!182 = !{ptr @pcie_clkreq_groups, !183, !"pcie_clkreq_groups", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 214, i32 27}
!184 = !{ptr @ephy0_act_led_groups, !185, !"ephy0_act_led_groups", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 218, i32 27}
!186 = !{ptr @ephy1_act_led_groups, !187, !"ephy1_act_led_groups", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 222, i32 27}
!188 = !{ptr @ephy2_act_led_groups, !189, !"ephy2_act_led_groups", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 226, i32 27}
!190 = !{ptr @ephy3_act_led_groups, !191, !"ephy3_act_led_groups", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 230, i32 27}
!192 = !{ptr @hsspi_cs1_groups, !193, !"hsspi_cs1_groups", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 234, i32 27}
!194 = !{ptr @usb_host_port_groups, !195, !"usb_host_port_groups", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 238, i32 27}
!196 = !{ptr @usb_device_port_groups, !197, !"usb_device_port_groups", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 242, i32 27}
!198 = !{ptr @bcm6328_mux, !199, !"bcm6328_mux", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 44, i32 27}
!200 = !{ptr @.str.46, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 89, i32 2}
!202 = !{ptr @bcm6328_pins, !203, !"bcm6328_pins", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 50, i32 38}
!204 = !{ptr @bcm6328_pinctrl_match, !205, !"bcm6328_pinctrl_match", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6328.c", i32 391, i32 34}
!206 = !{i32 1, !"wchar_size", i32 2}
!207 = !{i32 1, !"min_enum_size", i32 4}
!208 = !{i32 8, !"branch-target-enforcement", i32 0}
!209 = !{i32 8, !"sign-return-address", i32 0}
!210 = !{i32 8, !"sign-return-address-all", i32 0}
!211 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!212 = !{i32 7, !"uwtable", i32 1}
!213 = !{i32 7, !"frame-pointer", i32 2}
!214 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
