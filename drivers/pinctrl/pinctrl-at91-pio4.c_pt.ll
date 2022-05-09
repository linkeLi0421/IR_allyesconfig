; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-at91-pio4.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-at91-pio4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atmel_pioctrl_data = type { i32, i32, i32 }
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
%struct.atmel_pioctrl = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atmel_group = type { ptr, i32 }
%struct.atmel_pin = type { i32, i32, i32, i32, i32, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.anon.70 = type { i32, i32, [32 x i32] }

@__initcall__kmod_pinctrl_at91_pio4__234_1252_atmel_pinctrl_driver_init6 = internal global ptr @atmel_pinctrl_driver_init, section ".initcall6.init", align 4
@atmel_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @atmel_pctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_pctrl_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pinctrl-at91-pio4\00", [46 x i8] zeroinitializer }, align 32
@atmel_pctrl_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sama5d2_pioctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @microchip_sama7g5_pioctrl_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@atmel_pctrl_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @atmel_pctrl_suspend, ptr @atmel_pctrl_resume, ptr @atmel_pctrl_suspend, ptr @atmel_pctrl_resume, ptr @atmel_pctrl_suspend, ptr @atmel_pctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@atmel_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1061, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown compatible string\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_pinctrl_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/pinctrl/pinctrl-at91-pio4.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_pinctrl_probe._entry_ptr = internal global ptr @atmel_pinctrl_probe._entry, section ".printk_index", align 4
@atmel_pinctrl_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1080, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@atmel_pinctrl_probe._entry_ptr.8 = internal global ptr @atmel_pinctrl_probe._entry.6, section ".printk_index", align 4
@atmel_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.37, ptr null, i32 0, ptr @atmel_pctlops, ptr @atmel_pmxops, ptr @atmel_confops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@atmel_custom_bindings = internal constant { [1 x %struct.pinconf_generic_params], [20 x i8] } { [1 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.76, i32 128, i32 0 }], [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"P%c%d\00", [26 x i8] zeroinitializer }, align 32
@atmel_pinctrl_probe.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 1, i8 27, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pinctrl_at91_pio4\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pin_id=%u, bank=%u, line=%u\00", [36 x i8] zeroinitializer }, align 32
@atmel_gpio_chip = internal global { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_gpio_direction_input, ptr @atmel_gpio_direction_output, ptr @atmel_gpio_get, ptr @atmel_gpio_get_multiple, ptr @atmel_gpio_set, ptr @atmel_gpio_set_multiple, ptr null, ptr @atmel_gpio_to_irq, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@atmel_pinctrl_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"missing irq resource for group %c\0A\00", [61 x i8] zeroinitializer }, align 32
@atmel_pinctrl_probe._entry_ptr.14 = internal global ptr @atmel_pinctrl_probe._entry.12, section ".printk_index", align 4
@atmel_pinctrl_probe.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 1, i8 38, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bank %i: irq=%pr\0A\00", [46 x i8] zeroinitializer }, align 32
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@atmel_pinctrl_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1183, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't add the irq domain\0A\00", [38 x i8] zeroinitializer }, align 32
@atmel_pinctrl_probe._entry_ptr.18 = internal global ptr @atmel_pinctrl_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atmel gpio\00", [21 x i8] zeroinitializer }, align 32
@atmel_gpio_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.46, ptr null, ptr null, ptr null, ptr null, ptr @atmel_gpio_irq_ack, ptr @atmel_gpio_irq_mask, ptr null, ptr @atmel_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @atmel_gpio_irq_set_type, ptr @atmel_gpio_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@atmel_pinctrl_probe.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.2, ptr @.str.3, ptr @.str.20, i8 1, i8 43, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"atmel gpio irq domain: hwirq: %d, linux irq: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@atmel_pinctrl_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to prepare and enable clock\0A\00", [60 x i8] zeroinitializer }, align 32
@atmel_pinctrl_probe._entry_ptr.23 = internal global ptr @atmel_pinctrl_probe._entry.21, section ".printk_index", align 4
@atmel_pinctrl_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pinctrl registration failed\0A\00", [35 x i8] zeroinitializer }, align 32
@atmel_pinctrl_probe._entry_ptr.26 = internal global ptr @atmel_pinctrl_probe._entry.24, section ".printk_index", align 4
@atmel_pinctrl_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@atmel_pinctrl_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@atmel_pinctrl_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to add gpiochip\0A\00", [40 x i8] zeroinitializer }, align 32
@atmel_pinctrl_probe._entry_ptr.29 = internal global ptr @atmel_pinctrl_probe._entry.27, section ".printk_index", align 4
@atmel_pinctrl_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add gpio pin range\0A\00", [34 x i8] zeroinitializer }, align 32
@atmel_pinctrl_probe._entry_ptr.32 = internal global ptr @atmel_pinctrl_probe._entry.30, section ".printk_index", align 4
@atmel_pinctrl_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1227, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"atmel pinctrl initialized\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atmel_pinctrl_probe._entry_ptr.36 = internal global ptr @atmel_pinctrl_probe._entry.33, section ".printk_index", align 4
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmel_pinctrl\00", [18 x i8] zeroinitializer }, align 32
@atmel_pctlops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @atmel_pctl_get_groups_count, ptr @atmel_pctl_get_group_name, ptr @atmel_pctl_get_group_pins, ptr null, ptr @atmel_pctl_dt_node_to_map, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@atmel_pmxops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @atmel_pmx_get_functions_count, ptr @atmel_pmx_get_function_name, ptr @atmel_pmx_get_function_groups, ptr @atmel_pmx_set_mux, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@atmel_confops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr null, ptr null, ptr @atmel_conf_pin_config_group_get, ptr @atmel_conf_pin_config_group_set, ptr @atmel_conf_pin_config_dbg_show, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@atmel_pctl_dt_node_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 665, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't create maps for node %pOF\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atmel_pctl_dt_node_to_map\00", [38 x i8] zeroinitializer }, align 32
@atmel_pctl_dt_node_to_map._entry_ptr = internal global ptr @atmel_pctl_dt_node_to_map._entry, section ".printk_index", align 4
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pinmux\00", [25 x i8] zeroinitializer }, align 32
@atmel_pctl_dt_subnode_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 577, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%pOF: could not parse node property\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"atmel_pctl_dt_subnode_to_map\00", [35 x i8] zeroinitializer }, align 32
@atmel_pctl_dt_subnode_to_map._entry_ptr = internal global ptr @atmel_pctl_dt_subnode_to_map._entry, section ".printk_index", align 4
@atmel_pctl_dt_subnode_to_map._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 583, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no pins found in node %pOF\0A\00", [36 x i8] zeroinitializer }, align 32
@atmel_pctl_dt_subnode_to_map._entry_ptr.45 = internal global ptr @atmel_pctl_dt_subnode_to_map._entry.43, section ".printk_index", align 4
@atmel_functions = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPIO\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"E\00", [30 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"G\00", [30 x i8] zeroinitializer }, align 32
@atmel_pmx_set_mux.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 0, i8 -78, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_pmx_set_mux\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enable function %s group %s\0A\00", [35 x i8] zeroinitializer }, align 32
@atmel_pmx_set_mux.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.54, ptr @.str.3, ptr @.str.56, i8 0, i8 -77, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pin: %u, conf: 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@atmel_conf_pin_config_group_set.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 -53, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"atmel_conf_pin_config_group_set\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: pin=%u, config=0x%lx\0A\00", [38 x i8] zeroinitializer }, align 32
@atmel_conf_pin_config_group_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.3, i32 888, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drive strength not updated (incorrect value)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@atmel_conf_pin_config_group_set._entry_ptr = internal global ptr @atmel_conf_pin_config_group_set._entry, section ".printk_index", align 4
@atmel_conf_pin_config_group_set._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.3, i32 894, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unsupported configuration parameter: %u\0A\00", [55 x i8] zeroinitializer }, align 32
@atmel_conf_pin_config_group_set._entry_ptr.63 = internal global ptr @atmel_conf_pin_config_group_set._entry.61, section ".printk_index", align 4
@atmel_conf_pin_config_group_set.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.57, ptr @.str.3, ptr @.str.64, i8 0, i8 -32, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: reg=0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (%s, ioset %u) \00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pull-up\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pull-down\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"debounce\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"open-drain\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"schmitt\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slew-rate\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"medium-drive\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"high-drive\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"low-drive\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atmel,drive-strength\00", [43 x i8] zeroinitializer }, align 32
@atmel_gpio_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no bank associated to irq %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel_gpio_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@atmel_gpio_irq_handler._entry_ptr = internal global ptr @atmel_gpio_irq_handler._entry, section ".printk_index", align 4
@atmel_sama5d2_pioctrl_data = internal constant { %struct.atmel_pioctrl_data, [20 x i8] } { %struct.atmel_pioctrl_data { i32 4, i32 32, i32 0 }, [20 x i8] zeroinitializer }, align 32
@microchip_sama7g5_pioctrl_data = internal constant { %struct.atmel_pioctrl_data, [20 x i8] } { %struct.atmel_pioctrl_data { i32 5, i32 8, i32 1 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 3, i64 5, i64 6, i64 14, i64 24, i64 128]
@__sancov_gen_cov_switch_values.79 = internal global [11 x i64] [i64 9, i64 8, i64 1, i64 3, i64 5, i64 6, i64 11, i64 14, i64 17, i64 24, i64 128]
@__sancov_gen_cov_switch_values.80 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.81 = private unnamed_addr constant [21 x i8] c"atmel_pinctrl_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1243, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1245, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"atmel_pctrl_of_match\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1029, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"atmel_pctrl_pm_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1010, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1061, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1080, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [19 x i8] c"atmel_pinctrl_desc\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 954, i32 28 }
@___asan_gen_.120 = private unnamed_addr constant [22 x i8] c"atmel_custom_bindings\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 152, i32 44 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1129, i32 44 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1135, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [16 x i8] c"atmel_gpio_chip\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 437, i32 25 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1169, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1176, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1183, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1186, i32 36 }
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c"atmel_gpio_irq_chip\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 262, i32 24 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1194, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1201, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1210, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1214, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1216, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1223, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1227, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 955, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant [14 x i8] c"atmel_pctlops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 671, i32 33 }
@___asan_gen_.204 = private unnamed_addr constant [13 x i8] c"atmel_pmxops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 724, i32 32 }
@___asan_gen_.207 = private unnamed_addr constant [14 x i8] c"atmel_confops\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 948, i32 33 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 664, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 569, i32 30 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 576, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 583, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant [16 x i8] c"atmel_functions\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 148, i32 27 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 149, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 149, i32 10 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 149, i32 15 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 149, i32 20 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 149, i32 25 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 149, i32 30 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 149, i32 35 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 149, i32 40 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 711, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 718, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 812, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 888, i32 5 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 892, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 899, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 916, i32 17 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 922, i32 17 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 922, i32 24 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 924, i32 24 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 926, i32 24 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 928, i32 24 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 930, i32 24 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 932, i32 24 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 936, i32 25 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 939, i32 25 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 943, i32 25 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 153, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 295, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [27 x i8] c"atmel_sama5d2_pioctrl_data\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1018, i32 40 }
@___asan_gen_.345 = private unnamed_addr constant [31 x i8] c"microchip_sama7g5_pioctrl_data\00", align 1
@___asan_gen_.346 = private constant [39 x i8] c"../drivers/pinctrl/pinctrl-at91-pio4.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1023, i32 40 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__initcall__kmod_pinctrl_at91_pio4__234_1252_atmel_pinctrl_driver_init6, ptr @atmel_conf_pin_config_group_set._entry, ptr @atmel_conf_pin_config_group_set._entry.61, ptr @atmel_conf_pin_config_group_set._entry_ptr, ptr @atmel_conf_pin_config_group_set._entry_ptr.63, ptr @atmel_gpio_irq_handler._entry, ptr @atmel_gpio_irq_handler._entry_ptr, ptr @atmel_pctl_dt_node_to_map._entry, ptr @atmel_pctl_dt_node_to_map._entry_ptr, ptr @atmel_pctl_dt_subnode_to_map._entry, ptr @atmel_pctl_dt_subnode_to_map._entry.43, ptr @atmel_pctl_dt_subnode_to_map._entry_ptr, ptr @atmel_pctl_dt_subnode_to_map._entry_ptr.45, ptr @atmel_pinctrl_probe._entry, ptr @atmel_pinctrl_probe._entry.12, ptr @atmel_pinctrl_probe._entry.16, ptr @atmel_pinctrl_probe._entry.21, ptr @atmel_pinctrl_probe._entry.24, ptr @atmel_pinctrl_probe._entry.27, ptr @atmel_pinctrl_probe._entry.30, ptr @atmel_pinctrl_probe._entry.33, ptr @atmel_pinctrl_probe._entry.6, ptr @atmel_pinctrl_probe._entry_ptr, ptr @atmel_pinctrl_probe._entry_ptr.14, ptr @atmel_pinctrl_probe._entry_ptr.18, ptr @atmel_pinctrl_probe._entry_ptr.23, ptr @atmel_pinctrl_probe._entry_ptr.26, ptr @atmel_pinctrl_probe._entry_ptr.29, ptr @atmel_pinctrl_probe._entry_ptr.32, ptr @atmel_pinctrl_probe._entry_ptr.36, ptr @atmel_pinctrl_probe._entry_ptr.8, ptr @atmel_pinctrl_driver, ptr @.str, ptr @atmel_pctrl_of_match, ptr @atmel_pctrl_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @atmel_pinctrl_desc, ptr @atmel_custom_bindings, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @atmel_gpio_chip, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @atmel_gpio_irq_chip, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @atmel_pinctrl_probe.lock_key, ptr @atmel_pinctrl_probe.request_key, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @atmel_pctlops, ptr @atmel_pmxops, ptr @atmel_confops, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @atmel_functions, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @atmel_sama5d2_pioctrl_data, ptr @microchip_sama7g5_pioctrl_data], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pctrl_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pctrl_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pinctrl_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_custom_bindings to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_gpio_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pinctrl_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pinctrl_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_gpio_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pinctrl_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pinctrl_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pinctrl_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pinctrl_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pinctrl_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pinctrl_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pinctrl_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pctlops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pmxops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_confops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pctl_dt_node_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pctl_dt_subnode_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pctl_dt_subnode_to_map._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_functions to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_conf_pin_config_group_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_conf_pin_config_group_set._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_gpio_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_sama5d2_pioctrl_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sama7g5_pioctrl_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_pinctrl_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup250_crit_edge, label %if.end

entry.cleanup250_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 13
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %node = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 14
  %3 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %node, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call ptr @of_match_node(ptr noundef nonnull @atmel_pctrl_of_match, ptr noundef %2) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup250

if.end7:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call4, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %nbanks8 = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %nbanks8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %nbanks8, align 4
  %mul = shl i32 %8, 5
  %npins = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %npins, align 4
  %last_bank_count = getelementptr inbounds %struct.atmel_pioctrl_data, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %last_bank_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_bank_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp.not = icmp eq i32 %12, 32
  br i1 %cmp.not, label %if.end7.if.end14_crit_edge, label %if.then10

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %mul, -32
  %13 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %npins, align 4
  %14 = ptrtoint ptr %last_bank_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_bank_count, align 4
  %add = add i32 %15, %sub
  store i32 %add, ptr %npins, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end7.if.end14_crit_edge
  %slew_rate_support = getelementptr inbounds %struct.atmel_pioctrl_data, ptr %6, i32 0, i32 2
  %16 = ptrtoint ptr %slew_rate_support to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slew_rate_support, align 4
  %slew_rate_support15 = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 15
  %18 = ptrtoint ptr %slew_rate_support15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %slew_rate_support15, align 4
  %call16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call16, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call16 to i32
  br label %cleanup250

if.end22:                                         ; preds = %if.end14
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call23, ptr %clk, align 4
  %cmp.i419 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i419, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup250

if.end32:                                         ; preds = %if.end22
  %25 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %npins, align 4
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 4) #8
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !183

devm_kcalloc.exit.thread:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %pins454 = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 6
  %29 = ptrtoint ptr %pins454 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %pins454, align 4
  br label %cleanup250

devm_kcalloc.exit:                                ; preds = %if.end32
  %30 = extractvalue { i32, i1 } %27, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %30, i32 noundef 3520) #8
  %pins = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i.i, ptr %pins, align 4
  %tobool36.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool36.not, label %devm_kcalloc.exit.cleanup250_crit_edge, label %if.end38

devm_kcalloc.exit.cleanup250_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

if.end38:                                         ; preds = %devm_kcalloc.exit
  %32 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %npins, align 4
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 12) #8
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %if.end38.cleanup250_crit_edge, label %devm_kcalloc.exit423, !prof !183

if.end38.cleanup250_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

devm_kcalloc.exit423:                             ; preds = %if.end38
  %36 = extractvalue { i32, i1 } %34, 0
  %call5.i.i420 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %36, i32 noundef 3520) #8
  %tobool41.not = icmp eq ptr %call5.i.i420, null
  br i1 %tobool41.not, label %devm_kcalloc.exit423.cleanup250_crit_edge, label %if.end43

devm_kcalloc.exit423.cleanup250_crit_edge:        ; preds = %devm_kcalloc.exit423
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

if.end43:                                         ; preds = %devm_kcalloc.exit423
  store ptr %call5.i.i420, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @atmel_pinctrl_desc, i32 0, i32 1), align 4
  %37 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %npins, align 4
  store i32 %38, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @atmel_pinctrl_desc, i32 0, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @atmel_pinctrl_desc, i32 0, i32 7), align 4
  store ptr @atmel_custom_bindings, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @atmel_pinctrl_desc, i32 0, i32 8), align 4
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 4) #8
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %if.end43.cleanup250_crit_edge, label %devm_kcalloc.exit427, !prof !183

if.end43.cleanup250_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

devm_kcalloc.exit427:                             ; preds = %if.end43
  %41 = extractvalue { i32, i1 } %39, 0
  %call5.i.i424 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %41, i32 noundef 3520) #8
  %tobool47.not = icmp eq ptr %call5.i.i424, null
  br i1 %tobool47.not, label %devm_kcalloc.exit427.cleanup250_crit_edge, label %if.end49

devm_kcalloc.exit427.cleanup250_crit_edge:        ; preds = %devm_kcalloc.exit427
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

if.end49:                                         ; preds = %devm_kcalloc.exit427
  %group_names50 = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 5
  %42 = ptrtoint ptr %group_names50 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call5.i.i424, ptr %group_names50, align 4
  %43 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %npins, align 4
  %45 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %44, i32 8) #8
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %devm_kcalloc.exit431.thread, label %devm_kcalloc.exit431, !prof !183

devm_kcalloc.exit431.thread:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %groups461 = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 4
  %47 = ptrtoint ptr %groups461 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %groups461, align 4
  br label %cleanup250

devm_kcalloc.exit431:                             ; preds = %if.end49
  %48 = extractvalue { i32, i1 } %45, 0
  %call5.i.i428 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %48, i32 noundef 3520) #8
  %groups = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 4
  %49 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call5.i.i428, ptr %groups, align 4
  %tobool55.not = icmp eq ptr %call5.i.i428, null
  br i1 %tobool55.not, label %devm_kcalloc.exit431.cleanup250_crit_edge, label %for.cond.preheader

devm_kcalloc.exit431.cleanup250_crit_edge:        ; preds = %devm_kcalloc.exit431
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

for.cond.preheader:                               ; preds = %devm_kcalloc.exit431
  %50 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp59477.not = icmp eq i32 %51, 0
  br i1 %cmp59477.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0478 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %52 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %groups, align 4
  %i.0478.frozen = freeze i32 %i.0478
  %div = sdiv i32 %i.0478.frozen, 32
  %54 = mul i32 %div, 32
  %rem.decomposed = sub i32 %i.0478.frozen, %54
  %call.i432 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #8
  %55 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr ptr, ptr %56, i32 %i.0478
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i432, ptr %arrayidx, align 4
  %58 = load ptr, ptr %pins, align 4
  %arrayidx64 = getelementptr ptr, ptr %58, i32 %i.0478
  %59 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx64, align 4
  %tobool65.not = icmp eq ptr %60, null
  br i1 %tobool65.not, label %for.body.cleanup250_crit_edge, label %if.end67

for.body.cleanup250_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

if.end67:                                         ; preds = %for.body
  %add.ptr = getelementptr %struct.atmel_group, ptr %53, i32 %i.0478
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %i.0478, ptr %60, align 4
  %62 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pins, align 4
  %arrayidx71 = getelementptr ptr, ptr %63, i32 %i.0478
  %64 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx71, align 4
  %bank72 = getelementptr inbounds %struct.atmel_pin, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %bank72 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %div, ptr %bank72, align 4
  %67 = load ptr, ptr %pins, align 4
  %arrayidx74 = getelementptr ptr, ptr %67, i32 %i.0478
  %68 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx74, align 4
  %line75 = getelementptr inbounds %struct.atmel_pin, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %line75 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %rem.decomposed, ptr %line75, align 4
  %arrayidx76 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i420, i32 %i.0478
  %71 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %i.0478, ptr %arrayidx76, align 4
  %add77 = add nsw i32 %div, 65
  %call78 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.9, i32 noundef %add77, i32 noundef %rem.decomposed) #8
  %name = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i420, i32 %i.0478, i32 1
  %72 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call78, ptr %name, align 4
  %arrayidx82 = getelementptr ptr, ptr %call5.i.i424, i32 %i.0478
  %73 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call78, ptr %arrayidx82, align 4
  %74 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call78, ptr %add.ptr, align 4
  %75 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx76, align 4
  %pin = getelementptr %struct.atmel_group, ptr %53, i32 %i.0478, i32 1
  %77 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %pin, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_pinctrl_probe.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_pinctrl_probe, %for.inc)) #8
          to label %if.then92 [label %for.inc], !srcloc !184

if.then92:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_pinctrl_probe.__UNIQUE_ID_ddebug231, ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %i.0478, i32 noundef %div, i32 noundef %rem.decomposed) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then92, %if.end67
  %inc = add nuw i32 %i.0478, 1
  %78 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %npins, align 4
  %cmp59 = icmp ult i32 %inc, %79
  br i1 %cmp59, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %79, %for.inc.for.end_crit_edge ]
  %gpio_chip = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 8
  %80 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @atmel_gpio_chip, ptr %gpio_chip, align 4
  %conv = trunc i32 %.lcssa to i16
  store i16 %conv, ptr getelementptr inbounds (%struct.gpio_chip, ptr @atmel_gpio_chip, i32 0, i32 20), align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %81 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %82, null
  br i1 %tobool.not.i, label %if.end.i, label %for.end.dev_name.exit_crit_edge

for.end.dev_name.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %for.end.dev_name.exit_crit_edge
  %retval.0.i433 = phi ptr [ %84, %if.end.i ], [ %82, %for.end.dev_name.exit_crit_edge ]
  store ptr %retval.0.i433, ptr @atmel_gpio_chip, align 4
  store ptr %dev1, ptr getelementptr inbounds (%struct.gpio_chip, ptr @atmel_gpio_chip, i32 0, i32 2), align 4
  %85 = ptrtoint ptr %group_names50 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %group_names50, align 4
  store ptr %86, ptr getelementptr inbounds (%struct.gpio_chip, ptr @atmel_gpio_chip, i32 0, i32 22), align 4
  %87 = ptrtoint ptr %nbanks8 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nbanks8, align 4
  %89 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %88, i32 4) #8
  %90 = extractvalue { i32, i1 } %89, 1
  br i1 %90, label %devm_kcalloc.exit437.thread, label %devm_kcalloc.exit437, !prof !183

devm_kcalloc.exit437.thread:                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pm_wakeup_sources465 = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 11
  %91 = ptrtoint ptr %pm_wakeup_sources465 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %pm_wakeup_sources465, align 4
  br label %cleanup250

devm_kcalloc.exit437:                             ; preds = %dev_name.exit
  %92 = extractvalue { i32, i1 } %89, 0
  %call5.i.i434 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %92, i32 noundef 3520) #8
  %pm_wakeup_sources = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 11
  %93 = ptrtoint ptr %pm_wakeup_sources to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call5.i.i434, ptr %pm_wakeup_sources, align 4
  %tobool108.not = icmp eq ptr %call5.i.i434, null
  br i1 %tobool108.not, label %devm_kcalloc.exit437.cleanup250_crit_edge, label %if.end110

devm_kcalloc.exit437.cleanup250_crit_edge:        ; preds = %devm_kcalloc.exit437
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

if.end110:                                        ; preds = %devm_kcalloc.exit437
  %94 = ptrtoint ptr %nbanks8 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %nbanks8, align 4
  %96 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %95, i32 136) #8
  %97 = extractvalue { i32, i1 } %96, 1
  br i1 %97, label %devm_kcalloc.exit441.thread, label %devm_kcalloc.exit441, !prof !183

devm_kcalloc.exit441.thread:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  %pm_suspend_backup468 = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 12
  %98 = ptrtoint ptr %pm_suspend_backup468 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %pm_suspend_backup468, align 4
  br label %cleanup250

devm_kcalloc.exit441:                             ; preds = %if.end110
  %99 = extractvalue { i32, i1 } %96, 0
  %call5.i.i438 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %99, i32 noundef 3520) #8
  %pm_suspend_backup = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 12
  %100 = ptrtoint ptr %pm_suspend_backup to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call5.i.i438, ptr %pm_suspend_backup, align 4
  %tobool114.not = icmp eq ptr %call5.i.i438, null
  br i1 %tobool114.not, label %devm_kcalloc.exit441.cleanup250_crit_edge, label %if.end116

devm_kcalloc.exit441.cleanup250_crit_edge:        ; preds = %devm_kcalloc.exit441
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

if.end116:                                        ; preds = %devm_kcalloc.exit441
  %101 = ptrtoint ptr %nbanks8 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nbanks8, align 4
  %103 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %102, i32 4) #8
  %104 = extractvalue { i32, i1 } %103, 1
  br i1 %104, label %devm_kcalloc.exit445.thread, label %devm_kcalloc.exit445, !prof !183

devm_kcalloc.exit445.thread:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  %irqs471 = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 10
  %105 = ptrtoint ptr %irqs471 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %irqs471, align 4
  br label %cleanup250

devm_kcalloc.exit445:                             ; preds = %if.end116
  %106 = extractvalue { i32, i1 } %103, 0
  %call5.i.i442 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %106, i32 noundef 3520) #8
  %irqs = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 10
  %107 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call5.i.i442, ptr %irqs, align 4
  %tobool120.not = icmp eq ptr %call5.i.i442, null
  br i1 %tobool120.not, label %devm_kcalloc.exit445.cleanup250_crit_edge, label %for.cond123.preheader

devm_kcalloc.exit445.cleanup250_crit_edge:        ; preds = %devm_kcalloc.exit445
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

for.cond123.preheader:                            ; preds = %devm_kcalloc.exit445
  %108 = ptrtoint ptr %nbanks8 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %nbanks8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp125480.not = icmp eq i32 %109, 0
  br i1 %cmp125480.not, label %for.cond123.preheader.for.end159_crit_edge, label %for.cond123.preheader.for.body127_crit_edge

for.cond123.preheader.for.body127_crit_edge:      ; preds = %for.cond123.preheader
  br label %for.body127

for.cond123.preheader.for.end159_crit_edge:       ; preds = %for.cond123.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end159

for.body127:                                      ; preds = %for.inc157.for.body127_crit_edge, %for.cond123.preheader.for.body127_crit_edge
  %i.1481 = phi i32 [ %inc158, %for.inc157.for.body127_crit_edge ], [ 0, %for.cond123.preheader.for.body127_crit_edge ]
  %call128 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef %i.1481) #8
  %tobool129.not = icmp eq ptr %call128, null
  br i1 %tobool129.not, label %do.end133, label %if.end135

do.end133:                                        ; preds = %for.body127
  call void @__sanitizer_cov_trace_pc() #10
  %add134 = add i32 %i.1481, 65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %add134) #11
  br label %cleanup250

if.end135:                                        ; preds = %for.body127
  %110 = ptrtoint ptr %call128 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %call128, align 4
  %112 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %irqs, align 4
  %arrayidx137 = getelementptr i32, ptr %113, i32 %i.1481
  %114 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %111, ptr %arrayidx137, align 4
  %115 = load i32, ptr %call128, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %115, ptr noundef nonnull @atmel_gpio_irq_handler, ptr noundef nonnull %call.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_pinctrl_probe.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_pinctrl_probe, %for.inc157)) #8
          to label %if.then153 [label %for.inc157], !srcloc !184

if.then153:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_pinctrl_probe.__UNIQUE_ID_ddebug232, ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %i.1481, ptr noundef nonnull %call128) #8
  br label %for.inc157

for.inc157:                                       ; preds = %if.then153, %if.end135
  %inc158 = add nuw i32 %i.1481, 1
  %116 = ptrtoint ptr %nbanks8 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nbanks8, align 4
  %cmp125 = icmp ult i32 %inc158, %117
  br i1 %cmp125, label %for.inc157.for.body127_crit_edge, label %for.inc157.for.end159_crit_edge

for.inc157.for.end159_crit_edge:                  ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end159

for.inc157.for.body127_crit_edge:                 ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body127

for.end159:                                       ; preds = %for.inc157.for.end159_crit_edge, %for.cond123.preheader.for.end159_crit_edge
  %118 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %of_node, align 8
  %120 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %gpio_chip, align 4
  %ngpio162 = getelementptr inbounds %struct.gpio_chip, ptr %121, i32 0, i32 20
  %122 = ptrtoint ptr %ngpio162 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %ngpio162, align 4
  %conv163 = zext i16 %123 to i32
  %tobool.not.i.i = icmp eq ptr %119, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %119, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %conv163, i32 noundef %conv163, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef null) #8
  %irq_domain = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 9
  %124 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call1.i, ptr %irq_domain, align 4
  %tobool166.not = icmp eq ptr %call1.i, null
  br i1 %tobool166.not, label %do.end170, label %if.end171

do.end170:                                        ; preds = %for.end159
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #11
  br label %cleanup250

if.end171:                                        ; preds = %for.end159
  %name173 = getelementptr inbounds %struct.irq_domain, ptr %call1.i, i32 0, i32 1
  %125 = ptrtoint ptr %name173 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @.str.19, ptr %name173, align 4
  %126 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp176483.not = icmp eq i32 %127, 0
  br i1 %cmp176483.not, label %if.end171.for.end202_crit_edge, label %if.end171.for.body178_crit_edge

if.end171.for.body178_crit_edge:                  ; preds = %if.end171
  br label %for.body178

if.end171.for.end202_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end202

for.body178:                                      ; preds = %do.end199.for.body178_crit_edge, %if.end171.for.body178_crit_edge
  %i.2484 = phi i32 [ %inc201, %do.end199.for.body178_crit_edge ], [ 0, %if.end171.for.body178_crit_edge ]
  %128 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %irq_domain, align 4
  %call.i446 = tail call i32 @irq_create_mapping_affinity(ptr noundef %129, i32 noundef %i.2484, ptr noundef null) #8
  tail call void @irq_set_chip_and_handler_name(i32 noundef %call.i446, ptr noundef nonnull @atmel_gpio_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #8
  %call181 = tail call i32 @irq_set_chip_data(i32 noundef %call.i446, ptr noundef nonnull %call.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_pinctrl_probe.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_pinctrl_probe, %do.end199)) #8
          to label %if.then196 [label %do.end199], !srcloc !184

if.then196:                                       ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_pinctrl_probe.__UNIQUE_ID_ddebug233, ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %i.2484, i32 noundef %call.i446) #8
  br label %do.end199

do.end199:                                        ; preds = %if.then196, %for.body178
  %inc201 = add nuw i32 %i.2484, 1
  %130 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %npins, align 4
  %cmp176 = icmp ult i32 %inc201, %131
  br i1 %cmp176, label %do.end199.for.body178_crit_edge, label %do.end199.for.end202_crit_edge

do.end199.for.end202_crit_edge:                   ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end202

do.end199.for.body178_crit_edge:                  ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body178

for.end202:                                       ; preds = %do.end199.for.end202_crit_edge, %if.end171.for.end202_crit_edge
  %132 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %clk, align 4
  %call204 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %133)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.end210, label %do.end209

do.end209:                                        ; preds = %for.end202
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #11
  br label %clk_prepare_enable_error

if.end210:                                        ; preds = %for.end202
  %call212 = tail call ptr @devm_pinctrl_register(ptr noundef %dev1, ptr noundef nonnull @atmel_pinctrl_desc, ptr noundef nonnull %call.i) #8
  %pinctrl_dev = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 3
  %134 = ptrtoint ptr %pinctrl_dev to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call212, ptr %pinctrl_dev, align 4
  %cmp.i447 = icmp ugt ptr %call212, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i447, label %if.then215, label %if.end221

if.then215:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %call212 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #11
  br label %clk_unprep

if.end221:                                        ; preds = %if.end210
  %136 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %gpio_chip, align 4
  %call224 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %137, ptr noundef nonnull %call.i, ptr noundef nonnull @atmel_pinctrl_probe.lock_key, ptr noundef nonnull @atmel_pinctrl_probe.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.end230, label %do.end229

do.end229:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #11
  br label %clk_unprep

if.end230:                                        ; preds = %if.end221
  %138 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %gpio_chip, align 4
  %140 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i449 = icmp eq ptr %141, null
  br i1 %tobool.not.i449, label %if.end.i450, label %if.end230.dev_name.exit452_crit_edge

if.end230.dev_name.exit452_crit_edge:             ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit452

if.end.i450:                                      ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit452

dev_name.exit452:                                 ; preds = %if.end.i450, %if.end230.dev_name.exit452_crit_edge
  %retval.0.i451 = phi ptr [ %143, %if.end.i450 ], [ %141, %if.end230.dev_name.exit452_crit_edge ]
  %ngpio234 = getelementptr inbounds %struct.gpio_chip, ptr %139, i32 0, i32 20
  %144 = ptrtoint ptr %ngpio234 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %ngpio234, align 4
  %conv235 = zext i16 %145 to i32
  %call236 = tail call i32 @gpiochip_add_pin_range(ptr noundef %139, ptr noundef %retval.0.i451, i32 noundef 0, i32 noundef 0, i32 noundef %conv235) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %do.end245, label %do.end241

do.end241:                                        ; preds = %dev_name.exit452
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #11
  %146 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %gpio_chip, align 4
  tail call void @gpiochip_remove(ptr noundef %147) #8
  br label %clk_unprep

do.end245:                                        ; preds = %dev_name.exit452
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.34) #11
  br label %cleanup250

clk_unprep:                                       ; preds = %do.end241, %do.end229, %if.then215
  %ret.0 = phi i32 [ %135, %if.then215 ], [ %call224, %do.end229 ], [ %call236, %do.end241 ]
  %148 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %149) #8
  tail call void @clk_unprepare(ptr noundef %149) #8
  br label %clk_prepare_enable_error

clk_prepare_enable_error:                         ; preds = %clk_unprep, %do.end209
  %ret.1 = phi i32 [ %call204, %do.end209 ], [ %ret.0, %clk_unprep ]
  %150 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %irq_domain, align 4
  tail call void @irq_domain_remove(ptr noundef %151) #8
  br label %cleanup250

cleanup250:                                       ; preds = %clk_prepare_enable_error, %do.end245, %do.end170, %do.end133, %devm_kcalloc.exit445.cleanup250_crit_edge, %devm_kcalloc.exit445.thread, %devm_kcalloc.exit441.cleanup250_crit_edge, %devm_kcalloc.exit441.thread, %devm_kcalloc.exit437.cleanup250_crit_edge, %devm_kcalloc.exit437.thread, %for.body.cleanup250_crit_edge, %devm_kcalloc.exit431.cleanup250_crit_edge, %devm_kcalloc.exit431.thread, %devm_kcalloc.exit427.cleanup250_crit_edge, %if.end43.cleanup250_crit_edge, %devm_kcalloc.exit423.cleanup250_crit_edge, %if.end38.cleanup250_crit_edge, %devm_kcalloc.exit.cleanup250_crit_edge, %devm_kcalloc.exit.thread, %do.end29, %if.then19, %do.end, %entry.cleanup250_crit_edge
  %retval.2 = phi i32 [ %20, %if.then19 ], [ %24, %do.end29 ], [ -22, %do.end133 ], [ %ret.1, %clk_prepare_enable_error ], [ 0, %do.end245 ], [ -19, %do.end170 ], [ -19, %do.end ], [ -12, %entry.cleanup250_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup250_crit_edge ], [ -12, %devm_kcalloc.exit423.cleanup250_crit_edge ], [ -12, %devm_kcalloc.exit427.cleanup250_crit_edge ], [ -12, %devm_kcalloc.exit431.cleanup250_crit_edge ], [ -12, %devm_kcalloc.exit437.cleanup250_crit_edge ], [ -12, %devm_kcalloc.exit441.cleanup250_crit_edge ], [ -12, %devm_kcalloc.exit445.cleanup250_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit431.thread ], [ -12, %devm_kcalloc.exit437.thread ], [ -12, %devm_kcalloc.exit441.thread ], [ -12, %devm_kcalloc.exit445.thread ], [ -12, %if.end38.cleanup250_crit_edge ], [ -12, %if.end43.cleanup250_crit_edge ], [ -12, %for.body.cleanup250_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  %isr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq.i, align 4
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %isr) #8
  %nbanks = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbanks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp58.not = icmp eq i32 %7, 0
  br i1 %cmp58.not, label %entry.do.end_crit_edge, label %for.body.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %irqs = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irqs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %9, i32 %n.059
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp3 = icmp eq i32 %11, %1
  br i1 %cmp3, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %n.059, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.059)
  %cmp4 = icmp slt i32 %n.059, 0
  br i1 %cmp4, label %for.end.do.end_crit_edge, label %if.end6

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.77, i32 noundef %1) #11
  br label %cleanup

if.end6:                                          ; preds = %for.end
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %14 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.chained_irq_enter.exit_crit_edge

if.end6.chained_irq_enter.exit_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %if.end6
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %16 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %17(ptr noundef %irq_data.i) #8
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %18 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %19(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %21, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %21(ptr noundef %irq_data4.i) #8
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %if.end6.chained_irq_enter.exit_crit_edge
  %mul.i = shl i32 %n.059, 6
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %add.ptr.i62 = getelementptr i8, ptr %23, i32 %mul.i
  %add.ptr1.i63 = getelementptr i8, ptr %add.ptr.i62, i32 44
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i63) #8, !srcloc !185
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %add.ptr.i4964 = getelementptr i8, ptr %26, i32 %mul.i
  %add.ptr1.i5065 = getelementptr i8, ptr %add.ptr.i4964, i32 40
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i5065) #8, !srcloc !185
  %28 = and i32 %24, %27
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %isr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not67 = icmp eq i32 %28, 0
  br i1 %tobool.not67, label %chained_irq_enter.exit.for.end22_crit_edge, label %if.end11.lr.ph

chained_irq_enter.exit.for.end22_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end22

if.end11.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %gpio_chip = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 8
  %mul = shl i32 %n.059, 5
  br label %if.end11

for.cond7.loopexit:                               ; preds = %atmel_gpio_to_irq.exit.for.cond7.loopexit_crit_edge, %if.end11.for.cond7.loopexit_crit_edge
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 %mul.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 44
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !185
  %34 = call i32 @llvm.bswap.i32(i32 %33) #8
  %35 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %isr, align 4
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %add.ptr.i49 = getelementptr i8, ptr %37, i32 %mul.i
  %add.ptr1.i50 = getelementptr i8, ptr %add.ptr.i49, i32 40
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i50) #8, !srcloc !185
  %39 = call i32 @llvm.bswap.i32(i32 %38) #8
  %40 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %isr, align 4
  %and = and i32 %41, %39
  store i32 %and, ptr %isr, align 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond7.loopexit.for.end22_crit_edge, label %for.cond7.loopexit.if.end11_crit_edge

for.cond7.loopexit.if.end11_crit_edge:            ; preds = %for.cond7.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

for.cond7.loopexit.for.end22_crit_edge:           ; preds = %for.cond7.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end22

if.end11:                                         ; preds = %for.cond7.loopexit.if.end11_crit_edge, %if.end11.lr.ph
  %call12 = call i32 @_find_next_bit_be(ptr noundef nonnull %isr, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call12)
  %cmp1460 = icmp slt i32 %call12, 32
  br i1 %cmp1460, label %if.end11.for.body15_crit_edge, label %if.end11.for.cond7.loopexit_crit_edge

if.end11.for.cond7.loopexit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond7.loopexit

if.end11.for.body15_crit_edge:                    ; preds = %if.end11
  br label %for.body15

for.body15:                                       ; preds = %atmel_gpio_to_irq.exit.for.body15_crit_edge, %if.end11.for.body15_crit_edge
  %n.161 = phi i32 [ %call20, %atmel_gpio_to_irq.exit.for.body15_crit_edge ], [ %call12, %if.end11.for.body15_crit_edge ]
  %42 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %gpio_chip, align 4
  %add = add i32 %n.161, %mul
  %call.i = call ptr @gpiochip_get_data(ptr noundef %43) #8
  %irq_domain.i = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 9
  %44 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %irq_domain.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #8
  %46 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !186
  %call.i.i = call ptr @__irq_resolve_mapping(ptr noundef %45, i32 noundef %add, ptr noundef nonnull %irq.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body15.atmel_gpio_to_irq.exit_crit_edge, label %if.then.i.i

for.body15.atmel_gpio_to_irq.exit_crit_edge:      ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %atmel_gpio_to_irq.exit

if.then.i.i:                                      ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq.i.i, align 4
  br label %atmel_gpio_to_irq.exit

atmel_gpio_to_irq.exit:                           ; preds = %if.then.i.i, %for.body15.atmel_gpio_to_irq.exit_crit_edge
  %retval.0.i.i = phi i32 [ %48, %if.then.i.i ], [ 0, %for.body15.atmel_gpio_to_irq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #8
  %call17 = call i32 @generic_handle_irq(i32 noundef %retval.0.i.i) #8
  %add19 = add nsw i32 %n.161, 1
  %call20 = call i32 @_find_next_bit_be(ptr noundef nonnull %isr, i32 noundef 32, i32 noundef %add19) #8
  %cmp14 = icmp slt i32 %call20, 32
  br i1 %cmp14, label %atmel_gpio_to_irq.exit.for.body15_crit_edge, label %atmel_gpio_to_irq.exit.for.cond7.loopexit_crit_edge

atmel_gpio_to_irq.exit.for.cond7.loopexit_crit_edge: ; preds = %atmel_gpio_to_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond7.loopexit

atmel_gpio_to_irq.exit.for.body15_crit_edge:      ; preds = %atmel_gpio_to_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15

for.end22:                                        ; preds = %for.cond7.loopexit.for.end22_crit_edge, %chained_irq_enter.exit.for.end22_crit_edge
  %49 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i52 = icmp eq ptr %50, null
  br i1 %tobool.not.i52, label %if.else.i53, label %for.end22.chained_irq_exit.exit_crit_edge

for.end22.chained_irq_exit.exit_crit_edge:        ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i53:                                      ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %51 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i53, %for.end22.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %52, %if.else.i53 ], [ %50, %for.end22.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #8
  br label %cleanup

cleanup:                                          ; preds = %chained_irq_exit.exit, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %isr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pctl_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %npins = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npins, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atmel_pctl_get_group_name(ptr noundef %pctldev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.atmel_group, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pctl_get_group_pins(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin = getelementptr %struct.atmel_group, ptr %1, i32 %selector, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pin, ptr %pins, align 4
  %3 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pctl_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #2 align 64 {
entry:
  %reserved_maps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved_maps) #8
  %0 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %map, align 4
  %1 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %num_maps, align 4
  %2 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reserved_maps, align 4
  %call = call fastcc i32 @atmel_pctl_dt_subnode_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  %call1 = call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef null) #8
  %cmp.not37 = icmp eq ptr %call1, null
  br i1 %cmp.not37, label %if.end6, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %np.038 = phi ptr [ %call5, %for.inc.for.body_crit_edge ], [ %call1, %if.then.for.body_crit_edge ]
  %call2 = call fastcc i32 @atmel_pctl_dt_subnode_to_map(ptr noundef %pctldev, ptr noundef nonnull %np.038, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end6.thread, label %for.inc

if.end6.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %np.038) #8
  br label %if.then8

for.inc:                                          ; preds = %for.body
  %call5 = call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef nonnull %np.038) #8
  %cmp.not = icmp eq ptr %call5, null
  br i1 %cmp.not, label %for.inc.if.end9_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end9_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end6:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.end6.if.then8_crit_edge, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %if.end6.if.then8_crit_edge, %if.end6.thread
  %ret.131 = phi i32 [ %call2, %if.end6.thread ], [ %call, %if.end6.if.then8_crit_edge ]
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %5 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_maps, align 4
  call void @pinctrl_utils_free_map(ptr noundef %pctldev, ptr noundef %4, i32 noundef %6) #8
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.38, ptr noundef %np_config) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge, %for.inc.if.end9_crit_edge, %entry.if.end9_crit_edge
  %ret.130 = phi i32 [ %ret.131, %if.then8 ], [ %call, %if.end6.if.end9_crit_edge ], [ 0, %entry.if.end9_crit_edge ], [ %call2, %for.inc.if.end9_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved_maps) #8
  ret i32 %ret.130
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_pctl_dt_subnode_to_map(ptr noundef %pctldev, ptr noundef %np, ptr noundef %map, ptr noundef %reserved_maps, ptr noundef %num_maps) unnamed_addr #2 align 64 {
entry:
  %num_configs = alloca i32, align 4
  %configs = alloca ptr, align 4
  %pinfunc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_configs) #8
  %0 = ptrtoint ptr %num_configs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_configs, align 4, !annotation !186
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %configs) #8
  %1 = ptrtoint ptr %configs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %configs, align 4, !annotation !186
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pinfunc) #8
  %2 = ptrtoint ptr %pinfunc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pinfunc, align 4, !annotation !186
  %call = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.40, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup37_crit_edge, label %if.end

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

if.end:                                           ; preds = %entry
  %call1 = call i32 @pinconf_generic_parse_dt_config(ptr noundef %np, ptr noundef %pctldev, ptr noundef nonnull %configs, ptr noundef nonnull %num_configs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.41, ptr noundef %np) #11
  br label %cleanup37

if.end3:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.property, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 4
  %div75 = lshr i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %tobool4.not = icmp ult i32 %6, 4
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %7 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.44, ptr noundef %np) #11
  br label %exit

if.end10:                                         ; preds = %if.end3
  %9 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not = icmp eq i32 %10, 0
  %spec.select = select i1 %tobool11.not, i32 1, i32 2
  %mul = mul nuw nsw i32 %spec.select, %div75
  %call14 = call i32 @pinctrl_utils_reserve_map(ptr noundef %pctldev, ptr noundef %map, ptr noundef %reserved_maps, ptr noundef %num_maps, i32 noundef %mul) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %cmp15 = icmp sgt i32 %call14, -1
  br i1 %cmp15, label %for.body.lr.ph, label %if.end10.exit_crit_edge

if.end10.exit_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

for.body.lr.ph:                                   ; preds = %if.end10
  %parent.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 6
  %umax = call i32 @llvm.umax.i32(i32 %div75, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc36, %for.inc.for.body_crit_edge ]
  %call19 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.40, i32 noundef %i.086, ptr noundef nonnull %pinfunc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %for.body.exit_crit_edge

for.body.exit_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end22:                                         ; preds = %for.body
  %11 = ptrtoint ptr %pinfunc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pinfunc, align 4
  %call.i = call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %and.i = and i32 %12, 255
  %shr.i = lshr i32 %12, 16
  %and1.i = and i32 %shr.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and1.i)
  %cmp.i = icmp ugt i32 %and1.i, 7
  br i1 %cmp.i, label %if.end22.exit_crit_edge, label %if.end.i

if.end22.exit_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end.i:                                         ; preds = %if.end22
  %arrayidx.i = getelementptr [8 x ptr], ptr @atmel_functions, i32 0, i32 %and1.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %npins.i.i = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %npins.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %npins.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp11.not.i.i = icmp eq i32 %16, 0
  br i1 %cmp11.not.i.i, label %if.end.i.exit_crit_edge, label %for.body.lr.ph.i.i

if.end.i.exit_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %groups.i.i = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %groups.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.012.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %pin1.i.i = getelementptr %struct.atmel_group, ptr %18, i32 %i.012.i.i, i32 1
  %19 = ptrtoint ptr %pin1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pin1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %and.i)
  %cmp2.i.i = icmp eq i32 %20, %and.i
  br i1 %cmp2.i.i, label %atmel_pctl_find_group_by_pin.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %16
  br i1 %exitcond.not.i.i, label %for.inc.i.i.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.exit_crit_edge:                       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

atmel_pctl_find_group_by_pin.exit.i:              ; preds = %for.body.i.i
  %add.ptr.le.i.i = getelementptr %struct.atmel_group, ptr %18, i32 %i.012.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.le.i.i, null
  br i1 %tobool.not.i, label %atmel_pctl_find_group_by_pin.exit.i.exit_crit_edge, label %if.end26

atmel_pctl_find_group_by_pin.exit.i.exit_crit_edge: ; preds = %atmel_pctl_find_group_by_pin.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end26:                                         ; preds = %atmel_pctl_find_group_by_pin.exit.i
  %21 = ptrtoint ptr %add.ptr.le.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.le.i.i, align 4
  %pins.i = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pins.i, align 4
  %arrayidx5.i = getelementptr ptr, ptr %24, i32 %and.i
  %25 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx5.i, align 4
  %mux.i = getelementptr inbounds %struct.atmel_pin, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %mux.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and1.i, ptr %mux.i, align 4
  %shr6.i = lshr i32 %12, 20
  %and7.i = and i32 %shr6.i, 15
  %28 = load ptr, ptr %pins.i, align 4
  %arrayidx9.i = getelementptr ptr, ptr %28, i32 %and.i
  %29 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx9.i, align 4
  %ioset.i = getelementptr inbounds %struct.atmel_pin, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %ioset.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and7.i, ptr %ioset.i, align 4
  %32 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent.i, align 4
  %node.i = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 14
  %34 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %node.i, align 4
  %cmp10.i = icmp eq ptr %33, %35
  %np..i = select i1 %cmp10.i, ptr %np, ptr %33
  %36 = ptrtoint ptr %np..i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %np..i, align 4
  %38 = load ptr, ptr %pins.i, align 4
  %arrayidx14.i = getelementptr ptr, ptr %38, i32 %and.i
  %39 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx14.i, align 4
  %device.i = getelementptr inbounds %struct.atmel_pin, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %37, ptr %device.i, align 4
  %call27 = call i32 @pinctrl_utils_add_map_mux(ptr noundef %pctldev, ptr noundef %map, ptr noundef %reserved_maps, ptr noundef %num_maps, ptr noundef %22, ptr noundef %14) #8
  %42 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool28.not = icmp eq i32 %43, 0
  br i1 %tobool28.not, label %if.end26.for.inc_crit_edge, label %if.then29

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then29:                                        ; preds = %if.end26
  %44 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %configs, align 4
  %call30 = call i32 @pinctrl_utils_add_map_configs(ptr noundef %pctldev, ptr noundef %map, ptr noundef %reserved_maps, ptr noundef %num_maps, ptr noundef %22, ptr noundef %45, i32 noundef %43, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then29.exit_crit_edge, label %if.then29.for.inc_crit_edge

if.then29.for.inc_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then29.exit_crit_edge:                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

for.inc:                                          ; preds = %if.then29.for.inc_crit_edge, %if.end26.for.inc_crit_edge
  %ret.1 = phi i32 [ %call30, %if.then29.for.inc_crit_edge ], [ 0, %if.end26.for.inc_crit_edge ]
  %inc36 = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc36, %umax
  br i1 %exitcond.not, label %for.inc.exit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.exit_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

exit:                                             ; preds = %for.inc.exit_crit_edge, %if.then29.exit_crit_edge, %atmel_pctl_find_group_by_pin.exit.i.exit_crit_edge, %for.inc.i.i.exit_crit_edge, %if.end.i.exit_crit_edge, %if.end22.exit_crit_edge, %for.body.exit_crit_edge, %if.end10.exit_crit_edge, %do.end8
  %ret.3 = phi i32 [ %call14, %if.end10.exit_crit_edge ], [ -22, %do.end8 ], [ -22, %for.inc.i.i.exit_crit_edge ], [ %ret.1, %for.inc.exit_crit_edge ], [ %call19, %for.body.exit_crit_edge ], [ %call30, %if.then29.exit_crit_edge ], [ -22, %if.end22.exit_crit_edge ], [ -22, %atmel_pctl_find_group_by_pin.exit.i.exit_crit_edge ], [ -22, %if.end.i.exit_crit_edge ]
  %46 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %configs, align 4
  call void @kfree(ptr noundef %47) #8
  br label %cleanup37

cleanup37:                                        ; preds = %exit, %do.end, %entry.cleanup37_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %ret.3, %exit ], [ -22, %entry.cleanup37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pinfunc) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_mux(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_configs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_pmx_get_functions_count(ptr nocapture noundef readnone %pctldev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @atmel_pmx_get_function_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [8 x ptr], ptr @atmel_functions, i32 0, i32 %selector
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pmx_get_function_groups(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %group_names = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %group_names to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group_names, align 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %groups, align 4
  %npins = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %npins, align 4
  %5 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pmx_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_pmx_set_mux.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_pmx_set_mux, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !184

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr [8 x ptr], ptr @atmel_functions, i32 0, i32 %function
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %groups = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups, align 4
  %arrayidx5 = getelementptr %struct.atmel_group, ptr %5, i32 %group
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_pmx_set_mux.__UNIQUE_ID_ddebug227, ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef %3, ptr noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %groups6 = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %groups6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %groups6, align 4
  %pin8 = getelementptr %struct.atmel_group, ptr %9, i32 %group, i32 1
  %10 = ptrtoint ptr %pin8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pin8, align 4
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pins.i = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pins.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %11
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %bank1.i = getelementptr inbounds %struct.atmel_pin, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %bank1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bank1.i, align 4
  %line4.i = getelementptr inbounds %struct.atmel_pin, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %line4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %line4.i, align 4
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %mul.i = shl i32 %17, 6
  %add.ptr.i = getelementptr i8, ptr %21, i32 %mul.i
  %shl.i = shl nuw i32 1, %19
  %22 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !185
  %24 = and i32 %23, -117440513
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %and10 = and i32 %function, 7
  %or = or i32 %25, %and10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_pmx_set_mux.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_pmx_set_mux, %do.end29)) #8
          to label %if.then25 [label %do.end29], !srcloc !184

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev26 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %26 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_pmx_set_mux.__UNIQUE_ID_ddebug228, ptr noundef %27, ptr noundef nonnull @.str.56, i32 noundef %11, i32 noundef %or) #8
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.end
  %call.i45 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pins.i46 = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i45, i32 0, i32 6
  %28 = ptrtoint ptr %pins.i46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pins.i46, align 4
  %arrayidx.i47 = getelementptr ptr, ptr %29, i32 %11
  %30 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i47, align 4
  %bank1.i48 = getelementptr inbounds %struct.atmel_pin, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %bank1.i48 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bank1.i48, align 4
  %line4.i49 = getelementptr inbounds %struct.atmel_pin, ptr %31, i32 0, i32 4
  %34 = ptrtoint ptr %line4.i49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %line4.i49, align 4
  %36 = ptrtoint ptr %call.i45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i45, align 4
  %mul.i50 = shl i32 %33, 6
  %add.ptr.i51 = getelementptr i8, ptr %37, i32 %mul.i50
  %shl.i52 = shl nuw i32 1, %35
  %38 = tail call i32 @llvm.bswap.i32(i32 %shl.i52) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %38) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %add.ptr6.i53 = getelementptr i8, ptr %add.ptr.i51, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i53, i32 %39) #8, !srcloc !187
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_conf_pin_config_group_get(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %groups = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %pin = getelementptr %struct.atmel_group, ptr %3, i32 %group, i32 1
  %4 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pin, align 4
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pins.i = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %5
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %bank1.i = getelementptr inbounds %struct.atmel_pin, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bank1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank1.i, align 4
  %line4.i = getelementptr inbounds %struct.atmel_pin, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %line4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %line4.i, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %mul.i = shl i32 %11, 6
  %add.ptr.i = getelementptr i8, ptr %15, i32 %mul.i
  %shl.i = shl nuw i32 1, %13
  %16 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !185
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %trunc = trunc i32 %1 to i8
  %19 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 5, label %sw.bb
    i8 3, label %sw.bb3
    i8 1, label %sw.bb10
    i8 6, label %sw.bb18
    i8 14, label %sw.bb23
    i8 24, label %sw.bb28
    i8 -128, label %sw.bb36
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %and = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %20 = and i32 %18, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %20)
  %.not = icmp eq i32 %20, 1024
  br i1 %.not, label %sw.bb3.sw.epilog_crit_edge, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %21 = and i32 %18, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %sw.bb10.sw.epilog_crit_edge, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %and19 = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %sw.bb18.cleanup_crit_edge, label %sw.bb18.sw.epilog_crit_edge

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %and24 = and i32 %18, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %sw.bb23.cleanup_crit_edge, label %sw.bb23.sw.epilog_crit_edge

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  %slew_rate_support = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 15
  %23 = ptrtoint ptr %slew_rate_support to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slew_rate_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool29.not = icmp eq i32 %24, 0
  br i1 %tobool29.not, label %sw.bb28.cleanup_crit_edge, label %if.end31

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %sw.bb28
  %and32 = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.end31.sw.epilog_crit_edge

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  %and37 = and i32 %18, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %sw.bb36.cleanup_crit_edge, label %if.end40

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr exact i32 %and37, 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end40, %if.end31.sw.epilog_crit_edge, %sw.bb23.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %arg.0 = phi i32 [ %shr, %if.end40 ], [ 256, %sw.bb.sw.epilog_crit_edge ], [ 256, %sw.bb3.sw.epilog_crit_edge ], [ 256, %sw.bb10.sw.epilog_crit_edge ], [ 256, %sw.bb18.sw.epilog_crit_edge ], [ 256, %sw.bb23.sw.epilog_crit_edge ], [ 256, %if.end31.sw.epilog_crit_edge ]
  %or.i = or i32 %arg.0, %and.i
  %25 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb36.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %sw.bb23.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %sw.bb10.cleanup_crit_edge ], [ -22, %sw.bb18.cleanup_crit_edge ], [ -22, %sw.bb23.cleanup_crit_edge ], [ -95, %sw.bb28.cleanup_crit_edge ], [ -22, %if.end31.cleanup_crit_edge ], [ -22, %sw.bb36.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_conf_pin_config_group_set(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin1 = getelementptr %struct.atmel_group, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin1, align 4
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pins.i = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %bank1.i = getelementptr inbounds %struct.atmel_pin, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bank1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bank1.i, align 4
  %line4.i = getelementptr inbounds %struct.atmel_pin, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %line4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line4.i, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %mul.i = shl i32 %9, 6
  %add.ptr.i = getelementptr i8, ptr %13, i32 %mul.i
  %shl.i = shl nuw i32 1, %11
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !185
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  %slew_rate_support = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 15
  %17 = ptrtoint ptr %slew_rate_support to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slew_rate_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  %or = or i32 %16, 2048
  %spec.select = select i1 %tobool.not, i32 %16, i32 %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp172.not = icmp eq i32 %num_configs, 0
  br i1 %cmp172.not, label %entry.do.body80_crit_edge, label %for.body.lr.ph

entry.do.body80_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body80

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %20 = shl i32 %3, 1
  %mul51 = and i32 %20, -64
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0174 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %conf.1173 = phi i32 [ %spec.select, %for.body.lr.ph ], [ %conf.3, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0174
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %22, 255
  %shr.i = lshr i32 %22, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_conf_pin_config_group_set.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_conf_pin_config_group_set, %do.end)) #8
          to label %if.then11 [label %do.end], !srcloc !184

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_conf_pin_config_group_set.__UNIQUE_ID_ddebug229, ptr noundef %24, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57, i32 noundef %3, i32 noundef %26) #8
  br label %do.end

do.end:                                           ; preds = %if.then11, %for.body
  %trunc = trunc i32 %22 to i8
  %27 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %trunc, label %do.end76 [
    i8 1, label %sw.bb
    i8 5, label %sw.bb15
    i8 3, label %sw.bb18
    i8 6, label %sw.bb21
    i8 14, label %sw.bb27
    i8 11, label %sw.bb34
    i8 17, label %sw.bb43
    i8 24, label %sw.bb55
    i8 -128, label %sw.bb64
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = and i32 %conf.1173, -1537
  br label %cleanup

sw.bb15:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %or16 = and i32 %conf.1173, -1537
  %and17 = or i32 %or16, 512
  br label %cleanup

sw.bb18:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %or19 = and i32 %conf.1173, -1537
  %and20 = or i32 %or19, 1024
  br label %cleanup

sw.bb21:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %22)
  %cmp22 = icmp ult i32 %22, 256
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  %and24 = and i32 %conf.1173, -16385
  br label %cleanup

if.else:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  %or25 = or i32 %conf.1173, 16384
  br label %cleanup

sw.bb27:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %22)
  %cmp28 = icmp ult i32 %22, 256
  br i1 %cmp28, label %if.then29, label %if.else31

if.then29:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  %or30 = or i32 %conf.1173, 32768
  br label %cleanup

if.else31:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  %and32 = and i32 %conf.1173, -32769
  br label %cleanup

sw.bb34:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %22)
  %cmp35 = icmp ult i32 %22, 256
  br i1 %cmp35, label %if.then36, label %if.else39

if.then36:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  %and38 = and i32 %conf.1173, -12289
  br label %cleanup

if.else39:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  %or41 = or i32 %conf.1173, 12288
  br label %cleanup

sw.bb43:                                          ; preds = %do.end
  %or44 = or i32 %conf.1173, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %22)
  %cmp45 = icmp ult i32 %22, 256
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call, align 4
  %add.ptr47 = getelementptr i8, ptr %29, i32 %mul51
  br i1 %cmp45, label %if.then46, label %if.else49

if.then46:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr48 = getelementptr i8, ptr %add.ptr47, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %19) #8, !srcloc !187
  br label %cleanup

if.else49:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr53 = getelementptr i8, ptr %add.ptr47, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %19) #8, !srcloc !187
  br label %cleanup

sw.bb55:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %slew_rate_support to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %slew_rate_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool57.not = icmp ne i32 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %22)
  %cmp60 = icmp ult i32 %22, 256
  %or.cond = select i1 %tobool57.not, i1 %cmp60, i1 false
  %and62 = and i32 %conf.1173, -2049
  %spec.select157 = select i1 %or.cond, i32 %and62, i32 %conf.1173
  br label %cleanup

sw.bb64:                                          ; preds = %do.end
  %call5.off = add nsw i32 %shr.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call5.off)
  %switch = icmp ult i32 %call5.off, 3
  br i1 %switch, label %sw.bb65, label %do.end71

sw.bb65:                                          ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #10
  %and66 = and i32 %conf.1173, -196609
  %shl67 = shl nuw nsw i32 %shr.i, 16
  %or68 = or i32 %shl67, %and66
  br label %cleanup

do.end71:                                         ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.59) #11
  br label %cleanup

do.end76:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.62, i32 noundef %and.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %do.end71, %sw.bb65, %sw.bb55, %if.else49, %if.then46, %if.else39, %if.then36, %if.else31, %if.then29, %if.else, %if.then23, %sw.bb18, %sw.bb15, %sw.bb
  %conf.3 = phi i32 [ %conf.1173, %do.end76 ], [ %conf.1173, %do.end71 ], [ %or68, %sw.bb65 ], [ %or44, %if.then46 ], [ %or44, %if.else49 ], [ %and38, %if.then36 ], [ %or41, %if.else39 ], [ %or30, %if.then29 ], [ %and32, %if.else31 ], [ %and24, %if.then23 ], [ %or25, %if.else ], [ %and20, %sw.bb18 ], [ %and17, %sw.bb15 ], [ %and14, %sw.bb ], [ %spec.select157, %sw.bb55 ]
  %inc = add nuw i32 %i.0174, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %cleanup.do.body80_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.do.body80_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body80

do.body80:                                        ; preds = %cleanup.do.body80_crit_edge, %entry.do.body80_crit_edge
  %conf.1.lcssa = phi i32 [ %spec.select, %entry.do.body80_crit_edge ], [ %conf.3, %cleanup.do.body80_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_conf_pin_config_group_set.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_conf_pin_config_group_set, %do.end98)) #8
          to label %if.then94 [label %do.end98], !srcloc !184

if.then94:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #10
  %dev95 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %36 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev95, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_conf_pin_config_group_set.__UNIQUE_ID_ddebug230, ptr noundef %37, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.57, i32 noundef %conf.1.lcssa) #8
  br label %do.end98

do.end98:                                         ; preds = %if.then94, %do.body80
  %call.i161 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pins.i162 = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i161, i32 0, i32 6
  %38 = ptrtoint ptr %pins.i162 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pins.i162, align 4
  %arrayidx.i163 = getelementptr ptr, ptr %39, i32 %3
  %40 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i163, align 4
  %bank1.i164 = getelementptr inbounds %struct.atmel_pin, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %bank1.i164 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bank1.i164, align 4
  %line4.i165 = getelementptr inbounds %struct.atmel_pin, ptr %41, i32 0, i32 4
  %44 = ptrtoint ptr %line4.i165 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %line4.i165, align 4
  %46 = ptrtoint ptr %call.i161 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i161, align 4
  %mul.i166 = shl i32 %43, 6
  %add.ptr.i167 = getelementptr i8, ptr %47, i32 %mul.i166
  %shl.i168 = shl nuw i32 1, %45
  %48 = tail call i32 @llvm.bswap.i32(i32 %shl.i168) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167, i32 %48) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %49 = tail call i32 @llvm.bswap.i32(i32 %conf.1.lcssa) #8
  %add.ptr6.i169 = getelementptr i8, ptr %add.ptr.i167, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i169, i32 %49) #8, !srcloc !187
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_conf_pin_config_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %pin_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pins = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %pin_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %device = getelementptr inbounds %struct.atmel_pin, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ioset = getelementptr inbounds %struct.atmel_pin, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ioset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ioset, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, ptr noundef nonnull %5, i32 noundef %7) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.end.if.end10_crit_edge
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pins.i = getelementptr inbounds %struct.atmel_pioctrl, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pins.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %pin_id
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %bank1.i = getelementptr inbounds %struct.atmel_pin, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %bank1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bank1.i, align 4
  %line4.i = getelementptr inbounds %struct.atmel_pin, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %line4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %line4.i, align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %mul.i = shl i32 %13, 6
  %add.ptr.i = getelementptr i8, ptr %17, i32 %mul.i
  %shl.i = shl nuw i32 1, %15
  %18 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !185
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %and = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %and15 = and i32 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.68) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %and19 = and i32 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.69) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %and23 = and i32 %20, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end26_crit_edge, label %if.then25

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.70) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22.if.end26_crit_edge
  %and27 = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end30_crit_edge, label %if.then29

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.71) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26.if.end30_crit_edge
  %slew_rate_support = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 15
  %21 = ptrtoint ptr %slew_rate_support to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slew_rate_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool31.not = icmp eq i32 %22, 0
  %and32 = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %or.cond = select i1 %tobool31.not, i1 true, i1 %tobool33.not
  br i1 %or.cond, label %if.end30.if.end35_crit_edge, label %if.then34

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.72) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end30.if.end35_crit_edge
  %and36 = and i32 %20, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.cleanup_crit_edge, label %if.then38

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and36)
  %switch.selectcmp = icmp eq i32 %and36, 196608
  %switch.select = select i1 %switch.selectcmp, ptr @.str.74, ptr @.str.75
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %and36)
  %switch.selectcmp69 = icmp eq i32 %and36, 131072
  %switch.select70 = select i1 %switch.selectcmp69, ptr @.str.73, ptr %switch.select
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, ptr noundef nonnull %switch.select70) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end35.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %pins = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %bank = getelementptr inbounds %struct.atmel_pin, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank, align 4
  %line = getelementptr inbounds %struct.atmel_pin, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line, align 4
  %shl = shl nuw i32 1, %7
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %mul.i = shl i32 %5, 6
  %add.ptr.i = getelementptr i8, ptr %10, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #8, !srcloc !187
  %11 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bank, align 4
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  %mul.i11 = shl i32 %12, 6
  %add.ptr.i12 = getelementptr i8, ptr %14, i32 %mul.i11
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i12, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !185
  %16 = and i32 %15, -65537
  %17 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bank, align 4
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %mul.i13 = shl i32 %18, 6
  %add.ptr.i14 = getelementptr i8, ptr %20, i32 %mul.i13
  %add.ptr1.i15 = getelementptr i8, ptr %add.ptr.i14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i15, i32 %16) #8, !srcloc !187
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %pins = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %bank = getelementptr inbounds %struct.atmel_pin, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %cond = select i1 %tobool.not, i32 20, i32 16
  %line = getelementptr inbounds %struct.atmel_pin, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line, align 4
  %shl = shl nuw i32 1, %7
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %mul.i = shl i32 %5, 6
  %add.ptr.i = getelementptr i8, ptr %10, i32 %mul.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %8) #8, !srcloc !187
  %11 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bank, align 4
  %13 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %line, align 4
  %shl3 = shl nuw i32 1, %14
  %15 = tail call i32 @llvm.bswap.i32(i32 %shl3) #8
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  %mul.i17 = shl i32 %12, 6
  %add.ptr.i18 = getelementptr i8, ptr %17, i32 %mul.i17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %15) #8, !srcloc !187
  %18 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bank, align 4
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  %mul.i19 = shl i32 %19, 6
  %add.ptr.i20 = getelementptr i8, ptr %21, i32 %mul.i19
  %add.ptr1.i21 = getelementptr i8, ptr %add.ptr.i20, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i21) #8, !srcloc !185
  %23 = or i32 %22, 65536
  %24 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bank, align 4
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call, align 4
  %mul.i22 = shl i32 %25, 6
  %add.ptr.i23 = getelementptr i8, ptr %27, i32 %mul.i22
  %add.ptr1.i24 = getelementptr i8, ptr %add.ptr.i23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i24, i32 %23) #8, !srcloc !187
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %pins = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %bank = getelementptr inbounds %struct.atmel_pin, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %mul.i = shl i32 %5, 6
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !185
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %line = getelementptr inbounds %struct.atmel_pin, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line, align 4
  %12 = lshr i32 %9, %11
  %13 = and i32 %12, 1
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_gpio_get_multiple(ptr noundef %chip, ptr nocapture noundef readonly %mask, ptr nocapture noundef %bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %npins = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npins, align 4
  %sub.i = add i32 %1, 31
  %2 = lshr i32 %sub.i, 3
  %mul.i = and i32 %2, 536870908
  %3 = call ptr @memset(ptr %bits, i32 0, i32 %mul.i)
  %nbanks = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbanks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp18.not = icmp eq i32 %5, 0
  br i1 %cmp18.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %bank.019 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %mask, i32 %bank.019
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %mul.i17 = shl i32 %bank.019, 6
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i17
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !185
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %and = and i32 %13, %11
  %arrayidx3 = getelementptr i32, ptr %bits, i32 %bank.019
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3, align 4
  %or = or i32 %15, %and
  store i32 %or, ptr %arrayidx3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %bank.019, 1
  %16 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbanks, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %pins = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %bank = getelementptr inbounds %struct.atmel_pin, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %cond = select i1 %tobool.not, i32 20, i32 16
  %line = getelementptr inbounds %struct.atmel_pin, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line, align 4
  %shl = shl nuw i32 1, %7
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %mul.i = shl i32 %5, 6
  %add.ptr.i = getelementptr i8, ptr %10, i32 %mul.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %8) #8, !srcloc !187
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_gpio_set_multiple(ptr noundef %chip, ptr nocapture noundef readonly %mask, ptr nocapture noundef readonly %bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %nbanks = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbanks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp24.not = icmp eq i32 %1, 0
  br i1 %cmp24.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %bank.025 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %mask, i32 %bank.025
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2 = getelementptr i32, ptr %bits, i32 %bank.025
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %and = and i32 %5, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %mul.i = shl i32 %bank.025, 6
  %add.ptr.i = getelementptr i8, ptr %8, i32 16
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %6) #8, !srcloc !187
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2, align 4
  %neg = xor i32 %12, -1
  %and5 = and i32 %10, %neg
  %13 = tail call i32 @llvm.bswap.i32(i32 %and5) #8
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %add.ptr.i22 = getelementptr i8, ptr %15, i32 20
  %add.ptr1.i23 = getelementptr i8, ptr %add.ptr.i22, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i23, i32 %13) #8, !srcloc !187
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %bank.025, 1
  %16 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbanks, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_gpio_to_irq(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %irq_domain = getelementptr inbounds %struct.atmel_pioctrl, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #8
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq.i, align 4, !annotation !186
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %1, i32 noundef %offset, ptr noundef nonnull %irq.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_find_mapping.exit_crit_edge, label %if.then.i

entry.irq_find_mapping.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %entry.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ 0, %entry.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @atmel_gpio_irq_ack(ptr nocapture noundef %d) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_gpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %pins = getelementptr inbounds %struct.atmel_pioctrl, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %bank = getelementptr inbounds %struct.atmel_pin, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bank, align 4
  %line = getelementptr inbounds %struct.atmel_pin, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line, align 4
  %shl = shl nuw i32 1, %11
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %mul.i = shl i32 %9, 6
  %add.ptr.i = getelementptr i8, ptr %14, i32 %mul.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %12) #8, !srcloc !187
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_gpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %pins = getelementptr inbounds %struct.atmel_pioctrl, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %bank = getelementptr inbounds %struct.atmel_pin, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bank, align 4
  %line = getelementptr inbounds %struct.atmel_pin, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line, align 4
  %shl = shl nuw i32 1, %11
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %mul.i = shl i32 %9, 6
  %add.ptr.i = getelementptr i8, ptr %14, i32 %mul.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %12) #8, !srcloc !187
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_gpio_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %pins = getelementptr inbounds %struct.atmel_pioctrl, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %bank = getelementptr inbounds %struct.atmel_pin, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bank, align 4
  %line = getelementptr inbounds %struct.atmel_pin, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line, align 4
  %shl = shl nuw i32 1, %11
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %mul.i = shl i32 %9, 6
  %add.ptr.i = getelementptr i8, ptr %14, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #8, !srcloc !187
  %15 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bank, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %mul.i33 = shl i32 %16, 6
  %add.ptr.i34 = getelementptr i8, ptr %18, i32 %mul.i33
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i34, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !185
  %20 = and i32 %19, -8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 8, label %sw.bb7
    i32 4, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %23 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @handle_edge_irq, ptr %handle_irq.i, align 4
  %or = or i32 %21, 16777216
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i35 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %26 = ptrtoint ptr %common.i.i35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %common.i.i35, align 4
  %handle_irq.i36 = getelementptr inbounds %struct.irq_desc, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %handle_irq.i36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @handle_edge_irq, ptr %handle_irq.i36, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i37 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %29 = ptrtoint ptr %common.i.i37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %common.i.i37, align 4
  %handle_irq.i38 = getelementptr inbounds %struct.irq_desc, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %handle_irq.i38 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @handle_edge_irq, ptr %handle_irq.i38, align 4
  %or6 = or i32 %21, 33554432
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i39 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %32 = ptrtoint ptr %common.i.i39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %common.i.i39, align 4
  %handle_irq.i40 = getelementptr inbounds %struct.irq_desc, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %handle_irq.i40 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @handle_level_irq, ptr %handle_irq.i40, align 4
  %or8 = or i32 %21, 50331648
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i41 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %35 = ptrtoint ptr %common.i.i41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %common.i.i41, align 4
  %handle_irq.i42 = getelementptr inbounds %struct.irq_desc, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %handle_irq.i42 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @handle_level_irq, ptr %handle_irq.i42, align 4
  %or10 = or i32 %21, 67108864
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  %reg.0 = phi i32 [ %or10, %sw.bb9 ], [ %or8, %sw.bb7 ], [ %or6, %sw.bb5 ], [ %21, %sw.bb3 ], [ %or, %sw.bb ]
  %38 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bank, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #8
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %mul.i43 = shl i32 %39, 6
  %add.ptr.i44 = getelementptr i8, ptr %42, i32 %mul.i43
  %add.ptr1.i45 = getelementptr i8, ptr %add.ptr.i44, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i45, i32 %40) #8, !srcloc !187
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_gpio_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div15 = lshr i32 %3, 5
  %rem = and i32 %3, 31
  %irqs = getelementptr inbounds %struct.atmel_pioctrl, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irqs, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %div15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef %on) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %shl4 = shl nuw i32 1, %rem
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pm_wakeup_sources = getelementptr inbounds %struct.atmel_pioctrl, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %pm_wakeup_sources to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pm_wakeup_sources, align 4
  %arrayidx3 = getelementptr i32, ptr %9, i32 %div15
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  %or = or i32 %11, %shl4
  store i32 %or, ptr %arrayidx3, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %shl4, -1
  %pm_wakeup_sources5 = getelementptr inbounds %struct.atmel_pioctrl, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %pm_wakeup_sources5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pm_wakeup_sources5, align 4
  %arrayidx6 = getelementptr i32, ptr %13, i32 %div15
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6, align 4
  %and = and i32 %15, %neg
  store i32 %and, ptr %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pctrl_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nbanks = getelementptr inbounds %struct.atmel_pioctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbanks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp50.not = icmp eq i32 %3, 0
  br i1 %cmp50.not, label %entry.for.end15_crit_edge, label %for.body.lr.ph

entry.for.end15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end15

for.body.lr.ph:                                   ; preds = %entry
  %pm_suspend_backup = getelementptr inbounds %struct.atmel_pioctrl, ptr %1, i32 0, i32 12
  %pm_wakeup_sources = getelementptr inbounds %struct.atmel_pioctrl, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc13.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc14, %for.inc13.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %mul.i = shl i32 %i.051, 6
  %add.ptr.i = getelementptr i8, ptr %5, i32 40
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !185
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %8 = ptrtoint ptr %pm_suspend_backup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pm_suspend_backup, align 4
  %arrayidx = getelementptr %struct.anon.70, ptr %9, i32 %i.051
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %pm_wakeup_sources to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pm_wakeup_sources, align 4
  %arrayidx2 = getelementptr i32, ptr %12, i32 %i.051
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2, align 4
  %neg = xor i32 %14, -1
  %15 = tail call i32 @llvm.bswap.i32(i32 %neg) #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i39 = getelementptr i8, ptr %17, i32 36
  %add.ptr1.i40 = getelementptr i8, ptr %add.ptr.i39, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i40, i32 %15) #8, !srcloc !187
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr.i42 = getelementptr i8, ptr %19, i32 24
  %add.ptr1.i43 = getelementptr i8, ptr %add.ptr.i42, i32 %mul.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i43) #8, !srcloc !185
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %22 = ptrtoint ptr %pm_suspend_backup to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pm_suspend_backup, align 4
  %odsr = getelementptr %struct.anon.70, ptr %23, i32 %i.051, i32 1
  %24 = ptrtoint ptr %odsr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %odsr, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.body
  %j.049 = phi i32 [ 0, %for.body ], [ %inc, %for.body8.for.body8_crit_edge ]
  %shl = shl nuw i32 1, %j.049
  %25 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr.i45 = getelementptr i8, ptr %27, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %25) #8, !srcloc !187
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr.i47 = getelementptr i8, ptr %29, i32 %mul.i
  %add.ptr1.i48 = getelementptr i8, ptr %add.ptr.i47, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i48) #8, !srcloc !185
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  %32 = ptrtoint ptr %pm_suspend_backup to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pm_suspend_backup, align 4
  %arrayidx12 = getelementptr %struct.anon.70, ptr %33, i32 %i.051, i32 2, i32 %j.049
  %34 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %arrayidx12, align 4
  %inc = add nuw nsw i32 %j.049, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc13, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8

for.inc13:                                        ; preds = %for.body8
  %inc14 = add nuw i32 %i.051, 1
  %35 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nbanks, align 4
  %cmp = icmp ult i32 %inc14, %36
  br i1 %cmp, label %for.inc13.for.body_crit_edge, label %for.inc13.for.end15_crit_edge

for.inc13.for.end15_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end15

for.inc13.for.body_crit_edge:                     ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end15:                                        ; preds = %for.inc13.for.end15_crit_edge, %entry.for.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pctrl_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nbanks = getelementptr inbounds %struct.atmel_pioctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbanks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp39.not = icmp eq i32 %3, 0
  br i1 %cmp39.not, label %entry.for.end11_crit_edge, label %for.body.lr.ph

entry.for.end11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end11

for.body.lr.ph:                                   ; preds = %entry
  %pm_suspend_backup = getelementptr inbounds %struct.atmel_pioctrl, ptr %1, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc9.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc10, %for.inc9.for.body_crit_edge ]
  %4 = ptrtoint ptr %pm_suspend_backup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pm_suspend_backup, align 4
  %arrayidx = getelementptr %struct.anon.70, ptr %5, i32 %i.040
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %mul.i = shl i32 %i.040, 6
  %add.ptr.i = getelementptr i8, ptr %10, i32 32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %8) #8, !srcloc !187
  %11 = ptrtoint ptr %pm_suspend_backup to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pm_suspend_backup, align 4
  %odsr = getelementptr %struct.anon.70, ptr %12, i32 %i.040, i32 1
  %13 = ptrtoint ptr %odsr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %odsr, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i31 = getelementptr i8, ptr %17, i32 16
  %add.ptr1.i32 = getelementptr i8, ptr %add.ptr.i31, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i32, i32 %15) #8, !srcloc !187
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body
  %j.038 = phi i32 [ 0, %for.body ], [ %inc, %for.body5.for.body5_crit_edge ]
  %shl = shl nuw i32 1, %j.038
  %18 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i34 = getelementptr i8, ptr %20, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %18) #8, !srcloc !187
  %21 = ptrtoint ptr %pm_suspend_backup to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pm_suspend_backup, align 4
  %arrayidx8 = getelementptr %struct.anon.70, ptr %22, i32 %i.040, i32 2, i32 %j.038
  %23 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx8, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr.i36 = getelementptr i8, ptr %27, i32 %mul.i
  %add.ptr1.i37 = getelementptr i8, ptr %add.ptr.i36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i37, i32 %25) #8, !srcloc !187
  %inc = add nuw nsw i32 %j.038, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc9, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5

for.inc9:                                         ; preds = %for.body5
  %inc10 = add nuw i32 %i.040, 1
  %28 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nbanks, align 4
  %cmp = icmp ult i32 %inc10, %29
  br i1 %cmp, label %for.inc9.for.body_crit_edge, label %for.inc9.for.end11_crit_edge

for.inc9.for.end11_crit_edge:                     ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end11

for.inc9.for.body_crit_edge:                      ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end11:                                        ; preds = %for.inc9.for.end11_crit_edge, %entry.for.end11_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !68, !70, !72, !73, !74, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !110, !112, !113, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !162, !163, !164, !166, !168, !170, !172}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @__initcall__kmod_pinctrl_at91_pio4__234_1252_atmel_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_at91_pio4__234_1252_atmel_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1252, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1245, i32 11}
!4 = !{ptr @atmel_pinctrl_driver, !5, !"atmel_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1243, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1061, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @atmel_pinctrl_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @atmel_pinctrl_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1080, i32 3}
!16 = !{ptr @atmel_pinctrl_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @atmel_pinctrl_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1129, i32 44}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1135, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @atmel_pinctrl_probe.__UNIQUE_ID_ddebug231, !21, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1169, i32 4}
!26 = !{ptr @atmel_pinctrl_probe._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @atmel_pinctrl_probe._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1176, i32 3}
!30 = !{ptr @atmel_pinctrl_probe.__UNIQUE_ID_ddebug232, !29, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1183, i32 3}
!33 = !{ptr @atmel_pinctrl_probe._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @atmel_pinctrl_probe._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1186, i32 36}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1194, i32 3}
!39 = !{ptr @atmel_pinctrl_probe.__UNIQUE_ID_ddebug233, !38, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1201, i32 3}
!42 = !{ptr @atmel_pinctrl_probe._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @atmel_pinctrl_probe._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1210, i32 3}
!46 = !{ptr @atmel_pinctrl_probe._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @atmel_pinctrl_probe._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @atmel_pinctrl_probe.lock_key, !49, !"lock_key", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1214, i32 8}
!50 = !{ptr @atmel_pinctrl_probe.request_key, !49, !"request_key", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1216, i32 3}
!53 = !{ptr @atmel_pinctrl_probe._entry.27, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @atmel_pinctrl_probe._entry_ptr.29, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1223, i32 3}
!57 = !{ptr @atmel_pinctrl_probe._entry.30, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @atmel_pinctrl_probe._entry_ptr.32, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1227, i32 2}
!61 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @atmel_pinctrl_probe._entry.33, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @atmel_pinctrl_probe._entry_ptr.36, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 955, i32 11}
!66 = !{ptr @atmel_pinctrl_desc, !67, !"atmel_pinctrl_desc", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 954, i32 28}
!68 = !{ptr @atmel_pctlops, !69, !"atmel_pctlops", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 671, i32 33}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 664, i32 3}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @atmel_pctl_dt_node_to_map._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @atmel_pctl_dt_node_to_map._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 569, i32 30}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 576, i32 3}
!79 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @atmel_pctl_dt_subnode_to_map._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @atmel_pctl_dt_subnode_to_map._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 583, i32 3}
!84 = !{ptr @atmel_pctl_dt_subnode_to_map._entry.43, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @atmel_pctl_dt_subnode_to_map._entry_ptr.45, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 149, i32 2}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 149, i32 10}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 149, i32 15}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 149, i32 20}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 149, i32 25}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 149, i32 30}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 149, i32 35}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 149, i32 40}
!102 = !{ptr @atmel_functions, !103, !"atmel_functions", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 148, i32 27}
!104 = !{ptr @atmel_pmxops, !105, !"atmel_pmxops", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 724, i32 32}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 711, i32 2}
!108 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @atmel_pmx_set_mux.__UNIQUE_ID_ddebug227, !107, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 718, i32 2}
!112 = !{ptr @atmel_pmx_set_mux.__UNIQUE_ID_ddebug228, !111, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!113 = !{ptr @atmel_confops, !114, !"atmel_confops", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 948, i32 33}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 812, i32 3}
!117 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @atmel_conf_pin_config_group_set.__UNIQUE_ID_ddebug229, !116, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 888, i32 5}
!121 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @atmel_conf_pin_config_group_set._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @atmel_conf_pin_config_group_set._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 892, i32 4}
!126 = !{ptr @atmel_conf_pin_config_group_set._entry.61, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @atmel_conf_pin_config_group_set._entry_ptr.63, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 899, i32 2}
!130 = !{ptr @atmel_conf_pin_config_group_set.__UNIQUE_ID_ddebug230, !129, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 916, i32 17}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 922, i32 17}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 922, i32 24}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 924, i32 24}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 926, i32 24}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 928, i32 24}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 930, i32 24}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 932, i32 24}
!147 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 936, i32 25}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 939, i32 25}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 943, i32 25}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 153, i32 3}
!155 = !{ptr @atmel_custom_bindings, !156, !"atmel_custom_bindings", i1 false, i1 false}
!156 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 152, i32 44}
!157 = !{ptr @atmel_gpio_chip, !158, !"atmel_gpio_chip", i1 false, i1 false}
!158 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 437, i32 25}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 295, i32 3}
!161 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @atmel_gpio_irq_handler._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @atmel_gpio_irq_handler._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @atmel_gpio_irq_chip, !165, !"atmel_gpio_irq_chip", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 262, i32 24}
!166 = !{ptr @atmel_pctrl_of_match, !167, !"atmel_pctrl_of_match", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1029, i32 34}
!168 = !{ptr @atmel_sama5d2_pioctrl_data, !169, !"atmel_sama5d2_pioctrl_data", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1018, i32 40}
!170 = !{ptr @microchip_sama7g5_pioctrl_data, !171, !"microchip_sama7g5_pioctrl_data", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1023, i32 40}
!172 = !{ptr @atmel_pctrl_pm_ops, !173, !"atmel_pctrl_pm_ops", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/pinctrl-at91-pio4.c", i32 1010, i32 32}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{!"branch_weights", i32 1, i32 2000}
!184 = !{i64 2148757018, i64 2148757023, i64 2148757036, i64 2148757080, i64 2148757114, i64 2148757135}
!185 = !{i64 4906320}
!186 = !{!"auto-init"}
!187 = !{i64 4905902}
!188 = !{i64 2154006789}
!189 = !{i64 2154007595}
