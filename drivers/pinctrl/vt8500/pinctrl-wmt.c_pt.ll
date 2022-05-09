; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/vt8500/pinctrl-wmt.c_pt.bc'
source_filename = "../drivers/pinctrl/vt8500/pinctrl-wmt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wmt_pinctrl_data = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.gpio_chip, %struct.pinctrl_gpio_range }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.wmt_pinctrl_bank_registers = type { i32, i32, i32, i32, i32, i32 }

@wmt_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.12, ptr null, i32 0, ptr @wmt_pctl_ops, ptr @wmt_pinmux_ops, ptr @wmt_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@wmt_gpio_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str.55, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @wmt_gpio_get_direction, ptr @wmt_gpio_direction_input, ptr @wmt_gpio_direction_output, ptr @wmt_gpio_get_value, ptr null, ptr @wmt_gpio_set_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@wmt_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 576, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register pinctrl\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wmt_pinctrl_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/pinctrl/vt8500/pinctrl-wmt.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wmt_pinctrl_probe._entry_ptr = internal global ptr @wmt_pinctrl_probe._entry, section ".printk_index", align 4
@wmt_pinctrl_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wmt_pinctrl_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wmt_pinctrl_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 582, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not add GPIO chip\0A\00", [39 x i8] zeroinitializer }, align 32
@wmt_pinctrl_probe._entry_ptr.7 = internal global ptr @wmt_pinctrl_probe._entry.5, section ".printk_index", align 4
@wmt_pinctrl_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 591, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Pin controller initialized\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wmt_pinctrl_probe._entry_ptr.11 = internal global ptr @wmt_pinctrl_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pinctrl-wmt\00", [20 x i8] zeroinitializer }, align 32
@wmt_pctl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @wmt_get_groups_count, ptr @wmt_get_group_name, ptr @wmt_get_group_pins, ptr null, ptr @wmt_pctl_dt_node_to_map, ptr @wmt_pctl_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@wmt_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @wmt_pmx_get_functions_count, ptr @wmt_pmx_get_function_name, ptr @wmt_pmx_get_function_groups, ptr @wmt_pmx_set_mux, ptr null, ptr @wmt_pmx_gpio_disable_free, ptr @wmt_pmx_gpio_set_direction, i8 0 }, [56 x i8] zeroinitializer }, align 32
@wmt_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr @wmt_pinconf_get, ptr @wmt_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wm,pins\00", [24 x i8] zeroinitializer }, align 32
@wmt_pctl_dt_node_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 309, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"missing wmt,pins property\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wmt_pctl_dt_node_to_map\00", [40 x i8] zeroinitializer }, align 32
@wmt_pctl_dt_node_to_map._entry_ptr = internal global ptr @wmt_pctl_dt_node_to_map._entry, section ".printk_index", align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm,function\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wm,pull\00", [24 x i8] zeroinitializer }, align 32
@wmt_pctl_dt_node_to_map._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.2, i32 317, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"neither wm,function nor wm,pull specified\0A\00", [53 x i8] zeroinitializer }, align 32
@wmt_pctl_dt_node_to_map._entry_ptr.20 = internal global ptr @wmt_pctl_dt_node_to_map._entry.18, section ".printk_index", align 4
@wmt_pctl_dt_node_to_map._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.2, i32 331, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"wm,function must have 1 or %d entries\0A\00", [57 x i8] zeroinitializer }, align 32
@wmt_pctl_dt_node_to_map._entry_ptr.23 = internal global ptr @wmt_pctl_dt_node_to_map._entry.21, section ".printk_index", align 4
@wmt_pctl_dt_node_to_map._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.15, ptr @.str.2, i32 337, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wm,pull must have 1 or %d entries\0A\00", [61 x i8] zeroinitializer }, align 32
@wmt_pctl_dt_node_to_map._entry_ptr.26 = internal global ptr @wmt_pctl_dt_node_to_map._entry.24, section ".printk_index", align 4
@wmt_pctl_dt_node_to_map._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.15, ptr @.str.2, i32 358, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid wm,pins value\0A\00", [41 x i8] zeroinitializer }, align 32
@wmt_pctl_dt_node_to_map._entry_ptr.29 = internal global ptr @wmt_pctl_dt_node_to_map._entry.27, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wmt_pctl_dt_node_to_map_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 216, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid wm,function %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wmt_pctl_dt_node_to_map_func\00", [35 x i8] zeroinitializer }, align 32
@wmt_pctl_dt_node_to_map_func._entry_ptr = internal global ptr @wmt_pctl_dt_node_to_map_func._entry, section ".printk_index", align 4
@wmt_pctl_dt_node_to_map_func._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 222, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to match pin %d to group\0A\00", [63 x i8] zeroinitializer }, align 32
@wmt_pctl_dt_node_to_map_func._entry_ptr.34 = internal global ptr @wmt_pctl_dt_node_to_map_func._entry.32, section ".printk_index", align 4
@wmt_functions = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37], [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_in\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_out\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"alt\00", [28 x i8] zeroinitializer }, align 32
@wmt_pctl_dt_node_to_map_pull._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 244, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid wm,pull %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wmt_pctl_dt_node_to_map_pull\00", [35 x i8] zeroinitializer }, align 32
@wmt_pctl_dt_node_to_map_pull._entry_ptr = internal global ptr @wmt_pctl_dt_node_to_map_pull._entry, section ".printk_index", align 4
@wmt_pctl_dt_node_to_map_pull._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.39, ptr @.str.2, i32 250, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@wmt_pctl_dt_node_to_map_pull._entry_ptr.41 = internal global ptr @wmt_pctl_dt_node_to_map_pull._entry.40, section ".printk_index", align 4
@wmt_pctl_dt_node_to_map_pull._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.39, ptr @.str.2, i32 270, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid pull state %d - disabling\0A\00", [61 x i8] zeroinitializer }, align 32
@wmt_pctl_dt_node_to_map_pull._entry_ptr.44 = internal global ptr @wmt_pctl_dt_node_to_map_pull._entry.42, section ".printk_index", align 4
@wmt_set_pinmux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 94, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pin:%d no direction register defined\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wmt_set_pinmux\00", [17 x i8] zeroinitializer }, align 32
@wmt_set_pinmux._entry_ptr = internal global ptr @wmt_set_pinmux._entry, section ".printk_index", align 4
@wmt_set_pinmux._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 116, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pin:%d no alt function available\0A\00", [62 x i8] zeroinitializer }, align 32
@wmt_set_pinmux._entry_ptr.49 = internal global ptr @wmt_set_pinmux._entry.47, section ".printk_index", align 4
@wmt_pinconf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 432, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bias functions not supported on pin %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wmt_pinconf_set\00", [16 x i8] zeroinitializer }, align 32
@wmt_pinconf_set._entry_ptr = internal global ptr @wmt_pinconf_set._entry, section ".printk_index", align 4
@wmt_pinconf_set._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 459, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown pinconf param\0A\00", [41 x i8] zeroinitializer }, align 32
@wmt_pinconf_set._entry_ptr.54 = internal global ptr @wmt_pinconf_set._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio-wmt\00", [23 x i8] zeroinitializer }, align 32
@wmt_gpio_get_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 503, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no data in register defined\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wmt_gpio_get_value\00", [45 x i8] zeroinitializer }, align 32
@wmt_gpio_get_value._entry_ptr = internal global ptr @wmt_gpio_get_value._entry, section ".printk_index", align 4
@wmt_gpio_set_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 519, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no data out register defined\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wmt_gpio_set_value\00", [45 x i8] zeroinitializer }, align 32
@wmt_gpio_set_value._entry_ptr = internal global ptr @wmt_gpio_set_value._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@___asan_gen_.63 = private unnamed_addr constant [9 x i8] c"wmt_desc\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 472, i32 28 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"wmt_gpio_chip\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 541, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 576, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 580, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 582, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 591, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 474, i32 10 }
@___asan_gen_.111 = private unnamed_addr constant [13 x i8] c"wmt_pctl_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 404, i32 33 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"wmt_pinmux_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 158, i32 32 }
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"wmt_pinconf_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 467, i32 33 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 307, i32 30 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 309, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 313, i32 31 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 314, i32 31 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 317, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 330, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 336, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 358, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 216, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 222, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [14 x i8] c"wmt_functions\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 53, i32 27 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 54, i32 23 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 55, i32 24 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 56, i32 19 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 244, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 250, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 270, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 93, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 115, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 431, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 459, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 542, i32 11 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 503, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.256 = private constant [40 x i8] c"../drivers/pinctrl/vt8500/pinctrl-wmt.c\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 519, i32 3 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @wmt_gpio_get_value._entry, ptr @wmt_gpio_get_value._entry_ptr, ptr @wmt_gpio_set_value._entry, ptr @wmt_gpio_set_value._entry_ptr, ptr @wmt_pctl_dt_node_to_map._entry, ptr @wmt_pctl_dt_node_to_map._entry.18, ptr @wmt_pctl_dt_node_to_map._entry.21, ptr @wmt_pctl_dt_node_to_map._entry.24, ptr @wmt_pctl_dt_node_to_map._entry.27, ptr @wmt_pctl_dt_node_to_map._entry_ptr, ptr @wmt_pctl_dt_node_to_map._entry_ptr.20, ptr @wmt_pctl_dt_node_to_map._entry_ptr.23, ptr @wmt_pctl_dt_node_to_map._entry_ptr.26, ptr @wmt_pctl_dt_node_to_map._entry_ptr.29, ptr @wmt_pctl_dt_node_to_map_func._entry, ptr @wmt_pctl_dt_node_to_map_func._entry.32, ptr @wmt_pctl_dt_node_to_map_func._entry_ptr, ptr @wmt_pctl_dt_node_to_map_func._entry_ptr.34, ptr @wmt_pctl_dt_node_to_map_pull._entry, ptr @wmt_pctl_dt_node_to_map_pull._entry.40, ptr @wmt_pctl_dt_node_to_map_pull._entry.42, ptr @wmt_pctl_dt_node_to_map_pull._entry_ptr, ptr @wmt_pctl_dt_node_to_map_pull._entry_ptr.41, ptr @wmt_pctl_dt_node_to_map_pull._entry_ptr.44, ptr @wmt_pinconf_set._entry, ptr @wmt_pinconf_set._entry.52, ptr @wmt_pinconf_set._entry_ptr, ptr @wmt_pinconf_set._entry_ptr.54, ptr @wmt_pinctrl_probe._entry, ptr @wmt_pinctrl_probe._entry.5, ptr @wmt_pinctrl_probe._entry.8, ptr @wmt_pinctrl_probe._entry_ptr, ptr @wmt_pinctrl_probe._entry_ptr.11, ptr @wmt_pinctrl_probe._entry_ptr.7, ptr @wmt_set_pinmux._entry, ptr @wmt_set_pinmux._entry.47, ptr @wmt_set_pinmux._entry_ptr, ptr @wmt_set_pinmux._entry_ptr.49, ptr @wmt_desc, ptr @wmt_gpio_chip, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @wmt_pinctrl_probe.lock_key, ptr @wmt_pinctrl_probe.request_key, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @wmt_pctl_ops, ptr @wmt_pinmux_ops, ptr @wmt_pinconf_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @wmt_functions, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_gpio_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pinctrl_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pinctrl_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pinctrl_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pinctrl_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pctl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pctl_dt_node_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pctl_dt_node_to_map._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pctl_dt_node_to_map._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pctl_dt_node_to_map._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pctl_dt_node_to_map._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pctl_dt_node_to_map_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pctl_dt_node_to_map_func._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_functions to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pctl_dt_node_to_map_pull._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pctl_dt_node_to_map_pull._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pctl_dt_node_to_map_pull._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_set_pinmux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_set_pinmux._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pinconf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_pinconf_set._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_gpio_get_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_gpio_set_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wmt_pinctrl_probe(ptr noundef %pdev, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %pins = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  store ptr %3, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @wmt_desc, i32 0, i32 1), align 4
  %npins = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %data, i32 0, i32 7
  %4 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins, align 4
  store i32 %5, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @wmt_desc, i32 0, i32 2), align 4
  %gpio_chip = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %data, i32 0, i32 9
  %6 = call ptr @memcpy(ptr %gpio_chip, ptr @wmt_gpio_chip, i32 348)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %data, i32 0, i32 9, i32 2
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %parent, align 4
  %nbanks = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %data, i32 0, i32 6
  %8 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbanks, align 4
  %.tr = trunc i32 %9 to i16
  %conv = shl i16 %.tr, 5
  %ngpio = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %data, i32 0, i32 9, i32 20
  %10 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %ngpio, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data, ptr %driver_data.i.i, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %data, align 4
  %call10 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @wmt_desc, ptr noundef %data) #8
  %pctl_dev = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10, ptr %pctl_dev, align 4
  %cmp.i70 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #11
  %14 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pctl_dev, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %call19 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gpio_chip, ptr noundef %data, ptr noundef nonnull @wmt_pinctrl_probe.lock_key, ptr noundef nonnull @wmt_pinctrl_probe.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.dev_name.exit_crit_edge

if.end25.dev_name.exit_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end25.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.end.i ], [ %20, %if.end25.dev_name.exit_crit_edge ]
  %23 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbanks, align 4
  %mul30 = shl i32 %24, 5
  %call31 = tail call i32 @gpiochip_add_pin_range(ptr noundef %gpio_chip, ptr noundef %retval.0.i, i32 noundef 0, i32 noundef 0, i32 noundef %mul30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.end37, label %fail_range

do.end37:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %cleanup

fail_range:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiochip_remove(ptr noundef %gpio_chip) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_range, %do.end37, %do.end23, %do.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %16, %do.end ], [ %call19, %do.end23 ], [ %call31, %fail_range ], [ 0, %do.end37 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_get_groups_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %ngroups = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @wmt_get_group_name(ptr noundef %pctldev, i32 noundef %selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_get_group_pins(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pins1 = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins1, align 4
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %selector
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %pins, align 4
  %3 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_pctl_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np, ptr nocapture noundef writeonly %map, ptr nocapture noundef writeonly %num_maps) #0 align 64 {
entry:
  %pin = alloca i32, align 4
  %func = alloca i32, align 4
  %pull = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pin) #8
  %0 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pin, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %func) #8
  %1 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %func, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pull) #8
  %2 = ptrtoint ptr %pull to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pull, align 4, !annotation !127
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %call1 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.13, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.16, ptr noundef null) #8
  %call3 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.17, ptr noundef null) #8
  %tobool4.not = icmp eq ptr %call2, null
  %tobool5.not = icmp eq ptr %call3, null
  %or.cond = select i1 %tobool4.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %length = getelementptr inbounds %struct.property, ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  %div162 = lshr i32 %8, 2
  br i1 %tobool4.not, label %if.end11.cond.end_crit_edge, label %cond.true

if.end11.cond.end_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %length13 = getelementptr inbounds %struct.property, ptr %call2, i32 0, i32 1
  %9 = ptrtoint ptr %length13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length13, align 4
  %div14164 = lshr i32 %10, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end11.cond.end_crit_edge
  %cond = phi i32 [ %div14164, %cond.true ], [ 0, %if.end11.cond.end_crit_edge ]
  br i1 %tobool5.not, label %cond.end.cond.end20_crit_edge, label %cond.true16

cond.end.cond.end20_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end20

cond.true16:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %length17 = getelementptr inbounds %struct.property, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %length17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length17, align 4
  %div18163 = lshr i32 %12, 2
  br label %cond.end20

cond.end20:                                       ; preds = %cond.true16, %cond.end.cond.end20_crit_edge
  %cond21 = phi i32 [ %div18163, %cond.true16 ], [ 0, %cond.end.cond.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond)
  %cmp = icmp ugt i32 %cond, 1
  %cmp.not = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %div162)
  %cmp23.not = icmp eq i32 %cond, %div162
  %or.cond165 = select i1 %cmp.not, i1 true, i1 %cmp23.not
  br i1 %or.cond165, label %if.end29, label %do.end27

do.end27:                                         ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.22, i32 noundef %div162) #11
  br label %cleanup

if.end29:                                         ; preds = %cond.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond21)
  %cmp30 = icmp ugt i32 %cond21, 1
  %cmp30.not = xor i1 %cmp30, true
  call void @__sanitizer_cov_trace_cmp4(i32 %cond21, i32 %div162)
  %cmp32.not = icmp eq i32 %cond21, %div162
  %or.cond166 = select i1 %cmp30.not, i1 true, i1 %cmp32.not
  br i1 %or.cond166, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.25, i32 noundef %div162) #11
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool39.not = icmp eq i32 %cond, 0
  %not.tobool39.not = xor i1 %tobool39.not, true
  %spec.select = zext i1 %not.tobool39.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond21)
  %tobool42.not = icmp eq i32 %cond21, 0
  %inc44 = select i1 %tobool39.not, i32 1, i32 2
  %maps_per_pin.1 = select i1 %tobool42.not, i32 %spec.select, i32 %inc44
  %mul = mul nuw nsw i32 %maps_per_pin.1, %div162
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 28) #8
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %if.end38.cleanup_crit_edge, label %if.end7.i.i, !prof !128

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end38
  %19 = extractvalue { i32, i1 } %17, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #12
  %tobool47.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool47.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp50223.not = icmp ult i32 %8, 4
  br i1 %cmp50223.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %nbanks = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 6
  %npins.i.i = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 7
  %pins.i.i = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 4
  %groups.i = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 5
  %smax = call i32 @llvm.smax.i32(i32 %div162, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0225 = phi i32 [ 0, %for.body.lr.ph ], [ %inc95, %for.inc.for.body_crit_edge ]
  %cur_map.0224 = phi ptr [ %call8.i.i, %for.body.lr.ph ], [ %cur_map.4, %for.inc.for.body_crit_edge ]
  %call51 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.13, i32 noundef %i.0225, ptr noundef nonnull %pin) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %for.body.fail_crit_edge

for.body.fail_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end54:                                         ; preds = %for.body
  %20 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pin, align 4
  %22 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbanks, align 4
  %mul55 = shl i32 %23, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %mul55)
  %cmp56.not = icmp ult i32 %21, %mul55
  br i1 %cmp56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.28) #11
  br label %fail

if.end62:                                         ; preds = %if.end54
  br i1 %tobool39.not, label %if.end62.if.end78_crit_edge, label %if.then64

if.end62.if.end78_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then64:                                        ; preds = %if.end62
  %spec.select167 = select i1 %cmp, i32 %i.0225, i32 0
  %call70 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.16, i32 noundef %spec.select167, ptr noundef nonnull %func) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.then64.fail_crit_edge

if.then64.fail_crit_edge:                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end73:                                         ; preds = %if.then64
  %26 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pin, align 4
  %28 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %func, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp.i = icmp ugt i32 %29, 2
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.30, i32 noundef %29) #11
  br label %fail

if.end.i:                                         ; preds = %if.end73
  %32 = ptrtoint ptr %npins.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %npins.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp6.not.i.i = icmp eq i32 %33, 0
  br i1 %cmp6.not.i.i, label %if.end.i.do.end5.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.do.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %34 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pins.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.pinctrl_pin_desc, ptr %35, i32 %i.07.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %27)
  %cmp1.i.i = icmp eq i32 %37, %27
  br i1 %cmp1.i.i, label %wmt_pctl_find_group_by_pin.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %33
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end5.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.do.end5.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i

wmt_pctl_find_group_by_pin.exit.i:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.07.i.i)
  %cmp1.i = icmp slt i32 %i.07.i.i, 0
  br i1 %cmp1.i, label %wmt_pctl_find_group_by_pin.exit.i.do.end5.i_crit_edge, label %wmt_pctl_dt_node_to_map_func.exit

wmt_pctl_find_group_by_pin.exit.i.do.end5.i_crit_edge: ; preds = %wmt_pctl_find_group_by_pin.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i

do.end5.i:                                        ; preds = %wmt_pctl_find_group_by_pin.exit.i.do.end5.i_crit_edge, %for.inc.i.i.do.end5.i_crit_edge, %if.end.i.do.end5.i_crit_edge
  %retval.0.i3.i = phi i32 [ -22, %for.inc.i.i.do.end5.i_crit_edge ], [ -22, %if.end.i.do.end5.i_crit_edge ], [ %i.07.i.i, %wmt_pctl_find_group_by_pin.exit.i.do.end5.i_crit_edge ]
  %38 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.33, i32 noundef %27) #11
  br label %fail

wmt_pctl_dt_node_to_map_func.exit:                ; preds = %wmt_pctl_find_group_by_pin.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %type.i = getelementptr inbounds %struct.pinctrl_map, ptr %cur_map.0224, i32 0, i32 2
  %40 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %type.i, align 4
  %41 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %groups.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %42, i32 %i.07.i.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %data8.i = getelementptr inbounds %struct.pinctrl_map, ptr %cur_map.0224, i32 0, i32 4
  %45 = ptrtoint ptr %data8.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %data8.i, align 4
  %arrayidx10.i = getelementptr [3 x ptr], ptr @wmt_functions, i32 0, i32 %29
  %46 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx10.i, align 4
  %function.i = getelementptr inbounds %struct.pinctrl_map, ptr %cur_map.0224, i32 0, i32 4, i32 0, i32 1
  %48 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %function.i, align 4
  %incdec.ptr.i = getelementptr %struct.pinctrl_map, ptr %cur_map.0224, i32 1
  br label %if.end78

if.end78:                                         ; preds = %wmt_pctl_dt_node_to_map_func.exit, %if.end62.if.end78_crit_edge
  %cur_map.2 = phi ptr [ %cur_map.0224, %if.end62.if.end78_crit_edge ], [ %incdec.ptr.i, %wmt_pctl_dt_node_to_map_func.exit ]
  br i1 %tobool42.not, label %if.end78.for.inc_crit_edge, label %if.then80

if.end78.for.inc_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then80:                                        ; preds = %if.end78
  %spec.select168 = select i1 %cmp30, i32 %i.0225, i32 0
  %call86 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.17, i32 noundef %spec.select168, ptr noundef nonnull %pull) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.then80.fail_crit_edge

if.then80.fail_crit_edge:                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end89:                                         ; preds = %if.then80
  %49 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pin, align 4
  %51 = ptrtoint ptr %pull to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pull, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp.i169 = icmp ugt i32 %52, 2
  br i1 %cmp.i169, label %do.end.i170, label %if.end.i173

do.end.i170:                                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.38, i32 noundef %52) #11
  br label %fail

if.end.i173:                                      ; preds = %if.end89
  %55 = ptrtoint ptr %npins.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %npins.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp6.not.i.i172 = icmp eq i32 %56, 0
  br i1 %cmp6.not.i.i172, label %if.end.i173.do.end5.i186_crit_edge, label %for.body.lr.ph.i.i175

if.end.i173.do.end5.i186_crit_edge:               ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i186

for.body.lr.ph.i.i175:                            ; preds = %if.end.i173
  %57 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pins.i.i, align 4
  br label %for.body.i.i179

for.body.i.i179:                                  ; preds = %for.inc.i.i182.for.body.i.i179_crit_edge, %for.body.lr.ph.i.i175
  %i.07.i.i176 = phi i32 [ 0, %for.body.lr.ph.i.i175 ], [ %inc.i.i180, %for.inc.i.i182.for.body.i.i179_crit_edge ]
  %arrayidx.i.i177 = getelementptr %struct.pinctrl_pin_desc, ptr %58, i32 %i.07.i.i176
  %59 = ptrtoint ptr %arrayidx.i.i177 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i177, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %50)
  %cmp1.i.i178 = icmp eq i32 %60, %50
  br i1 %cmp1.i.i178, label %wmt_pctl_find_group_by_pin.exit.i184, label %for.inc.i.i182

for.inc.i.i182:                                   ; preds = %for.body.i.i179
  %inc.i.i180 = add nuw i32 %i.07.i.i176, 1
  %exitcond.not.i.i181 = icmp eq i32 %inc.i.i180, %56
  br i1 %exitcond.not.i.i181, label %for.inc.i.i182.do.end5.i186_crit_edge, label %for.inc.i.i182.for.body.i.i179_crit_edge

for.inc.i.i182.for.body.i.i179_crit_edge:         ; preds = %for.inc.i.i182
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i179

for.inc.i.i182.do.end5.i186_crit_edge:            ; preds = %for.inc.i.i182
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i186

wmt_pctl_find_group_by_pin.exit.i184:             ; preds = %for.body.i.i179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.07.i.i176)
  %cmp1.i183 = icmp slt i32 %i.07.i.i176, 0
  br i1 %cmp1.i183, label %wmt_pctl_find_group_by_pin.exit.i184.do.end5.i186_crit_edge, label %if.end7.i188

wmt_pctl_find_group_by_pin.exit.i184.do.end5.i186_crit_edge: ; preds = %wmt_pctl_find_group_by_pin.exit.i184
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i186

do.end5.i186:                                     ; preds = %wmt_pctl_find_group_by_pin.exit.i184.do.end5.i186_crit_edge, %for.inc.i.i182.do.end5.i186_crit_edge, %if.end.i173.do.end5.i186_crit_edge
  %retval.0.i3.i185 = phi i32 [ -22, %for.inc.i.i182.do.end5.i186_crit_edge ], [ -22, %if.end.i173.do.end5.i186_crit_edge ], [ %i.07.i.i176, %wmt_pctl_find_group_by_pin.exit.i184.do.end5.i186_crit_edge ]
  %61 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.33, i32 noundef %50) #11
  br label %fail

if.end7.i188:                                     ; preds = %wmt_pctl_find_group_by_pin.exit.i184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i187 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i187, null
  br i1 %tobool.not.i, label %if.end7.i188.fail_crit_edge, label %if.end10.i

if.end7.i188.fail_crit_edge:                      ; preds = %if.end7.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end10.i:                                       ; preds = %if.end7.i188
  %64 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i32 %52, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb11.i
    i32 2, label %sw.bb13.i
  ]

sw.bb.i:                                          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %call7.i.i.i187 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %call7.i.i.i187, align 8
  br label %wmt_pctl_dt_node_to_map_pull.exit

sw.bb11.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %call7.i.i.i187 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 3, ptr %call7.i.i.i187, align 8
  br label %wmt_pctl_dt_node_to_map_pull.exit

sw.bb13.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %call7.i.i.i187 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 5, ptr %call7.i.i.i187, align 8
  br label %wmt_pctl_dt_node_to_map_pull.exit

sw.default.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %call7.i.i.i187 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %call7.i.i.i187, align 8
  %69 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.43, i32 noundef %52) #11
  br label %wmt_pctl_dt_node_to_map_pull.exit

wmt_pctl_dt_node_to_map_pull.exit:                ; preds = %sw.default.i, %sw.bb13.i, %sw.bb11.i, %sw.bb.i
  %type.i189 = getelementptr inbounds %struct.pinctrl_map, ptr %cur_map.2, i32 0, i32 2
  %71 = ptrtoint ptr %type.i189 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3, ptr %type.i189, align 4
  %72 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %groups.i, align 4
  %arrayidx20.i = getelementptr ptr, ptr %73, i32 %i.07.i.i176
  %74 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx20.i, align 4
  %data21.i = getelementptr inbounds %struct.pinctrl_map, ptr %cur_map.2, i32 0, i32 4
  %76 = ptrtoint ptr %data21.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %data21.i, align 4
  %configs23.i = getelementptr inbounds %struct.pinctrl_map, ptr %cur_map.2, i32 0, i32 4, i32 0, i32 1
  %77 = ptrtoint ptr %configs23.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call7.i.i.i187, ptr %configs23.i, align 4
  %num_configs.i = getelementptr inbounds %struct.pinctrl_map, ptr %cur_map.2, i32 0, i32 4, i32 0, i32 2
  %78 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %num_configs.i, align 4
  %incdec.ptr.i191 = getelementptr %struct.pinctrl_map, ptr %cur_map.2, i32 1
  br label %for.inc

for.inc:                                          ; preds = %wmt_pctl_dt_node_to_map_pull.exit, %if.end78.for.inc_crit_edge
  %cur_map.4 = phi ptr [ %cur_map.2, %if.end78.for.inc_crit_edge ], [ %incdec.ptr.i191, %wmt_pctl_dt_node_to_map_pull.exit ]
  %inc95 = add nuw nsw i32 %i.0225, 1
  %exitcond.not = icmp eq i32 %inc95, %smax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %79 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call8.i.i, ptr %map, align 4
  %80 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %mul, ptr %num_maps, align 4
  br label %cleanup

fail:                                             ; preds = %if.end7.i188.fail_crit_edge, %do.end5.i186, %do.end.i170, %if.then80.fail_crit_edge, %do.end5.i, %do.end.i, %if.then64.fail_crit_edge, %do.end60, %for.body.fail_crit_edge
  %err.0 = phi i32 [ -22, %do.end60 ], [ %retval.0.i3.i, %do.end5.i ], [ -22, %do.end.i ], [ %retval.0.i3.i185, %do.end5.i186 ], [ -22, %do.end.i170 ], [ -12, %if.end7.i188.fail_crit_edge ], [ %call86, %if.then80.fail_crit_edge ], [ %call70, %if.then64.fail_crit_edge ], [ %call51, %for.body.fail_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp8.not.i = icmp eq i32 %mul, 0
  br i1 %cmp8.not.i, label %fail.wmt_pctl_dt_free_map.exit_crit_edge, label %fail.for.body.i_crit_edge

fail.for.body.i_crit_edge:                        ; preds = %fail
  br label %for.body.i

fail.wmt_pctl_dt_free_map.exit_crit_edge:         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  br label %wmt_pctl_dt_free_map.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %fail.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %fail.for.body.i_crit_edge ]
  %type.i193 = getelementptr %struct.pinctrl_map, ptr %call8.i.i, i32 %i.09.i, i32 2
  %81 = ptrtoint ptr %type.i193 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %type.i193, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %cmp1.i194 = icmp eq i32 %82, 3
  br i1 %cmp1.i194, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %configs.i = getelementptr %struct.pinctrl_map, ptr %call8.i.i, i32 %i.09.i, i32 4, i32 0, i32 1
  %83 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %configs.i, align 4
  call void @kfree(ptr noundef %84) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %mul
  br i1 %exitcond.not.i, label %for.inc.i.wmt_pctl_dt_free_map.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.wmt_pctl_dt_free_map.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wmt_pctl_dt_free_map.exit

wmt_pctl_dt_free_map.exit:                        ; preds = %for.inc.i.wmt_pctl_dt_free_map.exit_crit_edge, %fail.wmt_pctl_dt_free_map.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %wmt_pctl_dt_free_map.exit, %for.end, %if.end7.i.i.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %do.end36, %do.end27, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end27 ], [ -22, %do.end36 ], [ %err.0, %wmt_pctl_dt_free_map.exit ], [ 0, %for.end ], [ -22, %do.end9 ], [ -22, %do.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pull) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %func) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pin) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wmt_pctl_dt_free_map(ptr nocapture noundef readnone %pctldev, ptr noundef %maps, i32 noundef %num_maps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_maps)
  %cmp8.not = icmp eq i32 %num_maps, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %type = getelementptr %struct.pinctrl_map, ptr %maps, i32 %i.09, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %configs = getelementptr %struct.pinctrl_map, ptr %maps, i32 %i.09, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %configs, align 4
  tail call void @kfree(ptr noundef %3) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %num_maps
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %maps) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wmt_pmx_get_functions_count(ptr nocapture noundef readnone %pctldev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @wmt_pmx_get_function_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x ptr], ptr @wmt_functions, i32 0, i32 %selector
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_pmx_get_function_groups(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups1 = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups1, align 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %groups, align 4
  %ngroups = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 8
  %3 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ngroups, align 4
  %5 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_pmx_set_mux(ptr noundef %pctldev, i32 noundef %func_selector, i32 noundef %group_selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pins = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %group_selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call1 = tail call fastcc i32 @wmt_set_pinmux(ptr noundef %call, i32 noundef %func_selector, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wmt_pmx_gpio_disable_free(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %shr.i = lshr i32 %offset, 5
  %banks.i = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %banks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %banks.i, align 4
  %arrayidx.i = getelementptr %struct.wmt_pinctrl_bank_registers, ptr %1, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %reg_dir4.i = getelementptr %struct.wmt_pinctrl_bank_registers, ptr %1, i32 %shr.i, i32 1
  %4 = ptrtoint ptr %reg_dir4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_dir4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp.i = icmp eq i32 %5, 65535
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.45, i32 noundef %offset) #11
  br label %wmt_set_pinmux.exit

if.end.i:                                         ; preds = %entry
  %and.i = and i32 %offset, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp5.not.i = icmp eq i32 %3, 65535
  %.pre.i = shl nuw i32 1, %and.i
  br i1 %cmp5.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then6.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %base.i.i = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %3
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !129
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %or.i.i = or i32 %11, %.pre.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %14, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %12) #8, !srcloc !130
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %base.i51.i = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %base.i51.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i51.i, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %16, i32 %5
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52.i) #8, !srcloc !129
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %neg.i.i = xor i32 %.pre.i, -1
  %and.i.i = and i32 %18, %neg.i.i
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  %20 = ptrtoint ptr %base.i51.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i51.i, align 4
  %add.ptr2.i53.i = getelementptr i8, ptr %21, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i53.i, i32 %19) #8, !srcloc !130
  br label %wmt_set_pinmux.exit

wmt_set_pinmux.exit:                              ; preds = %if.end7.i, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_pmx_gpio_set_direction(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset, i1 noundef zeroext %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %not.input = xor i1 %input, true
  %cond = zext i1 %not.input to i32
  %call1 = tail call fastcc i32 @wmt_set_pinmux(ptr noundef %call, i32 noundef %cond, i32 noundef %offset)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wmt_set_pinmux(ptr nocapture noundef readonly %data, i32 noundef %func, i32 noundef %pin) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %pin, 5
  %and = and i32 %pin, 31
  %banks = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %banks, align 4
  %arrayidx = getelementptr %struct.wmt_pinctrl_bank_registers, ptr %1, i32 %shr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %reg_dir4 = getelementptr %struct.wmt_pinctrl_bank_registers, ptr %1, i32 %shr, i32 1
  %4 = ptrtoint ptr %reg_dir4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_dir4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp = icmp eq i32 %5, 65535
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.45, i32 noundef %pin) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %func to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %func, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb15
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp5.not = icmp eq i32 %3, 65535
  %.pre = shl nuw i32 1, %and
  br i1 %cmp5.not, label %sw.bb.if.end7_crit_edge, label %if.then6

sw.bb.if.end7_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %base.i = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %3
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !129
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %or.i = or i32 %12, %.pre
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %15, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %13) #8, !srcloc !130
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %sw.bb.if.end7_crit_edge
  %base.i51 = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i51, align 4
  %add.ptr.i52 = getelementptr i8, ptr %17, i32 %5
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #8, !srcloc !129
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %neg.i = xor i32 %.pre, -1
  %and.i = and i32 %19, %neg.i
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %21 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i51, align 4
  %add.ptr2.i53 = getelementptr i8, ptr %22, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i53, i32 %20) #8, !srcloc !130
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp10.not = icmp eq i32 %3, 65535
  %.pre67 = shl nuw i32 1, %and
  br i1 %cmp10.not, label %sw.bb9.if.end13_crit_edge, label %if.then11

sw.bb9.if.end13_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %base.i54 = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %data, i32 0, i32 2
  %23 = ptrtoint ptr %base.i54 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i54, align 4
  %add.ptr.i55 = getelementptr i8, ptr %24, i32 %3
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #8, !srcloc !129
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  %or.i56 = or i32 %26, %.pre67
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i56) #8
  %28 = ptrtoint ptr %base.i54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i54, align 4
  %add.ptr2.i57 = getelementptr i8, ptr %29, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i57, i32 %27) #8, !srcloc !130
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %sw.bb9.if.end13_crit_edge
  %base.i58 = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %data, i32 0, i32 2
  %30 = ptrtoint ptr %base.i58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i58, align 4
  %add.ptr.i59 = getelementptr i8, ptr %31, i32 %5
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #8, !srcloc !129
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %or.i60 = or i32 %33, %.pre67
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i60) #8
  %35 = ptrtoint ptr %base.i58 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i58, align 4
  %add.ptr2.i61 = getelementptr i8, ptr %36, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i61, i32 %34) #8, !srcloc !130
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp16 = icmp eq i32 %3, 65535
  br i1 %cmp16, label %do.end20, label %if.end22

do.end20:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.48, i32 noundef %pin) #11
  br label %cleanup

if.end22:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  %shl23 = shl nuw i32 1, %and
  %base.i62 = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %data, i32 0, i32 2
  %39 = ptrtoint ptr %base.i62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i62, align 4
  %add.ptr.i63 = getelementptr i8, ptr %40, i32 %3
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #8, !srcloc !129
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #8
  %neg.i64 = xor i32 %shl23, -1
  %and.i65 = and i32 %42, %neg.i64
  %43 = tail call i32 @llvm.bswap.i32(i32 %and.i65) #8
  %44 = ptrtoint ptr %base.i62 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i62, align 4
  %add.ptr2.i66 = getelementptr i8, ptr %45, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i66, i32 %43) #8, !srcloc !130
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end20, %if.end13, %if.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end20 ], [ 0, %if.end22 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end13 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wmt_pinconf_get(ptr nocapture noundef readnone %pctldev, i32 noundef %pin, ptr nocapture noundef readnone %config) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %shr = lshr i32 %pin, 5
  %and = and i32 %pin, 31
  %banks = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %banks, align 4
  %reg_pull_en1 = getelementptr %struct.wmt_pinctrl_bank_registers, ptr %1, i32 %shr, i32 4
  %2 = ptrtoint ptr %reg_pull_en1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_pull_en1, align 4
  %reg_pull_cfg4 = getelementptr %struct.wmt_pinctrl_bank_registers, ptr %1, i32 %shr, i32 5
  %4 = ptrtoint ptr %reg_pull_cfg4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_pull_cfg4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp = icmp eq i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp5 = icmp eq i32 %5, 65535
  %or.cond = select i1 %cmp, i1 true, i1 %cmp5
  br i1 %or.cond, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp682.not = icmp eq i32 %num_configs, 0
  br i1 %cmp682.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %shl23 = shl nuw i32 1, %and
  %base.i72 = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 2
  %neg.i66 = xor i32 %shl23, -1
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.50, i32 noundef %pin) #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx7 = getelementptr i32, ptr %configs, i32 %i.083
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %trunc = trunc i32 %9 to i8
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %trunc, label %for.body.do.end27_crit_edge [
    i8 3, label %for.body.if.then14_crit_edge
    i8 5, label %for.body.if.then14_crit_edge84
    i8 1, label %for.body.sw.bb_crit_edge
  ]

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

for.body.if.then14_crit_edge84:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

for.body.if.then14_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

for.body.do.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

if.then14:                                        ; preds = %for.body.if.then14_crit_edge, %for.body.if.then14_crit_edge84
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %9)
  %cmp15 = icmp ult i32 %9, 256
  br i1 %cmp15, label %if.then14.sw.bb_crit_edge, label %if.end18

if.then14.sw.bb_crit_edge:                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end18:                                         ; preds = %if.then14
  %11 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %trunc, label %if.end18.do.end27_crit_edge [
    i8 5, label %sw.bb22
    i8 3, label %sw.bb19
  ]

if.end18.do.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

sw.bb:                                            ; preds = %if.then14.sw.bb_crit_edge, %for.body.sw.bb_crit_edge
  %12 = ptrtoint ptr %base.i72 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i72, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %3
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !129
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  %and.i63 = and i32 %15, %neg.i66
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i63) #8
  %17 = ptrtoint ptr %base.i72 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i72, align 4
  %add.ptr2.i = getelementptr i8, ptr %18, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %16) #8, !srcloc !130
  br label %for.inc

sw.bb19:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %base.i72 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i72, align 4
  %add.ptr.i65 = getelementptr i8, ptr %20, i32 %5
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #8, !srcloc !129
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %and.i67 = and i32 %22, %neg.i66
  %23 = tail call i32 @llvm.bswap.i32(i32 %and.i67) #8
  %24 = ptrtoint ptr %base.i72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i72, align 4
  %add.ptr2.i68 = getelementptr i8, ptr %25, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i68, i32 %23) #8, !srcloc !130
  %26 = ptrtoint ptr %base.i72 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i72, align 4
  %add.ptr.i70 = getelementptr i8, ptr %27, i32 %3
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #8, !srcloc !129
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  %or.i = or i32 %29, %shl23
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %31 = ptrtoint ptr %base.i72 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i72, align 4
  %add.ptr2.i71 = getelementptr i8, ptr %32, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i71, i32 %30) #8, !srcloc !130
  br label %for.inc

sw.bb22:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %base.i72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i72, align 4
  %add.ptr.i73 = getelementptr i8, ptr %34, i32 %5
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #8, !srcloc !129
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  %or.i74 = or i32 %36, %shl23
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i74) #8
  %38 = ptrtoint ptr %base.i72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i72, align 4
  %add.ptr2.i75 = getelementptr i8, ptr %39, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i75, i32 %37) #8, !srcloc !130
  %40 = ptrtoint ptr %base.i72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i72, align 4
  %add.ptr.i77 = getelementptr i8, ptr %41, i32 %3
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77) #8, !srcloc !129
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  %or.i78 = or i32 %43, %shl23
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i78) #8
  %45 = ptrtoint ptr %base.i72 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i72, align 4
  %add.ptr2.i79 = getelementptr i8, ptr %46, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i79, i32 %44) #8, !srcloc !130
  br label %for.inc

do.end27:                                         ; preds = %if.end18.do.end27_crit_edge, %for.body.do.end27_crit_edge
  %47 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.53) #11
  br label %cleanup

for.inc:                                          ; preds = %sw.bb22, %sw.bb19, %sw.bb
  %inc = add nuw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end27, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end27 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %shr = lshr i32 %offset, 5
  %and = and i32 %offset, 31
  %banks = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %banks, align 4
  %reg_dir1 = getelementptr %struct.wmt_pinctrl_bank_registers, ptr %1, i32 %shr, i32 1
  %2 = ptrtoint ptr %reg_dir1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_dir1, align 4
  %base = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !129
  %7 = xor i32 %6, -1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = lshr i32 %8, %and
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_gpio_direction_input(ptr nocapture noundef readonly %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  %call = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %shr.i = lshr i32 %offset, 5
  %banks.i = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %banks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %banks.i, align 4
  %reg_data_out1.i = getelementptr %struct.wmt_pinctrl_bank_registers, ptr %1, i32 %shr.i, i32 2
  %2 = ptrtoint ptr %reg_data_out1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_data_out1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp.i = icmp eq i32 %3, 65535
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.58) #11
  br label %wmt_gpio_set_value.exit

if.end.i:                                         ; preds = %entry
  %and.i = and i32 %offset, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl3.i = shl nuw i32 1, %and.i
  %base.i15.i = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %base.i15.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i15.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %7, i32 %3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  br i1 %tobool.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i = or i32 %9, %shl3.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %11 = ptrtoint ptr %base.i15.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i15.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %12, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %10) #8, !srcloc !130
  br label %wmt_gpio_set_value.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i.i = xor i32 %shl3.i, -1
  %and.i.i = and i32 %9, %neg.i.i
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  %14 = ptrtoint ptr %base.i15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i15.i, align 4
  %add.ptr2.i17.i = getelementptr i8, ptr %15, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i17.i, i32 %13) #8, !srcloc !130
  br label %wmt_gpio_set_value.exit

wmt_gpio_set_value.exit:                          ; preds = %if.else.i, %if.then2.i, %do.end.i
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base, align 4
  %add = add i32 %17, %offset
  %call = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %add) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_gpio_get_value(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %shr = lshr i32 %offset, 5
  %banks = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %banks, align 4
  %reg_data_in1 = getelementptr %struct.wmt_pinctrl_bank_registers, ptr %1, i32 %shr, i32 3
  %2 = ptrtoint ptr %reg_data_in1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_data_in1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp = icmp eq i32 %3, 65535
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.56) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %offset, 31
  %base = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !129
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = lshr i32 %9, %and
  %11 = and i32 %10, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %11, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wmt_gpio_set_value(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %shr = lshr i32 %offset, 5
  %banks = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %banks, align 4
  %reg_data_out1 = getelementptr %struct.wmt_pinctrl_bank_registers, ptr %1, i32 %shr, i32 2
  %2 = ptrtoint ptr %reg_data_out1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_data_out1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp = icmp eq i32 %3, 65535
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.58) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %offset, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %shl3 = shl nuw i32 1, %and
  %base.i15 = getelementptr inbounds %struct.wmt_pinctrl_data, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %base.i15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i15, align 4
  %add.ptr.i16 = getelementptr i8, ptr %7, i32 %3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %9, %shl3
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %11 = ptrtoint ptr %base.i15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i15, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %10) #8, !srcloc !130
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i = xor i32 %shl3, -1
  %and.i = and i32 %9, %neg.i
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %14 = ptrtoint ptr %base.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i15, align 4
  %add.ptr2.i17 = getelementptr i8, ptr %15, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i17, i32 %13) #8, !srcloc !130
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !98, !99, !100, !102, !103, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 576, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wmt_pinctrl_probe._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @wmt_pinctrl_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @wmt_pinctrl_probe.lock_key, !9, !"lock_key", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 580, i32 8}
!10 = !{ptr @wmt_pinctrl_probe.request_key, !9, !"request_key", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 582, i32 3}
!13 = !{ptr @wmt_pinctrl_probe._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @wmt_pinctrl_probe._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 591, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @wmt_pinctrl_probe._entry.8, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @wmt_pinctrl_probe._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 474, i32 10}
!22 = !{ptr @wmt_desc, !23, !"wmt_desc", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 472, i32 28}
!24 = !{ptr @wmt_pctl_ops, !25, !"wmt_pctl_ops", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 404, i32 33}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 307, i32 30}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 309, i32 3}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @wmt_pctl_dt_node_to_map._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @wmt_pctl_dt_node_to_map._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 313, i32 31}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 314, i32 31}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 317, i32 3}
!39 = !{ptr @wmt_pctl_dt_node_to_map._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @wmt_pctl_dt_node_to_map._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 330, i32 3}
!43 = !{ptr @wmt_pctl_dt_node_to_map._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @wmt_pctl_dt_node_to_map._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 336, i32 3}
!47 = !{ptr @wmt_pctl_dt_node_to_map._entry.24, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @wmt_pctl_dt_node_to_map._entry_ptr.26, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 358, i32 4}
!51 = !{ptr @wmt_pctl_dt_node_to_map._entry.27, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @wmt_pctl_dt_node_to_map._entry_ptr.29, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 216, i32 3}
!55 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @wmt_pctl_dt_node_to_map_func._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @wmt_pctl_dt_node_to_map_func._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 222, i32 3}
!60 = !{ptr @wmt_pctl_dt_node_to_map_func._entry.32, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @wmt_pctl_dt_node_to_map_func._entry_ptr.34, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 54, i32 23}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 55, i32 24}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 56, i32 19}
!68 = !{ptr @wmt_functions, !69, !"wmt_functions", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 53, i32 27}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 244, i32 3}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @wmt_pctl_dt_node_to_map_pull._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @wmt_pctl_dt_node_to_map_pull._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @wmt_pctl_dt_node_to_map_pull._entry.40, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 250, i32 3}
!77 = !{ptr @wmt_pctl_dt_node_to_map_pull._entry_ptr.41, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 270, i32 3}
!80 = !{ptr @wmt_pctl_dt_node_to_map_pull._entry.42, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @wmt_pctl_dt_node_to_map_pull._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @wmt_pinmux_ops, !83, !"wmt_pinmux_ops", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 158, i32 32}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 93, i32 3}
!86 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @wmt_set_pinmux._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @wmt_set_pinmux._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 115, i32 4}
!91 = !{ptr @wmt_set_pinmux._entry.47, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @wmt_set_pinmux._entry_ptr.49, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @wmt_pinconf_ops, !94, !"wmt_pinconf_ops", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 467, i32 33}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 431, i32 3}
!97 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @wmt_pinconf_set._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @wmt_pinconf_set._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 459, i32 4}
!102 = !{ptr @wmt_pinconf_set._entry.52, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @wmt_pinconf_set._entry_ptr.54, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 542, i32 11}
!106 = !{ptr @wmt_gpio_chip, !107, !"wmt_gpio_chip", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 541, i32 31}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 503, i32 3}
!110 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @wmt_gpio_get_value._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @wmt_gpio_get_value._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/vt8500/pinctrl-wmt.c", i32 519, i32 3}
!115 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @wmt_gpio_set_value._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @wmt_gpio_set_value._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"auto-init"}
!128 = !{!"branch_weights", i32 1, i32 2000}
!129 = !{i64 4852657}
!130 = !{i64 4852239}
