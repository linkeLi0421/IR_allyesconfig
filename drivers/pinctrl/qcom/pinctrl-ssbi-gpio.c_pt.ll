; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c_pt.bc'
source_filename = "../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pin_config_item = type { i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.pm8xxx_gpio = type { ptr, ptr, ptr, %struct.gpio_chip, %struct.pinctrl_desc, i32 }
%struct.pm8xxx_pin_data = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_pinctrl_ssbi_gpio__228_855_pm8xxx_gpio_driver_init6 = internal global ptr @pm8xxx_gpio_driver_init, section ".initcall6.init", align 4
@pm8xxx_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm8xxx_gpio_probe, ptr @pm8xxx_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pm8xxx_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm8xxx_gpio_driver_exit = internal global ptr @pm8xxx_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [74 x i8] c"pinctrl_ssbi_gpio.author=Bjorn Andersson <bjorn.andersson@sonymobile.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [58 x i8] c"pinctrl_ssbi_gpio.description=Qualcomm PM8xxx GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [62 x i8] c"pinctrl_ssbi_gpio.file=drivers/pinctrl/qcom/pinctrl-ssbi-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [33 x i8] c"pinctrl_ssbi_gpio.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom-ssbi-gpio\00", [17 x i8] zeroinitializer }, align 32
@pm8xxx_gpio_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8018-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8038-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8058-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 44 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8917-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 38 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8921-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 44 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@pm8xxx_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 727, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"parent regmap unavailable\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pm8xxx_gpio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm8xxx_gpio_probe._entry_ptr = internal global ptr @pm8xxx_gpio_probe._entry, section ".printk_index", align 4
@pm8xxx_pinctrl_desc = internal constant { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.18, ptr null, i32 0, ptr @pm8xxx_pinctrl_ops, ptr @pm8xxx_pinmux_ops, ptr @pm8xxx_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@pm8xxx_groups = internal constant { [44 x ptr], [48 x i8] } { [44 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], [48 x i8] zeroinitializer }, align 32
@pm8xxx_gpio_bindings = internal constant { [2 x %struct.pinconf_generic_params], [40 x i8] } { [2 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.86, i32 128, i32 0 }, %struct.pinconf_generic_params { ptr @.str.87, i32 129, i32 0 }], [40 x i8] zeroinitializer }, align 32
@pm8xxx_conf_items = internal constant { [2 x %struct.pin_config_item], [32 x i8] } { [2 x %struct.pin_config_item] [%struct.pin_config_item { i32 128, ptr @.str.88, ptr null, i8 1 }, %struct.pin_config_item { i32 129, ptr @.str.89, ptr null, i8 1 }], [32 x i8] zeroinitializer }, align 32
@pm8xxx_gpio_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 769, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"couldn't register pm8xxx gpio driver\0A\00", [58 x i8] zeroinitializer }, align 32
@pm8xxx_gpio_probe._entry_ptr.8 = internal global ptr @pm8xxx_gpio_probe._entry.6, section ".printk_index", align 4
@pm8xxx_gpio_template = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8xxx_gpio_direction_input, ptr @pm8xxx_gpio_direction_output, ptr @pm8xxx_gpio_get, ptr null, ptr @pm8xxx_gpio_set, ptr null, ptr null, ptr null, ptr @pm8xxx_gpio_dbg_show, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr @pm8xxx_gpio_of_xlate }, [68 x i8] zeroinitializer }, align 32
@pm8xxx_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.115, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_ack_parent, ptr @irq_chip_unmask_parent, ptr null, ptr null, ptr null, ptr @irq_chip_set_type_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 20 }, [56 x i8] zeroinitializer }, align 32
@pm8xxx_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pm8xxx_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pm8xxx_gpio_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 802, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed register gpiochip\0A\00", [38 x i8] zeroinitializer }, align 32
@pm8xxx_gpio_probe._entry_ptr.11 = internal global ptr @pm8xxx_gpio_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-ranges\00", [20 x i8] zeroinitializer }, align 32
@pm8xxx_gpio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 820, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add pin range\0A\00", [39 x i8] zeroinitializer }, align 32
@pm8xxx_gpio_probe._entry_ptr.15 = internal global ptr @pm8xxx_gpio_probe._entry.13, section ".printk_index", align 4
@pm8xxx_gpio_probe.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 0, i8 -50, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pinctrl_ssbi_gpio\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Qualcomm pm8xxx gpio driver probed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pm8xxx_gpio\00", [20 x i8] zeroinitializer }, align 32
@pm8xxx_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @pm8xxx_get_groups_count, ptr @pm8xxx_get_group_name, ptr @pm8xxx_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@pm8xxx_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @pm8xxx_get_functions_count, ptr @pm8xxx_get_function_name, ptr @pm8xxx_get_function_groups, ptr @pm8xxx_pinmux_set_mux, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@pm8xxx_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr null, ptr null, ptr @pm8xxx_pin_config_get, ptr @pm8xxx_pin_config_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pm8xxx_gpio_functions = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"paired\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func1\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func2\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dtest1\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dtest2\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dtest3\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dtest4\00", [25 x i8] zeroinitializer }, align 32
@pm8xxx_write_bank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to write register\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pm8xxx_write_bank\00", [46 x i8] zeroinitializer }, align 32
@pm8xxx_write_bank._entry_ptr = internal global ptr @pm8xxx_write_bank._entry, section ".printk_index", align 4
@pm8xxx_pin_config_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid pull-up strength\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pm8xxx_pin_config_set\00", [42 x i8] zeroinitializer }, align 32
@pm8xxx_pin_config_set._entry_ptr = internal global ptr @pm8xxx_pin_config_set._entry, section ".printk_index", align 4
@pm8xxx_pin_config_set._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 375, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid drive strength\0A\00", [40 x i8] zeroinitializer }, align 32
@pm8xxx_pin_config_set._entry_ptr.33 = internal global ptr @pm8xxx_pin_config_set._entry.31, section ".printk_index", align 4
@pm8xxx_pin_config_set._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.3, i32 392, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported config parameter: %x\0A\00", [62 x i8] zeroinitializer }, align 32
@pm8xxx_pin_config_set._entry_ptr.36 = internal global ptr @pm8xxx_pin_config_set._entry.34, section ".printk_index", align 4
@pm8xxx_read_bank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 133, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to select bank %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pm8xxx_read_bank\00", [47 x i8] zeroinitializer }, align 32
@pm8xxx_read_bank._entry_ptr = internal global ptr @pm8xxx_read_bank._entry, section ".printk_index", align 4
@pm8xxx_read_bank._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read register %d\0A\00", [36 x i8] zeroinitializer }, align 32
@pm8xxx_read_bank._entry_ptr.41 = internal global ptr @pm8xxx_read_bank._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio9\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio10\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio11\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio12\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio13\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio14\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio15\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio16\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio17\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio18\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio19\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio20\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio21\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio22\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio23\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio24\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio25\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio26\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio27\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio28\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio29\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio30\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio31\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio32\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio33\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio34\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio35\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio36\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio37\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio38\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio39\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio40\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio41\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio42\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio43\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio44\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,drive-strength\00", [44 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom,pull-up-strength\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drive-strength\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pull up strength\00", [47 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@pm8xxx_gpio_dbg_show_one.modes = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94], [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"both\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@pm8xxx_gpio_dbg_show_one.biases = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100], [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pull-up 30uA\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pull-up 1.5uA\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pull-up 31.5uA\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pull-up 1.5uA + 30uA boost\00", [37 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pull-down 10uA\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"no pull\00", [24 x i8] zeroinitializer }, align 32
@pm8xxx_gpio_dbg_show_one.buffer_types = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.101, ptr @.str.102], [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"push-pull\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"open-drain\00", [21 x i8] zeroinitializer }, align 32
@pm8xxx_gpio_dbg_show_one.strengths = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106], [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"medium\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" gpio%-2d:\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" ---\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %-4s\00", [26 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %-7s\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" VIN%d\00", [25 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %-27s\00", [25 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %-10s\00", [25 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" inverted\00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssbi-gpio\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 8, i64 1, i64 2, i64 3, i64 5, i64 6, i64 8, i64 12, i64 17, i64 21, i64 128, i64 129]
@__sancov_gen_cov_switch_values.116 = internal global [13 x i64] [i64 11, i64 8, i64 1, i64 2, i64 3, i64 5, i64 6, i64 8, i64 12, i64 17, i64 21, i64 128, i64 129]
@___asan_gen_.117 = private unnamed_addr constant [19 x i8] c"pm8xxx_gpio_driver\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 846, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 848, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant [21 x i8] c"pm8xxx_gpio_of_match\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 698, i32 34 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 727, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c"pm8xxx_pinctrl_desc\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 442, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant [14 x i8] c"pm8xxx_groups\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 108, i32 27 }
@___asan_gen_.150 = private unnamed_addr constant [21 x i8] c"pm8xxx_gpio_bindings\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 96, i32 44 }
@___asan_gen_.153 = private unnamed_addr constant [18 x i8] c"pm8xxx_conf_items\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 102, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 769, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [21 x i8] c"pm8xxx_gpio_template\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 593, i32 31 }
@___asan_gen_.165 = private unnamed_addr constant [16 x i8] c"pm8xxx_irq_chip\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 654, i32 24 }
@___asan_gen_.168 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 800, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 802, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 816, i32 50 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 820, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 827, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 443, i32 10 }
@___asan_gen_.198 = private unnamed_addr constant [19 x i8] c"pm8xxx_pinctrl_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 190, i32 33 }
@___asan_gen_.201 = private unnamed_addr constant [18 x i8] c"pm8xxx_pinmux_ops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 237, i32 32 }
@___asan_gen_.204 = private unnamed_addr constant [19 x i8] c"pm8xxx_pinconf_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 436, i32 33 }
@___asan_gen_.207 = private unnamed_addr constant [22 x i8] c"pm8xxx_gpio_functions\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 118, i32 27 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 119, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 119, i32 25 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 120, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 120, i32 24 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 121, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 121, i32 25 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 122, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 122, i32 25 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 158, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 345, i32 5 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 375, i32 5 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 390, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 133, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 139, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 109, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 109, i32 11 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 109, i32 20 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 109, i32 29 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 109, i32 38 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 109, i32 47 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 109, i32 56 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 109, i32 65 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 110, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 110, i32 11 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 110, i32 21 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 110, i32 31 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 110, i32 41 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 110, i32 51 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 110, i32 61 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 111, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 111, i32 12 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 111, i32 22 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 111, i32 32 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 111, i32 42 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 111, i32 52 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 111, i32 62 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 112, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 112, i32 12 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 112, i32 22 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 112, i32 32 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 112, i32 42 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 112, i32 52 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 112, i32 62 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 113, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 113, i32 12 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 113, i32 22 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 113, i32 32 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 113, i32 42 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 113, i32 52 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 113, i32 62 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 114, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 114, i32 12 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 114, i32 22 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 114, i32 32 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 114, i32 42 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 114, i32 52 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 114, i32 62 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 115, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 97, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 98, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 103, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 104, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 585, i32 15 }
@___asan_gen_.426 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 548, i32 28 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 549, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 549, i32 9 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 549, i32 17 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 549, i32 24 }
@___asan_gen_.441 = private unnamed_addr constant [7 x i8] c"biases\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 551, i32 28 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 552, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 552, i32 19 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 552, i32 36 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 553, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 553, i32 33 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 553, i32 51 }
@___asan_gen_.462 = private unnamed_addr constant [13 x i8] c"buffer_types\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 555, i32 28 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 556, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 556, i32 16 }
@___asan_gen_.471 = private unnamed_addr constant [10 x i8] c"strengths\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 558, i32 28 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 559, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 559, i32 9 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 559, i32 17 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 559, i32 27 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 562, i32 16 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 564, i32 15 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 566, i32 17 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 567, i32 17 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 568, i32 17 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 569, i32 17 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 570, i32 17 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 574, i32 16 }
@___asan_gen_.510 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.511 = private constant [44 x i8] c"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 655, i32 10 }
@llvm.compiler.used = appending global [149 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_pm8xxx_gpio_driver_exit, ptr @__initcall__kmod_pinctrl_ssbi_gpio__228_855_pm8xxx_gpio_driver_init6, ptr @pm8xxx_gpio_driver_exit, ptr @pm8xxx_gpio_probe._entry, ptr @pm8xxx_gpio_probe._entry.13, ptr @pm8xxx_gpio_probe._entry.6, ptr @pm8xxx_gpio_probe._entry.9, ptr @pm8xxx_gpio_probe._entry_ptr, ptr @pm8xxx_gpio_probe._entry_ptr.11, ptr @pm8xxx_gpio_probe._entry_ptr.15, ptr @pm8xxx_gpio_probe._entry_ptr.8, ptr @pm8xxx_pin_config_set._entry, ptr @pm8xxx_pin_config_set._entry.31, ptr @pm8xxx_pin_config_set._entry.34, ptr @pm8xxx_pin_config_set._entry_ptr, ptr @pm8xxx_pin_config_set._entry_ptr.33, ptr @pm8xxx_pin_config_set._entry_ptr.36, ptr @pm8xxx_read_bank._entry, ptr @pm8xxx_read_bank._entry.39, ptr @pm8xxx_read_bank._entry_ptr, ptr @pm8xxx_read_bank._entry_ptr.41, ptr @pm8xxx_write_bank._entry, ptr @pm8xxx_write_bank._entry_ptr, ptr @pm8xxx_gpio_driver, ptr @.str, ptr @pm8xxx_gpio_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pm8xxx_pinctrl_desc, ptr @pm8xxx_groups, ptr @pm8xxx_gpio_bindings, ptr @pm8xxx_conf_items, ptr @.str.7, ptr @pm8xxx_gpio_template, ptr @pm8xxx_irq_chip, ptr @pm8xxx_gpio_probe.lock_key, ptr @pm8xxx_gpio_probe.request_key, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @pm8xxx_pinctrl_ops, ptr @pm8xxx_pinmux_ops, ptr @pm8xxx_pinconf_ops, ptr @pm8xxx_gpio_functions, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @pm8xxx_gpio_dbg_show_one.modes, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @pm8xxx_gpio_dbg_show_one.biases, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @pm8xxx_gpio_dbg_show_one.buffer_types, ptr @.str.101, ptr @.str.102, ptr @pm8xxx_gpio_dbg_show_one.strengths, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_gpio_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_groups to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_gpio_bindings to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_conf_items to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_gpio_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_gpio_template to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_gpio_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_gpio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_gpio_functions to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_write_bank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_pin_config_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_pin_config_set._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_pin_config_set._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_read_bank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_read_bank._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_gpio_dbg_show_one.modes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_gpio_dbg_show_one.biases to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_gpio_dbg_show_one.buffer_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_gpio_dbg_show_one.strengths to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm8xxx_gpio_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm8xxx_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm8xxx_gpio_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  %val.i149.i = alloca i32, align 4
  %val.i137.i = alloca i32, align 4
  %val.i125.i = alloca i32, align 4
  %val.i113.i = alloca i32, align 4
  %val.i101.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 408, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call4 = tail call ptr @device_get_match_data(ptr noundef %dev) #11
  %1 = ptrtoint ptr %call4 to i32
  %npins = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %npins, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %call6 = tail call ptr @dev_get_regmap(ptr noundef %4, ptr noundef null) #11
  %regmap = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %regmap, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %desc = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 4
  %6 = call ptr @memcpy(ptr %desc, ptr @pm8xxx_pinctrl_desc, i32 44)
  %7 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %npins, align 4
  %npins14 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %npins14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %npins14, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 12) #11
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %if.end11.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !275

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end11
  %12 = extractvalue { i32, i1 } %10, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %12, i32 noundef 3520) #11
  %tobool19.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool19.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end21

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %devm_kcalloc.exit
  %13 = ptrtoint ptr %npins14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %npins14, align 4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 16) #11
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %if.end21.cleanup_crit_edge, label %devm_kcalloc.exit221, !prof !275

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

devm_kcalloc.exit221:                             ; preds = %if.end21
  %17 = extractvalue { i32, i1 } %15, 0
  %call5.i.i218 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %17, i32 noundef 3520) #11
  %tobool26.not = icmp eq ptr %call5.i.i218, null
  br i1 %tobool26.not, label %devm_kcalloc.exit221.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit221.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit221
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit221
  %18 = ptrtoint ptr %npins14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %npins14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp248.not = icmp eq i32 %19, 0
  br i1 %cmp248.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0249 = phi i32 [ %inc, %if.end35.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add i32 %i.0249, 336
  %arrayidx = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i218, i32 %i.0249
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #11
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %val.i.i, align 4
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %23, i32 noundef %add, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i222, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.37, i32 noundef 0) #14
  br label %pm8xxx_read_bank.exit.i

if.end.i.i222:                                    ; preds = %for.body
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %call3.i.i = call i32 @regmap_read(ptr noundef %27, i32 noundef %29, ptr noundef nonnull %val.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end10.i.i, label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.end.i.i222
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.40, i32 noundef 0) #14
  br label %pm8xxx_read_bank.exit.i

if.end10.i.i:                                     ; preds = %if.end.i.i222
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.i.i, align 4
  br label %pm8xxx_read_bank.exit.i

pm8xxx_read_bank.exit.i:                          ; preds = %if.end10.i.i, %do.end8.i.i, %do.end.i.i
  %retval.0.i.i223 = phi i32 [ %call.i.i, %do.end.i.i ], [ %call3.i.i, %do.end8.i.i ], [ %33, %if.end10.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i223)
  %cmp.i = icmp slt i32 %retval.0.i.i223, 0
  br i1 %cmp.i, label %pm8xxx_read_bank.exit.i.cleanup_crit_edge, label %if.end.i

pm8xxx_read_bank.exit.i.cleanup_crit_edge:        ; preds = %pm8xxx_read_bank.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %pm8xxx_read_bank.exit.i
  %34 = trunc i32 %retval.0.i.i223 to i8
  %35 = lshr i8 %34, 1
  %conv.i = and i8 %35, 7
  %power_source.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i218, i32 %i.0249, i32 1
  %36 = ptrtoint ptr %power_source.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i, ptr %power_source.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i101.i) #11
  %37 = ptrtoint ptr %val.i101.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16, ptr %val.i101.i, align 4
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %call.i103.i = call i32 @regmap_write(ptr noundef %39, i32 noundef %41, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %tobool.not.i104.i = icmp eq i32 %call.i103.i, 0
  br i1 %tobool.not.i104.i, label %if.end.i108.i, label %do.end.i105.i

do.end.i105.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.37, i32 noundef 1) #14
  br label %pm8xxx_read_bank.exit112.i

if.end.i108.i:                                    ; preds = %if.end.i
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  %call3.i106.i = call i32 @regmap_read(ptr noundef %45, i32 noundef %47, ptr noundef nonnull %val.i101.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i106.i)
  %tobool4.not.i107.i = icmp eq i32 %call3.i106.i, 0
  br i1 %tobool4.not.i107.i, label %if.end10.i110.i, label %do.end8.i109.i

do.end8.i109.i:                                   ; preds = %if.end.i108.i
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.40, i32 noundef 1) #14
  br label %pm8xxx_read_bank.exit112.i

if.end10.i110.i:                                  ; preds = %if.end.i108.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %val.i101.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val.i101.i, align 4
  br label %pm8xxx_read_bank.exit112.i

pm8xxx_read_bank.exit112.i:                       ; preds = %if.end10.i110.i, %do.end8.i109.i, %do.end.i105.i
  %retval.0.i111.i = phi i32 [ %call.i103.i, %do.end.i105.i ], [ %call3.i106.i, %do.end8.i109.i ], [ %51, %if.end10.i110.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i101.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i111.i)
  %cmp2.i = icmp slt i32 %retval.0.i111.i, 0
  br i1 %cmp2.i, label %pm8xxx_read_bank.exit112.i.cleanup_crit_edge, label %if.end5.i

pm8xxx_read_bank.exit112.i.cleanup_crit_edge:     ; preds = %pm8xxx_read_bank.exit112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5.i:                                        ; preds = %pm8xxx_read_bank.exit112.i
  %52 = trunc i32 %retval.0.i111.i to i8
  %53 = lshr i8 %52, 2
  %conv8.i = and i8 %53, 3
  %mode.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i218, i32 %i.0249, i32 2
  %54 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv8.i, ptr %mode.i, align 1
  %open_drain.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i218, i32 %i.0249, i32 3
  %55 = lshr i8 %52, 1
  %56 = and i8 %55, 1
  %57 = ptrtoint ptr %open_drain.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %open_drain.i, align 2
  %output_value.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i218, i32 %i.0249, i32 4
  %58 = and i8 %52, 1
  %59 = ptrtoint ptr %output_value.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %output_value.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i113.i) #11
  %60 = ptrtoint ptr %val.i113.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 32, ptr %val.i113.i, align 4
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx, align 4
  %call.i115.i = call i32 @regmap_write(ptr noundef %62, i32 noundef %64, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115.i)
  %tobool.not.i116.i = icmp eq i32 %call.i115.i, 0
  br i1 %tobool.not.i116.i, label %if.end.i120.i, label %do.end.i117.i

do.end.i117.i:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.37, i32 noundef 2) #14
  br label %pm8xxx_read_bank.exit124.i

if.end.i120.i:                                    ; preds = %if.end5.i
  %67 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap, align 4
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx, align 4
  %call3.i118.i = call i32 @regmap_read(ptr noundef %68, i32 noundef %70, ptr noundef nonnull %val.i113.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i118.i)
  %tobool4.not.i119.i = icmp eq i32 %call3.i118.i, 0
  br i1 %tobool4.not.i119.i, label %if.end10.i122.i, label %do.end8.i121.i

do.end8.i121.i:                                   ; preds = %if.end.i120.i
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.40, i32 noundef 2) #14
  br label %pm8xxx_read_bank.exit124.i

if.end10.i122.i:                                  ; preds = %if.end.i120.i
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %val.i113.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %val.i113.i, align 4
  br label %pm8xxx_read_bank.exit124.i

pm8xxx_read_bank.exit124.i:                       ; preds = %if.end10.i122.i, %do.end8.i121.i, %do.end.i117.i
  %retval.0.i123.i = phi i32 [ %call.i115.i, %do.end.i117.i ], [ %call3.i118.i, %do.end8.i121.i ], [ %74, %if.end10.i122.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i113.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i123.i)
  %cmp15.i = icmp slt i32 %retval.0.i123.i, 0
  br i1 %cmp15.i, label %pm8xxx_read_bank.exit124.i.cleanup_crit_edge, label %if.end18.i

pm8xxx_read_bank.exit124.i.cleanup_crit_edge:     ; preds = %pm8xxx_read_bank.exit124.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18.i:                                       ; preds = %pm8xxx_read_bank.exit124.i
  %75 = trunc i32 %retval.0.i123.i to i8
  %76 = lshr i8 %75, 1
  %conv21.i = and i8 %76, 7
  %bias.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i218, i32 %i.0249, i32 5
  %77 = ptrtoint ptr %bias.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv21.i, ptr %bias.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv21.i)
  %cmp24.i = icmp ult i8 %conv21.i, 4
  %spec.select.i = select i1 %cmp24.i, i8 %conv21.i, i8 0
  %78 = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i218, i32 %i.0249, i32 6
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %spec.select.i, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i125.i) #11
  %80 = ptrtoint ptr %val.i125.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 48, ptr %val.i125.i, align 4
  %81 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap, align 4
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx, align 4
  %call.i127.i = call i32 @regmap_write(ptr noundef %82, i32 noundef %84, i32 noundef 48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127.i)
  %tobool.not.i128.i = icmp eq i32 %call.i127.i, 0
  br i1 %tobool.not.i128.i, label %if.end.i132.i, label %do.end.i129.i

do.end.i129.i:                                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.37, i32 noundef 3) #14
  br label %pm8xxx_read_bank.exit136.i

if.end.i132.i:                                    ; preds = %if.end18.i
  %87 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap, align 4
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx, align 4
  %call3.i130.i = call i32 @regmap_read(ptr noundef %88, i32 noundef %90, ptr noundef nonnull %val.i125.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i130.i)
  %tobool4.not.i131.i = icmp eq i32 %call3.i130.i, 0
  br i1 %tobool4.not.i131.i, label %if.end10.i134.i, label %do.end8.i133.i

do.end8.i133.i:                                   ; preds = %if.end.i132.i
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.40, i32 noundef 3) #14
  br label %pm8xxx_read_bank.exit136.i

if.end10.i134.i:                                  ; preds = %if.end.i132.i
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %val.i125.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %val.i125.i, align 4
  br label %pm8xxx_read_bank.exit136.i

pm8xxx_read_bank.exit136.i:                       ; preds = %if.end10.i134.i, %do.end8.i133.i, %do.end.i129.i
  %retval.0.i135.i = phi i32 [ %call.i127.i, %do.end.i129.i ], [ %call3.i130.i, %do.end8.i133.i ], [ %94, %if.end10.i134.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i125.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i135.i)
  %cmp31.i = icmp slt i32 %retval.0.i135.i, 0
  br i1 %cmp31.i, label %pm8xxx_read_bank.exit136.i.cleanup_crit_edge, label %if.end34.i

pm8xxx_read_bank.exit136.i.cleanup_crit_edge:     ; preds = %pm8xxx_read_bank.exit136.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34.i:                                       ; preds = %pm8xxx_read_bank.exit136.i
  %95 = trunc i32 %retval.0.i135.i to i8
  %96 = lshr i8 %95, 2
  %conv37.i = and i8 %96, 3
  %output_strength.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i218, i32 %i.0249, i32 7
  %97 = ptrtoint ptr %output_strength.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv37.i, ptr %output_strength.i, align 2
  %disable.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i218, i32 %i.0249, i32 8
  %98 = and i8 %95, 1
  %99 = ptrtoint ptr %disable.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %disable.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i137.i) #11
  %100 = ptrtoint ptr %val.i137.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 64, ptr %val.i137.i, align 4
  %101 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regmap, align 4
  %103 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx, align 4
  %call.i139.i = call i32 @regmap_write(ptr noundef %102, i32 noundef %104, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139.i)
  %tobool.not.i140.i = icmp eq i32 %call.i139.i, 0
  br i1 %tobool.not.i140.i, label %if.end.i144.i, label %do.end.i141.i

do.end.i141.i:                                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.37, i32 noundef 4) #14
  br label %pm8xxx_read_bank.exit148.i

if.end.i144.i:                                    ; preds = %if.end34.i
  %107 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap, align 4
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx, align 4
  %call3.i142.i = call i32 @regmap_read(ptr noundef %108, i32 noundef %110, ptr noundef nonnull %val.i137.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i142.i)
  %tobool4.not.i143.i = icmp eq i32 %call3.i142.i, 0
  br i1 %tobool4.not.i143.i, label %if.end10.i146.i, label %do.end8.i145.i

do.end8.i145.i:                                   ; preds = %if.end.i144.i
  call void @__sanitizer_cov_trace_pc() #13
  %111 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.40, i32 noundef 4) #14
  br label %pm8xxx_read_bank.exit148.i

if.end10.i146.i:                                  ; preds = %if.end.i144.i
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %val.i137.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val.i137.i, align 4
  br label %pm8xxx_read_bank.exit148.i

pm8xxx_read_bank.exit148.i:                       ; preds = %if.end10.i146.i, %do.end8.i145.i, %do.end.i141.i
  %retval.0.i147.i = phi i32 [ %call.i139.i, %do.end.i141.i ], [ %call3.i142.i, %do.end8.i145.i ], [ %114, %if.end10.i146.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i137.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i147.i)
  %cmp42.i = icmp slt i32 %retval.0.i147.i, 0
  br i1 %cmp42.i, label %pm8xxx_read_bank.exit148.i.cleanup_crit_edge, label %if.end45.i

pm8xxx_read_bank.exit148.i.cleanup_crit_edge:     ; preds = %pm8xxx_read_bank.exit148.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end45.i:                                       ; preds = %pm8xxx_read_bank.exit148.i
  %115 = trunc i32 %retval.0.i147.i to i8
  %116 = lshr i8 %115, 1
  %conv48.i = and i8 %116, 7
  %function.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i218, i32 %i.0249, i32 9
  %117 = ptrtoint ptr %function.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv48.i, ptr %function.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i149.i) #11
  %118 = ptrtoint ptr %val.i149.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 80, ptr %val.i149.i, align 4
  %119 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regmap, align 4
  %121 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx, align 4
  %call.i151.i = call i32 @regmap_write(ptr noundef %120, i32 noundef %122, i32 noundef 80) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151.i)
  %tobool.not.i152.i = icmp eq i32 %call.i151.i, 0
  br i1 %tobool.not.i152.i, label %if.end.i156.i, label %do.end.i153.i

do.end.i153.i:                                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.37, i32 noundef 5) #14
  br label %pm8xxx_read_bank.exit160.i

if.end.i156.i:                                    ; preds = %if.end45.i
  %125 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regmap, align 4
  %127 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx, align 4
  %call3.i154.i = call i32 @regmap_read(ptr noundef %126, i32 noundef %128, ptr noundef nonnull %val.i149.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i154.i)
  %tobool4.not.i155.i = icmp eq i32 %call3.i154.i, 0
  br i1 %tobool4.not.i155.i, label %if.end10.i158.i, label %do.end8.i157.i

do.end8.i157.i:                                   ; preds = %if.end.i156.i
  call void @__sanitizer_cov_trace_pc() #13
  %129 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.40, i32 noundef 5) #14
  br label %pm8xxx_read_bank.exit160.i

if.end10.i158.i:                                  ; preds = %if.end.i156.i
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %val.i149.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %val.i149.i, align 4
  br label %pm8xxx_read_bank.exit160.i

pm8xxx_read_bank.exit160.i:                       ; preds = %if.end10.i158.i, %do.end8.i157.i, %do.end.i153.i
  %retval.0.i159.i = phi i32 [ %call.i151.i, %do.end.i153.i ], [ %call3.i154.i, %do.end8.i157.i ], [ %132, %if.end10.i158.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i149.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i159.i)
  %cmp50.i = icmp slt i32 %retval.0.i159.i, 0
  br i1 %cmp50.i, label %pm8xxx_read_bank.exit160.i.cleanup_crit_edge, label %if.end35

pm8xxx_read_bank.exit160.i.cleanup_crit_edge:     ; preds = %pm8xxx_read_bank.exit160.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %pm8xxx_read_bank.exit160.i
  %inverted.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i218, i32 %i.0249, i32 10
  %133 = trunc i32 %retval.0.i159.i to i8
  %134 = lshr i8 %133, 3
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  %137 = ptrtoint ptr %inverted.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %inverted.i, align 1
  %arrayidx36 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0249
  %138 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %i.0249, ptr %arrayidx36, align 4
  %arrayidx37 = getelementptr [44 x ptr], ptr @pm8xxx_groups, i32 0, i32 %i.0249
  %139 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx37, align 4
  %name = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0249, i32 1
  %141 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %140, ptr %name, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0249, i32 2
  %142 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %arrayidx, ptr %drv_data, align 4
  %inc = add nuw i32 %i.0249, 1
  %143 = ptrtoint ptr %npins14 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %npins14, align 4
  %cmp = icmp ult i32 %inc, %144
  br i1 %cmp, label %if.end35.for.body_crit_edge, label %if.end35.for.end_crit_edge

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %pins42 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 4, i32 1
  %145 = ptrtoint ptr %pins42 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call5.i.i, ptr %pins42, align 4
  %num_custom_params = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 4, i32 7
  %146 = ptrtoint ptr %num_custom_params to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 2, ptr %num_custom_params, align 4
  %custom_params = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 4, i32 8
  %147 = ptrtoint ptr %custom_params to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @pm8xxx_gpio_bindings, ptr %custom_params, align 4
  %custom_conf_items = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 4, i32 9
  %148 = ptrtoint ptr %custom_conf_items to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @pm8xxx_conf_items, ptr %custom_conf_items, align 4
  %call48 = call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %call.i) #11
  %pctrl49 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 2
  %149 = ptrtoint ptr %pctrl49 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call48, ptr %pctrl49, align 4
  %cmp.i225 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %do.end55, label %if.end59

do.end55:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #14
  %150 = ptrtoint ptr %pctrl49 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pctrl49, align 4
  %152 = ptrtoint ptr %151 to i32
  br label %cleanup

if.end59:                                         ; preds = %for.end
  %chip = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 3
  %153 = call ptr @memcpy(ptr %chip, ptr @pm8xxx_gpio_template, i32 348)
  %base = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 3, i32 19
  %154 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -1, ptr %base, align 4
  %parent63 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 3, i32 2
  %155 = ptrtoint ptr %parent63 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %dev, ptr %parent63, align 4
  %of_gpio_n_cells = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 3, i32 40
  %156 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 2, ptr %of_gpio_n_cells, align 4
  %157 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %call.i, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %160, null
  br i1 %tobool.not.i, label %if.end.i226, label %if.end59.dev_name.exit_crit_edge

if.end59.dev_name.exit_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i226:                                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %161 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %158, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i226, %if.end59.dev_name.exit_crit_edge
  %retval.0.i227 = phi ptr [ %162, %if.end.i226 ], [ %160, %if.end59.dev_name.exit_crit_edge ]
  %163 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %retval.0.i227, ptr %chip, align 4
  %164 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %npins, align 4
  %conv = trunc i32 %165 to i16
  %ngpio = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 3, i32 20
  %166 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv, ptr %ngpio, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %158, i32 0, i32 27
  %167 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %of_node, align 8
  %call71 = call ptr @of_irq_find_parent(ptr noundef %168) #11
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %dev_name.exit.cleanup_crit_edge, label %if.end74

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end74:                                         ; preds = %dev_name.exit
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call71, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #11
  %169 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %170 = call ptr @memset(ptr %169, i32 0, i32 68)
  %171 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #11
  %tobool.not.i228 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i228, label %irq_find_host.exit, label %irq_find_host.exit.thread

irq_find_host.exit.thread:                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_node_put(ptr noundef nonnull %call71) #11
  br label %if.end78

irq_find_host.exit:                               ; preds = %if.end74
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #11
  %172 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %173 = call ptr @memset(ptr %172, i32 0, i32 68)
  %174 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #11
  call void @of_node_put(ptr noundef nonnull %call71) #11
  %tobool76.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool76.not, label %irq_find_host.exit.cleanup_crit_edge, label %irq_find_host.exit.if.end78_crit_edge

irq_find_host.exit.if.end78_crit_edge:            ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

irq_find_host.exit.cleanup_crit_edge:             ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end78:                                         ; preds = %irq_find_host.exit.if.end78_crit_edge, %irq_find_host.exit.thread
  %d.0.i246 = phi ptr [ %call.i.i.i, %irq_find_host.exit.thread ], [ %call.i.i8.i, %irq_find_host.exit.if.end78_crit_edge ]
  %irq = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 3, i32 37
  %175 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @pm8xxx_irq_chip, ptr %irq, align 4
  %default_type = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 3, i32 37, i32 10
  %176 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 3, i32 37, i32 9
  %177 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @handle_level_irq, ptr %handler, align 4
  %178 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %call.i, align 4
  %of_node82 = getelementptr inbounds %struct.device, ptr %179, i32 0, i32 27
  %180 = ptrtoint ptr %of_node82 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %of_node82, align 8
  %tobool.not.i230 = icmp eq ptr %181, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %181, i32 0, i32 3
  %spec.select.i231 = select i1 %tobool.not.i230, ptr null, ptr %fwnode.i
  %fwnode = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 3, i32 37, i32 3
  %182 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %spec.select.i231, ptr %fwnode, align 4
  %parent_domain84 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 3, i32 37, i32 4
  %183 = ptrtoint ptr %parent_domain84 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %d.0.i246, ptr %parent_domain84, align 4
  %child_to_parent_hwirq = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 3, i32 37, i32 5
  %184 = ptrtoint ptr %child_to_parent_hwirq to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr @pm8xxx_child_to_parent_hwirq, ptr %child_to_parent_hwirq, align 4
  %populate_parent_alloc_arg = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 3, i32 37, i32 6
  %185 = ptrtoint ptr %populate_parent_alloc_arg to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @gpiochip_populate_parent_fwspec_twocell, ptr %populate_parent_alloc_arg, align 4
  %child_offset_to_irq = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 3, i32 37, i32 7
  %186 = ptrtoint ptr %child_offset_to_irq to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr @pm8xxx_child_offset_to_irq, ptr %child_offset_to_irq, align 4
  %translate = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 3, i32 37, i32 8, i32 9
  %187 = ptrtoint ptr %translate to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @pm8xxx_domain_translate, ptr %translate, align 4
  %call86 = call i32 @gpiochip_add_data_with_key(ptr noundef %chip, ptr noundef nonnull %call.i, ptr noundef nonnull @pm8xxx_gpio_probe.lock_key, ptr noundef nonnull @pm8xxx_gpio_probe.request_key) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end93, label %do.end91

do.end91:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #14
  br label %cleanup

if.end93:                                         ; preds = %if.end78
  %188 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %call.i, align 4
  %of_node95 = getelementptr inbounds %struct.device, ptr %189, i32 0, i32 27
  %190 = ptrtoint ptr %of_node95 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %of_node95, align 8
  %call.i232 = call ptr @of_find_property(ptr noundef %191, ptr noundef nonnull @.str.12, ptr noundef null) #11
  %tobool.i.not = icmp eq ptr %call.i232, null
  br i1 %tobool.i.not, label %if.then97, label %if.end93.if.end112_crit_edge

if.end93.if.end112_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.then97:                                        ; preds = %if.end93
  %192 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %call.i, align 4
  %init_name.i233 = getelementptr inbounds %struct.device, ptr %193, i32 0, i32 3
  %194 = ptrtoint ptr %init_name.i233 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %init_name.i233, align 8
  %tobool.not.i234 = icmp eq ptr %195, null
  br i1 %tobool.not.i234, label %if.end.i235, label %if.then97.dev_name.exit237_crit_edge

if.then97.dev_name.exit237_crit_edge:             ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit237

if.end.i235:                                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #13
  %196 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %193, align 4
  br label %dev_name.exit237

dev_name.exit237:                                 ; preds = %if.end.i235, %if.then97.dev_name.exit237_crit_edge
  %retval.0.i236 = phi ptr [ %197, %if.end.i235 ], [ %195, %if.then97.dev_name.exit237_crit_edge ]
  %198 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %ngpio, align 4
  %conv103 = zext i16 %199 to i32
  %call104 = call i32 @gpiochip_add_pin_range(ptr noundef %chip, ptr noundef %retval.0.i236, i32 noundef 0, i32 noundef 0, i32 noundef %conv103) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %dev_name.exit237.if.end112_crit_edge, label %do.end109

dev_name.exit237.if.end112_crit_edge:             ; preds = %dev_name.exit237
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

do.end109:                                        ; preds = %dev_name.exit237
  call void @__sanitizer_cov_trace_pc() #13
  %200 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.14) #14
  call void @gpiochip_remove(ptr noundef %chip) #11
  br label %cleanup

if.end112:                                        ; preds = %dev_name.exit237.if.end112_crit_edge, %if.end93.if.end112_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %202 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8xxx_gpio_probe.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm8xxx_gpio_probe, %cleanup)) #11
          to label %if.then120 [label %cleanup], !srcloc !276

if.then120:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8xxx_gpio_probe.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then120, %if.end112, %do.end109, %do.end91, %irq_find_host.exit.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %do.end55, %pm8xxx_read_bank.exit160.i.cleanup_crit_edge, %pm8xxx_read_bank.exit148.i.cleanup_crit_edge, %pm8xxx_read_bank.exit136.i.cleanup_crit_edge, %pm8xxx_read_bank.exit124.i.cleanup_crit_edge, %pm8xxx_read_bank.exit112.i.cleanup_crit_edge, %pm8xxx_read_bank.exit.i.cleanup_crit_edge, %devm_kcalloc.exit221.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %152, %do.end55 ], [ %call86, %do.end91 ], [ %call104, %do.end109 ], [ -6, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit221.cleanup_crit_edge ], [ -6, %dev_name.exit.cleanup_crit_edge ], [ -6, %irq_find_host.exit.cleanup_crit_edge ], [ 0, %if.then120 ], [ -12, %if.end11.cleanup_crit_edge ], [ -12, %if.end21.cleanup_crit_edge ], [ 0, %if.end112 ], [ %retval.0.i.i223, %pm8xxx_read_bank.exit.i.cleanup_crit_edge ], [ %retval.0.i111.i, %pm8xxx_read_bank.exit112.i.cleanup_crit_edge ], [ %retval.0.i123.i, %pm8xxx_read_bank.exit124.i.cleanup_crit_edge ], [ %retval.0.i135.i, %pm8xxx_read_bank.exit136.i.cleanup_crit_edge ], [ %retval.0.i147.i, %pm8xxx_read_bank.exit148.i.cleanup_crit_edge ], [ %retval.0.i159.i, %pm8xxx_read_bank.exit160.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_gpio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.pm8xxx_gpio, ptr %1, i32 0, i32 3
  tail call void @gpiochip_remove(ptr noundef %chip) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pm8xxx_child_to_parent_hwirq(ptr nocapture noundef readnone %chip, i32 noundef %child_hwirq, i32 noundef %child_type, ptr nocapture noundef writeonly %parent_hwirq, ptr nocapture noundef writeonly %parent_type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %child_hwirq, 192
  %0 = ptrtoint ptr %parent_hwirq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %parent_hwirq, align 4
  %1 = ptrtoint ptr %parent_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %child_type, ptr %parent_type, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_populate_parent_fwspec_twocell(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm8xxx_child_offset_to_irq(ptr nocapture noundef readnone %chip, i32 noundef %offset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 1
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm8xxx_domain_translate(ptr nocapture noundef readonly %domain, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %2 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp5 = icmp ugt i32 %5, %conv
  br i1 %cmp5, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %5, -1
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %hwirq, align 4
  %arrayidx10 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx10, align 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #11
  %npins = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npins, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pm8xxx_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %group) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [44 x ptr], ptr @pm8xxx_groups, i32 0, i32 %group
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #11
  %pins1 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins1, align 4
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %group
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %pins, align 4
  %3 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 4) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm8xxx_get_functions_count(ptr nocapture noundef readnone %pctldev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pm8xxx_get_function_name(ptr nocapture noundef readnone %pctldev, i32 noundef %function) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [8 x ptr], ptr @pm8xxx_gpio_functions, i32 0, i32 %function
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_get_function_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #11
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @pm8xxx_groups, ptr %groups, align 4
  %npins = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %npins, align 4
  %3 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_pinmux_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #11
  %pins = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %group, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %conv = trunc i32 %function to i8
  %function1 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %function1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %function1, align 4
  %conv4 = shl i32 %function, 1
  %regmap.i = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %conv4.i = and i32 %conv4, 62
  %conv5.i = or i32 %conv4.i, 192
  %call.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %8, i32 noundef %conv5.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.pm8xxx_write_bank.exit_crit_edge, label %do.end.i

entry.pm8xxx_write_bank.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm8xxx_write_bank.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.27) #14
  br label %pm8xxx_write_bank.exit

pm8xxx_write_bank.exit:                           ; preds = %do.end.i, %entry.pm8xxx_write_bank.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_pin_config_get(ptr noundef %pctldev, i32 noundef %offset, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #11
  %pins = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %offset, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config, align 4
  %and.i = and i32 %5, 255
  %trunc = trunc i32 %5 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 3, label %sw.bb3
    i8 5, label %sw.bb10
    i8 -127, label %sw.bb17
    i8 2, label %sw.bb19
    i8 12, label %sw.bb22
    i8 17, label %sw.bb28
    i8 21, label %sw.bb36
    i8 -128, label %sw.bb38
    i8 8, label %sw.bb40
    i8 6, label %sw.bb44
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %bias = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %bias to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bias, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %8)
  %cmp.not = icmp eq i8 %8, 5
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %bias4 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %bias4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bias4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %cmp6.not = icmp eq i8 %10, 4
  br i1 %cmp6.not, label %sw.bb3.sw.epilog_crit_edge, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %bias11 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %bias11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bias11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp13 = icmp ugt i8 %12, 3
  br i1 %cmp13, label %sw.bb10.cleanup_crit_edge, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pull_up_strength = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %pull_up_strength to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pull_up_strength, align 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %disable = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %disable to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %disable, align 1, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %sw.bb19.cleanup_crit_edge, label %sw.bb19.sw.epilog_crit_edge

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %mode = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp24.not = icmp eq i8 %18, 0
  br i1 %cmp24.not, label %sw.bb22.sw.epilog_crit_edge, label %sw.bb22.cleanup_crit_edge

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %mode29 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %mode29 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mode29, align 1
  %21 = and i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool31.not = icmp eq i8 %21, 0
  br i1 %tobool31.not, label %sw.bb28.sw.epilog_crit_edge, label %if.then32

sw.bb28.sw.epilog_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then32:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  %output_value = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %output_value to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %output_value, align 1, !range !277
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %power_source = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %power_source to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %power_source, align 4
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %output_strength = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 7
  %26 = ptrtoint ptr %output_strength to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %output_strength, align 2
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  %open_drain = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %open_drain to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %open_drain, align 2, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool41.not = icmp eq i8 %29, 0
  br i1 %tobool41.not, label %sw.bb40.sw.epilog_crit_edge, label %sw.bb40.cleanup_crit_edge

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb40.sw.epilog_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  %open_drain45 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %open_drain45 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %open_drain45, align 2, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool46.not = icmp eq i8 %31, 0
  br i1 %tobool46.not, label %sw.bb44.cleanup_crit_edge, label %sw.bb44.sw.epilog_crit_edge

sw.bb44.sw.epilog_crit_edge:                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb44.sw.epilog_crit_edge, %sw.bb40.sw.epilog_crit_edge, %sw.bb38, %sw.bb36, %if.then32, %sw.bb28.sw.epilog_crit_edge, %sw.bb22.sw.epilog_crit_edge, %sw.bb19.sw.epilog_crit_edge, %sw.bb17, %sw.bb10.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %arg.0.shrunk = phi i8 [ %27, %sw.bb38 ], [ %25, %sw.bb36 ], [ %23, %if.then32 ], [ %14, %sw.bb17 ], [ 1, %sw.bb.sw.epilog_crit_edge ], [ 1, %sw.bb3.sw.epilog_crit_edge ], [ 1, %sw.bb10.sw.epilog_crit_edge ], [ 1, %sw.bb19.sw.epilog_crit_edge ], [ 1, %sw.bb22.sw.epilog_crit_edge ], [ 0, %sw.bb28.sw.epilog_crit_edge ], [ 1, %sw.bb40.sw.epilog_crit_edge ], [ 1, %sw.bb44.sw.epilog_crit_edge ]
  %arg.0 = zext i8 %arg.0.shrunk to i32
  %shl.i = shl nuw nsw i32 %arg.0, 8
  %or.i = or i32 %shl.i, %and.i
  %32 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb44.cleanup_crit_edge, %sw.bb40.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %sw.bb10.cleanup_crit_edge ], [ -22, %sw.bb19.cleanup_crit_edge ], [ -22, %sw.bb22.cleanup_crit_edge ], [ -22, %sw.bb40.cleanup_crit_edge ], [ -22, %sw.bb44.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_pin_config_set(ptr noundef %pctldev, i32 noundef %offset, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #11
  %pins = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %offset, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp285.not = icmp eq i32 %num_configs, 0
  br i1 %cmp285.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %open_drain70 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 3
  %output_strength = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 7
  %power_source = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 1
  %mode42 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 2
  %output_value = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 4
  %disable33 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 8
  %pull_up_strength = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 6
  %bias24 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %banks.0287 = phi i8 [ 0, %for.body.lr.ph ], [ %30, %for.inc.for.body_crit_edge ]
  %i.0286 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %configs, i32 %i.0286
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %shr.i = lshr i32 %5, 8
  %trunc = trunc i32 %5 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %trunc, label %do.end76 [
    i8 1, label %sw.bb
    i8 3, label %sw.bb9
    i8 -127, label %sw.bb18
    i8 5, label %for.body.sw.bb22_crit_edge
    i8 2, label %sw.bb32
    i8 12, label %sw.bb37
    i8 17, label %sw.bb41
    i8 21, label %sw.bb47
    i8 -128, label %sw.bb52
    i8 8, label %sw.bb65
    i8 6, label %sw.bb69
  ]

for.body.sw.bb22_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb22

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %bias24 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 5, ptr %bias24, align 4
  %8 = ptrtoint ptr %disable33 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %disable33, align 1
  br label %for.inc

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %bias24 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %bias24, align 4
  %10 = ptrtoint ptr %disable33 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %disable33, align 1
  br label %for.inc

sw.bb18:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %5)
  %cmp19 = icmp ugt i32 %5, 1023
  br i1 %cmp19, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.29) #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  %conv21 = trunc i32 %shr.i to i8
  %13 = ptrtoint ptr %pull_up_strength to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv21, ptr %pull_up_strength, align 1
  br label %sw.bb22

sw.bb22:                                          ; preds = %if.end, %for.body.sw.bb22_crit_edge
  %14 = ptrtoint ptr %pull_up_strength to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pull_up_strength, align 1
  %16 = ptrtoint ptr %bias24 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %bias24, align 4
  %17 = ptrtoint ptr %disable33 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %disable33, align 1
  br label %for.inc

sw.bb32:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %disable33 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %disable33, align 1
  br label %for.inc

sw.bb37:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %mode42 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %mode42, align 1
  br label %for.inc

sw.bb41:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %mode42 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %mode42, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %tobool = icmp ugt i32 %5, 255
  %frombool = zext i1 %tobool to i8
  %21 = ptrtoint ptr %output_value to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %output_value, align 1
  br label %for.inc

sw.bb47:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv48 = trunc i32 %shr.i to i8
  %22 = ptrtoint ptr %power_source to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv48, ptr %power_source, align 4
  br label %for.inc

sw.bb52:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %5)
  %cmp53 = icmp ugt i32 %5, 1023
  br i1 %cmp53, label %do.end58, label %if.end60

do.end58:                                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.32) #14
  br label %cleanup

if.end60:                                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #13
  %conv61 = trunc i32 %shr.i to i8
  %25 = ptrtoint ptr %output_strength to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv61, ptr %output_strength, align 2
  br label %for.inc

sw.bb65:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %open_drain70 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %open_drain70, align 2
  br label %for.inc

sw.bb69:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %open_drain70 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %open_drain70, align 2
  br label %for.inc

do.end76:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = and i32 %5, 255
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.35, i32 noundef %and.i) #14
  br label %cleanup

for.inc:                                          ; preds = %sw.bb69, %sw.bb65, %if.end60, %sw.bb47, %sw.bb41, %sw.bb37, %sw.bb32, %sw.bb22, %sw.bb9, %sw.bb
  %.sink = phi i8 [ 12, %sw.bb ], [ 12, %sw.bb9 ], [ 12, %sw.bb22 ], [ 8, %sw.bb32 ], [ 3, %sw.bb37 ], [ 3, %sw.bb41 ], [ 1, %sw.bb47 ], [ 8, %if.end60 ], [ 2, %sw.bb65 ], [ 2, %sw.bb69 ]
  %30 = or i8 %banks.0287, %.sink
  %inc = add nuw i32 %i.0286, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %conv78 = zext i8 %30 to i32
  %and = and i32 %conv78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool79.not = icmp eq i32 %and, 0
  br i1 %tobool79.not, label %for.end.if.end88_crit_edge, label %if.then80

for.end.if.end88_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then80:                                        ; preds = %for.end
  %power_source81 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %power_source81 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %power_source81, align 4
  %shl = shl i8 %32, 1
  %conv4.i = or i8 %shl, -127
  %regmap.i = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 1
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 4
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %3, align 4
  %conv5.i = zext i8 %conv4.i to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %34, i32 noundef %36, i32 noundef %conv5.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then80.if.end88_crit_edge, label %do.end.i

if.then80.if.end88_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

do.end.i:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.27) #14
  br label %if.end88

if.end88:                                         ; preds = %do.end.i, %if.then80.if.end88_crit_edge, %for.end.if.end88_crit_edge
  %and90 = and i32 %conv78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end88.if.end111_crit_edge, label %if.then92

if.end88.if.end111_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then92:                                        ; preds = %if.end88
  %mode93 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 2
  %39 = ptrtoint ptr %mode93 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mode93, align 1
  %shl95 = shl i8 %40, 2
  %open_drain97 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 3
  %41 = ptrtoint ptr %open_drain97 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %open_drain97, align 2, !range !277
  %43 = shl nuw nsw i8 %42, 1
  %output_value104 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 4
  %44 = ptrtoint ptr %output_value104 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %output_value104, align 1, !range !277
  %or102243 = or i8 %shl95, %43
  %or108244 = or i8 %or102243, %45
  %conv4.i245 = or i8 %or108244, -112
  %regmap.i246 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 1
  %46 = ptrtoint ptr %regmap.i246 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i246, align 4
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %3, align 4
  %conv5.i247 = zext i8 %conv4.i245 to i32
  %call.i248 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef %49, i32 noundef %conv5.i247) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %tobool.not.i249 = icmp eq i32 %call.i248, 0
  br i1 %tobool.not.i249, label %if.then92.if.end111_crit_edge, label %do.end.i250

if.then92.if.end111_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

do.end.i250:                                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.27) #14
  br label %if.end111

if.end111:                                        ; preds = %do.end.i250, %if.then92.if.end111_crit_edge, %if.end88.if.end111_crit_edge
  %and113 = and i32 %conv78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end111.if.end121_crit_edge, label %if.then115

if.end111.if.end121_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.then115:                                       ; preds = %if.end111
  %bias116 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 5
  %52 = ptrtoint ptr %bias116 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bias116, align 4
  %shl118 = shl i8 %53, 1
  %conv4.i252 = or i8 %shl118, -96
  %regmap.i253 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 1
  %54 = ptrtoint ptr %regmap.i253 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i253, align 4
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %3, align 4
  %conv5.i254 = zext i8 %conv4.i252 to i32
  %call.i255 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef %57, i32 noundef %conv5.i254) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %tobool.not.i256 = icmp eq i32 %call.i255, 0
  br i1 %tobool.not.i256, label %if.then115.if.end121_crit_edge, label %do.end.i257

if.then115.if.end121_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

do.end.i257:                                      ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.27) #14
  br label %if.end121

if.end121:                                        ; preds = %do.end.i257, %if.then115.if.end121_crit_edge, %if.end111.if.end121_crit_edge
  %and123 = and i32 %conv78, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end121.if.end137_crit_edge, label %if.then125

if.end121.if.end137_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

if.then125:                                       ; preds = %if.end121
  %output_strength126 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 7
  %60 = ptrtoint ptr %output_strength126 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %output_strength126, align 2
  %shl128 = shl i8 %61, 2
  %disable130 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 8
  %62 = ptrtoint ptr %disable130 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %disable130, align 1, !range !277
  %or134242 = or i8 %63, %shl128
  %conv4.i259 = or i8 %or134242, -80
  %regmap.i260 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 1
  %64 = ptrtoint ptr %regmap.i260 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap.i260, align 4
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %3, align 4
  %conv5.i261 = zext i8 %conv4.i259 to i32
  %call.i262 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef %67, i32 noundef %conv5.i261) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %tobool.not.i263 = icmp eq i32 %call.i262, 0
  br i1 %tobool.not.i263, label %if.then125.if.end137_crit_edge, label %do.end.i264

if.then125.if.end137_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

do.end.i264:                                      ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.27) #14
  br label %if.end137

if.end137:                                        ; preds = %do.end.i264, %if.then125.if.end137_crit_edge, %if.end121.if.end137_crit_edge
  %and139 = and i32 %conv78, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.end137.if.end146_crit_edge, label %if.then141

if.end137.if.end146_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146

if.then141:                                       ; preds = %if.end137
  %function = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 9
  %70 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %function, align 4
  %shl143 = shl i8 %71, 1
  %conv4.i266 = or i8 %shl143, -64
  %regmap.i267 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 1
  %72 = ptrtoint ptr %regmap.i267 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i267, align 4
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %3, align 4
  %conv5.i268 = zext i8 %conv4.i266 to i32
  %call.i269 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef %75, i32 noundef %conv5.i268) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %tobool.not.i270 = icmp eq i32 %call.i269, 0
  br i1 %tobool.not.i270, label %if.then141.if.end146_crit_edge, label %do.end.i271

if.then141.if.end146_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146

do.end.i271:                                      ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.27) #14
  br label %if.end146

if.end146:                                        ; preds = %do.end.i271, %if.then141.if.end146_crit_edge, %if.end137.if.end146_crit_edge
  %and148 = and i32 %conv78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.end146.cleanup_crit_edge, label %if.then150

if.end146.cleanup_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then150:                                       ; preds = %if.end146
  %inverted = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 10
  %78 = ptrtoint ptr %inverted to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %inverted, align 1, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool151.not = icmp eq i8 %79, 0
  %conv4.i273 = select i1 %tobool151.not, i32 216, i32 208
  %regmap.i274 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 1
  %80 = ptrtoint ptr %regmap.i274 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap.i274, align 4
  %82 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %3, align 4
  %call.i276 = tail call i32 @regmap_write(ptr noundef %81, i32 noundef %83, i32 noundef %conv4.i273) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool.not.i277 = icmp eq i32 %call.i276, 0
  br i1 %tobool.not.i277, label %if.then150.cleanup_crit_edge, label %do.end.i278

if.then150.cleanup_crit_edge:                     ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i278:                                      ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.27) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end.i278, %if.then150.cleanup_crit_edge, %if.end146.cleanup_crit_edge, %do.end76, %do.end58, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end76 ], [ -22, %do.end58 ], [ -22, %do.end ], [ 0, %if.end146.cleanup_crit_edge ], [ 0, %if.then150.cleanup_crit_edge ], [ 0, %do.end.i278 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %pins = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %offset, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %mode = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %mode, align 1
  %regmap.i = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %8, i32 noundef 144) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.pm8xxx_write_bank.exit_crit_edge, label %do.end.i

entry.pm8xxx_write_bank.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm8xxx_write_bank.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.27) #14
  br label %pm8xxx_write_bank.exit

pm8xxx_write_bank.exit:                           ; preds = %do.end.i, %entry.pm8xxx_write_bank.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %pins = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %offset, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %mode = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %output_value = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 4
  %frombool = zext i1 %tobool to i8
  %5 = ptrtoint ptr %output_value to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %output_value, align 1
  %open_drain = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %open_drain to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %open_drain, align 2, !range !277
  %8 = shl nuw nsw i8 %7, 1
  %9 = or i8 %8, %frombool
  %conv4.i = or i8 %9, -104
  %regmap.i = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  %conv5.i = zext i8 %conv4.i to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %13, i32 noundef %conv5.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.pm8xxx_write_bank.exit_crit_edge, label %do.end.i

entry.pm8xxx_write_bank.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm8xxx_write_bank.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.27) #14
  br label %pm8xxx_write_bank.exit

pm8xxx_write_bank.exit:                           ; preds = %do.end.i, %entry.pm8xxx_write_bank.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %state = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %pins = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %offset, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state) #11
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %state, align 1, !annotation !278
  %mode = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp = icmp eq i8 %6, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %output_value = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %output_value to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %output_value, align 1, !range !277
  %9 = zext i8 %8 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %to_irq = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 15
  %10 = ptrtoint ptr %to_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %to_irq, align 4
  %call3 = tail call i32 %11(ptr noundef %chip, i32 noundef %offset) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp4 = icmp sgt i32 %call3, -1
  br i1 %cmp4, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %call7 = call i32 @irq_get_irqchip_state(i32 noundef %call3, i32 noundef 3, ptr noundef nonnull %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %state, align 1, !range !277
  %14 = zext i8 %13 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %call7, %if.then6.cleanup_crit_edge ], [ %14, %if.then9 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm8xxx_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %pins = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %offset, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %output_value = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 4
  %frombool = zext i1 %tobool to i8
  %4 = ptrtoint ptr %output_value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %output_value, align 1
  %mode = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mode, align 1
  %shl = shl i8 %6, 2
  %open_drain = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %open_drain to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %open_drain, align 2, !range !277
  %9 = shl nuw nsw i8 %8, 1
  %or22 = or i8 %shl, %frombool
  %or12 = or i8 %or22, %9
  %conv4.i = or i8 %or12, -112
  %regmap.i = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  %conv5.i = zext i8 %conv4.i to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %13, i32 noundef %conv5.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.pm8xxx_write_bank.exit_crit_edge, label %do.end.i

entry.pm8xxx_write_bank.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm8xxx_write_bank.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.27) #14
  br label %pm8xxx_write_bank.exit

pm8xxx_write_bank.exit:                           ; preds = %do.end.i, %entry.pm8xxx_write_bank.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm8xxx_gpio_dbg_show(ptr noundef %s, ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %pm8xxx_gpio_dbg_show_one.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %add.i, %pm8xxx_gpio_dbg_show_one.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %pins.i = getelementptr inbounds %struct.pm8xxx_gpio, ptr %call.i, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins.i, align 4
  %drv_data.i = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %i.011, i32 2
  %4 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data.i, align 4
  %add.i = add nuw nsw i32 %i.011, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.107, i32 noundef %add.i) #11
  %disable.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %disable.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %disable.i, align 1, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.body.if.end15.sink.split.i_crit_edge

for.body.if.end15.sink.split.i_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i

if.else.i:                                        ; preds = %for.body
  %mode.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode.i, align 1
  %idxprom.i = zext i8 %9 to i32
  %arrayidx1.i = getelementptr [4 x ptr], ptr @pm8xxx_gpio_dbg_show_one.modes, i32 0, i32 %idxprom.i
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.109, ptr noundef %11) #11
  %function.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %function.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %function.i, align 4
  %idxprom2.i = zext i8 %13 to i32
  %arrayidx3.i = getelementptr [8 x ptr], ptr @pm8xxx_gpio_functions, i32 0, i32 %idxprom2.i
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx3.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.110, ptr noundef %15) #11
  %power_source.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %power_source.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %power_source.i, align 4
  %conv.i = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.111, i32 noundef %conv.i) #11
  %bias.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %bias.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bias.i, align 4
  %idxprom4.i = zext i8 %19 to i32
  %arrayidx5.i = getelementptr [6 x ptr], ptr @pm8xxx_gpio_dbg_show_one.biases, i32 0, i32 %idxprom4.i
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx5.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.112, ptr noundef %21) #11
  %open_drain.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 3
  %22 = ptrtoint ptr %open_drain.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %open_drain.i, align 2, !range !277
  %24 = zext i8 %23 to i32
  %arrayidx8.i = getelementptr [2 x ptr], ptr @pm8xxx_gpio_dbg_show_one.buffer_types, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx8.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.113, ptr noundef %26) #11
  %output_value.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 4
  %27 = ptrtoint ptr %output_value.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %output_value.i, align 1, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool9.not.i = icmp eq i8 %28, 0
  %cond.i = select i1 %tobool9.not.i, ptr @.str.106, ptr @.str.104
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.109, ptr noundef nonnull %cond.i) #11
  %output_strength.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 7
  %29 = ptrtoint ptr %output_strength.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %output_strength.i, align 2
  %idxprom11.i = zext i8 %30 to i32
  %arrayidx12.i = getelementptr [4 x ptr], ptr @pm8xxx_gpio_dbg_show_one.strengths, i32 0, i32 %idxprom11.i
  %31 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx12.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.110, ptr noundef %32) #11
  %inverted.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 10
  %33 = ptrtoint ptr %inverted.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %inverted.i, align 1, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool13.not.i = icmp eq i8 %34, 0
  br i1 %tobool13.not.i, label %if.else.i.pm8xxx_gpio_dbg_show_one.exit_crit_edge, label %if.else.i.if.end15.sink.split.i_crit_edge

if.else.i.if.end15.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i

if.else.i.pm8xxx_gpio_dbg_show_one.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm8xxx_gpio_dbg_show_one.exit

if.end15.sink.split.i:                            ; preds = %if.else.i.if.end15.sink.split.i_crit_edge, %for.body.if.end15.sink.split.i_crit_edge
  %.str.114.sink.i = phi ptr [ @.str.108, %for.body.if.end15.sink.split.i_crit_edge ], [ @.str.114, %if.else.i.if.end15.sink.split.i_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.114.sink.i) #11
  br label %pm8xxx_gpio_dbg_show_one.exit

pm8xxx_gpio_dbg_show_one.exit:                    ; preds = %if.end15.sink.split.i, %if.else.i.pm8xxx_gpio_dbg_show_one.exit_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.90) #11
  %35 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %36 to i32
  %cmp = icmp ult i32 %add.i, %conv
  br i1 %cmp, label %pm8xxx_gpio_dbg_show_one.exit.for.body_crit_edge, label %pm8xxx_gpio_dbg_show_one.exit.for.end_crit_edge

pm8xxx_gpio_dbg_show_one.exit.for.end_crit_edge:  ; preds = %pm8xxx_gpio_dbg_show_one.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

pm8xxx_gpio_dbg_show_one.exit.for.body_crit_edge: ; preds = %pm8xxx_gpio_dbg_show_one.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %pm8xxx_gpio_dbg_show_one.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm8xxx_gpio_of_xlate(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %gpio_desc, ptr noundef writeonly %flags) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 40
  %0 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %of_gpio_n_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %flags, null
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.of_phandle_args, ptr %gpio_desc, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %flags, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %args3 = getelementptr inbounds %struct.of_phandle_args, ptr %gpio_desc, i32 0, i32 2
  %5 = ptrtoint ptr %args3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args3, align 4
  %sub = add i32 %6, -1
  br label %return

return:                                           ; preds = %if.end2, %entry.return_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end2 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_get_irqchip_state(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_ack_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264}
!llvm.module.flags = !{!266, !267, !268, !269, !270, !271, !272, !273}
!llvm.ident = !{!274}

!0 = !{ptr @__initcall__kmod_pinctrl_ssbi_gpio__228_855_pm8xxx_gpio_driver_init6, !1, !"__initcall__kmod_pinctrl_ssbi_gpio__228_855_pm8xxx_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 855, i32 1}
!2 = !{ptr @__exitcall_pm8xxx_gpio_driver_exit, !1, !"__exitcall_pm8xxx_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author229, !4, !"__UNIQUE_ID_author229", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 857, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 858, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 859, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 848, i32 11}
!12 = !{ptr @pm8xxx_gpio_driver, !13, !"pm8xxx_gpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 846, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 727, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pm8xxx_gpio_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pm8xxx_gpio_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 769, i32 3}
!24 = !{ptr @pm8xxx_gpio_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @pm8xxx_gpio_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @pm8xxx_gpio_probe.lock_key, !27, !"lock_key", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 800, i32 8}
!28 = !{ptr @pm8xxx_gpio_probe.request_key, !27, !"request_key", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 802, i32 3}
!31 = !{ptr @pm8xxx_gpio_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @pm8xxx_gpio_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 816, i32 50}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 820, i32 4}
!37 = !{ptr @pm8xxx_gpio_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @pm8xxx_gpio_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 827, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pm8xxx_gpio_probe.__UNIQUE_ID_ddebug227, !40, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 443, i32 10}
!45 = !{ptr @pm8xxx_pinctrl_desc, !46, !"pm8xxx_pinctrl_desc", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 442, i32 34}
!47 = !{ptr @pm8xxx_pinctrl_ops, !48, !"pm8xxx_pinctrl_ops", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 190, i32 33}
!49 = !{ptr @pm8xxx_pinmux_ops, !50, !"pm8xxx_pinmux_ops", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 237, i32 32}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 119, i32 2}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 119, i32 25}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 120, i32 2}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 120, i32 24}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 121, i32 2}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 121, i32 25}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 122, i32 2}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 122, i32 25}
!67 = !{ptr @pm8xxx_gpio_functions, !68, !"pm8xxx_gpio_functions", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 118, i32 27}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 158, i32 3}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @pm8xxx_write_bank._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @pm8xxx_write_bank._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @pm8xxx_pinconf_ops, !75, !"pm8xxx_pinconf_ops", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 436, i32 33}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 345, i32 5}
!78 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @pm8xxx_pin_config_set._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @pm8xxx_pin_config_set._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 375, i32 5}
!83 = !{ptr @pm8xxx_pin_config_set._entry.31, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @pm8xxx_pin_config_set._entry_ptr.33, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 390, i32 4}
!87 = !{ptr @pm8xxx_pin_config_set._entry.34, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @pm8xxx_pin_config_set._entry_ptr.36, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 133, i32 3}
!91 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @pm8xxx_read_bank._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @pm8xxx_read_bank._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 139, i32 3}
!96 = !{ptr @pm8xxx_read_bank._entry.39, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @pm8xxx_read_bank._entry_ptr.41, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 109, i32 2}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 109, i32 11}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 109, i32 20}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 109, i32 29}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 109, i32 38}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 109, i32 47}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 109, i32 56}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 109, i32 65}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 110, i32 2}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 110, i32 11}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 110, i32 21}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 110, i32 31}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 110, i32 41}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 110, i32 51}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 110, i32 61}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 111, i32 2}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 111, i32 12}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 111, i32 22}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 111, i32 32}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 111, i32 42}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 111, i32 52}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 111, i32 62}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 112, i32 2}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 112, i32 12}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 112, i32 22}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 112, i32 32}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 112, i32 42}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 112, i32 52}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 112, i32 62}
!156 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 113, i32 2}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 113, i32 12}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 113, i32 22}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 113, i32 32}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 113, i32 42}
!166 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 113, i32 52}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 113, i32 62}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 114, i32 2}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 114, i32 12}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 114, i32 22}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 114, i32 32}
!178 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 114, i32 42}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 114, i32 52}
!182 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 114, i32 62}
!184 = !{ptr @.str.85, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 115, i32 2}
!186 = !{ptr @pm8xxx_groups, !187, !"pm8xxx_groups", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 108, i32 27}
!188 = !{ptr @.str.86, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 97, i32 3}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 98, i32 3}
!192 = !{ptr @pm8xxx_gpio_bindings, !193, !"pm8xxx_gpio_bindings", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 96, i32 44}
!194 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 103, i32 2}
!196 = !{ptr @.str.89, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 104, i32 2}
!198 = !{ptr @pm8xxx_conf_items, !199, !"pm8xxx_conf_items", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 102, i32 37}
!200 = !{ptr @pm8xxx_gpio_template, !201, !"pm8xxx_gpio_template", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 593, i32 31}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 585, i32 15}
!204 = !{ptr @.str.91, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 549, i32 3}
!206 = !{ptr @.str.92, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 549, i32 9}
!208 = !{ptr @.str.93, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 549, i32 17}
!210 = !{ptr @.str.94, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 549, i32 24}
!212 = !{ptr @pm8xxx_gpio_dbg_show_one.modes, !213, !"modes", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 548, i32 28}
!214 = !{ptr @.str.95, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 552, i32 3}
!216 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 552, i32 19}
!218 = !{ptr @.str.97, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 552, i32 36}
!220 = !{ptr @.str.98, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 553, i32 3}
!222 = !{ptr @.str.99, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 553, i32 33}
!224 = !{ptr @.str.100, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 553, i32 51}
!226 = !{ptr @pm8xxx_gpio_dbg_show_one.biases, !227, !"biases", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 551, i32 28}
!228 = !{ptr @.str.101, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 556, i32 3}
!230 = !{ptr @.str.102, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 556, i32 16}
!232 = !{ptr @pm8xxx_gpio_dbg_show_one.buffer_types, !233, !"buffer_types", i1 false, i1 false}
!233 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 555, i32 28}
!234 = !{ptr @.str.103, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 559, i32 3}
!236 = !{ptr @.str.104, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 559, i32 9}
!238 = !{ptr @.str.105, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 559, i32 17}
!240 = !{ptr @.str.106, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 559, i32 27}
!242 = !{ptr @pm8xxx_gpio_dbg_show_one.strengths, !243, !"strengths", i1 false, i1 false}
!243 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 558, i32 28}
!244 = !{ptr @.str.107, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 562, i32 16}
!246 = !{ptr @.str.108, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 564, i32 15}
!248 = !{ptr @.str.109, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 566, i32 17}
!250 = !{ptr @.str.110, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 567, i32 17}
!252 = !{ptr @.str.111, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 568, i32 17}
!254 = !{ptr @.str.112, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 569, i32 17}
!256 = !{ptr @.str.113, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 570, i32 17}
!258 = !{ptr @.str.114, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 574, i32 16}
!260 = !{ptr @.str.115, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 655, i32 10}
!262 = !{ptr @pm8xxx_irq_chip, !263, !"pm8xxx_irq_chip", i1 false, i1 false}
!263 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 654, i32 24}
!264 = !{ptr @pm8xxx_gpio_of_match, !265, !"pm8xxx_gpio_of_match", i1 false, i1 false}
!265 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c", i32 698, i32 34}
!266 = !{i32 1, !"wchar_size", i32 2}
!267 = !{i32 1, !"min_enum_size", i32 4}
!268 = !{i32 8, !"branch-target-enforcement", i32 0}
!269 = !{i32 8, !"sign-return-address", i32 0}
!270 = !{i32 8, !"sign-return-address-all", i32 0}
!271 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!272 = !{i32 7, !"uwtable", i32 1}
!273 = !{i32 7, !"frame-pointer", i32 2}
!274 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!275 = !{!"branch_weights", i32 1, i32 2000}
!276 = !{i64 2148973403, i64 2148973408, i64 2148973421, i64 2148973465, i64 2148973499, i64 2148973520}
!277 = !{i8 0, i8 2}
!278 = !{!"auto-init"}
