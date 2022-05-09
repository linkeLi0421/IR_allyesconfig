; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-microchip-sgpio.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-microchip-sgpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sgpio_properties = type { i32, i32, [10 x i8] }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sgpio_priv = type { ptr, %struct.sgpio_bank, %struct.sgpio_bank, i32, i32, i32, ptr, ptr }
%struct.sgpio_bank = type { ptr, i8, %struct.gpio_chip, %struct.pinctrl_desc }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.sgpio_port_addr = type { i8, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_pinctrl_microchip_sgpio__300_925_microchip_sgpio_pinctrl_driver_init6 = internal global ptr @microchip_sgpio_pinctrl_driver_init, section ".initcall6.init", align 4
@microchip_sgpio_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @microchip_sgpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @microchip_sgpio_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pinctrl-microchip-sgpio\00", [40 x i8] zeroinitializer }, align 32
@microchip_sgpio_gpio_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sparx5-sgpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @properties_sparx5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mscc,luton-sgpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @properties_luton }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mscc,ocelot-sgpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @properties_ocelot }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"switch\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get reset\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bus-frequency\00", [18 x i8] zeroinitializer }, align 32
@microchip_sgpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 850, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid frequency %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"microchip_sgpio_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/pinctrl/pinctrl-microchip-sgpio.c\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@microchip_sgpio_probe._entry_ptr = internal global ptr @microchip_sgpio_probe._entry, section ".printk_index", align 4
@microchip_sgpio_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"pinctrl_microchip_sgpio:858:(&regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@microchip_sgpio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 872, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Must have 2 banks (have %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@microchip_sgpio_probe._entry_ptr.13 = internal global ptr @microchip_sgpio_probe._entry.11, section ".printk_index", align 4
@microchip_sgpio_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 886, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Banks must have same GPIO count\0A\00", [63 x i8] zeroinitializer }, align 32
@microchip_sgpio_probe._entry_ptr.16 = internal global ptr @microchip_sgpio_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"microchip,sgpio-port-ranges\00", [36 x i8] zeroinitializer }, align 32
@microchip_sgpio_get_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.7, i32 544, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s port range: '%s' property\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"microchip_sgpio_get_ports\00", [38 x i8] zeroinitializer }, align 32
@microchip_sgpio_get_ports._entry_ptr = internal global ptr @microchip_sgpio_get_ports._entry, section ".printk_index", align 4
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Missing\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Invalid\00", [24 x i8] zeroinitializer }, align 32
@microchip_sgpio_get_ports._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.7, i32 552, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to parse '%s' property: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@microchip_sgpio_get_ports._entry_ptr.24 = internal global ptr @microchip_sgpio_get_ports._entry.22, section ".printk_index", align 4
@microchip_sgpio_get_ports._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.7, i32 562, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Ill-formed port-range [%d:%d]\0A\00", [33 x i8] zeroinitializer }, align 32
@microchip_sgpio_get_ports._entry_ptr.27 = internal global ptr @microchip_sgpio_get_ports._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@microchip_sgpio_register_bank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.7, i32 716, ptr @.str.31, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to get number of gpios for bank%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"microchip_sgpio_register_bank\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@microchip_sgpio_register_bank._entry_ptr = internal global ptr @microchip_sgpio_register_bank._entry, section ".printk_index", align 4
@microchip_sgpio_register_bank._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.7, i32 723, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Bit width exceeds maximum (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@microchip_sgpio_register_bank._entry_ptr.34 = internal global ptr @microchip_sgpio_register_bank._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-%sput\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@sgpio_pctl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @sgpio_pctl_get_groups_count, ptr @sgpio_pctl_get_group_name, ptr @sgpio_pctl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinconf_generic_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@sgpio_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @sgpio_get_functions_count, ptr @sgpio_get_function_name, ptr @sgpio_get_function_groups, ptr @sgpio_pinmux_set_mux, ptr @sgpio_gpio_request_enable, ptr null, ptr @sgpio_gpio_set_direction, i8 0 }, [56 x i8] zeroinitializer }, align 32
@sgpio_confops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @sgpio_pinconf_get, ptr @sgpio_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr @pinconf_generic_dump_config }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SGPIO_%c_p%db%d\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register pinctrl\0A\00", [36 x i8] zeroinitializer }, align 32
@microchip_sgpio_irqchip = internal constant { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.43, ptr null, ptr null, ptr null, ptr null, ptr @microchip_sgpio_irq_ack, ptr @microchip_sgpio_irq_mask, ptr null, ptr @microchip_sgpio_irq_unmask, ptr null, ptr null, ptr null, ptr @microchip_sgpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@microchip_sgpio_register_bank.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@microchip_sgpio_register_bank.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@microchip_sgpio_register_bank._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.7, i32 810, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register: ret %d\0A\00", [36 x i8] zeroinitializer }, align 32
@microchip_sgpio_register_bank._entry_ptr.42 = internal global ptr @microchip_sgpio_register_bank._entry.40, section ".printk_index", align 4
@functions = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@sgpio_gpio_request_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.7, i32 403, ptr @.str.46, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Request port %d.%d: Port is not enabled\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sgpio_gpio_request_enable\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sgpio_gpio_request_enable._entry_ptr = internal global ptr @sgpio_gpio_request_enable._entry, section ".printk_index", align 4
@sgpio_readl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error reading sgpio reg %d\0A\00", [36 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@sgpio_writel.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error writing sgpio reg %d\0A\00", [36 x i8] zeroinitializer }, align 32
@properties_sparx5 = internal constant { %struct.sgpio_properties, [44 x i8] } { %struct.sgpio_properties { i32 2, i32 1, [10 x i8] c"\00\06&\04\05*2:>B" }, [44 x i8] zeroinitializer }, align 32
@properties_luton = internal constant { %struct.sgpio_properties, [44 x i8] } { %struct.sgpio_properties { i32 0, i32 0, [10 x i8] c"\00\09)*+\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@properties_ocelot = internal constant { %struct.sgpio_properties, [44 x i8] } { %struct.sgpio_properties { i32 1, i32 0, [10 x i8] c"\00\06&\04\05\00\00\00\00\00" }, [44 x i8] zeroinitializer }, align 32
@switch.table.sgpio_configure_bitstream = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 7, i32 3], [20 x i8] zeroinitializer }, align 32
@switch.table.sgpio_configure_bitstream.49 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 12, i32 384, i32 24], [20 x i8] zeroinitializer }, align 32
@switch.table.sgpio_configure_bitstream.50 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32, i32 1024, i32 64], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 8, i64 12, i64 17, i64 18]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.56 = private unnamed_addr constant [31 x i8] c"microchip_sgpio_pinctrl_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 917, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 919, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [30 x i8] c"microchip_sgpio_gpio_of_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 902, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 837, i32 61 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 839, i32 45 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 844, i32 43 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 847, i32 36 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 850, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 858, i32 15 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 872, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 886, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 534, i32 36 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 542, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 551, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 561, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 714, i32 39 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 715, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 722, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 728, i32 52 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 730, i32 24 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 730, i32 31 }
@___asan_gen_.173 = private unnamed_addr constant [15 x i8] c"sgpio_pctl_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 447, i32 33 }
@___asan_gen_.176 = private unnamed_addr constant [14 x i8] c"sgpio_pmx_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 410, i32 32 }
@___asan_gen_.179 = private unnamed_addr constant [14 x i8] c"sgpio_confops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 347, i32 33 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 750, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 759, i32 47 }
@___asan_gen_.188 = private unnamed_addr constant [24 x i8] c"microchip_sgpio_irqchip\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 664, i32 30 }
@___asan_gen_.191 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 808, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 810, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 101, i32 27 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 101, i32 43 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 402, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 151, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 163, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [18 x i8] c"properties_sparx5\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 95, i32 38 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"properties_luton\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 85, i32 38 }
@___asan_gen_.233 = private unnamed_addr constant [18 x i8] c"properties_ocelot\00", align 1
@___asan_gen_.234 = private constant [45 x i8] c"../drivers/pinctrl/pinctrl-microchip-sgpio.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 90, i32 38 }
@___asan_gen_.236 = private unnamed_addr constant [39 x i8] c"switch.table.sgpio_configure_bitstream\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [42 x i8] c"switch.table.sgpio_configure_bitstream.49\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [42 x i8] c"switch.table.sgpio_configure_bitstream.50\00", align 1
@llvm.compiler.used = appending global [74 x ptr] [ptr @__initcall__kmod_pinctrl_microchip_sgpio__300_925_microchip_sgpio_pinctrl_driver_init6, ptr @microchip_sgpio_get_ports._entry, ptr @microchip_sgpio_get_ports._entry.22, ptr @microchip_sgpio_get_ports._entry.25, ptr @microchip_sgpio_get_ports._entry_ptr, ptr @microchip_sgpio_get_ports._entry_ptr.24, ptr @microchip_sgpio_get_ports._entry_ptr.27, ptr @microchip_sgpio_probe._entry, ptr @microchip_sgpio_probe._entry.11, ptr @microchip_sgpio_probe._entry.14, ptr @microchip_sgpio_probe._entry_ptr, ptr @microchip_sgpio_probe._entry_ptr.13, ptr @microchip_sgpio_probe._entry_ptr.16, ptr @microchip_sgpio_register_bank._entry, ptr @microchip_sgpio_register_bank._entry.32, ptr @microchip_sgpio_register_bank._entry.40, ptr @microchip_sgpio_register_bank._entry_ptr, ptr @microchip_sgpio_register_bank._entry_ptr.34, ptr @microchip_sgpio_register_bank._entry_ptr.42, ptr @sgpio_gpio_request_enable._entry, ptr @sgpio_gpio_request_enable._entry_ptr, ptr @microchip_sgpio_pinctrl_driver, ptr @.str, ptr @microchip_sgpio_gpio_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @microchip_sgpio_probe._key, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @sgpio_pctl_ops, ptr @sgpio_pmx_ops, ptr @sgpio_confops, ptr @.str.38, ptr @.str.39, ptr @microchip_sgpio_irqchip, ptr @microchip_sgpio_register_bank.lock_key, ptr @microchip_sgpio_register_bank.request_key, ptr @.str.41, ptr @functions, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @properties_sparx5, ptr @properties_luton, ptr @properties_ocelot, ptr @switch.table.sgpio_configure_bitstream, ptr @switch.table.sgpio_configure_bitstream.49, ptr @switch.table.sgpio_configure_bitstream.50], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sgpio_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sgpio_gpio_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sgpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sgpio_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sgpio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sgpio_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sgpio_get_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sgpio_get_ports._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sgpio_get_ports._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sgpio_register_bank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sgpio_register_bank._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgpio_pctl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgpio_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgpio_confops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sgpio_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sgpio_register_bank.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sgpio_register_bank.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sgpio_register_bank._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @functions to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgpio_gpio_request_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @properties_sparx5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @properties_luton to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @properties_ocelot to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sgpio_configure_bitstream to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sgpio_configure_bitstream.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sgpio_configure_bitstream.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @microchip_sgpio_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @microchip_sgpio_pinctrl_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microchip_sgpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ngpios.i = alloca i32, align 4
  %range_params.i = alloca [64 x i32], align 4
  %regmap_config = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %regmap_config) #9
  %0 = call ptr @memset(ptr %regmap_config, i32 0, i32 172)
  %1 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_config, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %1, align 4
  %3 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_config, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %3, align 4
  %5 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_config, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %5, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 824, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %call.i, align 4
  %call.i151 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #9
  %cmp.i = icmp ugt ptr %call.i151, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call.i151 to i32
  %call8 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %8, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @reset_control_reset(ptr noundef %call.i151) #9
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #9
  %cmp.i152 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call11 to i32
  %call15 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %9, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call17 = tail call i32 @clk_get_rate(ptr noundef %call11) #9
  %clock = getelementptr inbounds %struct.sgpio_priv, ptr %call.i, i32 0, i32 5
  %call.i153 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef %clock, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool19.not = icmp eq i32 %call.i153, 0
  br i1 %tobool19.not, label %if.end16.if.end22_crit_edge, label %if.then20

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 12500000, ptr %clock, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end16.if.end22_crit_edge
  %11 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  %div = sdiv i32 %call17, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %div)
  %cmp25 = icmp ugt i32 %12, %div
  %or.cond = select i1 %cmp, i1 true, i1 %cmp25
  br i1 %or.cond, label %do.end, label %if.end28

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %12) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %call29 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %cmp.i154 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %call34 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call29, ptr noundef nonnull %regmap_config, ptr noundef nonnull @microchip_sgpio_probe._key, ptr noundef nonnull @.str.10) #9
  %regs35 = getelementptr inbounds %struct.sgpio_priv, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %regs35 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call34, ptr %regs35, align 4
  %cmp.i155 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  %call42 = call ptr @device_get_match_data(ptr noundef %dev1) #9
  %properties = getelementptr inbounds %struct.sgpio_priv, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call42, ptr %properties, align 4
  %is_input = getelementptr inbounds %struct.sgpio_priv, ptr %call.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %is_input to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %is_input, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %range_params.i) #9
  %20 = call ptr @memset(ptr %range_params.i, i32 255, i32 256)
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %19, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef 0) #9
  %21 = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp ne i32 %21, 0
  %22 = add i32 %call.i.i, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %22)
  %23 = icmp ult i32 %22, -63
  %24 = or i1 %23, %tobool.not.i
  br i1 %24, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i.i)
  %cmp4.i = icmp eq i32 %call.i.i, -22
  %cond.i = select i1 %cmp4.i, ptr @.str.20, ptr @.str.21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond.i, ptr noundef nonnull @.str.17) #12
  br label %microchip_sgpio_get_ports.exit.thread

if.end.i:                                         ; preds = %if.end41
  %call5.i = call i32 @device_property_read_u32_array(ptr noundef %19, ptr noundef nonnull @.str.17, ptr noundef nonnull %range_params.i, i32 noundef %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %for.body.lr.ph.i, label %do.end10.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %ports.i = getelementptr inbounds %struct.sgpio_priv, ptr %call.i, i32 0, i32 4
  br label %for.body.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.17, i32 noundef %call5.i) #12
  br label %microchip_sgpio_get_ports.exit.thread

for.body.i:                                       ; preds = %if.end21.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.057.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add25.i, %if.end21.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [64 x i32], ptr %range_params.i, i32 0, i32 %i.057.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.i = or i32 %i.057.i, 1
  %arrayidx13.i = getelementptr [64 x i32], ptr %range_params.i, i32 0, i32 %add.i
  %27 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp14.i = icmp sgt i32 %26, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %28)
  %cmp16.i = icmp sgt i32 %28, 31
  %or.cond55.i = or i1 %cmp14.i, %cmp16.i
  br i1 %or.cond55.i, label %do.end20.i, label %for.body.i.if.end21.i_crit_edge

for.body.i.if.end21.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

do.end20.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.26, i32 noundef %26, i32 noundef %28) #12
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end20.i, %for.body.i.if.end21.i_crit_edge
  %shl.neg.i = shl nsw i32 -1, %26
  %sub23.i = sub i32 31, %28
  %shr.i = lshr i32 -1, %sub23.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %29 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ports.i, align 4
  %or.i = or i32 %30, %and.i
  store i32 %or.i, ptr %ports.i, align 4
  %add25.i = add i32 %i.057.i, 2
  %cmp12.i = icmp slt i32 %add25.i, %call.i.i
  br i1 %cmp12.i, label %if.end21.i.for.body.i_crit_edge, label %if.end46

if.end21.i.for.body.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

microchip_sgpio_get_ports.exit.thread:            ; preds = %do.end10.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call5.i, %do.end10.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %range_params.i) #9
  br label %cleanup

if.end46:                                         ; preds = %if.end21.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %range_params.i) #9
  %call47 = call i32 @device_get_child_node_count(ptr noundef %dev1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 2
  br i1 %cmp48.not, label %if.end53, label %do.end52

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call47) #12
  br label %cleanup

if.end53:                                         ; preds = %if.end46
  %call54 = call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef null) #9
  %tobool55.not182 = icmp eq ptr %call54, null
  br i1 %tobool55.not182, label %if.end53.for.end_crit_edge, label %for.body.lr.ph

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end53
  %in.i = getelementptr inbounds %struct.sgpio_priv, ptr %call.i, i32 0, i32 1
  %out.i = getelementptr inbounds %struct.sgpio_priv, ptr %call.i, i32 0, i32 2
  %bitcount192.i = getelementptr inbounds %struct.sgpio_priv, ptr %call.i, i32 0, i32 3
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fwnode.0185 = phi ptr [ %call54, %for.body.lr.ph ], [ %call60, %for.inc.for.body_crit_edge ]
  %i.0183 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ngpios.i) #9
  %31 = ptrtoint ptr %ngpios.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %ngpios.i, align 4, !annotation !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0183)
  %cmp.i156 = icmp eq i32 %i.0183, 0
  %cond.i157 = select i1 %cmp.i156, ptr %in.i, ptr %out.i
  %32 = ptrtoint ptr %cond.i157 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %cond.i157, align 4
  %call.i.i158 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %fwnode.0185, ptr noundef nonnull @.str.28, ptr noundef nonnull %ngpios.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i158)
  %tobool.not.i159 = icmp eq i32 %call.i.i158, 0
  br i1 %tobool.not.i159, label %if.end.i160, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %i.0183) #12
  %33 = ptrtoint ptr %ngpios.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 64, ptr %ngpios.i, align 4
  %34 = ptrtoint ptr %bitcount192.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %bitcount192.i, align 4
  br label %if.end8.i

if.end.i160:                                      ; preds = %for.body
  %35 = ptrtoint ptr %ngpios.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr.i = load i32, ptr %ngpios.i, align 4
  %div185.i = lshr i32 %.pr.i, 5
  %36 = ptrtoint ptr %bitcount192.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div185.i, ptr %bitcount192.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %.pr.i)
  %cmp3.i = icmp ugt i32 %.pr.i, 159
  br i1 %cmp3.i, label %do.end7.i, label %if.end.i160.if.end8.i_crit_edge

if.end.i160.if.end8.i_crit_edge:                  ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

do.end7.i:                                        ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef 4) #12
  br label %microchip_sgpio_register_bank.exit.thread

if.end8.i:                                        ; preds = %if.end.i160.if.end8.i_crit_edge, %if.end.thread.i
  %pctl_desc9.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 3
  %37 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end8.i.dev_name.exit.i_crit_edge

if.end8.i.dev_name.exit.i_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end8.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %40, %if.end.i.i ], [ %38, %if.end8.i.dev_name.exit.i_crit_edge ]
  %is_input.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 1
  %41 = ptrtoint ptr %is_input.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_input.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool11.not.i = icmp eq i8 %42, 0
  %cond12.i = select i1 %tobool11.not.i, ptr @.str.37, ptr @.str.36
  %call13.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.35, ptr noundef %retval.0.i.i, ptr noundef nonnull %cond12.i) #9
  %43 = ptrtoint ptr %pctl_desc9.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call13.i, ptr %pctl_desc9.i, align 4
  %pctlops.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %pctlops.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @sgpio_pctl_ops, ptr %pctlops.i, align 4
  %pmxops.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %pmxops.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @sgpio_pmx_ops, ptr %pmxops.i, align 4
  %confops.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 3, i32 5
  %46 = ptrtoint ptr %confops.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @sgpio_confops, ptr %confops.i, align 4
  %owner.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 3, i32 6
  %47 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %owner.i, align 4
  %48 = ptrtoint ptr %ngpios.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ngpios.i, align 4
  %mul.i = mul i32 %49, 12
  %call.i187.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %mul.i, i32 noundef 3520) #9
  %tobool15.not.i = icmp eq ptr %call.i187.i, null
  br i1 %tobool15.not.i, label %dev_name.exit.i.microchip_sgpio_register_bank.exit.thread_crit_edge, label %if.end17.i

dev_name.exit.i.microchip_sgpio_register_bank.exit.thread_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %microchip_sgpio_register_bank.exit.thread

if.end17.i:                                       ; preds = %dev_name.exit.i
  %50 = ptrtoint ptr %ngpios.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ngpios.i, align 4
  %npins.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %npins.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %npins.i, align 4
  %pins18.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %pins18.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i187.i, ptr %pins18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp19196.not.i = icmp eq i32 %51, 0
  br i1 %cmp19196.not.i, label %if.end17.i.for.end.i_crit_edge, label %if.end17.i.for.body.i162_crit_edge

if.end17.i.for.body.i162_crit_edge:               ; preds = %if.end17.i
  br label %for.body.i162

if.end17.i.for.end.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i162
  %inc.i = add nuw i32 %i.0197.i, 1
  %54 = ptrtoint ptr %ngpios.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ngpios.i, align 4
  %cmp19.i = icmp ult i32 %inc.i, %55
  br i1 %cmp19.i, label %for.cond.i.for.body.i162_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.i.for.body.i162_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i162

for.body.i162:                                    ; preds = %for.cond.i.for.body.i162_crit_edge, %if.end17.i.for.body.i162_crit_edge
  %i.0197.i = phi i32 [ %inc.i, %for.cond.i.for.body.i162_crit_edge ], [ 0, %if.end17.i.for.body.i162_crit_edge ]
  %56 = ptrtoint ptr %bitcount192.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bitcount192.i, align 4
  %i.0197.i.frozen = freeze i32 %i.0197.i
  %.frozen = freeze i32 %57
  %div.i.i = udiv i32 %i.0197.i.frozen, %.frozen
  %58 = mul i32 %div.i.i, %.frozen
  %rem.i.i.decomposed = sub i32 %i.0197.i.frozen, %58
  %arrayidx.i161 = getelementptr %struct.pinctrl_pin_desc, ptr %call.i187.i, i32 %i.0197.i
  %59 = ptrtoint ptr %arrayidx.i161 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %i.0197.i, ptr %arrayidx.i161, align 4
  %60 = ptrtoint ptr %is_input.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %is_input.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool21.not.i = icmp eq i8 %61, 0
  %cond22.i = select i1 %tobool21.not.i, i32 79, i32 73
  %conv.i = and i32 %div.i.i, 255
  %conv23.i = and i32 %rem.i.i.decomposed, 255
  %call24.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.38, i32 noundef %cond22.i, i32 noundef %conv.i, i32 noundef %conv23.i) #9
  %name26.i = getelementptr %struct.pinctrl_pin_desc, ptr %call.i187.i, i32 %i.0197.i, i32 1
  %62 = ptrtoint ptr %name26.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call24.i, ptr %name26.i, align 4
  %tobool29.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool29.not.i, label %for.body.i162.microchip_sgpio_register_bank.exit.thread_crit_edge, label %for.cond.i

for.body.i162.microchip_sgpio_register_bank.exit.thread_crit_edge: ; preds = %for.body.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %microchip_sgpio_register_bank.exit.thread

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %if.end17.i.for.end.i_crit_edge
  %call32.i = call ptr @devm_pinctrl_register(ptr noundef %dev1, ptr noundef %pctl_desc9.i, ptr noundef %cond.i157) #9
  %cmp.i.i = icmp ugt ptr %call32.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %microchip_sgpio_register_bank.exit, label %if.end37.i

if.end37.i:                                       ; preds = %for.end.i
  %gpio.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2
  %63 = ptrtoint ptr %pctl_desc9.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pctl_desc9.i, align 4
  %65 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %gpio.i, align 4
  %parent.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 2
  %66 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %dev1, ptr %parent.i, align 4
  %cmp.i.i.i = icmp ugt ptr %fwnode.0185, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end37.i.is_of_node.exit.thread.i_crit_edge, label %is_of_node.exit.i

if.end37.i.is_of_node.exit.thread.i_crit_edge:    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_of_node.exit.thread.i

is_of_node.exit.i:                                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %fwnode.0185, i32 0, i32 1
  %67 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i.i, align 4
  %cmp.i188.i = icmp eq ptr %68, @of_fwnode_ops
  %add.ptr.i = getelementptr i8, ptr %fwnode.0185, i32 -12
  %spec.select.i = select i1 %cmp.i188.i, ptr %add.ptr.i, ptr null
  br label %is_of_node.exit.thread.i

is_of_node.exit.thread.i:                         ; preds = %is_of_node.exit.i, %if.end37.i.is_of_node.exit.thread.i_crit_edge
  %69 = phi ptr [ null, %if.end37.i.is_of_node.exit.thread.i_crit_edge ], [ %spec.select.i, %is_of_node.exit.i ]
  %of_node.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 39
  %70 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %of_node.i, align 4
  %owner46.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 4
  %71 = ptrtoint ptr %owner46.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %owner46.i, align 4
  %get_direction.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 7
  %72 = ptrtoint ptr %get_direction.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @microchip_sgpio_get_direction, ptr %get_direction.i, align 4
  %direction_input.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 8
  %73 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @microchip_sgpio_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 9
  %74 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @microchip_sgpio_direction_output, ptr %direction_output.i, align 4
  %get.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 10
  %75 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @microchip_sgpio_get_value, ptr %get.i, align 4
  %set.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 12
  %76 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @microchip_sgpio_set_value, ptr %set.i, align 4
  %request.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 5
  %77 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @gpiochip_generic_request, ptr %request.i, align 4
  %free.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 6
  %78 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @gpiochip_generic_free, ptr %free.i, align 4
  %of_xlate.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 41
  %79 = ptrtoint ptr %of_xlate.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @microchip_sgpio_of_xlate, ptr %of_xlate.i, align 4
  %of_gpio_n_cells.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 40
  %80 = ptrtoint ptr %of_gpio_n_cells.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 3, ptr %of_gpio_n_cells.i, align 4
  %base.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 19
  %81 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %base.i, align 4
  %82 = ptrtoint ptr %ngpios.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ngpios.i, align 4
  %conv47.i = trunc i32 %83 to i16
  %ngpio.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 20
  %84 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv47.i, ptr %ngpio.i, align 4
  %85 = ptrtoint ptr %is_input.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %is_input.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool49.not.i = icmp eq i8 %86, 0
  br i1 %tobool49.not.i, label %is_of_node.exit.thread.i.if.end83.i_crit_edge, label %land.lhs.true.i

is_of_node.exit.thread.i.if.end83.i_crit_edge:    ; preds = %is_of_node.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

land.lhs.true.i:                                  ; preds = %is_of_node.exit.thread.i
  %87 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %properties, align 4
  %flags.i = getelementptr inbounds %struct.sgpio_properties, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags.i, align 4
  %and.i163 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %tobool51.not.i = icmp eq i32 %and.i163, 0
  br i1 %tobool51.not.i, label %land.lhs.true.i.if.end83.i_crit_edge, label %if.then52.i

land.lhs.true.i.if.end83.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

if.then52.i:                                      ; preds = %land.lhs.true.i
  %call53.i = call i32 @fwnode_irq_get(ptr noundef nonnull %fwnode.0185, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.then52.i.if.end83.i_crit_edge, label %if.then55.i

if.then52.i.if.end83.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

if.then55.i:                                      ; preds = %if.then52.i
  %irq56.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 37
  %call57.i = call ptr @devm_kmemdup(ptr noundef %dev1, ptr noundef nonnull @microchip_sgpio_irqchip, i32 noundef 136, i32 noundef 3264) #9
  %91 = ptrtoint ptr %irq56.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call57.i, ptr %irq56.i, align 4
  %tobool59.not.i = icmp eq ptr %call57.i, null
  br i1 %tobool59.not.i, label %if.then55.i.microchip_sgpio_register_bank.exit.thread_crit_edge, label %if.end61.i

if.then55.i.microchip_sgpio_register_bank.exit.thread_crit_edge: ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %microchip_sgpio_register_bank.exit.thread

if.end61.i:                                       ; preds = %if.then55.i
  %parent_handler.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 37, i32 13
  %92 = ptrtoint ptr %parent_handler.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @sgpio_irq_handler, ptr %parent_handler.i, align 4
  %num_parents.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 37, i32 15
  %93 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %num_parents.i, align 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #9
  %parents.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 37, i32 16
  %94 = ptrtoint ptr %parents.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call5.i.i.i, ptr %parents.i, align 4
  %tobool64.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool64.not.i, label %if.end61.i.microchip_sgpio_register_bank.exit.thread_crit_edge, label %if.end66.i

if.end61.i.microchip_sgpio_register_bank.exit.thread_crit_edge: ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %microchip_sgpio_register_bank.exit.thread

if.end66.i:                                       ; preds = %if.end61.i
  %95 = ptrtoint ptr %call5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call53.i, ptr %call5.i.i.i, align 4
  %default_type.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 37, i32 10
  %96 = ptrtoint ptr %default_type.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %default_type.i, align 4
  %handler.i = getelementptr inbounds %struct.sgpio_bank, ptr %cond.i157, i32 0, i32 2, i32 37, i32 9
  %97 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @handle_bad_irq, ptr %handler.i, align 4
  %98 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %properties, align 4
  %arrayidx.i.i.i = getelementptr %struct.sgpio_properties, ptr %99, i32 0, i32 2, i32 8
  %100 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %101 to i32
  %102 = ptrtoint ptr %regs35 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs35, align 4
  %call.i.i.i = call i32 @regmap_get_reg_stride(ptr noundef %103) #9
  %mul.i.i.i = mul i32 %call.i.i.i, %conv.i.i.i
  %104 = ptrtoint ptr %regs35 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs35, align 4
  %call1.i.i = call i32 @regmap_write(ptr noundef %105, i32 noundef %mul.i.i.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i189.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i189.i, label %if.end66.i.sgpio_writel.exit.i_crit_edge, label %land.rhs.i190.i

if.end66.i.sgpio_writel.exit.i_crit_edge:         ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_writel.exit.i

land.rhs.i190.i:                                  ; preds = %if.end66.i
  %.b41.i.i = load i1, ptr @sgpio_writel.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i190.i.sgpio_writel.exit.i_crit_edge, label %if.then.i.i, !prof !122

land.rhs.i190.i.sgpio_writel.exit.i_crit_edge:    ; preds = %land.rhs.i190.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_writel.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i190.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sgpio_writel.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 163, i32 noundef 9, ptr noundef nonnull @.str.48, i32 noundef %call1.i.i) #9
  br label %sgpio_writel.exit.i

sgpio_writel.exit.i:                              ; preds = %if.then.i.i, %land.rhs.i190.i.sgpio_writel.exit.i_crit_edge, %if.end66.i.sgpio_writel.exit.i_crit_edge
  %106 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %properties, align 4
  %arrayidx.i.i.1.i = getelementptr %struct.sgpio_properties, ptr %107, i32 0, i32 2, i32 8
  %108 = ptrtoint ptr %arrayidx.i.i.1.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i.i.1.i, align 1
  %conv.i.i.1.i = zext i8 %109 to i32
  %add.i.i.1.i = add nuw nsw i32 %conv.i.i.1.i, 1
  %110 = ptrtoint ptr %regs35 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs35, align 4
  %call.i.i.1.i = call i32 @regmap_get_reg_stride(ptr noundef %111) #9
  %mul.i.i.1.i = mul i32 %add.i.i.1.i, %call.i.i.1.i
  %112 = ptrtoint ptr %regs35 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs35, align 4
  %call1.i.1.i = call i32 @regmap_write(ptr noundef %113, i32 noundef %mul.i.i.1.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1.i)
  %tobool.not.i189.1.i = icmp eq i32 %call1.i.1.i, 0
  br i1 %tobool.not.i189.1.i, label %sgpio_writel.exit.i.sgpio_writel.exit.1.i_crit_edge, label %land.rhs.i190.1.i

sgpio_writel.exit.i.sgpio_writel.exit.1.i_crit_edge: ; preds = %sgpio_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_writel.exit.1.i

land.rhs.i190.1.i:                                ; preds = %sgpio_writel.exit.i
  %.b41.i.1.i = load i1, ptr @sgpio_writel.__already_done, align 1
  br i1 %.b41.i.1.i, label %land.rhs.i190.1.i.sgpio_writel.exit.1.i_crit_edge, label %if.then.i.1.i, !prof !122

land.rhs.i190.1.i.sgpio_writel.exit.1.i_crit_edge: ; preds = %land.rhs.i190.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_writel.exit.1.i

if.then.i.1.i:                                    ; preds = %land.rhs.i190.1.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sgpio_writel.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 163, i32 noundef 9, ptr noundef nonnull @.str.48, i32 noundef %call1.i.1.i) #9
  br label %sgpio_writel.exit.1.i

sgpio_writel.exit.1.i:                            ; preds = %if.then.i.1.i, %land.rhs.i190.1.i.sgpio_writel.exit.1.i_crit_edge, %sgpio_writel.exit.i.sgpio_writel.exit.1.i_crit_edge
  %114 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %properties, align 4
  %arrayidx.i.i.2.i = getelementptr %struct.sgpio_properties, ptr %115, i32 0, i32 2, i32 8
  %116 = ptrtoint ptr %arrayidx.i.i.2.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i.i.2.i, align 1
  %conv.i.i.2.i = zext i8 %117 to i32
  %add.i.i.2.i = add nuw nsw i32 %conv.i.i.2.i, 2
  %118 = ptrtoint ptr %regs35 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs35, align 4
  %call.i.i.2.i = call i32 @regmap_get_reg_stride(ptr noundef %119) #9
  %mul.i.i.2.i = mul i32 %add.i.i.2.i, %call.i.i.2.i
  %120 = ptrtoint ptr %regs35 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs35, align 4
  %call1.i.2.i = call i32 @regmap_write(ptr noundef %121, i32 noundef %mul.i.i.2.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2.i)
  %tobool.not.i189.2.i = icmp eq i32 %call1.i.2.i, 0
  br i1 %tobool.not.i189.2.i, label %sgpio_writel.exit.1.i.sgpio_writel.exit.2.i_crit_edge, label %land.rhs.i190.2.i

sgpio_writel.exit.1.i.sgpio_writel.exit.2.i_crit_edge: ; preds = %sgpio_writel.exit.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_writel.exit.2.i

land.rhs.i190.2.i:                                ; preds = %sgpio_writel.exit.1.i
  %.b41.i.2.i = load i1, ptr @sgpio_writel.__already_done, align 1
  br i1 %.b41.i.2.i, label %land.rhs.i190.2.i.sgpio_writel.exit.2.i_crit_edge, label %if.then.i.2.i, !prof !122

land.rhs.i190.2.i.sgpio_writel.exit.2.i_crit_edge: ; preds = %land.rhs.i190.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_writel.exit.2.i

if.then.i.2.i:                                    ; preds = %land.rhs.i190.2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sgpio_writel.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 163, i32 noundef 9, ptr noundef nonnull @.str.48, i32 noundef %call1.i.2.i) #9
  br label %sgpio_writel.exit.2.i

sgpio_writel.exit.2.i:                            ; preds = %if.then.i.2.i, %land.rhs.i190.2.i.sgpio_writel.exit.2.i_crit_edge, %sgpio_writel.exit.1.i.sgpio_writel.exit.2.i_crit_edge
  %122 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %properties, align 4
  %arrayidx.i.i.3.i = getelementptr %struct.sgpio_properties, ptr %123, i32 0, i32 2, i32 8
  %124 = ptrtoint ptr %arrayidx.i.i.3.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.i.i.3.i, align 1
  %conv.i.i.3.i = zext i8 %125 to i32
  %add.i.i.3.i = add nuw nsw i32 %conv.i.i.3.i, 3
  %126 = ptrtoint ptr %regs35 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs35, align 4
  %call.i.i.3.i = call i32 @regmap_get_reg_stride(ptr noundef %127) #9
  %mul.i.i.3.i = mul i32 %add.i.i.3.i, %call.i.i.3.i
  %128 = ptrtoint ptr %regs35 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs35, align 4
  %call1.i.3.i = call i32 @regmap_write(ptr noundef %129, i32 noundef %mul.i.i.3.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3.i)
  %tobool.not.i189.3.i = icmp eq i32 %call1.i.3.i, 0
  br i1 %tobool.not.i189.3.i, label %sgpio_writel.exit.2.i.sgpio_writel.exit.3.i_crit_edge, label %land.rhs.i190.3.i

sgpio_writel.exit.2.i.sgpio_writel.exit.3.i_crit_edge: ; preds = %sgpio_writel.exit.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_writel.exit.3.i

land.rhs.i190.3.i:                                ; preds = %sgpio_writel.exit.2.i
  %.b41.i.3.i = load i1, ptr @sgpio_writel.__already_done, align 1
  br i1 %.b41.i.3.i, label %land.rhs.i190.3.i.sgpio_writel.exit.3.i_crit_edge, label %if.then.i.3.i, !prof !122

land.rhs.i190.3.i.sgpio_writel.exit.3.i_crit_edge: ; preds = %land.rhs.i190.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_writel.exit.3.i

if.then.i.3.i:                                    ; preds = %land.rhs.i190.3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sgpio_writel.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 163, i32 noundef 9, ptr noundef nonnull @.str.48, i32 noundef %call1.i.3.i) #9
  br label %sgpio_writel.exit.3.i

sgpio_writel.exit.3.i:                            ; preds = %if.then.i.3.i, %land.rhs.i190.3.i.sgpio_writel.exit.3.i_crit_edge, %sgpio_writel.exit.2.i.sgpio_writel.exit.3.i_crit_edge
  call fastcc void @sgpio_clrsetbits(ptr noundef nonnull %call.i, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 1) #9
  br label %if.end83.i

if.end83.i:                                       ; preds = %sgpio_writel.exit.3.i, %if.then52.i.if.end83.i_crit_edge, %land.lhs.true.i.if.end83.i_crit_edge, %is_of_node.exit.thread.i.if.end83.i_crit_edge
  %call85.i = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef %gpio.i, ptr noundef %cond.i157, ptr noundef nonnull @microchip_sgpio_register_bank.lock_key, ptr noundef nonnull @microchip_sgpio_register_bank.request_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %microchip_sgpio_register_bank.exit.thread171, label %do.end90.i

microchip_sgpio_register_bank.exit.thread171:     ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ngpios.i) #9
  br label %for.inc

do.end90.i:                                       ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41, i32 noundef %call85.i) #12
  br label %microchip_sgpio_register_bank.exit.thread

microchip_sgpio_register_bank.exit.thread:        ; preds = %do.end90.i, %if.end61.i.microchip_sgpio_register_bank.exit.thread_crit_edge, %if.then55.i.microchip_sgpio_register_bank.exit.thread_crit_edge, %for.body.i162.microchip_sgpio_register_bank.exit.thread_crit_edge, %dev_name.exit.i.microchip_sgpio_register_bank.exit.thread_crit_edge, %do.end7.i
  %retval.5.i.ph = phi i32 [ %call85.i, %do.end90.i ], [ -22, %do.end7.i ], [ -12, %for.body.i162.microchip_sgpio_register_bank.exit.thread_crit_edge ], [ -12, %if.then55.i.microchip_sgpio_register_bank.exit.thread_crit_edge ], [ -12, %if.end61.i.microchip_sgpio_register_bank.exit.thread_crit_edge ], [ -12, %dev_name.exit.i.microchip_sgpio_register_bank.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ngpios.i) #9
  br label %if.then58

microchip_sgpio_register_bank.exit:               ; preds = %for.end.i
  %130 = ptrtoint ptr %call32.i to i32
  %call36.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %130, ptr noundef nonnull @.str.39) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ngpios.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool57.not = icmp eq i32 %call36.i, 0
  br i1 %tobool57.not, label %microchip_sgpio_register_bank.exit.for.inc_crit_edge, label %microchip_sgpio_register_bank.exit.if.then58_crit_edge

microchip_sgpio_register_bank.exit.if.then58_crit_edge: ; preds = %microchip_sgpio_register_bank.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then58

microchip_sgpio_register_bank.exit.for.inc_crit_edge: ; preds = %microchip_sgpio_register_bank.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then58:                                        ; preds = %microchip_sgpio_register_bank.exit.if.then58_crit_edge, %microchip_sgpio_register_bank.exit.thread
  %retval.5.i170 = phi i32 [ %retval.5.i.ph, %microchip_sgpio_register_bank.exit.thread ], [ %call36.i, %microchip_sgpio_register_bank.exit.if.then58_crit_edge ]
  call void @fwnode_handle_put(ptr noundef nonnull %fwnode.0185) #9
  br label %cleanup

for.inc:                                          ; preds = %microchip_sgpio_register_bank.exit.for.inc_crit_edge, %microchip_sgpio_register_bank.exit.thread171
  %inc = add i32 %i.0183, 1
  %call60 = call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef nonnull %fwnode.0185) #9
  %tobool55.not = icmp eq ptr %call60, null
  br i1 %tobool55.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end53.for.end_crit_edge
  %ngpio = getelementptr inbounds %struct.sgpio_priv, ptr %call.i, i32 0, i32 1, i32 2, i32 20
  %131 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %ngpio, align 4
  %ngpio63 = getelementptr inbounds %struct.sgpio_priv, ptr %call.i, i32 0, i32 2, i32 2, i32 20
  %133 = ptrtoint ptr %ngpio63 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %ngpio63, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %132, i16 %134)
  %cmp65.not = icmp eq i16 %132, %134
  br i1 %cmp65.not, label %if.end71, label %do.end70

do.end70:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.end71:                                         ; preds = %for.end
  call fastcc void @sgpio_configure_bitstream(ptr noundef nonnull %call.i)
  %135 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %clock, align 4
  %div73 = udiv i32 %call17, %136
  %137 = call i32 @llvm.umax.i32(i32 %div73, i32 2)
  call fastcc void @sgpio_configure_clock(ptr noundef nonnull %call.i, i32 noundef %137)
  br label %for.body80

for.body80:                                       ; preds = %sgpio_writel.exit.for.body80_crit_edge, %if.end71
  %port.0187 = phi i32 [ 0, %if.end71 ], [ %inc82, %sgpio_writel.exit.for.body80_crit_edge ]
  %138 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %properties, align 4
  %arrayidx.i.i = getelementptr %struct.sgpio_properties, ptr %139, i32 0, i32 2, i32 1
  %140 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %141 to i32
  %add.i.i = add nuw nsw i32 %port.0187, %conv.i.i
  %142 = ptrtoint ptr %regs35 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs35, align 4
  %call.i.i164 = call i32 @regmap_get_reg_stride(ptr noundef %143) #9
  %mul.i.i = mul i32 %add.i.i, %call.i.i164
  %144 = ptrtoint ptr %regs35 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs35, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %145, i32 noundef %mul.i.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i165 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i165, label %for.body80.sgpio_writel.exit_crit_edge, label %land.rhs.i

for.body80.sgpio_writel.exit_crit_edge:           ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_writel.exit

land.rhs.i:                                       ; preds = %for.body80
  %.b41.i = load i1, ptr @sgpio_writel.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.sgpio_writel.exit_crit_edge, label %if.then.i, !prof !122

land.rhs.i.sgpio_writel.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_writel.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sgpio_writel.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 163, i32 noundef 9, ptr noundef nonnull @.str.48, i32 noundef %call1.i) #9
  br label %sgpio_writel.exit

sgpio_writel.exit:                                ; preds = %if.then.i, %land.rhs.i.sgpio_writel.exit_crit_edge, %for.body80.sgpio_writel.exit_crit_edge
  %inc82 = add nuw nsw i32 %port.0187, 1
  %exitcond.not = icmp eq i32 %inc82, 32
  br i1 %exitcond.not, label %for.end83, label %sgpio_writel.exit.for.body80_crit_edge

sgpio_writel.exit.for.body80_crit_edge:           ; preds = %sgpio_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body80

for.end83:                                        ; preds = %sgpio_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  %146 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ports.i, align 4
  call fastcc void @sgpio_writel(ptr noundef nonnull %call.i, i32 noundef %147, i32 noundef 2, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %for.end83, %do.end70, %if.then58, %do.end52, %microchip_sgpio_get_ports.exit.thread, %if.then38, %if.then31, %do.end, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then6 ], [ %call15, %if.then13 ], [ -22, %do.end ], [ %13, %if.then31 ], [ %15, %if.then38 ], [ -22, %do.end52 ], [ %retval.5.i170, %if.then58 ], [ -34, %do.end70 ], [ 0, %for.end83 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %microchip_sgpio_get_ports.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %regmap_config) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sgpio_configure_bitstream(ptr nocapture noundef readonly %priv) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %properties = getelementptr inbounds %struct.sgpio_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %properties, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bitcount = getelementptr inbounds %struct.sgpio_priv, ptr %priv, i32 0, i32 3
  %5 = ptrtoint ptr %bitcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bitcount, align 4
  %sub = add i32 %6, 511
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.sgpio_configure_bitstream, i32 0, i32 %3
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep84 = getelementptr inbounds [3 x i32], ptr @switch.table.sgpio_configure_bitstream.49, i32 0, i32 %3
  %8 = ptrtoint ptr %switch.gep84 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load85 = load i32, ptr %switch.gep84, align 4
  %switch.gep86 = getelementptr inbounds [3 x i32], ptr @switch.table.sgpio_configure_bitstream.50, i32 0, i32 %3
  %9 = ptrtoint ptr %switch.gep86 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load87 = load i32, ptr %switch.gep86, align 4
  %shl63 = shl i32 %sub, %switch.load
  %and64 = and i32 %shl63, %switch.load85
  %or65 = or i32 %and64, %switch.load87
  tail call fastcc void @sgpio_clrsetbits(ptr noundef %priv, i32 noundef 3, i32 noundef 0, i32 noundef %switch.load85, i32 noundef %or65)
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sgpio_configure_clock(ptr nocapture noundef readonly %priv, i32 noundef %clkfrq) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %properties = getelementptr inbounds %struct.sgpio_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %properties, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %do.end12
    i32 1, label %do.end35
    i32 2, label %do.end60
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and13 = and i32 %clkfrq, 4095
  br label %sw.epilog

do.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shl37 = shl i32 %clkfrq, 8
  %and38 = and i32 %shl37, 1048320
  br label %sw.epilog

do.end60:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shl62 = shl i32 %clkfrq, 8
  %and63 = and i32 %shl62, 1048320
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end60, %do.end35, %do.end12
  %set.0 = phi i32 [ %and63, %do.end60 ], [ %and38, %do.end35 ], [ %and13, %do.end12 ]
  %clr.0 = phi i32 [ 1048320, %do.end60 ], [ 1048320, %do.end35 ], [ 4095, %do.end12 ]
  tail call fastcc void @sgpio_clrsetbits(ptr noundef %priv, i32 noundef 4, i32 noundef 0, i32 noundef %clr.0, i32 noundef %set.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sgpio_writel(ptr nocapture noundef readonly %priv, i32 noundef %val, i32 noundef %rno, i32 noundef %off) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %properties.i = getelementptr inbounds %struct.sgpio_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %properties.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %properties.i, align 4
  %arrayidx.i = getelementptr %struct.sgpio_properties, ptr %1, i32 0, i32 2, i32 %rno
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %3 to i32
  %add.i = add i32 %conv.i, %off
  %regs.i = getelementptr inbounds %struct.sgpio_priv, ptr %priv, i32 0, i32 6
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %call.i = tail call i32 @regmap_get_reg_stride(ptr noundef %5) #9
  %mul.i = mul i32 %add.i, %call.i
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %mul.i, i32 noundef %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b41 = load i1, ptr @sgpio_writel.__already_done, align 1
  br i1 %.b41, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !122

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sgpio_writel.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 163, i32 noundef 9, ptr noundef nonnull @.str.48, i32 noundef %call1) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microchip_sgpio_get_direction(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  %is_input = getelementptr inbounds %struct.sgpio_bank, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %is_input to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_input, align 4, !range !121
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microchip_sgpio_direction_input(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  %is_input = getelementptr inbounds %struct.sgpio_bank, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %is_input to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_input, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 -22, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microchip_sgpio_direction_output(ptr noundef %gc, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %is_input = getelementptr inbounds %struct.sgpio_bank, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %is_input to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_input, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bitcount.i = getelementptr inbounds %struct.sgpio_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bitcount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bitcount.i, align 4
  %.frozen = freeze i32 %5
  %div.i = udiv i32 %gpio, %.frozen
  %6 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %gpio, %6
  %conv.i6 = and i32 %rem.i.decomposed, 255
  %mul.i = mul nuw nsw i32 %conv.i6, 3
  %properties.i = getelementptr inbounds %struct.sgpio_priv, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %properties.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %properties.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %10, label %if.end.cleanup_crit_edge [
    i32 0, label %do.body5.i
    i32 1, label %do.end95.i
    i32 2, label %do.end150.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl nuw i32 1, %mul.i
  %shl25.i = shl i32 %value, %mul.i
  %and17.i = and i32 %shl.i, 4095
  %and44.i = and i32 %shl25.i, 4095
  br label %sw.epilog.i

do.end95.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %shl80.i = shl i32 %value, %mul.i
  %shl71.i = shl i32 4096, %mul.i
  %and72.i = and i32 %shl71.i, 16773120
  %shl98.i = shl i32 %shl80.i, 12
  %and99.i = and i32 %shl98.i, 16773120
  br label %sw.epilog.i

do.end150.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %shl135.i = shl i32 %value, %mul.i
  %shl126.i = shl i32 4096, %mul.i
  %and127.i = and i32 %shl126.i, 16773120
  %shl153.i = shl i32 %shl135.i, 12
  %and154.i = and i32 %shl153.i, 16773120
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end150.i, %do.end95.i, %do.body5.i
  %set.0.i = phi i32 [ %and154.i, %do.end150.i ], [ %and99.i, %do.end95.i ], [ %and44.i, %do.body5.i ]
  %clr.0.i = phi i32 [ %and127.i, %do.end150.i ], [ %and72.i, %do.end95.i ], [ %and17.i, %do.body5.i ]
  %conv155.i = and i32 %div.i, 255
  tail call fastcc void @sgpio_clrsetbits(ptr noundef %1, i32 noundef 1, i32 noundef %conv155.i, i32 noundef %clr.0.i, i32 noundef %set.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.epilog.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microchip_sgpio_get_value(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %addr = alloca %struct.sgpio_port_addr, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr) #9
  %2 = getelementptr inbounds %struct.sgpio_port_addr, ptr %addr, i32 0, i32 1
  %bitcount.i = getelementptr inbounds %struct.sgpio_priv, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %bitcount.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bitcount.i, align 4
  %.frozen = freeze i32 %4
  %div.i = udiv i32 %gpio, %.frozen
  %conv.i = trunc i32 %div.i to i8
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %addr, align 1
  %6 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %gpio, %6
  %conv2.i = trunc i32 %rem.i.decomposed to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv2.i, ptr %2, align 1
  %is_input = getelementptr inbounds %struct.sgpio_bank, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %is_input to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_input, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %conv.i8 = and i32 %rem.i.decomposed, 255
  %properties.i.i.i = getelementptr inbounds %struct.sgpio_priv, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %properties.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.sgpio_properties, ptr %11, i32 0, i32 2, i32 0
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %13 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i8, %conv.i.i.i
  %regs.i.i.i = getelementptr inbounds %struct.sgpio_priv, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_get_reg_stride(ptr noundef %15) #9
  %mul.i.i.i = mul i32 %add.i.i.i, %call.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %16 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %val.i.i, align 4
  %17 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i.i, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %18, i32 noundef %mul.i.i.i, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %cond.true.sgpio_input_get.exit_crit_edge, label %land.rhs.i.i

cond.true.sgpio_input_get.exit_crit_edge:         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_input_get.exit

land.rhs.i.i:                                     ; preds = %cond.true
  %.b41.i.i = load i1, ptr @sgpio_readl.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sgpio_input_get.exit_crit_edge, label %if.then.i.i, !prof !122

land.rhs.i.i.sgpio_input_get.exit_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_input_get.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sgpio_readl.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 151, i32 noundef 9, ptr noundef nonnull @.str.47, i32 noundef %call1.i.i) #9
  br label %sgpio_input_get.exit

sgpio_input_get.exit:                             ; preds = %if.then.i.i, %land.rhs.i.i.sgpio_input_get.exit_crit_edge, %cond.true.sgpio_input_get.exit_crit_edge
  %19 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  %conv1.i = and i32 %div.i, 255
  %21 = lshr i32 %20, %conv1.i
  %22 = and i32 %21, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = call fastcc i32 @sgpio_output_get(ptr noundef %1, ptr noundef nonnull %addr)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sgpio_input_get.exit
  %cond = phi i32 [ %22, %sgpio_input_get.exit ], [ %call3, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr) #9
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @microchip_sgpio_set_value(ptr noundef %gc, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @microchip_sgpio_direction_output(ptr noundef %gc, i32 noundef %gpio, i32 noundef %value)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microchip_sgpio_of_xlate(ptr noundef %gc, ptr nocapture noundef readonly %gpiospec, ptr noundef writeonly %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp = icmp ugt i32 %1, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %arrayidx3 = getelementptr %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %bitcount = getelementptr inbounds %struct.sgpio_priv, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %bitcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bitcount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp4 = icmp ugt i32 %5, %7
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mul.i = mul i32 %7, %1
  %add.i = add i32 %mul.i, %5
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 20
  %8 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv)
  %cmp10 = icmp sgt i32 %add.i, %conv
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %tobool.not = icmp eq ptr %flags, null
  br i1 %tobool.not, label %if.end13.cleanup_crit_edge, label %if.then14

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16 = getelementptr %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx16, align 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %add.i, %if.then14 ], [ %add.i, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sgpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %call2 = tail call ptr @gpiochip_get_data(ptr noundef %3) #9
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !120
  %bitcount = getelementptr inbounds %struct.sgpio_priv, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %bitcount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bitcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp33.not = icmp eq i32 %8, 0
  br i1 %cmp33.not, label %entry.for.end13_crit_edge, label %for.body.lr.ph

entry.for.end13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end13

for.body.lr.ph:                                   ; preds = %entry
  %properties.i.i = getelementptr inbounds %struct.sgpio_priv, ptr %5, i32 0, i32 7
  %regs.i.i = getelementptr inbounds %struct.sgpio_priv, ptr %5, i32 0, i32 6
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 37, i32 1
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc12.for.body_crit_edge, %for.body.lr.ph
  %bit.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc12.for.body_crit_edge ]
  %9 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %properties.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.sgpio_properties, ptr %10, i32 0, i32 2, i32 9
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %12 to i32
  %add.i.i = add i32 %bit.034, %conv.i.i
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %call.i.i = call i32 @regmap_get_reg_stride(ptr noundef %14) #9
  %mul.i.i = mul i32 %add.i.i, %call.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %val.i, align 4
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %17, i32 noundef %mul.i.i, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %for.body.sgpio_readl.exit_crit_edge, label %land.rhs.i

for.body.sgpio_readl.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_readl.exit

land.rhs.i:                                       ; preds = %for.body
  %.b41.i = load i1, ptr @sgpio_readl.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.sgpio_readl.exit_crit_edge, label %if.then.i, !prof !122

land.rhs.i.sgpio_readl.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_readl.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sgpio_readl.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 151, i32 noundef 9, ptr noundef nonnull @.str.47, i32 noundef %call1.i) #9
  br label %sgpio_readl.exit

sgpio_readl.exit:                                 ; preds = %if.then.i, %land.rhs.i.sgpio_readl.exit_crit_edge, %for.body.sgpio_readl.exit_crit_edge
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %sgpio_readl.exit.for.inc12_crit_edge, label %if.end

sgpio_readl.exit.for.inc12_crit_edge:             ; preds = %sgpio_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc12

if.end:                                           ; preds = %sgpio_readl.exit
  %21 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i26 = icmp eq ptr %22, null
  br i1 %tobool.not.i26, label %if.end.i, label %if.end.chained_irq_enter.exit_crit_edge

if.end.chained_irq_enter.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %if.end
  %23 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i.chained_irq_enter.exit.sink.split_crit_edge

if.end.i.chained_irq_enter.exit.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit.sink.split

if.else.i:                                        ; preds = %if.end.i
  %25 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_mask.i, align 4
  call void %26(ptr noundef %irq_data.i) #9
  %27 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %28, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.else.i.chained_irq_enter.exit.sink.split_crit_edge

if.else.i.chained_irq_enter.exit.sink.split_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit.sink.split

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

chained_irq_enter.exit.sink.split:                ; preds = %if.else.i.chained_irq_enter.exit.sink.split_crit_edge, %if.end.i.chained_irq_enter.exit.sink.split_crit_edge
  %.sink = phi ptr [ %24, %if.end.i.chained_irq_enter.exit.sink.split_crit_edge ], [ %28, %if.else.i.chained_irq_enter.exit.sink.split_crit_edge ]
  call void %.sink(ptr noundef %irq_data.i) #9
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %chained_irq_enter.exit.sink.split, %if.else.i.chained_irq_enter.exit_crit_edge, %if.end.chained_irq_enter.exit_crit_edge
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef 32, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call5)
  %cmp731 = icmp slt i32 %call5, 32
  br i1 %cmp731, label %chained_irq_enter.exit.for.body8_crit_edge, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

chained_irq_enter.exit.for.body8_crit_edge:       ; preds = %chained_irq_enter.exit
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %chained_irq_enter.exit.for.body8_crit_edge
  %port.032 = phi i32 [ %call11, %for.body8.for.body8_crit_edge ], [ %call5, %chained_irq_enter.exit.for.body8_crit_edge ]
  %29 = ptrtoint ptr %bitcount to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bitcount, align 4
  %mul.i = mul i32 %30, %port.032
  %add.i = add i32 %mul.i, %bit.034
  %31 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %domain, align 4
  %call10 = call i32 @generic_handle_domain_irq(ptr noundef %32, i32 noundef %add.i) #9
  %add = add nsw i32 %port.032, 1
  %call11 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef 32, i32 noundef %add) #9
  %cmp7 = icmp slt i32 %call11, 32
  br i1 %cmp7, label %for.body8.for.body8_crit_edge, label %for.body8.for.end_crit_edge

for.body8.for.end_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8

for.end:                                          ; preds = %for.body8.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %33 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i28 = icmp eq ptr %34, null
  br i1 %tobool.not.i28, label %if.else.i29, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_exit.exit

if.else.i29:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i29, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %36, %if.else.i29 ], [ %34, %for.end.chained_irq_exit.exit_crit_edge ]
  call void %.sink.i(ptr noundef %irq_data.i) #9
  br label %for.inc12

for.inc12:                                        ; preds = %chained_irq_exit.exit, %sgpio_readl.exit.for.inc12_crit_edge
  %inc = add nuw i32 %bit.034, 1
  %37 = ptrtoint ptr %bitcount to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bitcount, align 4
  %cmp = icmp ult i32 %inc, %38
  br i1 %cmp, label %for.inc12.for.body_crit_edge, label %for.inc12.for.end13_crit_edge

for.inc12.for.end13_crit_edge:                    ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end13

for.inc12.for.body_crit_edge:                     ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end13:                                        ; preds = %for.inc12.for.end13_crit_edge, %entry.for.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sgpio_clrsetbits(ptr nocapture noundef readonly %priv, i32 noundef %rno, i32 noundef %off, i32 noundef %clear, i32 noundef %set) unnamed_addr #5 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %properties.i.i = getelementptr inbounds %struct.sgpio_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %properties.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.sgpio_properties, ptr %1, i32 0, i32 2, i32 %rno
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  %add.i.i = add i32 %conv.i.i, %off
  %regs.i.i = getelementptr inbounds %struct.sgpio_priv, ptr %priv, i32 0, i32 6
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %call.i.i = tail call i32 @regmap_get_reg_stride(ptr noundef %5) #9
  %mul.i.i = mul i32 %add.i.i, %call.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val.i, align 4
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %mul.i.i, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %entry.sgpio_readl.exit_crit_edge, label %land.rhs.i

entry.sgpio_readl.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_readl.exit

land.rhs.i:                                       ; preds = %entry
  %.b41.i = load i1, ptr @sgpio_readl.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.sgpio_readl.exit_crit_edge, label %if.then.i, !prof !122

land.rhs.i.sgpio_readl.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_readl.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sgpio_readl.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 151, i32 noundef 9, ptr noundef nonnull @.str.47, i32 noundef %call1.i) #9
  br label %sgpio_readl.exit

sgpio_readl.exit:                                 ; preds = %if.then.i, %land.rhs.i.sgpio_readl.exit_crit_edge, %entry.sgpio_readl.exit_crit_edge
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %neg = xor i32 %clear, -1
  %and = and i32 %10, %neg
  %or = or i32 %and, %set
  %11 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %properties.i.i, align 4
  %arrayidx.i.i7 = getelementptr %struct.sgpio_properties, ptr %12, i32 0, i32 2, i32 %rno
  %13 = ptrtoint ptr %arrayidx.i.i7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i7, align 1
  %conv.i.i8 = zext i8 %14 to i32
  %add.i.i9 = add i32 %conv.i.i8, %off
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 4
  %call.i.i11 = call i32 @regmap_get_reg_stride(ptr noundef %16) #9
  %mul.i.i12 = mul i32 %add.i.i9, %call.i.i11
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %call1.i13 = call i32 @regmap_write(ptr noundef %18, i32 noundef %mul.i.i12, i32 noundef %or) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %sgpio_readl.exit.sgpio_writel.exit_crit_edge, label %land.rhs.i16

sgpio_readl.exit.sgpio_writel.exit_crit_edge:     ; preds = %sgpio_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_writel.exit

land.rhs.i16:                                     ; preds = %sgpio_readl.exit
  %.b41.i15 = load i1, ptr @sgpio_writel.__already_done, align 1
  br i1 %.b41.i15, label %land.rhs.i16.sgpio_writel.exit_crit_edge, label %if.then.i17, !prof !122

land.rhs.i16.sgpio_writel.exit_crit_edge:         ; preds = %land.rhs.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_writel.exit

if.then.i17:                                      ; preds = %land.rhs.i16
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sgpio_writel.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 163, i32 noundef 9, ptr noundef nonnull @.str.48, i32 noundef %call1.i13) #9
  br label %sgpio_writel.exit

sgpio_writel.exit:                                ; preds = %if.then.i17, %land.rhs.i16.sgpio_writel.exit_crit_edge, %sgpio_readl.exit.sgpio_writel.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgpio_pctl_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %npins = getelementptr inbounds %struct.sgpio_bank, ptr %call, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npins, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sgpio_pctl_get_group_name(ptr noundef %pctldev, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %pins = getelementptr inbounds %struct.sgpio_bank, ptr %call, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %name = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgpio_pctl_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %pins1 = getelementptr inbounds %struct.sgpio_bank, ptr %call, i32 0, i32 3, i32 1
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
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dt_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sgpio_get_functions_count(ptr nocapture noundef readnone %pctldev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @sgpio_get_function_name(ptr nocapture noundef readnone %pctldev, i32 noundef %function) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.43
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sgpio_get_function_groups(ptr nocapture noundef readnone %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @functions, ptr %groups, align 4
  %1 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sgpio_pinmux_set_mux(ptr nocapture noundef readnone %pctldev, i32 noundef %selector, i32 noundef %group) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgpio_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %bitcount.i = getelementptr inbounds %struct.sgpio_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bitcount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bitcount.i, align 4
  %.frozen = freeze i32 %3
  %div.i = udiv i32 %offset, %.frozen
  %ports = getelementptr inbounds %struct.sgpio_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ports, align 4
  %conv = and i32 %div.i, 255
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %offset, %6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %conv5 = and i32 %rem.i.decomposed, 255
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.44, i32 noundef %conv, i32 noundef %conv5) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgpio_gpio_set_direction(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %pin, i1 noundef zeroext %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %is_input = getelementptr inbounds %struct.sgpio_bank, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %is_input to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_input, align 4, !range !121
  %2 = zext i1 %input to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %2)
  %cmp = icmp eq i8 %1, %2
  %cond = select i1 %cmp, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgpio_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  %addr = alloca %struct.sgpio_port_addr, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr) #9
  %4 = getelementptr inbounds %struct.sgpio_port_addr, ptr %addr, i32 0, i32 1
  %bitcount.i = getelementptr inbounds %struct.sgpio_priv, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %bitcount.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bitcount.i, align 4
  %.frozen = freeze i32 %6
  %div.i = udiv i32 %pin, %.frozen
  %conv.i = trunc i32 %div.i to i8
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %addr, align 1
  %8 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %pin, %8
  %conv2.i = trunc i32 %rem.i.decomposed to i8
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv2.i, ptr %4, align 1
  %trunc = trunc i32 %1 to i8
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 12, label %sw.bb
    i8 18, label %sw.bb3
    i8 17, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %is_input = getelementptr inbounds %struct.sgpio_bank, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %is_input to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_input, align 4, !range !121
  %13 = zext i8 %12 to i32
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %is_input4 = getelementptr inbounds %struct.sgpio_bank, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %is_input4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_input4, align 4, !range !121
  %16 = xor i8 %15, 1
  %17 = zext i8 %16 to i32
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %is_input7 = getelementptr inbounds %struct.sgpio_bank, ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %is_input7 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_input7, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not = icmp eq i8 %19, 0
  br i1 %tobool8.not, label %if.end, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = call fastcc i32 @sgpio_output_get(ptr noundef %3, ptr noundef nonnull %addr)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb3, %sw.bb
  %val.0 = phi i32 [ %call9, %if.end ], [ %17, %sw.bb3 ], [ %13, %sw.bb ]
  %shl.i = shl i32 %val.0, 8
  %or.i = or i32 %shl.i, %and.i
  %20 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgpio_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp18.not = icmp eq i32 %num_configs, 0
  br i1 %cmp18.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %bitcount.i = getelementptr inbounds %struct.sgpio_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bitcount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bitcount.i, align 4
  %.frozen = freeze i32 %3
  %div.i = udiv i32 %pin, %.frozen
  %4 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %pin, %4
  %is_input = getelementptr inbounds %struct.sgpio_bank, ptr %call, i32 0, i32 1
  %conv.i17 = and i32 %rem.i.decomposed, 255
  %mul.i = mul nuw nsw i32 %conv.i17, 3
  %properties.i = getelementptr inbounds %struct.sgpio_priv, ptr %1, i32 0, i32 7
  %shl108.i = shl nuw i32 1, %mul.i
  %shl126.i = shl i32 %shl108.i, 12
  %and127.i = and i32 %shl126.i, 16773120
  %and17.i = and i32 %shl108.i, 4095
  %conv155.i = and i32 %div.i, 255
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %err.020 = phi i32 [ 0, %for.body.lr.ph ], [ %err.1, %for.inc.for.body_crit_edge ]
  %cfg.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %cfg.019
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %6, 255
  %shr.i = lshr i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and.i)
  %cond = icmp eq i32 %and.i, 17
  br i1 %cond, label %sw.bb, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %7 = ptrtoint ptr %is_input to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_input, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %9 = ptrtoint ptr %properties.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %properties.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %12, label %if.end.for.inc_crit_edge [
    i32 0, label %do.end40.i
    i32 1, label %do.end95.i
    i32 2, label %do.end150.i
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end40.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %shl25.i = shl i32 %shr.i, %mul.i
  %and44.i = and i32 %shl25.i, 4095
  br label %sw.epilog.i

do.end95.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %shl80.i = shl i32 %shr.i, %mul.i
  %shl98.i = shl i32 %shl80.i, 12
  %and99.i = and i32 %shl98.i, 16773120
  br label %sw.epilog.i

do.end150.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %shl135.i = shl i32 %shr.i, %mul.i
  %shl153.i = shl i32 %shl135.i, 12
  %and154.i = and i32 %shl153.i, 16773120
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end150.i, %do.end95.i, %do.end40.i
  %set.0.i = phi i32 [ %and154.i, %do.end150.i ], [ %and99.i, %do.end95.i ], [ %and44.i, %do.end40.i ]
  %clr.0.i = phi i32 [ %and127.i, %do.end150.i ], [ %and127.i, %do.end95.i ], [ %and17.i, %do.end40.i ]
  tail call fastcc void @sgpio_clrsetbits(ptr noundef %1, i32 noundef 1, i32 noundef %conv155.i, i32 noundef %clr.0.i, i32 noundef %set.0.i) #9
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.i, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %err.1 = phi i32 [ -524, %for.body.for.inc_crit_edge ], [ %err.020, %if.end.for.inc_crit_edge ], [ %err.020, %sw.epilog.i ]
  %inc = add nuw i32 %cfg.019, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %err.1, %for.inc.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dump_config(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sgpio_output_get(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %addr) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  %conv = zext i8 %1 to i32
  %properties.i.i = getelementptr inbounds %struct.sgpio_priv, ptr %priv, i32 0, i32 7
  %2 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %properties.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.sgpio_properties, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %5 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, %conv
  %regs.i.i = getelementptr inbounds %struct.sgpio_priv, ptr %priv, i32 0, i32 6
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %call.i.i = tail call i32 @regmap_get_reg_stride(ptr noundef %7) #9
  %mul.i.i = mul i32 %add.i.i, %call.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val.i, align 4
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %10, i32 noundef %mul.i.i, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %entry.sgpio_readl.exit_crit_edge, label %land.rhs.i

entry.sgpio_readl.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_readl.exit

land.rhs.i:                                       ; preds = %entry
  %.b41.i = load i1, ptr @sgpio_readl.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.sgpio_readl.exit_crit_edge, label %if.then.i, !prof !122

land.rhs.i.sgpio_readl.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_readl.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sgpio_readl.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 151, i32 noundef 9, ptr noundef nonnull @.str.47, i32 noundef %call1.i) #9
  br label %sgpio_readl.exit

sgpio_readl.exit:                                 ; preds = %if.then.i, %land.rhs.i.sgpio_readl.exit_crit_edge, %entry.sgpio_readl.exit_crit_edge
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %bit1 = getelementptr inbounds %struct.sgpio_port_addr, ptr %addr, i32 0, i32 1
  %13 = ptrtoint ptr %bit1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bit1, align 1
  %15 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %properties.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %18, label %sgpio_readl.exit.sw.epilog_crit_edge [
    i32 0, label %do.end14
    i32 1, label %do.end30
    i32 2, label %do.end49
  ]

sgpio_readl.exit.sw.epilog_crit_edge:             ; preds = %sgpio_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end14:                                         ; preds = %sgpio_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %12, 4095
  br label %sw.epilog

do.end30:                                         ; preds = %sgpio_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and32 = lshr i32 %12, 12
  %shr33 = and i32 %and32, 4095
  br label %sw.epilog

do.end49:                                         ; preds = %sgpio_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and51 = lshr i32 %12, 12
  %shr52 = and i32 %and51, 4095
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end49, %do.end30, %do.end14, %sgpio_readl.exit.sw.epilog_crit_edge
  %val.0 = phi i32 [ %shr52, %do.end49 ], [ %shr33, %do.end30 ], [ %and, %do.end14 ], [ 0, %sgpio_readl.exit.sw.epilog_crit_edge ]
  %conv2 = zext i8 %14 to i32
  %mul = mul nuw nsw i32 %conv2, 3
  %20 = lshr i32 %val.0, %mul
  %21 = and i32 %20, 1
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_get_reg_stride(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @microchip_sgpio_irq_ack(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i.i, align 4
  %4 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call1.i, align 4
  %bitcount.i.i = getelementptr inbounds %struct.sgpio_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bitcount.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bitcount.i.i, align 4
  %.frozen = freeze i32 %3
  %.frozen1 = freeze i32 %7
  %div.i.i = udiv i32 %.frozen, %.frozen1
  %8 = mul i32 %div.i.i, %.frozen1
  %rem.i.i.decomposed = sub i32 %.frozen, %8
  %conv.i = and i32 %rem.i.i.decomposed, 255
  %conv4.i = and i32 %div.i.i, 255
  %shl.i = shl nuw i32 1, %conv4.i
  tail call fastcc void @sgpio_clrsetbits(ptr noundef %5, i32 noundef 7, i32 noundef %conv.i, i32 noundef 0, i32 noundef %shl.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @microchip_sgpio_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i.i, align 4
  %4 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call1.i, align 4
  %bitcount.i.i = getelementptr inbounds %struct.sgpio_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bitcount.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bitcount.i.i, align 4
  %.frozen = freeze i32 %3
  %.frozen1 = freeze i32 %7
  %div.i.i = udiv i32 %.frozen, %.frozen1
  %8 = mul i32 %div.i.i, %.frozen1
  %rem.i.i.decomposed = sub i32 %.frozen, %8
  %conv.i = and i32 %rem.i.i.decomposed, 255
  %conv4.i = and i32 %div.i.i, 255
  %shl.i = shl nuw i32 1, %conv4.i
  tail call fastcc void @sgpio_clrsetbits(ptr noundef %5, i32 noundef 8, i32 noundef %conv.i, i32 noundef %shl.i, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @microchip_sgpio_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i.i, align 4
  %4 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call1.i, align 4
  %bitcount.i.i = getelementptr inbounds %struct.sgpio_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bitcount.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bitcount.i.i, align 4
  %.frozen = freeze i32 %3
  %.frozen1 = freeze i32 %7
  %div.i.i = udiv i32 %.frozen, %.frozen1
  %8 = mul i32 %div.i.i, %.frozen1
  %rem.i.i.decomposed = sub i32 %.frozen, %8
  %conv.i = and i32 %rem.i.i.decomposed, 255
  %conv4.i = and i32 %div.i.i, 255
  %shl.i = shl nuw i32 1, %conv4.i
  tail call fastcc void @sgpio_clrsetbits(ptr noundef %5, i32 noundef 8, i32 noundef %conv.i, i32 noundef 0, i32 noundef %shl.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microchip_sgpio_irq_set_type(ptr nocapture noundef readonly %data, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %type, 15
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %and, label %entry.return_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 8, label %sw.bb4
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %1 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @handle_edge_irq, ptr %handle_irq.i, align 4
  tail call fastcc void @microchip_sgpio_irq_settype(ptr noundef %data, i32 noundef 1, i32 noundef 0)
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %common.i.i15 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %common.i.i15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common.i.i15, align 4
  %handle_irq.i16 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %handle_irq.i16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @handle_edge_irq, ptr %handle_irq.i16, align 4
  tail call fastcc void @microchip_sgpio_irq_settype(ptr noundef %data, i32 noundef 3, i32 noundef 0)
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %common.i.i17 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %7 = ptrtoint ptr %common.i.i17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %common.i.i17, align 4
  %handle_irq.i18 = getelementptr inbounds %struct.irq_desc, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %handle_irq.i18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @handle_edge_irq, ptr %handle_irq.i18, align 4
  tail call fastcc void @microchip_sgpio_irq_settype(ptr noundef %data, i32 noundef 2, i32 noundef 0)
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %common.i.i19 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %10 = ptrtoint ptr %common.i.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %common.i.i19, align 4
  %handle_irq.i20 = getelementptr inbounds %struct.irq_desc, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %handle_irq.i20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @handle_level_irq, ptr %handle_irq.i20, align 4
  tail call fastcc void @microchip_sgpio_irq_settype(ptr noundef %data, i32 noundef 0, i32 noundef 0)
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %common.i.i21 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %common.i.i21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %common.i.i21, align 4
  %handle_irq.i22 = getelementptr inbounds %struct.irq_desc, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %handle_irq.i22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @handle_level_irq, ptr %handle_irq.i22, align 4
  tail call fastcc void @microchip_sgpio_irq_settype(ptr noundef %data, i32 noundef 0, i32 noundef 1)
  br label %return

return:                                           ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @microchip_sgpio_irq_settype(ptr nocapture noundef readonly %data, i32 noundef %type, i32 noundef %polarity) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call1, align 4
  %bitcount.i = getelementptr inbounds %struct.sgpio_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bitcount.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bitcount.i, align 4
  %.frozen = freeze i32 %3
  %.frozen91 = freeze i32 %7
  %div.i = udiv i32 %.frozen, %.frozen91
  %8 = mul i32 %div.i, %.frozen91
  %rem.i.decomposed = sub i32 %.frozen, %8
  %conv = and i32 %rem.i.decomposed, 255
  %properties.i.i = getelementptr inbounds %struct.sgpio_priv, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %properties.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.sgpio_properties, ptr %10, i32 0, i32 2, i32 8
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %12 to i32
  %add.i.i = add nuw nsw i32 %conv, %conv.i.i
  %regs.i.i = getelementptr inbounds %struct.sgpio_priv, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %call.i.i = tail call i32 @regmap_get_reg_stride(ptr noundef %14) #9
  %mul.i.i = mul i32 %add.i.i, %call.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %val.i, align 4
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %17, i32 noundef %mul.i.i, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %entry.sgpio_readl.exit_crit_edge, label %land.rhs.i

entry.sgpio_readl.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_readl.exit

land.rhs.i:                                       ; preds = %entry
  %.b41.i = load i1, ptr @sgpio_readl.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.sgpio_readl.exit_crit_edge, label %if.then.i, !prof !122

land.rhs.i.sgpio_readl.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_readl.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sgpio_readl.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 151, i32 noundef 9, ptr noundef nonnull @.str.47, i32 noundef %call1.i) #9
  br label %sgpio_readl.exit

sgpio_readl.exit:                                 ; preds = %if.then.i, %land.rhs.i.sgpio_readl.exit_crit_edge, %entry.sgpio_readl.exit_crit_edge
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %20 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call1, align 4
  %conv6 = and i32 %div.i, 255
  %shl = shl nuw i32 1, %conv6
  %neg = xor i32 %shl, -1
  %and = and i32 %19, %neg
  %properties.i.i58 = getelementptr inbounds %struct.sgpio_priv, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %properties.i.i58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %properties.i.i58, align 4
  %arrayidx.i.i59 = getelementptr %struct.sgpio_properties, ptr %23, i32 0, i32 2, i32 8
  %24 = ptrtoint ptr %arrayidx.i.i59 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i59, align 1
  %conv.i.i60 = zext i8 %25 to i32
  %add.i.i61 = add nuw nsw i32 %conv, %conv.i.i60
  %regs.i.i62 = getelementptr inbounds %struct.sgpio_priv, ptr %21, i32 0, i32 6
  %26 = ptrtoint ptr %regs.i.i62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i62, align 4
  %call.i.i63 = call i32 @regmap_get_reg_stride(ptr noundef %27) #9
  %mul.i.i64 = mul i32 %add.i.i61, %call.i.i63
  %28 = ptrtoint ptr %regs.i.i62 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i62, align 4
  %call1.i65 = call i32 @regmap_write(ptr noundef %29, i32 noundef %mul.i.i64, i32 noundef %and) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i65)
  %tobool.not.i66 = icmp eq i32 %call1.i65, 0
  br i1 %tobool.not.i66, label %sgpio_readl.exit.sgpio_writel.exit_crit_edge, label %land.rhs.i68

sgpio_readl.exit.sgpio_writel.exit_crit_edge:     ; preds = %sgpio_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_writel.exit

land.rhs.i68:                                     ; preds = %sgpio_readl.exit
  %.b41.i67 = load i1, ptr @sgpio_writel.__already_done, align 1
  br i1 %.b41.i67, label %land.rhs.i68.sgpio_writel.exit_crit_edge, label %if.then.i69, !prof !122

land.rhs.i68.sgpio_writel.exit_crit_edge:         ; preds = %land.rhs.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_writel.exit

if.then.i69:                                      ; preds = %land.rhs.i68
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sgpio_writel.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 163, i32 noundef 9, ptr noundef nonnull @.str.48, i32 noundef %call1.i65) #9
  br label %sgpio_writel.exit

sgpio_writel.exit:                                ; preds = %if.then.i69, %land.rhs.i68.sgpio_writel.exit_crit_edge, %sgpio_readl.exit.sgpio_writel.exit_crit_edge
  %30 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call1, align 4
  %and15 = and i32 %type, 1
  %shl19 = shl nuw i32 %and15, %conv6
  call fastcc void @sgpio_clrsetbits(ptr noundef %31, i32 noundef 6, i32 noundef %conv, i32 noundef %shl, i32 noundef %shl19)
  %32 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call1, align 4
  %add = add nuw nsw i32 %conv, 4
  %and26 = lshr i32 %type, 1
  %and26.lobit = and i32 %and26, 1
  %shl34 = shl nuw i32 %and26.lobit, %conv6
  call fastcc void @sgpio_clrsetbits(ptr noundef %33, i32 noundef 6, i32 noundef %add, i32 noundef %shl, i32 noundef %shl34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then, label %sgpio_writel.exit.if.end_crit_edge

sgpio_writel.exit.if.end_crit_edge:               ; preds = %sgpio_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sgpio_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call1, align 4
  %shl44 = shl i32 %polarity, %conv6
  call fastcc void @sgpio_clrsetbits(ptr noundef %35, i32 noundef 5, i32 noundef %conv, i32 noundef %shl, i32 noundef %shl44)
  br label %if.end

if.end:                                           ; preds = %if.then, %sgpio_writel.exit.if.end_crit_edge
  %36 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call1, align 4
  %properties.i.i70 = getelementptr inbounds %struct.sgpio_priv, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %properties.i.i70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %properties.i.i70, align 4
  %arrayidx.i.i71 = getelementptr %struct.sgpio_properties, ptr %39, i32 0, i32 2, i32 8
  %40 = ptrtoint ptr %arrayidx.i.i71 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i71, align 1
  %conv.i.i72 = zext i8 %41 to i32
  %add.i.i73 = add nuw nsw i32 %conv, %conv.i.i72
  %regs.i.i74 = getelementptr inbounds %struct.sgpio_priv, ptr %37, i32 0, i32 6
  %42 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i74, align 4
  %call.i.i75 = call i32 @regmap_get_reg_stride(ptr noundef %43) #9
  %mul.i.i76 = mul i32 %add.i.i73, %call.i.i75
  %44 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i74, align 4
  %call1.i77 = call i32 @regmap_write(ptr noundef %45, i32 noundef %mul.i.i76, i32 noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool.not.i78 = icmp eq i32 %call1.i77, 0
  br i1 %tobool.not.i78, label %if.end.sgpio_writel.exit82_crit_edge, label %land.rhs.i80

if.end.sgpio_writel.exit82_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_writel.exit82

land.rhs.i80:                                     ; preds = %if.end
  %.b41.i79 = load i1, ptr @sgpio_writel.__already_done, align 1
  br i1 %.b41.i79, label %land.rhs.i80.sgpio_writel.exit82_crit_edge, label %if.then.i81, !prof !122

land.rhs.i80.sgpio_writel.exit82_crit_edge:       ; preds = %land.rhs.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %sgpio_writel.exit82

if.then.i81:                                      ; preds = %land.rhs.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sgpio_writel.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 163, i32 noundef 9, ptr noundef nonnull @.str.48, i32 noundef %call1.i77) #9
  br label %sgpio_writel.exit82

sgpio_writel.exit82:                              ; preds = %if.then.i81, %land.rhs.i80.sgpio_writel.exit82_crit_edge, %if.end.sgpio_writel.exit82_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !90, !91, !92, !93, !95, !97, !98, !100, !102, !103, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_pinctrl_microchip_sgpio__300_925_microchip_sgpio_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_microchip_sgpio__300_925_microchip_sgpio_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 925, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 919, i32 11}
!4 = !{ptr @microchip_sgpio_pinctrl_driver, !5, !"microchip_sgpio_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 917, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 837, i32 61}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 839, i32 45}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 844, i32 43}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 847, i32 36}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 850, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @microchip_sgpio_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @microchip_sgpio_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @microchip_sgpio_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 858, i32 15}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 872, i32 3}
!27 = !{ptr @microchip_sgpio_probe._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @microchip_sgpio_probe._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 886, i32 3}
!31 = !{ptr @microchip_sgpio_probe._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @microchip_sgpio_probe._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 534, i32 36}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 542, i32 3}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @microchip_sgpio_get_ports._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @microchip_sgpio_get_ports._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 551, i32 3}
!44 = !{ptr @microchip_sgpio_get_ports._entry.22, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @microchip_sgpio_get_ports._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 561, i32 4}
!48 = !{ptr @microchip_sgpio_get_ports._entry.25, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @microchip_sgpio_get_ports._entry_ptr.27, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 714, i32 39}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 715, i32 3}
!54 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @microchip_sgpio_register_bank._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @microchip_sgpio_register_bank._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 722, i32 3}
!60 = !{ptr @microchip_sgpio_register_bank._entry.32, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @microchip_sgpio_register_bank._entry_ptr.34, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 728, i32 52}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 730, i32 24}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 730, i32 31}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 750, i32 12}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 759, i32 47}
!72 = !{ptr @microchip_sgpio_register_bank.lock_key, !73, !"lock_key", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 808, i32 8}
!74 = !{ptr @microchip_sgpio_register_bank.request_key, !73, !"request_key", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 810, i32 3}
!77 = !{ptr @microchip_sgpio_register_bank._entry.40, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @microchip_sgpio_register_bank._entry_ptr.42, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @sgpio_pctl_ops, !80, !"sgpio_pctl_ops", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 447, i32 33}
!81 = !{ptr @sgpio_pmx_ops, !82, !"sgpio_pmx_ops", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 410, i32 32}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 101, i32 43}
!85 = !{ptr @functions, !86, !"functions", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 101, i32 27}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 402, i32 3}
!89 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @sgpio_gpio_request_enable._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @sgpio_gpio_request_enable._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @sgpio_confops, !94, !"sgpio_confops", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 347, i32 33}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 151, i32 2}
!97 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @microchip_sgpio_irqchip, !99, !"microchip_sgpio_irqchip", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 664, i32 30}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 163, i32 2}
!102 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @microchip_sgpio_gpio_of_match, !104, !"microchip_sgpio_gpio_of_match", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 902, i32 34}
!105 = !{ptr @properties_sparx5, !106, !"properties_sparx5", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 95, i32 38}
!107 = !{ptr @properties_luton, !108, !"properties_luton", i1 false, i1 false}
!108 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 85, i32 38}
!109 = !{ptr @properties_ocelot, !110, !"properties_ocelot", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/pinctrl-microchip-sgpio.c", i32 90, i32 38}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"auto-init"}
!121 = !{i8 0, i8 2}
!122 = !{!"branch_weights", i32 2000, i32 1}
