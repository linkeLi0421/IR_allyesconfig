; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/qcom/pinctrl-lpass-lpi.c_pt.bc'
source_filename = "../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lpi_pinctrl_variant_data = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.lpi_pingroup = type { ptr, ptr, i32, i32, i32, ptr, i32 }
%struct.lpi_function = type { ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.lpi_pinctrl = type { ptr, ptr, %struct.gpio_chip, %struct.pinctrl_desc, ptr, ptr, [2 x %struct.clk_bulk_data], %struct.mutex, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pinctrl_lpass_lpi__243_693_lpi_pinctrl_driver_init6 = internal global ptr @lpi_pinctrl_driver_init, section ".initcall6.init", align 4
@lpi_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lpi_pinctrl_probe, ptr @lpi_pinctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lpi_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lpi_pinctrl_driver_exit = internal global ptr @lpi_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description244 = internal constant [62 x i8] c"pinctrl_lpass_lpi.description=QTI LPI GPIO pin control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [62 x i8] c"pinctrl_lpass_lpi.file=drivers/pinctrl/qcom/pinctrl-lpass-lpi\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [30 x i8] c"pinctrl_lpass_lpi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom-lpass-lpi-pinctrl\00", [41 x i8] zeroinitializer }, align 32
@lpi_pinctrl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-lpass-lpi-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8250_lpi_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TLMM resource not provided\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Slew resource not provided\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Can't get clocks\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Can't enable clocks\0A\00", [43 x i8] zeroinitializer }, align 32
@lpi_gpio_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @lpi_gpio_get_groups_count, ptr @lpi_gpio_get_group_name, ptr @lpi_gpio_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@lpi_gpio_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @lpi_gpio_get_functions_count, ptr @lpi_gpio_get_function_name, ptr @lpi_gpio_get_function_groups, ptr @lpi_gpio_set_mux, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@lpi_gpio_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr null, ptr null, ptr @lpi_config_get, ptr @lpi_config_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@lpi_gpio_template = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr null, ptr @lpi_gpio_direction_input, ptr @lpi_gpio_direction_output, ptr @lpi_gpio_get, ptr null, ptr @lpi_gpio_set, ptr null, ptr null, ptr null, ptr @lpi_gpio_dbg_show, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@lpi_pinctrl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&pctrl->slew_access_lock\00", [39 x i8] zeroinitializer }, align 32
@lpi_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 646, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add pin controller\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpi_pinctrl_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/pinctrl/qcom/pinctrl-lpass-lpi.c\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpi_pinctrl_probe._entry_ptr = internal global ptr @lpi_pinctrl_probe._entry, section ".printk_index", align 4
@lpi_pinctrl_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lpi_pinctrl_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lpi_pinctrl_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 652, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't add gpio chip\0A\00", [43 x i8] zeroinitializer }, align 32
@lpi_pinctrl_probe._entry_ptr.15 = internal global ptr @lpi_pinctrl_probe._entry.13, section ".printk_index", align 4
@lpi_config_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.10, i32 433, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid slew rate %u for pin: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lpi_config_set\00", [17 x i8] zeroinitializer }, align 32
@lpi_config_set._entry_ptr = internal global ptr @lpi_config_set._entry, section ".printk_index", align 4
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@lpi_gpio_dbg_show_one.pulls = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"no pull\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pull down\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"keeper\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pull up\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" %-8s: %-3s %d\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %dmA\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@sm8250_lpi_data = internal global { %struct.lpi_pinctrl_variant_data, [40 x i8] } { %struct.lpi_pinctrl_variant_data { ptr @sm8250_lpi_pins, i32 14, ptr @sm8250_groups, i32 14, ptr @sm8250_functions, i32 21 }, [40 x i8] zeroinitializer }, align 32
@sm8250_lpi_pins = internal constant { [14 x %struct.pinctrl_pin_desc], [56 x i8] } { [14 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.41, ptr null }], [56 x i8] zeroinitializer }, align 32
@sm8250_groups = internal constant { [14 x %struct.lpi_pingroup], [120 x i8] } { [14 x %struct.lpi_pingroup] [%struct.lpi_pingroup { ptr @.str.28, ptr @gpio0_pins, i32 1, i32 0, i32 0, ptr @.compoundliteral, i32 5 }, %struct.lpi_pingroup { ptr @.str.29, ptr @gpio1_pins, i32 1, i32 1, i32 2, ptr @.compoundliteral.42, i32 5 }, %struct.lpi_pingroup { ptr @.str.30, ptr @gpio2_pins, i32 1, i32 2, i32 4, ptr @.compoundliteral.43, i32 5 }, %struct.lpi_pingroup { ptr @.str.31, ptr @gpio3_pins, i32 1, i32 3, i32 8, ptr @.compoundliteral.44, i32 5 }, %struct.lpi_pingroup { ptr @.str.32, ptr @gpio4_pins, i32 1, i32 4, i32 10, ptr @.compoundliteral.45, i32 5 }, %struct.lpi_pingroup { ptr @.str.33, ptr @gpio5_pins, i32 1, i32 5, i32 12, ptr @.compoundliteral.46, i32 5 }, %struct.lpi_pingroup { ptr @.str.34, ptr @gpio6_pins, i32 1, i32 6, i32 -1, ptr @.compoundliteral.47, i32 5 }, %struct.lpi_pingroup { ptr @.str.35, ptr @gpio7_pins, i32 1, i32 7, i32 -1, ptr @.compoundliteral.48, i32 5 }, %struct.lpi_pingroup { ptr @.str.36, ptr @gpio8_pins, i32 1, i32 8, i32 -1, ptr @.compoundliteral.49, i32 5 }, %struct.lpi_pingroup { ptr @.str.37, ptr @gpio9_pins, i32 1, i32 9, i32 -1, ptr @.compoundliteral.50, i32 5 }, %struct.lpi_pingroup { ptr @.str.38, ptr @gpio10_pins, i32 1, i32 10, i32 16, ptr @.compoundliteral.51, i32 5 }, %struct.lpi_pingroup { ptr @.str.39, ptr @gpio11_pins, i32 1, i32 11, i32 18, ptr @.compoundliteral.52, i32 5 }, %struct.lpi_pingroup { ptr @.str.40, ptr @gpio12_pins, i32 1, i32 12, i32 -1, ptr @.compoundliteral.53, i32 5 }, %struct.lpi_pingroup { ptr @.str.41, ptr @gpio13_pins, i32 1, i32 13, i32 -1, ptr @.compoundliteral.54, i32 5 }], [120 x i8] zeroinitializer }, align 32
@sm8250_functions = internal constant { [21 x %struct.lpi_function], [36 x i8] } { [21 x %struct.lpi_function] [%struct.lpi_function { ptr @.str.55, ptr @dmic1_clk_groups, i32 1 }, %struct.lpi_function { ptr @.str.56, ptr @dmic1_data_groups, i32 1 }, %struct.lpi_function { ptr @.str.57, ptr @dmic2_clk_groups, i32 1 }, %struct.lpi_function { ptr @.str.58, ptr @dmic2_data_groups, i32 1 }, %struct.lpi_function { ptr @.str.59, ptr @dmic3_clk_groups, i32 1 }, %struct.lpi_function { ptr @.str.60, ptr @dmic3_data_groups, i32 1 }, %struct.lpi_function { ptr @.str.61, ptr @i2s1_clk_groups, i32 1 }, %struct.lpi_function { ptr @.str.62, ptr @i2s1_data_groups, i32 2 }, %struct.lpi_function { ptr @.str.63, ptr @i2s1_ws_groups, i32 1 }, %struct.lpi_function { ptr @.str.64, ptr @i2s2_clk_groups, i32 1 }, %struct.lpi_function { ptr @.str.65, ptr @i2s2_data_groups, i32 2 }, %struct.lpi_function { ptr @.str.66, ptr @i2s2_ws_groups, i32 1 }, %struct.lpi_function { ptr @.str.67, ptr @qua_mi2s_data_groups, i32 3 }, %struct.lpi_function { ptr @.str.68, ptr @qua_mi2s_sclk_groups, i32 1 }, %struct.lpi_function { ptr @.str.69, ptr @qua_mi2s_ws_groups, i32 1 }, %struct.lpi_function { ptr @.str.70, ptr @swr_rx_clk_groups, i32 1 }, %struct.lpi_function { ptr @.str.71, ptr @swr_rx_data_groups, i32 2 }, %struct.lpi_function { ptr @.str.72, ptr @swr_tx_clk_groups, i32 1 }, %struct.lpi_function { ptr @.str.73, ptr @swr_tx_data_groups, i32 3 }, %struct.lpi_function { ptr @.str.74, ptr @wsa_swr_clk_groups, i32 1 }, %struct.lpi_function { ptr @.str.75, ptr @wsa_swr_data_groups, i32 1 }], [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio9\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio10\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio11\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio12\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio13\00", [25 x i8] zeroinitializer }, align 32
@gpio0_pins = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@.compoundliteral = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 21, i32 17, i32 13, i32 22, i32 22], [44 x i8] zeroinitializer }, align 32
@gpio1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 21, i32 18, i32 14, i32 22, i32 22], [44 x i8] zeroinitializer }, align 32
@gpio2_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 21, i32 18, i32 12, i32 22, i32 22], [44 x i8] zeroinitializer }, align 32
@gpio3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 3], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 21, i32 15, i32 12, i32 22, i32 22], [44 x i8] zeroinitializer }, align 32
@gpio4_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 21, i32 16, i32 12, i32 22, i32 22], [44 x i8] zeroinitializer }, align 32
@gpio5_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 5], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 21, i32 18, i32 16, i32 22, i32 22], [44 x i8] zeroinitializer }, align 32
@gpio6_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 6], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 21, i32 0, i32 6, i32 22, i32 22], [44 x i8] zeroinitializer }, align 32
@gpio7_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 7], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 21, i32 1, i32 8, i32 22, i32 22], [44 x i8] zeroinitializer }, align 32
@gpio8_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 8], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 21, i32 2, i32 7, i32 22, i32 22], [44 x i8] zeroinitializer }, align 32
@gpio9_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 9], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 21, i32 3, i32 7, i32 22, i32 22], [44 x i8] zeroinitializer }, align 32
@gpio10_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 10], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 21, i32 9, i32 19, i32 22, i32 22], [44 x i8] zeroinitializer }, align 32
@gpio11_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 11], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 21, i32 11, i32 20, i32 22, i32 22], [44 x i8] zeroinitializer }, align 32
@gpio12_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 12], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 21, i32 4, i32 10, i32 22, i32 22], [44 x i8] zeroinitializer }, align 32
@gpio13_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 21, i32 5, i32 10, i32 22, i32 22], [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dmic1_clk\00", [22 x i8] zeroinitializer }, align 32
@dmic1_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.34], [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dmic1_data\00", [21 x i8] zeroinitializer }, align 32
@dmic1_data_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.35], [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dmic2_clk\00", [22 x i8] zeroinitializer }, align 32
@dmic2_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dmic2_data\00", [21 x i8] zeroinitializer }, align 32
@dmic2_data_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.37], [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dmic3_clk\00", [22 x i8] zeroinitializer }, align 32
@dmic3_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.40], [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dmic3_data\00", [21 x i8] zeroinitializer }, align 32
@dmic3_data_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.41], [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s1_clk\00", [23 x i8] zeroinitializer }, align 32
@i2s1_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.34], [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s1_data\00", [22 x i8] zeroinitializer }, align 32
@i2s1_data_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.36, ptr @.str.37], [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2s1_ws\00", [24 x i8] zeroinitializer }, align 32
@i2s1_ws_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.35], [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s2_clk\00", [23 x i8] zeroinitializer }, align 32
@i2s2_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s2_data\00", [22 x i8] zeroinitializer }, align 32
@i2s2_data_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.40, ptr @.str.40], [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2s2_ws\00", [24 x i8] zeroinitializer }, align 32
@i2s2_ws_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.39], [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qua_mi2s_data\00", [18 x i8] zeroinitializer }, align 32
@qua_mi2s_data_groups = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32], [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qua_mi2s_sclk\00", [18 x i8] zeroinitializer }, align 32
@qua_mi2s_sclk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qua_mi2s_ws\00", [20 x i8] zeroinitializer }, align 32
@qua_mi2s_ws_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.29], [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"swr_rx_clk\00", [21 x i8] zeroinitializer }, align 32
@swr_rx_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.31], [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"swr_rx_data\00", [20 x i8] zeroinitializer }, align 32
@swr_rx_data_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.32, ptr @.str.33], [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"swr_tx_clk\00", [21 x i8] zeroinitializer }, align 32
@swr_tx_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"swr_tx_data\00", [20 x i8] zeroinitializer }, align 32
@swr_tx_data_groups = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.33], [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wsa_swr_clk\00", [20 x i8] zeroinitializer }, align 32
@wsa_swr_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wsa_swr_data\00", [19 x i8] zeroinitializer }, align 32
@wsa_swr_data_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.39], [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 3, i64 5, i64 12, i64 17]
@__sancov_gen_cov_switch_values.76 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 3, i64 5, i64 9, i64 12, i64 17, i64 24]
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"lpi_pinctrl_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 684, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 686, i32 14 }
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"lpi_pinctrl_of_match\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 675, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 605, i32 22 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 606, i32 22 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 611, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 616, i32 10 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 620, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 624, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant [21 x i8] c"lpi_gpio_pinctrl_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 281, i32 33 }
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c"lpi_gpio_pinmux_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 340, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant [21 x i8] c"lpi_gpio_pinconf_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 472, i32 33 }
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"lpi_gpio_template\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 575, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 641, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 646, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 650, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 652, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 432, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 567, i32 15 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"pulls\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 539, i32 28 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 540, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 541, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 542, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 543, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 555, i32 16 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 555, i32 57 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 555, i32 65 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 556, i32 16 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 557, i32 16 }
@___asan_gen_.194 = private unnamed_addr constant [16 x i8] c"sm8250_lpi_data\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 230, i32 40 }
@___asan_gen_.197 = private unnamed_addr constant [16 x i8] c"sm8250_lpi_pins\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 110, i32 38 }
@___asan_gen_.200 = private unnamed_addr constant [14 x i8] c"sm8250_groups\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 189, i32 34 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"sm8250_functions\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 206, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 111, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 112, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 113, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 114, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 115, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 116, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 117, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 118, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 119, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 120, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 121, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 122, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 123, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 124, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [11 x i8] c"gpio0_pins\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 153, i32 27 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [11 x i8] c"gpio1_pins\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 154, i32 27 }
@___asan_gen_.255 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [11 x i8] c"gpio2_pins\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 155, i32 27 }
@___asan_gen_.259 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [11 x i8] c"gpio3_pins\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 156, i32 27 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [11 x i8] c"gpio4_pins\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 157, i32 27 }
@___asan_gen_.267 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [11 x i8] c"gpio5_pins\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 158, i32 27 }
@___asan_gen_.271 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [11 x i8] c"gpio6_pins\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 159, i32 27 }
@___asan_gen_.275 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [11 x i8] c"gpio7_pins\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 160, i32 27 }
@___asan_gen_.279 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [11 x i8] c"gpio8_pins\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 161, i32 27 }
@___asan_gen_.283 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [11 x i8] c"gpio9_pins\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 162, i32 27 }
@___asan_gen_.287 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [12 x i8] c"gpio10_pins\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 163, i32 27 }
@___asan_gen_.291 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [12 x i8] c"gpio11_pins\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 164, i32 27 }
@___asan_gen_.295 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [12 x i8] c"gpio12_pins\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 165, i32 27 }
@___asan_gen_.299 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [12 x i8] c"gpio13_pins\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 166, i32 27 }
@___asan_gen_.303 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 207, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"dmic1_clk_groups\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 171, i32 27 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 208, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [18 x i8] c"dmic1_data_groups\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 172, i32 27 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 209, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"dmic2_clk_groups\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 173, i32 27 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 210, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [18 x i8] c"dmic2_data_groups\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 174, i32 27 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 211, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [17 x i8] c"dmic3_clk_groups\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 177, i32 27 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 212, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [18 x i8] c"dmic3_data_groups\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 178, i32 27 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 213, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant [16 x i8] c"i2s1_clk_groups\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 182, i32 27 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 214, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c"i2s1_data_groups\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 184, i32 27 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 215, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [15 x i8] c"i2s1_ws_groups\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 183, i32 27 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 216, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [16 x i8] c"i2s2_clk_groups\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 175, i32 27 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 217, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [17 x i8] c"i2s2_data_groups\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 187, i32 27 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 218, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [15 x i8] c"i2s2_ws_groups\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 176, i32 27 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 219, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [21 x i8] c"qua_mi2s_data_groups\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 181, i32 27 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 220, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant [21 x i8] c"qua_mi2s_sclk_groups\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 179, i32 27 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 221, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [19 x i8] c"qua_mi2s_ws_groups\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 180, i32 27 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 222, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant [18 x i8] c"swr_rx_clk_groups\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 169, i32 27 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 223, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant [19 x i8] c"swr_rx_data_groups\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 170, i32 27 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 224, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [18 x i8] c"swr_tx_clk_groups\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 167, i32 27 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 225, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant [19 x i8] c"swr_tx_data_groups\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 168, i32 27 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 226, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant [19 x i8] c"wsa_swr_clk_groups\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 185, i32 27 }
@___asan_gen_.424 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 227, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant [20 x i8] c"wsa_swr_data_groups\00", align 1
@___asan_gen_.428 = private constant [44 x i8] c"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 186, i32 27 }
@llvm.compiler.used = appending global [136 x ptr] [ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_lpi_pinctrl_driver_exit, ptr @__initcall__kmod_pinctrl_lpass_lpi__243_693_lpi_pinctrl_driver_init6, ptr @lpi_config_set._entry, ptr @lpi_config_set._entry_ptr, ptr @lpi_pinctrl_driver_exit, ptr @lpi_pinctrl_probe._entry, ptr @lpi_pinctrl_probe._entry.13, ptr @lpi_pinctrl_probe._entry_ptr, ptr @lpi_pinctrl_probe._entry_ptr.15, ptr @lpi_pinctrl_driver, ptr @.str, ptr @lpi_pinctrl_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @lpi_gpio_pinctrl_ops, ptr @lpi_gpio_pinmux_ops, ptr @lpi_gpio_pinconf_ops, ptr @lpi_gpio_template, ptr @lpi_pinctrl_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @lpi_pinctrl_probe.lock_key, ptr @lpi_pinctrl_probe.request_key, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @lpi_gpio_dbg_show_one.pulls, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @sm8250_lpi_data, ptr @sm8250_lpi_pins, ptr @sm8250_groups, ptr @sm8250_functions, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @gpio0_pins, ptr @.compoundliteral, ptr @gpio1_pins, ptr @.compoundliteral.42, ptr @gpio2_pins, ptr @.compoundliteral.43, ptr @gpio3_pins, ptr @.compoundliteral.44, ptr @gpio4_pins, ptr @.compoundliteral.45, ptr @gpio5_pins, ptr @.compoundliteral.46, ptr @gpio6_pins, ptr @.compoundliteral.47, ptr @gpio7_pins, ptr @.compoundliteral.48, ptr @gpio8_pins, ptr @.compoundliteral.49, ptr @gpio9_pins, ptr @.compoundliteral.50, ptr @gpio10_pins, ptr @.compoundliteral.51, ptr @gpio11_pins, ptr @.compoundliteral.52, ptr @gpio12_pins, ptr @.compoundliteral.53, ptr @gpio13_pins, ptr @.compoundliteral.54, ptr @.str.55, ptr @dmic1_clk_groups, ptr @.str.56, ptr @dmic1_data_groups, ptr @.str.57, ptr @dmic2_clk_groups, ptr @.str.58, ptr @dmic2_data_groups, ptr @.str.59, ptr @dmic3_clk_groups, ptr @.str.60, ptr @dmic3_data_groups, ptr @.str.61, ptr @i2s1_clk_groups, ptr @.str.62, ptr @i2s1_data_groups, ptr @.str.63, ptr @i2s1_ws_groups, ptr @.str.64, ptr @i2s2_clk_groups, ptr @.str.65, ptr @i2s2_data_groups, ptr @.str.66, ptr @i2s2_ws_groups, ptr @.str.67, ptr @qua_mi2s_data_groups, ptr @.str.68, ptr @qua_mi2s_sclk_groups, ptr @.str.69, ptr @qua_mi2s_ws_groups, ptr @.str.70, ptr @swr_rx_clk_groups, ptr @.str.71, ptr @swr_rx_data_groups, ptr @.str.72, ptr @swr_tx_clk_groups, ptr @.str.73, ptr @swr_tx_data_groups, ptr @.str.74, ptr @wsa_swr_clk_groups, ptr @.str.75, ptr @wsa_swr_data_groups], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi_pinctrl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi_gpio_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi_gpio_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi_gpio_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi_gpio_template to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi_pinctrl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi_pinctrl_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi_pinctrl_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi_pinctrl_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi_config_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi_gpio_dbg_show_one.pulls to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_lpi_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_lpi_pins to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_groups to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_functions to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio4_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio5_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio6_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio7_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio8_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio9_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio10_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio11_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio12_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio13_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic1_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic1_data_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic2_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic2_data_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic3_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic3_data_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_data_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_ws_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_data_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_ws_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qua_mi2s_data_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qua_mi2s_sclk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qua_mi2s_ws_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swr_rx_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swr_rx_data_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swr_tx_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swr_tx_data_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_swr_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_swr_data_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpi_pinctrl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpi_pinctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @lpi_pinctrl_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 520, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data6 = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %data6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %data6, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %clks = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.1, ptr %clks, align 4
  %arrayidx10 = getelementptr %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %arrayidx10, align 4
  %call12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %tlmm_base = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %tlmm_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call12, ptr %tlmm_base, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call12 to i32
  %call18 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %6, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end5
  %call20 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #7
  %slew_base = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %slew_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call20, ptr %slew_base, align 4
  %cmp.i147 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call20 to i32
  %call26 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %8, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %call29 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %clks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call29, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %call.i148 = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %clks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool.not.i = icmp eq i32 %call.i148, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end33.if.then38_crit_edge

if.end33.if.then38_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

if.end.i:                                         ; preds = %if.end33
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %clks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end40, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #7
  br label %if.then38

if.then38:                                        ; preds = %if.then3.i, %if.end33.if.then38_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i148, %if.end33.if.then38_crit_edge ]
  %call39 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %retval.0.i.ph, ptr noundef nonnull @.str.6) #7
  br label %cleanup

if.end40:                                         ; preds = %if.end.i
  %desc = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 3
  %pctlops = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @lpi_gpio_pinctrl_ops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @lpi_gpio_pinmux_ops, ptr %pmxops, align 4
  %confops = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 3, i32 5
  %11 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @lpi_gpio_pinconf_ops, ptr %confops, align 4
  %owner = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 3, i32 6
  %12 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %owner, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i149 = icmp eq ptr %14, null
  br i1 %tobool.not.i149, label %if.end.i150, label %if.end40.dev_name.exit_crit_edge

if.end40.dev_name.exit_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i150:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i150, %if.end40.dev_name.exit_crit_edge
  %retval.0.i151 = phi ptr [ %16, %if.end.i150 ], [ %14, %if.end40.dev_name.exit_crit_edge ]
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %retval.0.i151, ptr %desc, align 4
  %18 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call2, align 4
  %pins47 = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %pins47 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %pins47, align 4
  %npins = getelementptr inbounds %struct.lpi_pinctrl_variant_data, ptr %call2, i32 0, i32 1
  %21 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %npins, align 4
  %npins49 = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %npins49 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %npins49, align 4
  %chip = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 2
  %24 = call ptr @memcpy(ptr %chip, ptr @lpi_gpio_template, i32 348)
  %parent = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev1, ptr %parent, align 4
  %base = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 2, i32 19
  %26 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %base, align 4
  %27 = load i32, ptr %npins, align 4
  %conv = trunc i32 %27 to i16
  %ngpio = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 2, i32 20
  %28 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv, ptr %ngpio, align 4
  br i1 %tobool.not.i149, label %if.end.i154, label %dev_name.exit.dev_name.exit156_crit_edge

dev_name.exit.dev_name.exit156_crit_edge:         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit156

if.end.i154:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit156

dev_name.exit156:                                 ; preds = %if.end.i154, %dev_name.exit.dev_name.exit156_crit_edge
  %retval.0.i155 = phi ptr [ %30, %if.end.i154 ], [ %14, %dev_name.exit.dev_name.exit156_crit_edge ]
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %retval.0.i155, ptr %chip, align 4
  %of_gpio_n_cells = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 2, i32 40
  %32 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %of_gpio_n_cells, align 4
  %can_sleep = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 2, i32 23
  %33 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %can_sleep, align 4
  %slew_access_lock = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %slew_access_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @lpi_pinctrl_probe.__key) #7
  %call59 = tail call ptr @devm_pinctrl_register(ptr noundef %dev1, ptr noundef %desc, ptr noundef nonnull %call.i) #7
  %ctrl = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call59, ptr %ctrl, align 4
  %cmp.i157 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %if.then62, label %if.end68

if.then62:                                        ; preds = %dev_name.exit156
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call59 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %err_pinctrl

if.end68:                                         ; preds = %dev_name.exit156
  %call70 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef %chip, ptr noundef nonnull %call.i, ptr noundef nonnull @lpi_pinctrl_probe.lock_key, ptr noundef nonnull @lpi_pinctrl_probe.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end68.cleanup_crit_edge, label %do.end75

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.14) #10
  br label %err_pinctrl

err_pinctrl:                                      ; preds = %do.end75, %if.then62
  %ret.0 = phi i32 [ %35, %if.then62 ], [ %call70, %do.end75 ]
  tail call void @mutex_destroy(ptr noundef %slew_access_lock) #7
  tail call fastcc void @clk_bulk_disable_unprepare(ptr noundef %clks)
  br label %cleanup

cleanup:                                          ; preds = %err_pinctrl, %if.end68.cleanup_crit_edge, %if.then38, %if.then31, %if.then23, %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.then15 ], [ %call26, %if.then23 ], [ %call32, %if.then31 ], [ %call39, %if.then38 ], [ %ret.0, %err_pinctrl ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi_pinctrl_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %slew_access_lock = getelementptr inbounds %struct.lpi_pinctrl, ptr %1, i32 0, i32 7
  tail call void @mutex_destroy(ptr noundef %slew_access_lock) #7
  %clks = getelementptr inbounds %struct.lpi_pinctrl, ptr %1, i32 0, i32 6
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks) #7
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_bulk_disable_unprepare(ptr noundef %clks) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks) #7
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi_gpio_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %data = getelementptr inbounds %struct.lpi_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ngroups = getelementptr inbounds %struct.lpi_pinctrl_variant_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngroups, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lpi_gpio_get_group_name(ptr noundef %pctldev, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %data = getelementptr inbounds %struct.lpi_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %groups = getelementptr inbounds %struct.lpi_pinctrl_variant_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.lpi_pingroup, ptr %3, i32 %group
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi_gpio_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %data = getelementptr inbounds %struct.lpi_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %groups = getelementptr inbounds %struct.lpi_pinctrl_variant_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.lpi_pingroup, ptr %3, i32 %group, i32 1
  %4 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins1, align 4
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pins, align 4
  %7 = load ptr, ptr %data, align 4
  %groups3 = getelementptr inbounds %struct.lpi_pinctrl_variant_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %groups3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %groups3, align 4
  %npins = getelementptr %struct.lpi_pingroup, ptr %9, i32 %group, i32 2
  %10 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npins, align 4
  %12 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 4) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi_gpio_get_functions_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %data = getelementptr inbounds %struct.lpi_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %nfunctions = getelementptr inbounds %struct.lpi_pinctrl_variant_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nfunctions, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lpi_gpio_get_function_name(ptr noundef %pctldev, i32 noundef %function) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %data = getelementptr inbounds %struct.lpi_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %functions = getelementptr inbounds %struct.lpi_pinctrl_variant_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.lpi_function, ptr %3, i32 %function
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi_gpio_get_function_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_qgroups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %data = getelementptr inbounds %struct.lpi_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %functions = getelementptr inbounds %struct.lpi_pinctrl_variant_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.lpi_function, ptr %3, i32 %function, i32 1
  %4 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups1, align 4
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %groups, align 4
  %7 = load ptr, ptr %data, align 4
  %functions3 = getelementptr inbounds %struct.lpi_pinctrl_variant_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %functions3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functions3, align 4
  %ngroups = getelementptr %struct.lpi_function, ptr %9, i32 %function, i32 2
  %10 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ngroups, align 4
  %12 = ptrtoint ptr %num_qgroups to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_qgroups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi_gpio_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %data = getelementptr inbounds %struct.lpi_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %groups = getelementptr inbounds %struct.lpi_pinctrl_variant_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %pin1 = getelementptr %struct.lpi_pingroup, ptr %3, i32 %group_num, i32 3
  %4 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pin1, align 4
  %nfuncs = getelementptr %struct.lpi_pingroup, ptr %3, i32 %group_num, i32 6
  %6 = ptrtoint ptr %nfuncs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nfuncs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp50.not = icmp eq i32 %7, 0
  br i1 %cmp50.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %funcs = getelementptr %struct.lpi_pingroup, ptr %3, i32 %group_num, i32 5
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx2 = getelementptr i32, ptr %9, i32 %i.051
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %function)
  %cmp3 = icmp eq i32 %11, %function
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.051, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %7)
  %cmp5 = icmp eq i32 %i.0.lcssa, %7
  br i1 %cmp5, label %for.end.do.end_crit_edge, label %if.end28, !prof !236

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 330, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %tlmm_base.i = getelementptr inbounds %struct.lpi_pinctrl, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %tlmm_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tlmm_base.i, align 4
  %mul.i = shl i32 %5, 12
  %add.ptr.i = getelementptr i8, ptr %13, i32 %mul.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  %15 = and i32 %14, -1006632961
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = shl i32 %i.0.lcssa, 2
  %18 = and i32 %17, 60
  %or.i = or i32 %16, %18
  %19 = ptrtoint ptr %tlmm_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tlmm_base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %20, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !239
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %21) #7, !srcloc !240
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi_config_get(ptr nocapture noundef readonly %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %tlmm_base.i = getelementptr inbounds %struct.lpi_pinctrl, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %tlmm_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tlmm_base.i, align 4
  %mul.i = shl i32 %pin, 12
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !237
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  %and15 = and i32 %9, 3
  %trunc = trunc i32 %1 to i8
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 3, label %sw.bb16
    i8 0, label %sw.bb20
    i8 5, label %sw.bb24
    i8 12, label %entry.sw.bb28_crit_edge
    i8 17, label %entry.sw.bb28_crit_edge47
  ]

entry.sw.bb28_crit_edge47:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

entry.sw.bb28_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp = icmp eq i32 %and15, 0
  %spec.select = zext i1 %cmp to i32
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and15)
  %cmp17 = icmp eq i32 %and15, 1
  %spec.select43 = zext i1 %cmp17 to i32
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and15)
  %cmp21 = icmp eq i32 %and15, 2
  %spec.select44 = zext i1 %cmp21 to i32
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and15)
  %cmp25 = icmp eq i32 %and15, 3
  %spec.select45 = zext i1 %cmp25 to i32
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry.sw.bb28_crit_edge, %entry.sw.bb28_crit_edge47
  %and = lshr i32 %9, 9
  %and.lobit = and i32 %and, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb24, %sw.bb20, %sw.bb16, %sw.bb
  %arg.0 = phi i32 [ %spec.select, %sw.bb ], [ %spec.select43, %sw.bb16 ], [ %spec.select44, %sw.bb20 ], [ %spec.select45, %sw.bb24 ], [ %and.lobit, %sw.bb28 ]
  %shl.i = shl nuw nsw i32 %arg.0, 8
  %or.i = or i32 %shl.i, %and.i
  %11 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi_config_set(ptr nocapture noundef readonly %pctldev, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %nconfs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nconfs)
  %cmp144.not = icmp eq i32 %nconfs, 0
  br i1 %cmp144.not, label %entry.u32p_replace_bits.exit_crit_edge, label %for.body.lr.ph

entry.u32p_replace_bits.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %u32p_replace_bits.exit

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.lpi_pinctrl, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %groups = getelementptr inbounds %struct.lpi_pinctrl_variant_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %groups, align 4
  %slew_offset14 = getelementptr %struct.lpi_pingroup, ptr %7, i32 %group, i32 4
  %slew_access_lock = getelementptr inbounds %struct.lpi_pinctrl, ptr %3, i32 0, i32 7
  %slew_base = getelementptr inbounds %struct.lpi_pinctrl, ptr %3, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0149 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %output_enabled.0.off0148 = phi i1 [ false, %for.body.lr.ph ], [ %output_enabled.1.off0, %for.inc.for.body_crit_edge ]
  %value.0.off0147 = phi i1 [ true, %for.body.lr.ph ], [ %value.1.off0, %for.inc.for.body_crit_edge ]
  %strength.0146 = phi i32 [ 2, %for.body.lr.ph ], [ %strength.1, %for.inc.for.body_crit_edge ]
  %pullup.0145 = phi i32 [ 0, %for.body.lr.ph ], [ %pullup.1, %for.inc.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %configs, i32 %i.0149
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  %shr.i = lshr i32 %9, 8
  %trunc = trunc i32 %9 to i8
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %trunc, label %for.body.cleanup_crit_edge [
    i8 1, label %for.body.for.inc_crit_edge
    i8 3, label %sw.bb5
    i8 0, label %sw.bb6
    i8 5, label %sw.bb7
    i8 12, label %sw.bb8
    i8 17, label %sw.bb9
    i8 9, label %sw.bb10
    i8 24, label %sw.bb11
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb5:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb8:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %9)
  %tobool = icmp ugt i32 %9, 255
  br label %for.inc

sw.bb10:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb11:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %9)
  %cmp12 = icmp ugt i32 %9, 1023
  br i1 %cmp12, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.16, i32 noundef %shr.i, i32 noundef %group) #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb11
  %13 = ptrtoint ptr %slew_offset14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %slew_offset14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp15 = icmp eq i32 %14, -1
  br i1 %cmp15, label %if.end.for.inc_crit_edge, label %if.end17

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef %slew_access_lock, i32 noundef 0) #7
  %15 = ptrtoint ptr %slew_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slew_base, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 40960
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !237
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  %shl = shl i32 3, %14
  %neg = xor i32 %shl, -1
  %and = and i32 %18, %neg
  %shl19 = shl i32 %shr.i, %14
  %or = or i32 %and, %shl19
  %19 = ptrtoint ptr %slew_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slew_base, align 4
  %add.ptr21 = getelementptr i8, ptr %20, i32 40960
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !239
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %21) #7, !srcloc !240
  tail call void @mutex_unlock(ptr noundef %slew_access_lock) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %if.end.for.inc_crit_edge, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %for.body.for.inc_crit_edge
  %pullup.1 = phi i32 [ %pullup.0145, %if.end.for.inc_crit_edge ], [ %pullup.0145, %if.end17 ], [ %pullup.0145, %sw.bb10 ], [ %pullup.0145, %sw.bb9 ], [ %pullup.0145, %sw.bb8 ], [ 3, %sw.bb7 ], [ 2, %sw.bb6 ], [ 1, %sw.bb5 ], [ 0, %for.body.for.inc_crit_edge ]
  %strength.1 = phi i32 [ %strength.0146, %if.end.for.inc_crit_edge ], [ %strength.0146, %if.end17 ], [ %shr.i, %sw.bb10 ], [ %strength.0146, %sw.bb9 ], [ %strength.0146, %sw.bb8 ], [ %strength.0146, %sw.bb7 ], [ %strength.0146, %sw.bb6 ], [ %strength.0146, %sw.bb5 ], [ %strength.0146, %for.body.for.inc_crit_edge ]
  %value.1.off0 = phi i1 [ %value.0.off0147, %if.end.for.inc_crit_edge ], [ %value.0.off0147, %if.end17 ], [ %value.0.off0147, %sw.bb10 ], [ %tobool, %sw.bb9 ], [ %value.0.off0147, %sw.bb8 ], [ %value.0.off0147, %sw.bb7 ], [ %value.0.off0147, %sw.bb6 ], [ %value.0.off0147, %sw.bb5 ], [ %value.0.off0147, %for.body.for.inc_crit_edge ]
  %output_enabled.1.off0 = phi i1 [ %output_enabled.0.off0148, %if.end.for.inc_crit_edge ], [ %output_enabled.0.off0148, %if.end17 ], [ %output_enabled.0.off0148, %sw.bb10 ], [ true, %sw.bb9 ], [ false, %sw.bb8 ], [ %output_enabled.0.off0148, %sw.bb7 ], [ %output_enabled.0.off0148, %sw.bb6 ], [ %output_enabled.0.off0148, %sw.bb5 ], [ %output_enabled.0.off0148, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0149, 1
  %exitcond.not = icmp eq i32 %inc, %nconfs
  br i1 %exitcond.not, label %for.inc.u32p_replace_bits.exit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.u32p_replace_bits.exit_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %u32p_replace_bits.exit

u32p_replace_bits.exit:                           ; preds = %for.inc.u32p_replace_bits.exit_crit_edge, %entry.u32p_replace_bits.exit_crit_edge
  %pullup.0.lcssa = phi i32 [ 0, %entry.u32p_replace_bits.exit_crit_edge ], [ %pullup.1, %for.inc.u32p_replace_bits.exit_crit_edge ]
  %strength.0.lcssa = phi i32 [ 2, %entry.u32p_replace_bits.exit_crit_edge ], [ %strength.1, %for.inc.u32p_replace_bits.exit_crit_edge ]
  %value.0.off0.lcssa = phi i1 [ true, %entry.u32p_replace_bits.exit_crit_edge ], [ %value.1.off0, %for.inc.u32p_replace_bits.exit_crit_edge ]
  %output_enabled.0.off0.lcssa = phi i1 [ false, %entry.u32p_replace_bits.exit_crit_edge ], [ %output_enabled.1.off0, %for.inc.u32p_replace_bits.exit_crit_edge ]
  %tlmm_base.i = getelementptr inbounds %struct.lpi_pinctrl, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %tlmm_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tlmm_base.i, align 4
  %mul.i123 = shl i32 %group, 12
  %add.ptr.i = getelementptr i8, ptr %23, i32 %mul.i123
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  %25 = and i32 %pullup.0.lcssa, 3
  %26 = shl i32 %strength.0.lcssa, 5
  %27 = add i32 %26, 448
  %28 = and i32 %27, 448
  %29 = and i32 %24, 1023213567
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %conv8.i.i117 = select i1 %output_enabled.0.off0.lcssa, i32 512, i32 0
  %and.i96.masked = or i32 %conv8.i.i117, %25
  %and.i113 = or i32 %and.i96.masked, %28
  %or.i118 = or i32 %and.i113, %30
  %31 = ptrtoint ptr %tlmm_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tlmm_base.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %32, i32 %mul.i123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !239
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i118) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %33) #7, !srcloc !240
  br i1 %output_enabled.0.off0.lcssa, label %if.then27, label %u32p_replace_bits.exit.cleanup_crit_edge

u32p_replace_bits.exit.cleanup_crit_edge:         ; preds = %u32p_replace_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %u32p_replace_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv8.i = select i1 %value.0.off0.lcssa, i32 33554432, i32 0
  %34 = ptrtoint ptr %tlmm_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tlmm_base.i, align 4
  %add.ptr.i129 = getelementptr i8, ptr %35, i32 %mul.i123
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i129, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !239
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %conv8.i) #7, !srcloc !240
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %u32p_replace_bits.exit.cleanup_crit_edge, %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then27 ], [ 0, %u32p_replace_bits.exit.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi_gpio_direction_input(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #7
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 268, ptr %config, align 4
  %ctrl = getelementptr inbounds %struct.lpi_pinctrl, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %call2 = call i32 @lpi_config_set(ptr noundef %2, i32 noundef %pin, ptr noundef nonnull %config, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi_gpio_direction_output(ptr noundef %chip, i32 noundef %pin, i32 noundef %val) #2 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #7
  %shl.i = shl i32 %val, 8
  %or.i = or i32 %shl.i, 17
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or.i, ptr %config, align 4
  %ctrl = getelementptr inbounds %struct.lpi_pinctrl, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %call2 = call i32 @lpi_config_set(ptr noundef %2, i32 noundef %pin, ptr noundef nonnull %config, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi_gpio_get(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %tlmm_base.i = getelementptr inbounds %struct.lpi_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %tlmm_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tlmm_base.i, align 4
  %mul.i = shl i32 %pin, 12
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !237
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  %and = and i32 %3, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpi_gpio_set(ptr noundef %chip, i32 noundef %pin, i32 noundef %value) #2 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #7
  %shl.i = shl i32 %value, 8
  %or.i = or i32 %shl.i, 17
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or.i, ptr %config, align 4
  %ctrl = getelementptr inbounds %struct.lpi_pinctrl, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %call2 = call i32 @lpi_config_set(ptr noundef %2, i32 noundef %pin, ptr noundef nonnull %config, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpi_gpio_dbg_show(ptr noundef %s, ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp10.not = icmp eq i16 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %ctrl.i = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl.i, align 4
  %desc.i = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc.i, align 4
  %pins.i = getelementptr inbounds %struct.pinctrl_desc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins.i, align 4
  %pindesc.sroa.4.0.arrayidx.sroa_idx.i = getelementptr %struct.pinctrl_pin_desc, ptr %7, i32 %i.011, i32 1
  %8 = ptrtoint ptr %pindesc.sroa.4.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %pindesc.sroa.4.0.copyload.i = load ptr, ptr %pindesc.sroa.4.0.arrayidx.sroa_idx.i, align 4
  %tlmm_base.i.i = getelementptr inbounds %struct.lpi_pinctrl, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %tlmm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tlmm_base.i.i, align 4
  %mul.i.i = shl i32 %i.011, 12
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %mul.i.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !237
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  %and.i = and i32 %12, 512
  %and14.i = lshr i32 %12, 2
  %shr.i = and i32 %and14.i, 15
  %and49.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool51.not.i = icmp eq i32 %and.i, 0
  %cond52.i = select i1 %tobool51.not.i, ptr @.str.25, ptr @.str.24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, ptr noundef %pindesc.sroa.4.0.copyload.i, ptr noundef nonnull %cond52.i, i32 noundef %shr.i) #7
  %13 = lshr i32 %12, 5
  %add.i.i = and i32 %13, 14
  %mul.i1.i = add nuw nsw i32 %add.i.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.26, i32 noundef %mul.i1.i) #7
  %arrayidx54.i = getelementptr [4 x ptr], ptr @lpi_gpio_dbg_show_one.pulls, i32 0, i32 %and49.i
  %14 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx54.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef %15) #7
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.18) #7
  %inc = add nuw nsw i32 %i.011, 1
  %16 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %17 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !40, !41, !42, !44, !46, !48, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225}
!llvm.module.flags = !{!227, !228, !229, !230, !231, !232, !233, !234}
!llvm.ident = !{!235}

!0 = !{ptr @__initcall__kmod_pinctrl_lpass_lpi__243_693_lpi_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_lpass_lpi__243_693_lpi_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 693, i32 1}
!2 = !{ptr @__exitcall_lpi_pinctrl_driver_exit, !1, !"__exitcall_lpi_pinctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description244, !4, !"__UNIQUE_ID_description244", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 694, i32 1}
!5 = !{ptr @__UNIQUE_ID_file245, !6, !"__UNIQUE_ID_file245", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 695, i32 1}
!7 = !{ptr @__UNIQUE_ID_license246, !6, !"__UNIQUE_ID_license246", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 686, i32 14}
!10 = !{ptr @lpi_pinctrl_driver, !11, !"lpi_pinctrl_driver", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 684, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 605, i32 22}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 606, i32 22}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 611, i32 10}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 616, i32 10}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 620, i32 34}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 624, i32 34}
!24 = !{ptr @lpi_pinctrl_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 641, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 646, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @lpi_pinctrl_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @lpi_pinctrl_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @lpi_pinctrl_probe.lock_key, !36, !"lock_key", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 650, i32 8}
!37 = !{ptr @lpi_pinctrl_probe.request_key, !36, !"request_key", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 652, i32 3}
!40 = !{ptr @lpi_pinctrl_probe._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @lpi_pinctrl_probe._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @lpi_gpio_pinctrl_ops, !43, !"lpi_gpio_pinctrl_ops", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 281, i32 33}
!44 = !{ptr @lpi_gpio_pinmux_ops, !45, !"lpi_gpio_pinmux_ops", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 340, i32 32}
!46 = !{ptr @lpi_gpio_pinconf_ops, !47, !"lpi_gpio_pinconf_ops", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 472, i32 33}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 432, i32 5}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @lpi_config_set._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @lpi_config_set._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @lpi_gpio_template, !54, !"lpi_gpio_template", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 575, i32 31}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 567, i32 15}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 540, i32 3}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 541, i32 3}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 542, i32 3}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 543, i32 3}
!65 = !{ptr @lpi_gpio_dbg_show_one.pulls, !66, !"pulls", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 539, i32 28}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 555, i32 16}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 555, i32 57}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 555, i32 65}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 556, i32 16}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 557, i32 16}
!77 = !{ptr @lpi_pinctrl_of_match, !78, !"lpi_pinctrl_of_match", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 675, i32 34}
!79 = !{ptr @sm8250_lpi_data, !80, !"sm8250_lpi_data", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 230, i32 40}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 111, i32 2}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 112, i32 2}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 113, i32 2}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 114, i32 2}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 115, i32 2}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 116, i32 2}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 117, i32 2}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 118, i32 2}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 119, i32 2}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 120, i32 2}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 121, i32 2}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 122, i32 2}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 123, i32 2}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 124, i32 2}
!109 = !{ptr @sm8250_lpi_pins, !110, !"sm8250_lpi_pins", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 110, i32 38}
!111 = !{ptr @sm8250_groups, !112, !"sm8250_groups", i1 false, i1 false}
!112 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 189, i32 34}
!113 = !{ptr @gpio0_pins, !114, !"gpio0_pins", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 153, i32 27}
!115 = !{ptr @gpio1_pins, !116, !"gpio1_pins", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 154, i32 27}
!117 = !{ptr @gpio2_pins, !118, !"gpio2_pins", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 155, i32 27}
!119 = !{ptr @gpio3_pins, !120, !"gpio3_pins", i1 false, i1 false}
!120 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 156, i32 27}
!121 = !{ptr @gpio4_pins, !122, !"gpio4_pins", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 157, i32 27}
!123 = !{ptr @gpio5_pins, !124, !"gpio5_pins", i1 false, i1 false}
!124 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 158, i32 27}
!125 = !{ptr @gpio6_pins, !126, !"gpio6_pins", i1 false, i1 false}
!126 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 159, i32 27}
!127 = !{ptr @gpio7_pins, !128, !"gpio7_pins", i1 false, i1 false}
!128 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 160, i32 27}
!129 = !{ptr @gpio8_pins, !130, !"gpio8_pins", i1 false, i1 false}
!130 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 161, i32 27}
!131 = !{ptr @gpio9_pins, !132, !"gpio9_pins", i1 false, i1 false}
!132 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 162, i32 27}
!133 = !{ptr @gpio10_pins, !134, !"gpio10_pins", i1 false, i1 false}
!134 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 163, i32 27}
!135 = !{ptr @gpio11_pins, !136, !"gpio11_pins", i1 false, i1 false}
!136 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 164, i32 27}
!137 = !{ptr @gpio12_pins, !138, !"gpio12_pins", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 165, i32 27}
!139 = !{ptr @gpio13_pins, !140, !"gpio13_pins", i1 false, i1 false}
!140 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 166, i32 27}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 207, i32 2}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 208, i32 2}
!145 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 209, i32 2}
!147 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 210, i32 2}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 211, i32 2}
!151 = !{ptr @.str.60, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 212, i32 2}
!153 = !{ptr @.str.61, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 213, i32 2}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 214, i32 2}
!157 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 215, i32 2}
!159 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 216, i32 2}
!161 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 217, i32 2}
!163 = !{ptr @.str.66, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 218, i32 2}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 219, i32 2}
!167 = !{ptr @.str.68, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 220, i32 2}
!169 = !{ptr @.str.69, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 221, i32 2}
!171 = !{ptr @.str.70, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 222, i32 2}
!173 = !{ptr @.str.71, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 223, i32 2}
!175 = !{ptr @.str.72, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 224, i32 2}
!177 = !{ptr @.str.73, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 225, i32 2}
!179 = !{ptr @.str.74, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 226, i32 2}
!181 = !{ptr @.str.75, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 227, i32 2}
!183 = !{ptr @sm8250_functions, !184, !"sm8250_functions", i1 false, i1 false}
!184 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 206, i32 34}
!185 = !{ptr @dmic1_clk_groups, !186, !"dmic1_clk_groups", i1 false, i1 false}
!186 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 171, i32 27}
!187 = !{ptr @dmic1_data_groups, !188, !"dmic1_data_groups", i1 false, i1 false}
!188 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 172, i32 27}
!189 = !{ptr @dmic2_clk_groups, !190, !"dmic2_clk_groups", i1 false, i1 false}
!190 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 173, i32 27}
!191 = !{ptr @dmic2_data_groups, !192, !"dmic2_data_groups", i1 false, i1 false}
!192 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 174, i32 27}
!193 = !{ptr @dmic3_clk_groups, !194, !"dmic3_clk_groups", i1 false, i1 false}
!194 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 177, i32 27}
!195 = !{ptr @dmic3_data_groups, !196, !"dmic3_data_groups", i1 false, i1 false}
!196 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 178, i32 27}
!197 = !{ptr @i2s1_clk_groups, !198, !"i2s1_clk_groups", i1 false, i1 false}
!198 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 182, i32 27}
!199 = !{ptr @i2s1_data_groups, !200, !"i2s1_data_groups", i1 false, i1 false}
!200 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 184, i32 27}
!201 = !{ptr @i2s1_ws_groups, !202, !"i2s1_ws_groups", i1 false, i1 false}
!202 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 183, i32 27}
!203 = !{ptr @i2s2_clk_groups, !204, !"i2s2_clk_groups", i1 false, i1 false}
!204 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 175, i32 27}
!205 = !{ptr @i2s2_data_groups, !206, !"i2s2_data_groups", i1 false, i1 false}
!206 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 187, i32 27}
!207 = !{ptr @i2s2_ws_groups, !208, !"i2s2_ws_groups", i1 false, i1 false}
!208 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 176, i32 27}
!209 = !{ptr @qua_mi2s_data_groups, !210, !"qua_mi2s_data_groups", i1 false, i1 false}
!210 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 181, i32 27}
!211 = !{ptr @qua_mi2s_sclk_groups, !212, !"qua_mi2s_sclk_groups", i1 false, i1 false}
!212 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 179, i32 27}
!213 = !{ptr @qua_mi2s_ws_groups, !214, !"qua_mi2s_ws_groups", i1 false, i1 false}
!214 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 180, i32 27}
!215 = !{ptr @swr_rx_clk_groups, !216, !"swr_rx_clk_groups", i1 false, i1 false}
!216 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 169, i32 27}
!217 = !{ptr @swr_rx_data_groups, !218, !"swr_rx_data_groups", i1 false, i1 false}
!218 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 170, i32 27}
!219 = !{ptr @swr_tx_clk_groups, !220, !"swr_tx_clk_groups", i1 false, i1 false}
!220 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 167, i32 27}
!221 = !{ptr @swr_tx_data_groups, !222, !"swr_tx_data_groups", i1 false, i1 false}
!222 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 168, i32 27}
!223 = !{ptr @wsa_swr_clk_groups, !224, !"wsa_swr_clk_groups", i1 false, i1 false}
!224 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 185, i32 27}
!225 = !{ptr @wsa_swr_data_groups, !226, !"wsa_swr_data_groups", i1 false, i1 false}
!226 = !{!"../drivers/pinctrl/qcom/pinctrl-lpass-lpi.c", i32 186, i32 27}
!227 = !{i32 1, !"wchar_size", i32 2}
!228 = !{i32 1, !"min_enum_size", i32 4}
!229 = !{i32 8, !"branch-target-enforcement", i32 0}
!230 = !{i32 8, !"sign-return-address", i32 0}
!231 = !{i32 8, !"sign-return-address-all", i32 0}
!232 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!233 = !{i32 7, !"uwtable", i32 1}
!234 = !{i32 7, !"frame-pointer", i32 2}
!235 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!236 = !{!"branch_weights", i32 1, i32 2000}
!237 = !{i64 4915824}
!238 = !{i64 2152456173}
!239 = !{i64 2152457528}
!240 = !{i64 4915406}
