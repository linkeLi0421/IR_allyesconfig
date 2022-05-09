; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/sunxi/pinctrl-sunxi.c_pt.bc'
source_filename = "../drivers/pinctrl/sunxi/pinctrl-sunxi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.sunxi_pinctrl = type { ptr, ptr, ptr, ptr, [9 x %struct.sunxi_pinctrl_regulator], ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.raw_spinlock, ptr, i32 }
%struct.sunxi_pinctrl_regulator = type { ptr, %struct.refcount_struct }
%struct.sunxi_pinctrl_desc = type { ptr, i32, i32, i32, ptr, i8, i8, i32 }
%struct.sunxi_desc_pin = type { %struct.pinctrl_pin_desc, i32, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.sunxi_pinctrl_group = type { ptr, i32 }
%struct.sunxi_desc_function = type { i32, ptr, i8, i8, i8 }
%struct.sunxi_pinctrl_function = type { ptr, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.84 }
%union.anon.84 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@sunxi_pinctrl_init_with_variant.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pctl->lock\00", [20 x i8] zeroinitializer }, align 32
@sunxi_pinctrl_init_with_variant._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dt probe failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sunxi_pinctrl_init_with_variant\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pinctrl/sunxi/pinctrl-sunxi.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sunxi_pinctrl_init_with_variant._entry_ptr = internal global ptr @sunxi_pinctrl_init_with_variant._entry, section ".printk_index", align 4
@sunxi_pconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @sunxi_pconf_get, ptr @sunxi_pconf_set, ptr @sunxi_pconf_group_get, ptr @sunxi_pconf_group_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sunxi_pctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @sunxi_pctrl_get_groups_count, ptr @sunxi_pctrl_get_group_name, ptr @sunxi_pctrl_get_group_pins, ptr null, ptr @sunxi_pctrl_dt_node_to_map, ptr @sunxi_pctrl_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@sunxi_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr @sunxi_pmx_request, ptr @sunxi_pmx_free, ptr @sunxi_pmx_get_funcs_cnt, ptr @sunxi_pmx_get_func_name, ptr @sunxi_pmx_get_func_groups, ptr @sunxi_pmx_set_mux, ptr null, ptr null, ptr @sunxi_pmx_gpio_set_direction, i8 1 }, [56 x i8] zeroinitializer }, align 32
@sunxi_pinctrl_init_with_variant._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1485, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't register pinctrl driver\0A\00", [62 x i8] zeroinitializer }, align 32
@sunxi_pinctrl_init_with_variant._entry_ptr.8 = internal global ptr @sunxi_pinctrl_init_with_variant._entry.6, section ".printk_index", align 4
@sunxi_pinctrl_init_with_variant.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sunxi_pinctrl_init_with_variant.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@sunxi_pinctrl_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr @sunxi_pinctrl_irq_of_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@sunxi_pinctrl_init_with_variant._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1559, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't register IRQ domain\0A\00", [34 x i8] zeroinitializer }, align 32
@sunxi_pinctrl_init_with_variant._entry_ptr.12 = internal global ptr @sunxi_pinctrl_init_with_variant._entry.10, section ".printk_index", align 4
@sunxi_pinctrl_irq_lock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sunxi_pinctrl_irq_request_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sunxi_pinctrl_edge_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.50, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_pinctrl_irq_ack, ptr @sunxi_pinctrl_irq_mask, ptr null, ptr @sunxi_pinctrl_irq_unmask, ptr null, ptr null, ptr null, ptr @sunxi_pinctrl_irq_set_type, ptr @sunxi_pinctrl_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_pinctrl_irq_request_resources, ptr @sunxi_pinctrl_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4 }, [56 x i8] zeroinitializer }, align 32
@sunxi_pinctrl_init_with_variant._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1589, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"initialized sunXi PIO driver\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sunxi_pinctrl_init_with_variant._entry_ptr.16 = internal global ptr @sunxi_pinctrl_init_with_variant._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@sunxi_pctrl_dt_node_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"missing function property in node %pOFn\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sunxi_pctrl_dt_node_to_map\00", [37 x i8] zeroinitializer }, align 32
@sunxi_pctrl_dt_node_to_map._entry_ptr = internal global ptr @sunxi_pctrl_dt_node_to_map._entry, section ".printk_index", align 4
@sunxi_pctrl_dt_node_to_map._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 352, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"missing pins property in node %pOFn\0A\00", [59 x i8] zeroinitializer }, align 32
@sunxi_pctrl_dt_node_to_map._entry_ptr.22 = internal global ptr @sunxi_pctrl_dt_node_to_map._entry.20, section ".printk_index", align 4
@sunxi_pctrl_dt_node_to_map._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 379, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown pin %s\00", [17 x i8] zeroinitializer }, align 32
@sunxi_pctrl_dt_node_to_map._entry_ptr.25 = internal global ptr @sunxi_pctrl_dt_node_to_map._entry.23, section ".printk_index", align 4
@sunxi_pctrl_dt_node_to_map._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.3, i32 387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported function %s on pin %s\00", [62 x i8] zeroinitializer }, align 32
@sunxi_pctrl_dt_node_to_map._entry_ptr.28 = internal global ptr @sunxi_pctrl_dt_node_to_map._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"function\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"allwinner,function\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pins\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"allwinner,pins\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drive-strength\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"allwinner,drive\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bias-pull-up\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bias-pull-down\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bias-disable\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"allwinner,pull\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vcc-p%c\00", [24 x i8] zeroinitializer }, align 32
@sunxi_pmx_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 789, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't get bank P%c regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sunxi_pmx_request\00", [46 x i8] zeroinitializer }, align 32
@sunxi_pmx_request._entry_ptr = internal global ptr @sunxi_pmx_request._entry, section ".printk_index", align 4
@sunxi_pmx_request._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 796, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Couldn't enable bank P%c regulator\0A\00", [60 x i8] zeroinitializer }, align 32
@sunxi_pmx_request._entry_ptr.44 = internal global ptr @sunxi_pmx_request._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_in\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_out\00", [23 x i8] zeroinitializer }, align 32
@sunxi_pinctrl_gpio_to_irq.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 -21, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pinctrl_sunxi\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sunxi_pinctrl_gpio_to_irq\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: request IRQ for GPIO %d, return %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sunxi_pio_edge\00", [17 x i8] zeroinitializer }, align 32
@sunxi_pinctrl_level_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.51, ptr null, ptr null, ptr @sunxi_pinctrl_irq_ack_unmask, ptr @sunxi_pinctrl_irq_mask, ptr null, ptr @sunxi_pinctrl_irq_mask, ptr null, ptr @sunxi_pinctrl_irq_unmask, ptr @sunxi_pinctrl_irq_ack, ptr null, ptr null, ptr @sunxi_pinctrl_irq_set_type, ptr @sunxi_pinctrl_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_pinctrl_irq_request_resources, ptr @sunxi_pinctrl_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 70 }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sunxi_pio_level\00", [16 x i8] zeroinitializer }, align 32
@sunxi_pinctrl_irq_request_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 960, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to lock HW IRQ %lu for IRQ\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sunxi_pinctrl_irq_request_resources\00", [60 x i8] zeroinitializer }, align 32
@sunxi_pinctrl_irq_request_resources._entry_ptr = internal global ptr @sunxi_pinctrl_irq_request_resources._entry, section ".printk_index", align 4
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"input-debounce\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"losc\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hosc\00", [27 x i8] zeroinitializer }, align 32
@switch.table.sunxi_pconf_get = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 28, i32 20, i32 28, i32 20, i32 28, i32 20, i32 20, i32 20, i32 20], [60 x i8] zeroinitializer }, align 32
@switch.table.sunxi_pinctrl_irq_set_type = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 4, i32 2, i32 0, i32 0, i32 0, i32 3], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1422, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1441, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [16 x i8] c"sunxi_pconf_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 613, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"sunxi_pctrl_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 446, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"sunxi_pmx_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 831, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1485, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1512, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1527, i32 51 }
@___asan_gen_.108 = private unnamed_addr constant [29 x i8] c"sunxi_pinctrl_irq_domain_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1140, i32 36 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1559, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [29 x i8] c"sunxi_pinctrl_irq_lock_class\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 43, i32 30 }
@___asan_gen_.120 = private unnamed_addr constant [32 x i8] c"sunxi_pinctrl_irq_request_class\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 44, i32 30 }
@___asan_gen_.123 = private unnamed_addr constant [28 x i8] c"sunxi_pinctrl_edge_irq_chip\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1083, i32 24 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1589, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1257, i32 28 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 344, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 351, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 379, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 386, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 237, i32 38 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 242, i32 38 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 255, i32 42 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 262, i32 42 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 172, i32 32 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 173, i32 26 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 164, i32 32 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 165, i32 26 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 166, i32 26 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 167, i32 26 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 785, i32 35 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 788, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 795, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 756, i32 10 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 758, i32 10 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 939, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1084, i32 11 }
@___asan_gen_.231 = private unnamed_addr constant [29 x i8] c"sunxi_pinctrl_level_irq_chip\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1095, i32 24 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1096, i32 11 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 959, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1357, i32 30 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1360, i32 33 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private constant [41 x i8] c"../drivers/pinctrl/sunxi/pinctrl-sunxi.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1364, i32 33 }
@___asan_gen_.255 = private unnamed_addr constant [29 x i8] c"switch.table.sunxi_pconf_get\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [40 x i8] c"switch.table.sunxi_pinctrl_irq_set_type\00", align 1
@llvm.compiler.used = appending global [78 x ptr] [ptr @sunxi_pctrl_dt_node_to_map._entry, ptr @sunxi_pctrl_dt_node_to_map._entry.20, ptr @sunxi_pctrl_dt_node_to_map._entry.23, ptr @sunxi_pctrl_dt_node_to_map._entry.26, ptr @sunxi_pctrl_dt_node_to_map._entry_ptr, ptr @sunxi_pctrl_dt_node_to_map._entry_ptr.22, ptr @sunxi_pctrl_dt_node_to_map._entry_ptr.25, ptr @sunxi_pctrl_dt_node_to_map._entry_ptr.28, ptr @sunxi_pinctrl_init_with_variant._entry, ptr @sunxi_pinctrl_init_with_variant._entry.10, ptr @sunxi_pinctrl_init_with_variant._entry.13, ptr @sunxi_pinctrl_init_with_variant._entry.6, ptr @sunxi_pinctrl_init_with_variant._entry_ptr, ptr @sunxi_pinctrl_init_with_variant._entry_ptr.12, ptr @sunxi_pinctrl_init_with_variant._entry_ptr.16, ptr @sunxi_pinctrl_init_with_variant._entry_ptr.8, ptr @sunxi_pinctrl_irq_request_resources._entry, ptr @sunxi_pinctrl_irq_request_resources._entry_ptr, ptr @sunxi_pmx_request._entry, ptr @sunxi_pmx_request._entry.42, ptr @sunxi_pmx_request._entry_ptr, ptr @sunxi_pmx_request._entry_ptr.44, ptr @sunxi_pinctrl_init_with_variant.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sunxi_pconf_ops, ptr @sunxi_pctrl_ops, ptr @sunxi_pmx_ops, ptr @.str.7, ptr @sunxi_pinctrl_init_with_variant.lock_key, ptr @sunxi_pinctrl_init_with_variant.request_key, ptr @.str.9, ptr @sunxi_pinctrl_irq_domain_ops, ptr @.str.11, ptr @sunxi_pinctrl_irq_lock_class, ptr @sunxi_pinctrl_irq_request_class, ptr @sunxi_pinctrl_edge_irq_chip, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @sunxi_pinctrl_level_irq_chip, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @switch.table.sunxi_pconf_get, ptr @switch.table.sunxi_pinctrl_irq_set_type], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pinctrl_init_with_variant.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pinctrl_init_with_variant._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pinctrl_init_with_variant._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pinctrl_init_with_variant.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pinctrl_init_with_variant.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pinctrl_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pinctrl_init_with_variant._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pinctrl_irq_lock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pinctrl_irq_request_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pinctrl_edge_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pinctrl_init_with_variant._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pctrl_dt_node_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pctrl_dt_node_to_map._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pctrl_dt_node_to_map._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pctrl_dt_node_to_map._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pmx_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pmx_request._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pinctrl_level_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_pinctrl_irq_request_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sunxi_pconf_get to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sunxi_pinctrl_irq_set_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sunxi_pinctrl_init_with_variant(ptr noundef %pdev, ptr noundef %desc, i32 noundef %variant) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 168, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup248_crit_edge, label %if.end

entry.cleanup248_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup248

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @sunxi_pinctrl_init_with_variant.__key, i16 noundef signext 2) #13
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #13
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup248

if.end8:                                          ; preds = %if.end
  %dev10 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev10, align 4
  %desc11 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %desc11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %desc, ptr %desc11, align 4
  %variant12 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i, i32 0, i32 14
  %7 = ptrtoint ptr %variant12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %variant, ptr %variant12, align 4
  %irq_banks = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %desc, i32 0, i32 3
  %8 = ptrtoint ptr %irq_banks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_banks, align 4
  %mul = shl i32 %9, 5
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 4) #13
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !128

devm_kcalloc.exit.thread:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %irq_array444 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i, i32 0, i32 11
  %12 = ptrtoint ptr %irq_array444 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %irq_array444, align 4
  br label %cleanup248

devm_kcalloc.exit:                                ; preds = %if.end8
  %13 = extractvalue { i32, i1 } %10, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %13, i32 noundef 3520) #13
  %irq_array = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i, i32 0, i32 11
  %14 = ptrtoint ptr %irq_array to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i, ptr %irq_array, align 4
  %tobool17.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool17.not, label %devm_kcalloc.exit.cleanup248_crit_edge, label %if.end19

devm_kcalloc.exit.cleanup248_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup248

if.end19:                                         ; preds = %devm_kcalloc.exit
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  %desc.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc.i, align 4
  %npins.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %npins.i, align 4
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 8) #13
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !128

devm_kcalloc.exit.thread.i:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %groups250.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %16, i32 0, i32 8
  %23 = ptrtoint ptr %groups250.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %groups250.i, align 4
  br label %do.end25

devm_kcalloc.exit.i:                              ; preds = %if.end19
  %24 = extractvalue { i32, i1 } %21, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %24, i32 noundef 3520) #13
  %groups.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %16, i32 0, i32 8
  %25 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call5.i.i.i, ptr %groups.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.do.end25_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.do.end25_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end25

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  %26 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc.i, align 4
  %npins4272.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %npins4272.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %npins4272.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp273.i = icmp sgt i32 %29, 0
  br i1 %cmp273.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %ngroups.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %16, i32 0, i32 9
  %variant9.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %16, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %30 = phi ptr [ %27, %for.body.lr.ph.i ], [ %50, %cleanup.i.for.body.i_crit_edge ]
  %i.0274.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc20.i, %cleanup.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %add.ptr.i = getelementptr %struct.sunxi_desc_pin, ptr %32, i32 %i.0274.i
  %33 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %groups.i, align 4
  %35 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ngroups.i, align 4
  %add.ptr7.i = getelementptr %struct.sunxi_pinctrl_group, ptr %34, i32 %36
  %variant.i = getelementptr %struct.sunxi_desc_pin, ptr %32, i32 %i.0274.i, i32 1
  %37 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %variant.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool8.not.i = icmp eq i32 %38, 0
  br i1 %tobool8.not.i, label %for.body.i.if.end13.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end13.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %39 = ptrtoint ptr %variant9.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %variant9.i, align 4
  %and.i = and i32 %40, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.cleanup.i_crit_edge, label %land.lhs.true.i.if.end13.i_crit_edge

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end13.i:                                       ; preds = %land.lhs.true.i.if.end13.i_crit_edge, %for.body.i.if.end13.i_crit_edge
  %name.i = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %add.ptr.i, i32 0, i32 1
  %41 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name.i, align 4
  %43 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %add.ptr7.i, align 4
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i, align 4
  %pin17.i = getelementptr %struct.sunxi_pinctrl_group, ptr %34, i32 %36, i32 1
  %46 = ptrtoint ptr %pin17.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %pin17.i, align 4
  %47 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ngroups.i, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %ngroups.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end13.i, %land.lhs.true.i.cleanup.i_crit_edge
  %inc20.i = add nuw nsw i32 %i.0274.i, 1
  %49 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %desc.i, align 4
  %npins4.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %npins4.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %npins4.i, align 4
  %cmp.i403 = icmp slt i32 %inc20.i, %52
  br i1 %cmp.i403, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %ngroups21.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %16, i32 0, i32 9
  %53 = ptrtoint ptr %ngroups21.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ngroups21.i, align 4
  %mul.i = shl i32 %54, 2
  %add.i = add i32 %mul.i, 4
  %55 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 12) #13
  %56 = extractvalue { i32, i1 } %55, 1
  br i1 %56, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !128

kcalloc.exit.thread.i:                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %functions253.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %16, i32 0, i32 6
  %57 = ptrtoint ptr %functions253.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %functions253.i, align 4
  br label %do.end25

if.end7.i.i.i:                                    ; preds = %for.end.i
  %58 = extractvalue { i32, i1 } %55, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %58, i32 noundef 3520) #16
  %functions.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %16, i32 0, i32 6
  %59 = ptrtoint ptr %functions.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call8.i.i.i, ptr %functions.i, align 4
  %tobool24.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool24.not.i, label %if.end7.i.i.i.do.end25_crit_edge, label %for.cond27.preheader.i

if.end7.i.i.i.do.end25_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end25

for.cond27.preheader.i:                           ; preds = %if.end7.i.i.i
  %60 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %desc.i, align 4
  %npins29281.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %npins29281.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %npins29281.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp30282.i = icmp sgt i32 %63, 0
  br i1 %cmp30282.i, label %for.body31.lr.ph.i, label %for.cond27.preheader.i.for.end80.i_crit_edge

for.cond27.preheader.i.for.end80.i_crit_edge:     ; preds = %for.cond27.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end80.i

for.body31.lr.ph.i:                               ; preds = %for.cond27.preheader.i
  %variant39.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %16, i32 0, i32 14
  %irq_array.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %16, i32 0, i32 11
  %nfunctions.i.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %16, i32 0, i32 7
  br label %for.body31.i

for.body31.i:                                     ; preds = %cleanup74.i.for.body31.i_crit_edge, %for.body31.lr.ph.i
  %64 = phi ptr [ %61, %for.body31.lr.ph.i ], [ %105, %cleanup74.i.for.body31.i_crit_edge ]
  %i.1283.i = phi i32 [ 0, %for.body31.lr.ph.i ], [ %inc79.i, %cleanup74.i.for.body31.i_crit_edge ]
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %add.ptr35.i = getelementptr %struct.sunxi_desc_pin, ptr %66, i32 %i.1283.i
  %variant36.i = getelementptr %struct.sunxi_desc_pin, ptr %66, i32 %i.1283.i, i32 1
  %67 = ptrtoint ptr %variant36.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %variant36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool37.not.i = icmp eq i32 %68, 0
  br i1 %tobool37.not.i, label %for.body31.i.if.end44.i_crit_edge, label %land.lhs.true38.i

for.body31.i.if.end44.i_crit_edge:                ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.i

land.lhs.true38.i:                                ; preds = %for.body31.i
  %69 = ptrtoint ptr %variant39.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %variant39.i, align 4
  %and41.i = and i32 %70, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %land.lhs.true38.i.cleanup74.i_crit_edge, label %land.lhs.true38.i.if.end44.i_crit_edge

land.lhs.true38.i.if.end44.i_crit_edge:           ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.i

land.lhs.true38.i.cleanup74.i_crit_edge:          ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup74.i

if.end44.i:                                       ; preds = %land.lhs.true38.i.if.end44.i_crit_edge, %for.body31.i.if.end44.i_crit_edge
  %functions45.i = getelementptr %struct.sunxi_desc_pin, ptr %66, i32 %i.1283.i, i32 2
  %71 = ptrtoint ptr %functions45.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %functions45.i, align 4
  %name47275.i = getelementptr inbounds %struct.sunxi_desc_function, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %name47275.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name47275.i, align 4
  %tobool48.not276.i = icmp eq ptr %74, null
  br i1 %tobool48.not276.i, label %if.end44.i.cleanup74.i_crit_edge, label %if.end44.i.for.body49.i_crit_edge

if.end44.i.for.body49.i_crit_edge:                ; preds = %if.end44.i
  br label %for.body49.i

if.end44.i.cleanup74.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup74.i

for.body49.i:                                     ; preds = %for.inc72.i.for.body49.i_crit_edge, %if.end44.i.for.body49.i_crit_edge
  %75 = phi ptr [ %103, %for.inc72.i.for.body49.i_crit_edge ], [ %74, %if.end44.i.for.body49.i_crit_edge ]
  %name47280.i = phi ptr [ %name47.i, %for.inc72.i.for.body49.i_crit_edge ], [ %name47275.i, %if.end44.i.for.body49.i_crit_edge ]
  %func.0277.i = phi ptr [ %incdec.ptr.i, %for.inc72.i.for.body49.i_crit_edge ], [ %72, %if.end44.i.for.body49.i_crit_edge ]
  %76 = ptrtoint ptr %func.0277.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %func.0277.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool51.not.i = icmp eq i32 %77, 0
  br i1 %tobool51.not.i, label %for.body49.i.if.end58.i_crit_edge, label %land.lhs.true52.i

for.body49.i.if.end58.i_crit_edge:                ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58.i

land.lhs.true52.i:                                ; preds = %for.body49.i
  %78 = ptrtoint ptr %variant39.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %variant39.i, align 4
  %and55.i = and i32 %79, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %land.lhs.true52.i.for.inc72.i_crit_edge, label %land.lhs.true52.i.if.end58.i_crit_edge

land.lhs.true52.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58.i

land.lhs.true52.i.for.inc72.i_crit_edge:          ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc72.i

if.end58.i:                                       ; preds = %land.lhs.true52.i.if.end58.i_crit_edge, %for.body49.i.if.end58.i_crit_edge
  %call60.i = tail call i32 @strcmp(ptr noundef nonnull %75, ptr noundef nonnull dereferenceable(4) @.str.17) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.then62.i, label %if.end58.i.if.end69.i_crit_edge

if.end58.i.if.end69.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69.i

if.then62.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  %irqnum63.i = getelementptr inbounds %struct.sunxi_desc_function, ptr %func.0277.i, i32 0, i32 4
  %80 = ptrtoint ptr %irqnum63.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %irqnum63.i, align 2
  %conv.i = zext i8 %81 to i32
  %irqbank.i = getelementptr inbounds %struct.sunxi_desc_function, ptr %func.0277.i, i32 0, i32 3
  %82 = ptrtoint ptr %irqbank.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %irqbank.i, align 1
  %conv64.i = zext i8 %83 to i32
  %mul65.i = shl nuw nsw i32 %conv64.i, 5
  %add66.i = add nuw nsw i32 %mul65.i, %conv.i
  %84 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr35.i, align 4
  %86 = ptrtoint ptr %irq_array.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %irq_array.i, align 4
  %arrayidx.i = getelementptr i32, ptr %87, i32 %add66.i
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %85, ptr %arrayidx.i, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then62.i, %if.end58.i.if.end69.i_crit_edge
  %89 = ptrtoint ptr %name47280.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name47280.i, align 4
  %91 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %functions.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %tobool.not2.i.i = icmp eq ptr %94, null
  br i1 %tobool.not2.i.i, label %if.end69.i.while.end.i.i_crit_edge, label %if.end69.i.while.body.i.i_crit_edge

if.end69.i.while.body.i.i_crit_edge:              ; preds = %if.end69.i
  br label %while.body.i.i

if.end69.i.while.end.i.i_crit_edge:               ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %if.end.i.i404.while.body.i.i_crit_edge, %if.end69.i.while.body.i.i_crit_edge
  %95 = phi ptr [ %97, %if.end.i.i404.while.body.i.i_crit_edge ], [ %94, %if.end69.i.while.body.i.i_crit_edge ]
  %func.03.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i404.while.body.i.i_crit_edge ], [ %92, %if.end69.i.while.body.i.i_crit_edge ]
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %95, ptr noundef %90) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i404

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %ngroups.i.i = getelementptr inbounds %struct.sunxi_pinctrl_function, ptr %func.03.i.i, i32 0, i32 2
  br label %sunxi_pinctrl_add_function.exit.i

if.end.i.i404:                                    ; preds = %while.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.sunxi_pinctrl_function, ptr %func.03.i.i, i32 1
  %96 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %97, null
  br i1 %tobool.not.i.i, label %if.end.i.i404.while.end.i.i_crit_edge, label %if.end.i.i404.while.body.i.i_crit_edge

if.end.i.i404.while.body.i.i_crit_edge:           ; preds = %if.end.i.i404
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

if.end.i.i404.while.end.i.i_crit_edge:            ; preds = %if.end.i.i404
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end.i.i404.while.end.i.i_crit_edge, %if.end69.i.while.end.i.i_crit_edge
  %func.0.lcssa.i.i = phi ptr [ %92, %if.end69.i.while.end.i.i_crit_edge ], [ %incdec.ptr.i.i, %if.end.i.i404.while.end.i.i_crit_edge ]
  %98 = ptrtoint ptr %func.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %90, ptr %func.0.lcssa.i.i, align 4
  %ngroups4.i.i = getelementptr inbounds %struct.sunxi_pinctrl_function, ptr %func.0.lcssa.i.i, i32 0, i32 2
  %99 = ptrtoint ptr %ngroups4.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %ngroups4.i.i, align 4
  br label %sunxi_pinctrl_add_function.exit.i

sunxi_pinctrl_add_function.exit.i:                ; preds = %while.end.i.i, %if.then.i.i
  %nfunctions.sink6.i.i = phi ptr [ %nfunctions.i.i, %while.end.i.i ], [ %ngroups.i.i, %if.then.i.i ]
  %100 = ptrtoint ptr %nfunctions.sink6.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %nfunctions.sink6.i.i, align 4
  %inc5.i.i = add i32 %101, 1
  store i32 %inc5.i.i, ptr %nfunctions.sink6.i.i, align 4
  br label %for.inc72.i

for.inc72.i:                                      ; preds = %sunxi_pinctrl_add_function.exit.i, %land.lhs.true52.i.for.inc72.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.sunxi_desc_function, ptr %func.0277.i, i32 1
  %name47.i = getelementptr %struct.sunxi_desc_function, ptr %func.0277.i, i32 1, i32 1
  %102 = ptrtoint ptr %name47.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %name47.i, align 4
  %tobool48.not.i = icmp eq ptr %103, null
  br i1 %tobool48.not.i, label %for.inc72.i.cleanup74.i_crit_edge, label %for.inc72.i.for.body49.i_crit_edge

for.inc72.i.for.body49.i_crit_edge:               ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body49.i

for.inc72.i.cleanup74.i_crit_edge:                ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup74.i

cleanup74.i:                                      ; preds = %for.inc72.i.cleanup74.i_crit_edge, %if.end44.i.cleanup74.i_crit_edge, %land.lhs.true38.i.cleanup74.i_crit_edge
  %inc79.i = add nuw nsw i32 %i.1283.i, 1
  %104 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %desc.i, align 4
  %npins29.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %npins29.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %npins29.i, align 4
  %cmp30.i = icmp slt i32 %inc79.i, %107
  br i1 %cmp30.i, label %cleanup74.i.for.body31.i_crit_edge, label %cleanup74.i.for.end80.i_crit_edge

cleanup74.i.for.end80.i_crit_edge:                ; preds = %cleanup74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end80.i

cleanup74.i.for.body31.i_crit_edge:               ; preds = %cleanup74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body31.i

for.end80.i:                                      ; preds = %cleanup74.i.for.end80.i_crit_edge, %for.cond27.preheader.i.for.end80.i_crit_edge
  %108 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %functions.i, align 4
  %nfunctions.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %16, i32 0, i32 7
  %110 = ptrtoint ptr %nfunctions.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nfunctions.i, align 4
  %mul82.i = mul i32 %111, 12
  %call83.i = tail call noalias ptr @krealloc(ptr noundef %109, i32 noundef %mul82.i, i32 noundef 3264) #18
  %tobool84.not.i = icmp eq ptr %call83.i, null
  br i1 %tobool84.not.i, label %if.then85.i, label %if.end88.i

if.then85.i:                                      ; preds = %for.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  %112 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %functions.i, align 4
  tail call void @kfree(ptr noundef %113) #13
  %114 = ptrtoint ptr %functions.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %functions.i, align 4
  br label %do.end25

if.end88.i:                                       ; preds = %for.end80.i
  %115 = ptrtoint ptr %functions.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call83.i, ptr %functions.i, align 4
  %116 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %desc.i, align 4
  %npins92288.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %npins92288.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %npins92288.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp93289.i = icmp sgt i32 %119, 0
  br i1 %cmp93289.i, label %for.body95.lr.ph.i, label %if.end88.i.if.end27_crit_edge

if.end88.i.if.end27_crit_edge:                    ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.body95.lr.ph.i:                               ; preds = %if.end88.i
  %variant104.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %16, i32 0, i32 14
  br label %for.body95.i

for.body95.i:                                     ; preds = %for.inc159.i.for.body95.i_crit_edge, %for.body95.lr.ph.i
  %120 = phi ptr [ %117, %for.body95.lr.ph.i ], [ %163, %for.inc159.i.for.body95.i_crit_edge ]
  %i.2290.i = phi i32 [ 0, %for.body95.lr.ph.i ], [ %inc160.i, %for.inc159.i.for.body95.i_crit_edge ]
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %variant101.i = getelementptr %struct.sunxi_desc_pin, ptr %122, i32 %i.2290.i, i32 1
  %123 = ptrtoint ptr %variant101.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %variant101.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool102.not.i = icmp eq i32 %124, 0
  br i1 %tobool102.not.i, label %for.body95.i.if.end109.i_crit_edge, label %land.lhs.true103.i

for.body95.i.if.end109.i_crit_edge:               ; preds = %for.body95.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109.i

land.lhs.true103.i:                               ; preds = %for.body95.i
  %125 = ptrtoint ptr %variant104.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %variant104.i, align 4
  %and106.i = and i32 %126, %124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %land.lhs.true103.i.for.inc159.i_crit_edge, label %land.lhs.true103.i.if.end109.i_crit_edge

land.lhs.true103.i.if.end109.i_crit_edge:         ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109.i

land.lhs.true103.i.for.inc159.i_crit_edge:        ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc159.i

if.end109.i:                                      ; preds = %land.lhs.true103.i.if.end109.i_crit_edge, %for.body95.i.if.end109.i_crit_edge
  %functions110.i = getelementptr %struct.sunxi_desc_pin, ptr %122, i32 %i.2290.i, i32 2
  %127 = ptrtoint ptr %functions110.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %functions110.i, align 4
  %name112285.i = getelementptr inbounds %struct.sunxi_desc_function, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %name112285.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %name112285.i, align 4
  %tobool113.not286.i = icmp eq ptr %130, null
  br i1 %tobool113.not286.i, label %if.end109.i.for.inc159.i_crit_edge, label %for.body114.lr.ph.i

if.end109.i.for.inc159.i_crit_edge:               ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc159.i

for.body114.lr.ph.i:                              ; preds = %if.end109.i
  %name147.i = getelementptr %struct.sunxi_desc_pin, ptr %122, i32 %i.2290.i, i32 0, i32 1
  br label %for.body114.i

for.body114.i:                                    ; preds = %for.inc152.i.for.body114.i_crit_edge, %for.body114.lr.ph.i
  %131 = phi ptr [ %130, %for.body114.lr.ph.i ], [ %161, %for.inc152.i.for.body114.i_crit_edge ]
  %func100.0287.i = phi ptr [ %128, %for.body114.lr.ph.i ], [ %incdec.ptr153.i, %for.inc152.i.for.body114.i_crit_edge ]
  %132 = ptrtoint ptr %func100.0287.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %func100.0287.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool116.not.i = icmp eq i32 %133, 0
  br i1 %tobool116.not.i, label %for.body114.i.if.end123.i_crit_edge, label %land.lhs.true117.i

for.body114.i.if.end123.i_crit_edge:              ; preds = %for.body114.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123.i

land.lhs.true117.i:                               ; preds = %for.body114.i
  %134 = ptrtoint ptr %variant104.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %variant104.i, align 4
  %and120.i = and i32 %135, %133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %land.lhs.true117.i.for.inc152.i_crit_edge, label %land.lhs.true117.i.if.end123.i_crit_edge

land.lhs.true117.i.if.end123.i_crit_edge:         ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123.i

land.lhs.true117.i.for.inc152.i_crit_edge:        ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc152.i

if.end123.i:                                      ; preds = %land.lhs.true117.i.if.end123.i_crit_edge, %for.body114.i.if.end123.i_crit_edge
  %136 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %functions.i, align 4
  %138 = ptrtoint ptr %nfunctions.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %nfunctions.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp15.not.i.i = icmp eq i32 %139, 0
  br i1 %cmp15.not.i.i, label %if.end123.i.if.then127.i_crit_edge, label %if.end123.i.for.body.i.i_crit_edge

if.end123.i.for.body.i.i_crit_edge:               ; preds = %if.end123.i
  br label %for.body.i.i

if.end123.i.if.then127.i_crit_edge:               ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then127.i

for.cond.i.i:                                     ; preds = %if.end.i244.i
  %inc.i.i = add nuw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %139
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.then127.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.cond.i.i.if.then127.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then127.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end123.i.for.body.i.i_crit_edge
  %i.016.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end123.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sunxi_pinctrl_function, ptr %137, i32 %i.016.i.i
  %140 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i242.i = icmp eq ptr %141, null
  br i1 %tobool.not.i242.i, label %for.body.i.i.if.then127.i_crit_edge, label %if.end.i244.i

for.body.i.i.if.then127.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then127.i

if.end.i244.i:                                    ; preds = %for.body.i.i
  %call.i243.i = tail call i32 @strcmp(ptr noundef nonnull %141, ptr noundef nonnull %131) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243.i)
  %tobool4.not.i.i = icmp eq i32 %call.i243.i, 0
  br i1 %tobool4.not.i.i, label %sunxi_pinctrl_find_function_by_name.exit.i, label %for.cond.i.i

sunxi_pinctrl_find_function_by_name.exit.i:       ; preds = %if.end.i244.i
  %tobool126.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool126.not.i, label %sunxi_pinctrl_find_function_by_name.exit.i.if.then127.i_crit_edge, label %if.end129.i

sunxi_pinctrl_find_function_by_name.exit.i.if.then127.i_crit_edge: ; preds = %sunxi_pinctrl_find_function_by_name.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then127.i

if.then127.i:                                     ; preds = %sunxi_pinctrl_find_function_by_name.exit.i.if.then127.i_crit_edge, %for.body.i.i.if.then127.i_crit_edge, %for.cond.i.i.if.then127.i_crit_edge, %if.end123.i.if.then127.i_crit_edge
  tail call void @kfree(ptr noundef %137) #13
  br label %do.end25

if.end129.i:                                      ; preds = %sunxi_pinctrl_find_function_by_name.exit.i
  %groups130.i = getelementptr %struct.sunxi_pinctrl_function, ptr %137, i32 %i.016.i.i, i32 1
  %142 = ptrtoint ptr %groups130.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %groups130.i, align 4
  %tobool131.not.i = icmp eq ptr %143, null
  br i1 %tobool131.not.i, label %if.then132.i, label %if.end129.i.if.end142.i_crit_edge

if.end129.i.if.end142.i_crit_edge:                ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end142.i

if.then132.i:                                     ; preds = %if.end129.i
  %ngroups134.i = getelementptr %struct.sunxi_pinctrl_function, ptr %137, i32 %i.016.i.i, i32 2
  %144 = ptrtoint ptr %ngroups134.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ngroups134.i, align 4
  %146 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %145, i32 4) #13
  %147 = extractvalue { i32, i1 } %146, 1
  br i1 %147, label %devm_kcalloc.exit248.thread.i, label %devm_kcalloc.exit248.i, !prof !128

devm_kcalloc.exit248.thread.i:                    ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #15
  %148 = ptrtoint ptr %groups130.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %groups130.i, align 4
  br label %if.then139.i

devm_kcalloc.exit248.i:                           ; preds = %if.then132.i
  %149 = extractvalue { i32, i1 } %146, 0
  %call5.i.i245.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %149, i32 noundef 3520) #13
  %150 = ptrtoint ptr %groups130.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call5.i.i245.i, ptr %groups130.i, align 4
  %tobool138.not.i = icmp eq ptr %call5.i.i245.i, null
  br i1 %tobool138.not.i, label %devm_kcalloc.exit248.i.if.then139.i_crit_edge, label %devm_kcalloc.exit248.i.if.end142.i_crit_edge

devm_kcalloc.exit248.i.if.end142.i_crit_edge:     ; preds = %devm_kcalloc.exit248.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end142.i

devm_kcalloc.exit248.i.if.then139.i_crit_edge:    ; preds = %devm_kcalloc.exit248.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then139.i

if.then139.i:                                     ; preds = %devm_kcalloc.exit248.i.if.then139.i_crit_edge, %devm_kcalloc.exit248.thread.i
  %151 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %functions.i, align 4
  tail call void @kfree(ptr noundef %152) #13
  br label %do.end25

if.end142.i:                                      ; preds = %devm_kcalloc.exit248.i.if.end142.i_crit_edge, %if.end129.i.if.end142.i_crit_edge
  %153 = ptrtoint ptr %groups130.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %groups130.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end142.i
  %func_grp.0.i = phi ptr [ %154, %if.end142.i ], [ %incdec.ptr145.i, %while.cond.i.while.cond.i_crit_edge ]
  %155 = ptrtoint ptr %func_grp.0.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %func_grp.0.i, align 4
  %tobool144.not.i = icmp eq ptr %156, null
  %incdec.ptr145.i = getelementptr ptr, ptr %func_grp.0.i, i32 1
  br i1 %tobool144.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %157 = ptrtoint ptr %name147.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %name147.i, align 4
  %159 = ptrtoint ptr %func_grp.0.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %158, ptr %func_grp.0.i, align 4
  br label %for.inc152.i

for.inc152.i:                                     ; preds = %while.end.i, %land.lhs.true117.i.for.inc152.i_crit_edge
  %incdec.ptr153.i = getelementptr %struct.sunxi_desc_function, ptr %func100.0287.i, i32 1
  %name112.i = getelementptr %struct.sunxi_desc_function, ptr %func100.0287.i, i32 1, i32 1
  %160 = ptrtoint ptr %name112.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %name112.i, align 4
  %tobool113.not.i = icmp eq ptr %161, null
  br i1 %tobool113.not.i, label %for.inc152.i.for.inc159.i_crit_edge, label %for.inc152.i.for.body114.i_crit_edge

for.inc152.i.for.body114.i_crit_edge:             ; preds = %for.inc152.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body114.i

for.inc152.i.for.inc159.i_crit_edge:              ; preds = %for.inc152.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc159.i

for.inc159.i:                                     ; preds = %for.inc152.i.for.inc159.i_crit_edge, %if.end109.i.for.inc159.i_crit_edge, %land.lhs.true103.i.for.inc159.i_crit_edge
  %inc160.i = add nuw nsw i32 %i.2290.i, 1
  %162 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %desc.i, align 4
  %npins92.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %npins92.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %npins92.i, align 4
  %cmp93.i = icmp slt i32 %inc160.i, %165
  br i1 %cmp93.i, label %for.inc159.i.for.body95.i_crit_edge, label %for.inc159.i.if.end27_crit_edge

for.inc159.i.if.end27_crit_edge:                  ; preds = %for.inc159.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.inc159.i.for.body95.i_crit_edge:              ; preds = %for.inc159.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body95.i

do.end25:                                         ; preds = %if.then139.i, %if.then127.i, %if.then85.i, %if.end7.i.i.i.do.end25_crit_edge, %kcalloc.exit.thread.i, %devm_kcalloc.exit.i.do.end25_crit_edge, %devm_kcalloc.exit.thread.i
  %retval.4.i.ph = phi i32 [ -12, %if.then139.i ], [ -22, %if.then127.i ], [ -12, %kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %if.end7.i.i.i.do.end25_crit_edge ], [ -12, %devm_kcalloc.exit.i.do.end25_crit_edge ], [ -12, %if.then85.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %retval.4.i.ph) #19
  br label %cleanup248

if.end27:                                         ; preds = %for.inc159.i.if.end27_crit_edge, %if.end88.i.if.end27_crit_edge
  %166 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %desc11, align 4
  %npins = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %npins, align 4
  %170 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %169, i32 12) #13
  %171 = extractvalue { i32, i1 } %170, 1
  br i1 %171, label %if.end27.cleanup248_crit_edge, label %devm_kcalloc.exit408, !prof !128

if.end27.cleanup248_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup248

devm_kcalloc.exit408:                             ; preds = %if.end27
  %172 = extractvalue { i32, i1 } %170, 0
  %call5.i.i405 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %172, i32 noundef 3520) #13
  %tobool31.not = icmp eq ptr %call5.i.i405, null
  br i1 %tobool31.not, label %devm_kcalloc.exit408.cleanup248_crit_edge, label %for.cond.preheader

devm_kcalloc.exit408.cleanup248_crit_edge:        ; preds = %devm_kcalloc.exit408
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup248

for.cond.preheader:                               ; preds = %devm_kcalloc.exit408
  %173 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %desc11, align 4
  %npins35 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %npins35 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %npins35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp465 = icmp sgt i32 %176, 0
  br i1 %cmp465, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %pin_idx.0467 = phi i32 [ %pin_idx.1, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0466 = phi i32 [ %inc46, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %177 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %174, align 4
  %add.ptr = getelementptr %struct.sunxi_desc_pin, ptr %178, i32 %i.0466
  %variant38 = getelementptr %struct.sunxi_desc_pin, ptr %178, i32 %i.0466, i32 1
  %179 = ptrtoint ptr %variant38 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %variant38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool39.not = icmp eq i32 %180, 0
  br i1 %tobool39.not, label %for.body.if.end44_crit_edge, label %land.lhs.true

for.body.if.end44_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

land.lhs.true:                                    ; preds = %for.body
  %181 = ptrtoint ptr %variant12 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %variant12, align 4
  %and = and i32 %182, %180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %for.body.if.end44_crit_edge
  %inc = add i32 %pin_idx.0467, 1
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i405, i32 %pin_idx.0467
  %183 = call ptr @memcpy(ptr %arrayidx, ptr %add.ptr, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %land.lhs.true.cleanup_crit_edge
  %pin_idx.1 = phi i32 [ %inc, %if.end44 ], [ %pin_idx.0467, %land.lhs.true.cleanup_crit_edge ]
  %inc46 = add nuw nsw i32 %i.0466, 1
  %184 = ptrtoint ptr %npins35 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %npins35, align 4
  %cmp = icmp slt i32 %inc46, %185
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call.i409 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #13
  %tobool49.not = icmp eq ptr %call.i409, null
  br i1 %tobool49.not, label %for.end.cleanup248_crit_edge, label %if.end51

for.end.cleanup248_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup248

if.end51:                                         ; preds = %for.end
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %186 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i410 = icmp eq ptr %187, null
  br i1 %tobool.not.i410, label %if.end.i, label %if.end51.dev_name.exit_crit_edge

if.end51.dev_name.exit_crit_edge:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %188 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end51.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %189, %if.end.i ], [ %187, %if.end51.dev_name.exit_crit_edge ]
  %190 = ptrtoint ptr %call.i409 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %retval.0.i, ptr %call.i409, align 4
  %owner = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i409, i32 0, i32 6
  %191 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %owner, align 4
  %pins54 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i409, i32 0, i32 1
  %192 = ptrtoint ptr %pins54 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %call5.i.i405, ptr %pins54, align 4
  %ngroups = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i, i32 0, i32 9
  %193 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %ngroups, align 4
  %npins55 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i409, i32 0, i32 2
  %195 = ptrtoint ptr %npins55 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %npins55, align 4
  %confops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i409, i32 0, i32 5
  %196 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr @sunxi_pconf_ops, ptr %confops, align 4
  %pctlops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i409, i32 0, i32 3
  %197 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr @sunxi_pctrl_ops, ptr %pctlops, align 4
  %call57 = tail call ptr @devm_kmemdup(ptr noundef %dev, ptr noundef nonnull @sunxi_pmx_ops, i32 noundef 40, i32 noundef 3264) #13
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %dev_name.exit.cleanup248_crit_edge, label %if.end60

dev_name.exit.cleanup248_crit_edge:               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup248

if.end60:                                         ; preds = %dev_name.exit
  %disable_strict_mode = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %desc, i32 0, i32 6
  %198 = ptrtoint ptr %disable_strict_mode to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %disable_strict_mode, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool61.not = icmp eq i8 %199, 0
  br i1 %tobool61.not, label %if.end60.if.end63_crit_edge, label %if.then62

if.end60.if.end63_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %strict = getelementptr inbounds %struct.pinmux_ops, ptr %call57, i32 0, i32 9
  %200 = ptrtoint ptr %strict to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %strict, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end60.if.end63_crit_edge
  %pmxops64 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i409, i32 0, i32 4
  %201 = ptrtoint ptr %pmxops64 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %call57, ptr %pmxops64, align 4
  %call66 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull %call.i409, ptr noundef nonnull %call.i) #13
  %pctl_dev = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i, i32 0, i32 13
  %202 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %call66, ptr %pctl_dev, align 4
  %cmp.i411 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i411, label %do.end72, label %if.end76

do.end72:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #19
  %203 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pctl_dev, align 4
  %205 = ptrtoint ptr %204 to i32
  br label %cleanup248

if.end76:                                         ; preds = %if.end63
  %call.i412 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 348, i32 noundef 3520) #13
  %chip = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i, i32 0, i32 1
  %206 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %call.i412, ptr %chip, align 4
  %tobool80.not = icmp eq ptr %call.i412, null
  br i1 %tobool80.not, label %if.end76.cleanup248_crit_edge, label %if.end82

if.end76.cleanup248_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup248

if.end82:                                         ; preds = %if.end76
  %207 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %desc11, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %208, align 4
  %npins86 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %208, i32 0, i32 1
  %211 = ptrtoint ptr %npins86 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %npins86, align 4
  %sub = add i32 %212, -1
  %arrayidx87 = getelementptr %struct.sunxi_desc_pin, ptr %210, i32 %sub
  %213 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx87, align 4
  %owner90 = getelementptr inbounds %struct.gpio_chip, ptr %call.i412, i32 0, i32 4
  %215 = ptrtoint ptr %owner90 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr null, ptr %owner90, align 4
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call.i412, i32 0, i32 5
  %216 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr @gpiochip_generic_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call.i412, i32 0, i32 6
  %217 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr @gpiochip_generic_free, ptr %free, align 4
  %set_config = getelementptr inbounds %struct.gpio_chip, ptr %call.i412, i32 0, i32 14
  %218 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @gpiochip_generic_config, ptr %set_config, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i412, i32 0, i32 8
  %219 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr @sunxi_pinctrl_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i412, i32 0, i32 9
  %220 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @sunxi_pinctrl_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i412, i32 0, i32 10
  %221 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr @sunxi_pinctrl_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i412, i32 0, i32 12
  %222 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr @sunxi_pinctrl_gpio_set, ptr %set, align 4
  %of_xlate = getelementptr inbounds %struct.gpio_chip, ptr %call.i412, i32 0, i32 41
  %223 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr @sunxi_pinctrl_gpio_of_xlate, ptr %of_xlate, align 4
  %to_irq = getelementptr inbounds %struct.gpio_chip, ptr %call.i412, i32 0, i32 15
  %224 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr @sunxi_pinctrl_gpio_to_irq, ptr %to_irq, align 4
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, ptr %call.i412, i32 0, i32 40
  %225 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 3, ptr %of_gpio_n_cells, align 4
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %call.i412, i32 0, i32 23
  %226 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %can_sleep, align 4
  %sub102 = add i32 %214, 65535
  %or = or i32 %sub102, 31
  %add = add i32 %or, 1
  %pin_base = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %208, i32 0, i32 2
  %227 = ptrtoint ptr %pin_base to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %pin_base, align 4
  %sub104 = sub i32 %add, %228
  %conv = trunc i32 %sub104 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i412, i32 0, i32 20
  %229 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %conv, ptr %ngpio, align 4
  %230 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i414 = icmp eq ptr %231, null
  br i1 %tobool.not.i414, label %if.end.i415, label %if.end82.dev_name.exit417_crit_edge

if.end82.dev_name.exit417_crit_edge:              ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit417

if.end.i415:                                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  %232 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %dev, align 4
  br label %dev_name.exit417

dev_name.exit417:                                 ; preds = %if.end.i415, %if.end82.dev_name.exit417_crit_edge
  %retval.0.i416 = phi ptr [ %233, %if.end.i415 ], [ %231, %if.end82.dev_name.exit417_crit_edge ]
  %234 = ptrtoint ptr %call.i412 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %retval.0.i416, ptr %call.i412, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i412, i32 0, i32 2
  %235 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %dev, ptr %parent, align 4
  %236 = ptrtoint ptr %pin_base to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %pin_base, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i412, i32 0, i32 19
  %238 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %237, ptr %base, align 4
  %call115 = tail call i32 @gpiochip_add_data_with_key(ptr noundef nonnull %call.i412, ptr noundef nonnull %call.i, ptr noundef nonnull @sunxi_pinctrl_init_with_variant.lock_key, ptr noundef nonnull @sunxi_pinctrl_init_with_variant.request_key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %for.cond119.preheader, label %dev_name.exit417.cleanup248_crit_edge

dev_name.exit417.cleanup248_crit_edge:            ; preds = %dev_name.exit417
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup248

for.cond119.preheader:                            ; preds = %dev_name.exit417
  %239 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %desc11, align 4
  %npins121469 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %240, i32 0, i32 1
  %241 = ptrtoint ptr %npins121469 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %npins121469, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %cmp122470 = icmp sgt i32 %242, 0
  br i1 %cmp122470, label %for.cond119.preheader.for.body124_crit_edge, label %for.cond119.preheader.for.end148_crit_edge

for.cond119.preheader.for.end148_crit_edge:       ; preds = %for.cond119.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end148

for.cond119.preheader.for.body124_crit_edge:      ; preds = %for.cond119.preheader
  br label %for.body124

for.cond119:                                      ; preds = %dev_name.exit422
  %inc147 = add nuw nsw i32 %i.1471, 1
  %243 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %desc11, align 4
  %npins121 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %244, i32 0, i32 1
  %245 = ptrtoint ptr %npins121 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %npins121, align 4
  %cmp122 = icmp slt i32 %inc147, %246
  br i1 %cmp122, label %for.cond119.for.body124_crit_edge, label %for.cond119.for.end148_crit_edge

for.cond119.for.end148_crit_edge:                 ; preds = %for.cond119
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end148

for.cond119.for.body124_crit_edge:                ; preds = %for.cond119
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body124

for.body124:                                      ; preds = %for.cond119.for.body124_crit_edge, %for.cond119.preheader.for.body124_crit_edge
  %247 = phi ptr [ %244, %for.cond119.for.body124_crit_edge ], [ %240, %for.cond119.preheader.for.body124_crit_edge ]
  %i.1471 = phi i32 [ %inc147, %for.cond119.for.body124_crit_edge ], [ 0, %for.cond119.preheader.for.body124_crit_edge ]
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %247, align 4
  %add.ptr128 = getelementptr %struct.sunxi_desc_pin, ptr %249, i32 %i.1471
  %250 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %chip, align 4
  %252 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i419 = icmp eq ptr %253, null
  br i1 %tobool.not.i419, label %if.end.i420, label %for.body124.dev_name.exit422_crit_edge

for.body124.dev_name.exit422_crit_edge:           ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit422

if.end.i420:                                      ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #15
  %254 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev, align 4
  br label %dev_name.exit422

dev_name.exit422:                                 ; preds = %if.end.i420, %for.body124.dev_name.exit422_crit_edge
  %retval.0.i421 = phi ptr [ %255, %if.end.i420 ], [ %253, %for.body124.dev_name.exit422_crit_edge ]
  %256 = ptrtoint ptr %add.ptr128 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %add.ptr128, align 4
  %pin_base135 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %247, i32 0, i32 2
  %258 = ptrtoint ptr %pin_base135 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %pin_base135, align 4
  %sub136 = sub i32 %257, %259
  %call139 = tail call i32 @gpiochip_add_pin_range(ptr noundef %251, ptr noundef %retval.0.i421, i32 noundef %sub136, i32 noundef %257, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %for.cond119, label %dev_name.exit422.gpiochip_error_crit_edge

dev_name.exit422.gpiochip_error_crit_edge:        ; preds = %dev_name.exit422
  call void @__sanitizer_cov_trace_pc() #15
  br label %gpiochip_error

for.end148:                                       ; preds = %for.cond119.for.end148_crit_edge, %for.cond119.preheader.for.end148_crit_edge
  %call149 = tail call i32 @of_clk_get_parent_count(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call149)
  %cmp151 = icmp eq i32 %call149, 1
  %cond = select i1 %cmp151, ptr null, ptr @.str.9
  %call153 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef %cond) #13
  %cmp.i423 = icmp ugt ptr %call153, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i423, label %if.then155, label %if.end157

if.then155:                                       ; preds = %for.end148
  call void @__sanitizer_cov_trace_pc() #15
  %260 = ptrtoint ptr %call153 to i32
  br label %gpiochip_error

if.end157:                                        ; preds = %for.end148
  %call158 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call153)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end161, label %if.end157.gpiochip_error_crit_edge

if.end157.gpiochip_error_crit_edge:               ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  br label %gpiochip_error

if.end161:                                        ; preds = %if.end157
  %261 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %desc11, align 4
  %irq_banks164 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %262, i32 0, i32 3
  %263 = ptrtoint ptr %irq_banks164 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %irq_banks164, align 4
  %265 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %264, i32 4) #13
  %266 = extractvalue { i32, i1 } %265, 1
  br i1 %266, label %devm_kcalloc.exit427.thread, label %devm_kcalloc.exit427, !prof !128

devm_kcalloc.exit427.thread:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  %irq452 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i, i32 0, i32 10
  %267 = ptrtoint ptr %irq452 to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr null, ptr %irq452, align 4
  br label %clk_error

devm_kcalloc.exit427:                             ; preds = %if.end161
  %268 = extractvalue { i32, i1 } %265, 0
  %call5.i.i424 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %268, i32 noundef 3520) #13
  %irq = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i, i32 0, i32 10
  %269 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %call5.i.i424, ptr %irq, align 4
  %tobool167.not = icmp eq ptr %call5.i.i424, null
  br i1 %tobool167.not, label %devm_kcalloc.exit427.clk_error_crit_edge, label %for.cond170.preheader

devm_kcalloc.exit427.clk_error_crit_edge:         ; preds = %devm_kcalloc.exit427
  call void @__sanitizer_cov_trace_pc() #15
  br label %clk_error

for.cond170.preheader:                            ; preds = %devm_kcalloc.exit427
  %270 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %desc11, align 4
  %irq_banks172472 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %271, i32 0, i32 3
  %272 = ptrtoint ptr %irq_banks172472 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %irq_banks172472, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %cmp173473.not = icmp eq i32 %273, 0
  br i1 %cmp173473.not, label %for.cond170.preheader.for.end189_crit_edge, label %for.cond170.preheader.for.body175_crit_edge

for.cond170.preheader.for.body175_crit_edge:      ; preds = %for.cond170.preheader
  br label %for.body175

for.cond170.preheader.for.end189_crit_edge:       ; preds = %for.cond170.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end189

for.cond170:                                      ; preds = %for.body175
  %inc188 = add nuw i32 %i.2474, 1
  %274 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %desc11, align 4
  %irq_banks172 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %275, i32 0, i32 3
  %276 = ptrtoint ptr %irq_banks172 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %irq_banks172, align 4
  %cmp173 = icmp ult i32 %inc188, %277
  br i1 %cmp173, label %for.cond170.for.body175_crit_edge, label %for.end189.loopexit

for.cond170.for.body175_crit_edge:                ; preds = %for.cond170
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body175

for.body175:                                      ; preds = %for.cond170.for.body175_crit_edge, %for.cond170.preheader.for.body175_crit_edge
  %i.2474 = phi i32 [ %inc188, %for.cond170.for.body175_crit_edge ], [ 0, %for.cond170.preheader.for.body175_crit_edge ]
  %call176 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.2474) #13
  %278 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %irq, align 4
  %arrayidx178 = getelementptr i32, ptr %279, i32 %i.2474
  %280 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %call176, ptr %arrayidx178, align 4
  %281 = load ptr, ptr %irq, align 4
  %arrayidx180 = getelementptr i32, ptr %281, i32 %i.2474
  %282 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx180, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %cmp181 = icmp slt i32 %283, 0
  br i1 %cmp181, label %for.body175.clk_error_crit_edge, label %for.cond170

for.body175.clk_error_crit_edge:                  ; preds = %for.body175
  call void @__sanitizer_cov_trace_pc() #15
  br label %clk_error

for.end189.loopexit:                              ; preds = %for.cond170
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo = shl i32 %277, 5
  br label %for.end189

for.end189:                                       ; preds = %for.end189.loopexit, %for.cond170.preheader.for.end189_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond170.preheader.for.end189_crit_edge ], [ %phi.bo, %for.end189.loopexit ]
  %tobool.not.i.i428 = icmp eq ptr %1, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i428, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %.lcssa, i32 noundef %.lcssa, i32 noundef 0, ptr noundef nonnull @sunxi_pinctrl_irq_domain_ops, ptr noundef %call.i) #13
  %domain = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i, i32 0, i32 5
  %284 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %call1.i, ptr %domain, align 4
  %tobool195.not = icmp eq ptr %call1.i, null
  br i1 %tobool195.not, label %do.end199, label %for.cond202.preheader

for.cond202.preheader:                            ; preds = %for.end189
  %285 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %desc11, align 4
  %irq_banks204475 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %286, i32 0, i32 3
  %287 = ptrtoint ptr %irq_banks204475 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %irq_banks204475, align 4
  %mul205476.mask = and i32 %288, 134217727
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul205476.mask)
  %cmp206477.not = icmp eq i32 %mul205476.mask, 0
  br i1 %cmp206477.not, label %for.cond202.preheader.for.cond215.preheader_crit_edge, label %for.cond202.preheader.for.body208_crit_edge

for.cond202.preheader.for.body208_crit_edge:      ; preds = %for.cond202.preheader
  br label %for.body208

for.cond202.preheader.for.cond215.preheader_crit_edge: ; preds = %for.cond202.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond215.preheader

do.end199:                                        ; preds = %for.end189
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #19
  br label %clk_error

for.cond215.preheader:                            ; preds = %for.body208.for.cond215.preheader_crit_edge, %for.cond202.preheader.for.cond215.preheader_crit_edge
  %289 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %desc11, align 4
  %irq_banks217479 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %290, i32 0, i32 3
  %291 = ptrtoint ptr %irq_banks217479 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %irq_banks217479, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %cmp218480.not = icmp eq i32 %292, 0
  br i1 %cmp218480.not, label %for.cond215.preheader.for.end241_crit_edge, label %for.cond215.preheader.do.body221_crit_edge

for.cond215.preheader.do.body221_crit_edge:       ; preds = %for.cond215.preheader
  br label %do.body221

for.cond215.preheader.for.end241_crit_edge:       ; preds = %for.cond215.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end241

for.body208:                                      ; preds = %for.body208.for.body208_crit_edge, %for.cond202.preheader.for.body208_crit_edge
  %i.3478 = phi i32 [ %inc213, %for.body208.for.body208_crit_edge ], [ 0, %for.cond202.preheader.for.body208_crit_edge ]
  %293 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %domain, align 4
  %call.i429 = tail call i32 @irq_create_mapping_affinity(ptr noundef %294, i32 noundef %i.3478, ptr noundef null) #13
  tail call void @__irq_set_lockdep_class(i32 noundef %call.i429, ptr noundef nonnull @sunxi_pinctrl_irq_lock_class, ptr noundef nonnull @sunxi_pinctrl_irq_request_class) #13
  tail call void @irq_set_chip_and_handler_name(i32 noundef %call.i429, ptr noundef nonnull @sunxi_pinctrl_edge_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #13
  %call211 = tail call i32 @irq_set_chip_data(i32 noundef %call.i429, ptr noundef nonnull %call.i) #13
  %inc213 = add nuw i32 %i.3478, 1
  %295 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %desc11, align 4
  %irq_banks204 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %296, i32 0, i32 3
  %297 = ptrtoint ptr %irq_banks204 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %irq_banks204, align 4
  %mul205 = shl i32 %298, 5
  %cmp206 = icmp ult i32 %inc213, %mul205
  br i1 %cmp206, label %for.body208.for.body208_crit_edge, label %for.body208.for.cond215.preheader_crit_edge

for.body208.for.cond215.preheader_crit_edge:      ; preds = %for.body208
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond215.preheader

for.body208.for.body208_crit_edge:                ; preds = %for.body208
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body208

do.body221:                                       ; preds = %sunxi_irq_status_reg_from_bank.exit.do.body221_crit_edge, %for.cond215.preheader.do.body221_crit_edge
  %i.4481 = phi i32 [ %inc240, %sunxi_irq_status_reg_from_bank.exit.do.body221_crit_edge ], [ 0, %for.cond215.preheader.do.body221_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !130
  tail call void @arm_heavy_mb() #13
  %299 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %call.i, align 4
  %301 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %desc11, align 4
  %irq_bank_map.i.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %302, i32 0, i32 4
  %303 = ptrtoint ptr %irq_bank_map.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %irq_bank_map.i.i, align 4
  %tobool.not.i.i430 = icmp eq ptr %304, null
  %conv.i.i = and i32 %i.4481, 255
  br i1 %tobool.not.i.i430, label %do.body221.sunxi_irq_ctrl_reg_from_bank.exit_crit_edge, label %if.else.i.i

do.body221.sunxi_irq_ctrl_reg_from_bank.exit_crit_edge: ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_irq_ctrl_reg_from_bank.exit

if.else.i.i:                                      ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i431 = getelementptr i32, ptr %304, i32 %conv.i.i
  %305 = ptrtoint ptr %arrayidx.i.i431 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx.i.i431, align 4
  br label %sunxi_irq_ctrl_reg_from_bank.exit

sunxi_irq_ctrl_reg_from_bank.exit:                ; preds = %if.else.i.i, %do.body221.sunxi_irq_ctrl_reg_from_bank.exit_crit_edge
  %retval.0.i.i432 = phi i32 [ %306, %if.else.i.i ], [ %conv.i.i, %do.body221.sunxi_irq_ctrl_reg_from_bank.exit_crit_edge ]
  %mul.i433 = shl i32 %retval.0.i.i432, 5
  %add.i434 = add i32 %mul.i433, 528
  %add.ptr228 = getelementptr i8, ptr %300, i32 %add.i434
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr228, i32 0) #13, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %307 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %call.i, align 4
  %309 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %desc11, align 4
  %irq_bank_map.i.i435 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %310, i32 0, i32 4
  %311 = ptrtoint ptr %irq_bank_map.i.i435 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %irq_bank_map.i.i435, align 4
  %tobool.not.i.i436 = icmp eq ptr %312, null
  br i1 %tobool.not.i.i436, label %sunxi_irq_ctrl_reg_from_bank.exit.sunxi_irq_status_reg_from_bank.exit_crit_edge, label %if.else.i.i439

sunxi_irq_ctrl_reg_from_bank.exit.sunxi_irq_status_reg_from_bank.exit_crit_edge: ; preds = %sunxi_irq_ctrl_reg_from_bank.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_irq_status_reg_from_bank.exit

if.else.i.i439:                                   ; preds = %sunxi_irq_ctrl_reg_from_bank.exit
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i438 = getelementptr i32, ptr %312, i32 %conv.i.i
  %313 = ptrtoint ptr %arrayidx.i.i438 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %arrayidx.i.i438, align 4
  br label %sunxi_irq_status_reg_from_bank.exit

sunxi_irq_status_reg_from_bank.exit:              ; preds = %if.else.i.i439, %sunxi_irq_ctrl_reg_from_bank.exit.sunxi_irq_status_reg_from_bank.exit_crit_edge
  %retval.0.i.i440 = phi i32 [ %314, %if.else.i.i439 ], [ %conv.i.i, %sunxi_irq_ctrl_reg_from_bank.exit.sunxi_irq_status_reg_from_bank.exit_crit_edge ]
  %mul.i441 = shl i32 %retval.0.i.i440, 5
  %add.i442 = add i32 %mul.i441, 532
  %add.ptr236 = getelementptr i8, ptr %308, i32 %add.i442
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr236, i32 -1) #13, !srcloc !131
  %315 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %irq, align 4
  %arrayidx238 = getelementptr i32, ptr %316, i32 %i.4481
  %317 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx238, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %318, ptr noundef nonnull @sunxi_pinctrl_irq_handler, ptr noundef nonnull %call.i) #13
  %inc240 = add nuw i32 %i.4481, 1
  %319 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %desc11, align 4
  %irq_banks217 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %320, i32 0, i32 3
  %321 = ptrtoint ptr %irq_banks217 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %irq_banks217, align 4
  %cmp218 = icmp ult i32 %inc240, %322
  br i1 %cmp218, label %sunxi_irq_status_reg_from_bank.exit.do.body221_crit_edge, label %sunxi_irq_status_reg_from_bank.exit.for.end241_crit_edge

sunxi_irq_status_reg_from_bank.exit.for.end241_crit_edge: ; preds = %sunxi_irq_status_reg_from_bank.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end241

sunxi_irq_status_reg_from_bank.exit.do.body221_crit_edge: ; preds = %sunxi_irq_status_reg_from_bank.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body221

for.end241:                                       ; preds = %sunxi_irq_status_reg_from_bank.exit.for.end241_crit_edge, %for.cond215.preheader.for.end241_crit_edge
  tail call fastcc void @sunxi_pinctrl_setup_debounce(ptr noundef nonnull %call.i, ptr noundef %1)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14) #19
  br label %cleanup248

clk_error:                                        ; preds = %do.end199, %for.body175.clk_error_crit_edge, %devm_kcalloc.exit427.clk_error_crit_edge, %devm_kcalloc.exit427.thread
  %ret.0 = phi i32 [ -12, %do.end199 ], [ -12, %devm_kcalloc.exit427.clk_error_crit_edge ], [ -12, %devm_kcalloc.exit427.thread ], [ %283, %for.body175.clk_error_crit_edge ]
  tail call void @clk_disable(ptr noundef %call153) #13
  tail call void @clk_unprepare(ptr noundef %call153) #13
  br label %gpiochip_error

gpiochip_error:                                   ; preds = %clk_error, %if.end157.gpiochip_error_crit_edge, %if.then155, %dev_name.exit422.gpiochip_error_crit_edge
  %ret.1 = phi i32 [ %260, %if.then155 ], [ %call158, %if.end157.gpiochip_error_crit_edge ], [ %ret.0, %clk_error ], [ %call139, %dev_name.exit422.gpiochip_error_crit_edge ]
  %323 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %chip, align 4
  tail call void @gpiochip_remove(ptr noundef %324) #13
  br label %cleanup248

cleanup248:                                       ; preds = %gpiochip_error, %for.end241, %dev_name.exit417.cleanup248_crit_edge, %if.end76.cleanup248_crit_edge, %do.end72, %dev_name.exit.cleanup248_crit_edge, %for.end.cleanup248_crit_edge, %devm_kcalloc.exit408.cleanup248_crit_edge, %if.end27.cleanup248_crit_edge, %do.end25, %devm_kcalloc.exit.cleanup248_crit_edge, %devm_kcalloc.exit.thread, %if.then5, %entry.cleanup248_crit_edge
  %retval.0 = phi i32 [ %4, %if.then5 ], [ %retval.4.i.ph, %do.end25 ], [ %205, %do.end72 ], [ %ret.1, %gpiochip_error ], [ 0, %for.end241 ], [ -12, %entry.cleanup248_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup248_crit_edge ], [ -12, %devm_kcalloc.exit408.cleanup248_crit_edge ], [ -12, %for.end.cleanup248_crit_edge ], [ -12, %dev_name.exit.cleanup248_crit_edge ], [ -12, %if.end76.cleanup248_crit_edge ], [ %call115, %dev_name.exit417.cleanup248_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %if.end27.cleanup248_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_config(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pinctrl_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #13
  %pctl_dev = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pctl_dev, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %add = add i32 %3, %offset
  %call1 = tail call i32 @sunxi_pmx_gpio_set_direction(ptr noundef %1, ptr noundef null, i32 noundef %add, i1 noundef zeroext true)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pinctrl_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #13
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #13
  %0 = lshr i32 %offset, 5
  %1 = and i32 %0, 255
  %narrow.i.i = mul nuw nsw i32 %1, 36
  %narrow10.i.i = add nuw nsw i32 %narrow.i.i, 16
  %2 = and i32 %offset, 31
  %lock.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i, i32 0, i32 12
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %narrow10.i.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !133
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl12.i = shl nuw i32 1, %2
  %or.i = or i32 %6, %shl12.i
  %neg.i = xor i32 %shl12.i, -1
  %and.i = and i32 %6, %neg.i
  %regval.0.i = select i1 %tobool.not.i, i32 %and.i, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !135
  tail call void @arm_heavy_mb() #13
  %7 = tail call i32 @llvm.bswap.i32(i32 %regval.0.i) #13
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %9, i32 %narrow10.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %7) #13, !srcloc !131
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #13
  %pctl_dev = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 13
  %10 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pctl_dev, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base, align 4
  %add = add i32 %13, %offset
  %call1 = tail call i32 @sunxi_pmx_gpio_set_direction(ptr noundef %11, ptr noundef null, i32 noundef %add, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pinctrl_gpio_get(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #13
  %0 = lshr i32 %offset, 5
  %1 = and i32 %0, 255
  %narrow.i = mul nuw nsw i32 %1, 36
  %narrow10.i = add nuw nsw i32 %narrow.i, 16
  %desc = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %irq_read_needs_mux = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %irq_read_needs_mux to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_read_needs_mux, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.end.thread, label %land.end

land.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %base42 = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %6 = ptrtoint ptr %base42 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base42, align 4
  %add43 = add i32 %7, %offset
  br label %if.end

land.end:                                         ; preds = %entry
  %call6 = tail call zeroext i1 @gpiochip_line_is_irq(ptr noundef %chip, i32 noundef %offset) #13
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  %add = add i32 %9, %offset
  br i1 %call6, label %if.then, label %land.end.if.end_crit_edge

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  %pctl_dev = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 13
  %10 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pctl_dev, align 4
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %11) #13
  %lock.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i, i32 0, i32 12
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %desc.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc.i, align 4
  %pin_base.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pin_base.i, align 4
  %sub.i = sub i32 %add, %15
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %div10.i.i = lshr i32 %sub.i, 5
  %18 = and i32 %div10.i.i, 255
  %narrow.i.i = mul nuw nsw i32 %18, 36
  %19 = lshr i32 %sub.i, 1
  %20 = and i32 %19, 12
  %narrow11.i.i = add nuw nsw i32 %narrow.i.i, %20
  %add.ptr.i = getelementptr i8, ptr %17, i32 %narrow11.i.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !133
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !136
  %23 = shl i32 %sub.i, 2
  %24 = and i32 %23, 28
  %shl.i = shl nuw i32 15, %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !137
  tail call void @arm_heavy_mb() #13
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %22, %neg.i
  %25 = tail call i32 @llvm.bswap.i32(i32 %and.i) #13
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %27, i32 %narrow11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %25) #13, !srcloc !131
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.if.end_crit_edge, %land.end.thread
  %add44 = phi i32 [ %add43, %land.end.thread ], [ %add, %if.then ], [ %add, %land.end.if.end_crit_edge ]
  %28 = phi i1 [ false, %land.end.thread ], [ true, %if.then ], [ false, %land.end.if.end_crit_edge ]
  %29 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 %narrow10.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !138
  br i1 %28, label %if.then13, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %pctl_dev14 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 13
  %32 = ptrtoint ptr %pctl_dev14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pctl_dev14, align 4
  %call.i28 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %33) #13
  %lock.i29 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i28, i32 0, i32 12
  %call1.i30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i29) #13
  %desc.i31 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i28, i32 0, i32 2
  %34 = ptrtoint ptr %desc.i31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc.i31, align 4
  %pin_base.i32 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %pin_base.i32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pin_base.i32, align 4
  %sub.i33 = sub i32 %add44, %37
  %38 = ptrtoint ptr %call.i28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i28, align 4
  %div10.i.i34 = lshr i32 %sub.i33, 5
  %40 = and i32 %div10.i.i34, 255
  %narrow.i.i35 = mul nuw nsw i32 %40, 36
  %41 = lshr i32 %sub.i33, 1
  %42 = and i32 %41, 12
  %narrow11.i.i36 = add nuw nsw i32 %narrow.i.i35, %42
  %add.ptr.i37 = getelementptr i8, ptr %39, i32 %narrow11.i.i36
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #13, !srcloc !133
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !136
  %45 = shl i32 %sub.i33, 2
  %46 = and i32 %45, 28
  %shl.i38 = shl nuw i32 15, %46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !137
  tail call void @arm_heavy_mb() #13
  %neg.i39 = xor i32 %shl.i38, -1
  %and.i40 = and i32 %44, %neg.i39
  %shl15.i = shl nuw nsw i32 6, %46
  %or.i = or i32 %and.i40, %shl15.i
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %48 = ptrtoint ptr %call.i28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i28, align 4
  %add.ptr19.i41 = getelementptr i8, ptr %49, i32 %narrow11.i.i36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i41, i32 %47) #13, !srcloc !131
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i29, i32 noundef %call1.i30) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  %50 = and i32 %offset, 31
  %51 = tail call i32 @llvm.bswap.i32(i32 %31)
  %52 = lshr i32 %51, %50
  %53 = and i32 %52, 1
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_pinctrl_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #13
  %0 = lshr i32 %offset, 5
  %1 = and i32 %0, 255
  %narrow.i = mul nuw nsw i32 %1, 36
  %narrow10.i = add nuw nsw i32 %narrow.i, 16
  %2 = and i32 %offset, 31
  %lock = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 12
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %narrow10.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !133
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl12 = shl nuw i32 1, %2
  %or = or i32 %6, %shl12
  %neg = xor i32 %shl12, -1
  %and = and i32 %6, %neg
  %regval.0 = select i1 %tobool.not, i32 %and, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !135
  tail call void @arm_heavy_mb() #13
  %7 = tail call i32 @llvm.bswap.i32(i32 %regval.0)
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %add.ptr17 = getelementptr i8, ptr %9, i32 %narrow10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %7) #13, !srcloc !131
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sunxi_pinctrl_gpio_of_xlate(ptr nocapture noundef readonly %gc, ptr nocapture noundef readonly %gpiospec, ptr noundef writeonly %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %mul = shl i32 %1, 5
  %arrayidx2 = getelementptr %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %mul, %3
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 20
  %4 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp sgt i32 %add, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %flags, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx6 = getelementptr %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %add, %if.then4 ], [ %add, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pinctrl_gpio_to_irq(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #13
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %offset)
  %cmp.not = icmp ugt i32 %conv, %offset
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc1 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc1, align 4
  %npins.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp31.i = icmp sgt i32 %5, 0
  br i1 %cmp31.i, label %for.body.lr.ph.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %pin_base = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %pin_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pin_base, align 4
  %add = add i32 %7, %offset
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %conv.i = and i32 %add, 65535
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.sunxi_desc_pin, ptr %9, i32 %i.032.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i)
  %cmp3.i = icmp eq i32 %11, %conv.i
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %functions.i = getelementptr %struct.sunxi_desc_pin, ptr %9, i32 %i.032.i, i32 2
  %12 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %functions.i, align 4
  %name28.i = getelementptr inbounds %struct.sunxi_desc_function, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %name28.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name28.i, align 4
  %tobool.not29.i = icmp eq ptr %15, null
  br i1 %tobool.not29.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.while.body.i_crit_edge

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  br label %while.body.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then.i.while.body.i_crit_edge
  %16 = phi ptr [ %18, %if.end.i.while.body.i_crit_edge ], [ %15, %if.then.i.while.body.i_crit_edge ]
  %func.030.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %13, %if.then.i.while.body.i_crit_edge ]
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %16, ptr noundef nonnull dereferenceable(4) @.str.17) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %sunxi_pinctrl_desc_find_function_by_pin.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.sunxi_desc_function, ptr %func.030.i, i32 1
  %name.i = getelementptr %struct.sunxi_desc_function, ptr %func.030.i, i32 1, i32 1
  %17 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sunxi_pinctrl_desc_find_function_by_pin.exit:     ; preds = %while.body.i
  %tobool.not = icmp eq ptr %func.030.i, null
  br i1 %tobool.not, label %sunxi_pinctrl_desc_find_function_by_pin.exit.cleanup_crit_edge, label %if.end6

sunxi_pinctrl_desc_find_function_by_pin.exit.cleanup_crit_edge: ; preds = %sunxi_pinctrl_desc_find_function_by_pin.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %sunxi_pinctrl_desc_find_function_by_pin.exit
  %irqbank = getelementptr inbounds %struct.sunxi_desc_function, ptr %func.030.i, i32 0, i32 3
  %19 = ptrtoint ptr %irqbank to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %irqbank, align 1
  %conv7 = zext i8 %20 to i32
  %mul = shl nuw nsw i32 %conv7, 5
  %irqnum8 = getelementptr inbounds %struct.sunxi_desc_function, ptr %func.030.i, i32 0, i32 4
  %21 = ptrtoint ptr %irqnum8 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %irqnum8, align 2
  %conv9 = zext i8 %22 to i32
  %add10 = add nuw nsw i32 %mul, %conv9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_pinctrl_gpio_to_irq.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sunxi_pinctrl_gpio_to_irq, %do.end)) #13
          to label %if.then16 [label %do.end], !srcloc !139

if.then16:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 4
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base, align 4
  %add17 = add i32 %28, %offset
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sunxi_pinctrl_gpio_to_irq.__UNIQUE_ID_ddebug288, ptr noundef %24, ptr noundef nonnull @.str.49, ptr noundef %26, i32 noundef %add17, i32 noundef %add10) #13
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.end6
  %domain = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 5
  %29 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #13
  %31 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %irq.i, align 4, !annotation !140
  %call.i34 = call ptr @__irq_resolve_mapping(ptr noundef %30, i32 noundef %add10, ptr noundef nonnull %irq.i) #13
  %tobool.not.i35 = icmp eq ptr %call.i34, null
  br i1 %tobool.not.i35, label %do.end.irq_find_mapping.exit_crit_edge, label %if.then.i36

do.end.irq_find_mapping.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %irq_find_mapping.exit

if.then.i36:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i36, %do.end.irq_find_mapping.exit_crit_edge
  %retval.0.i37 = phi i32 [ %33, %if.then.i36 ], [ 0, %do.end.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #13
  br label %cleanup

cleanup:                                          ; preds = %irq_find_mapping.exit, %sunxi_pinctrl_desc_find_function_by_pin.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i37, %irq_find_mapping.exit ], [ -6, %entry.cleanup_crit_edge ], [ -22, %sunxi_pinctrl_desc_find_function_by_pin.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clk_unprepare(ptr noundef %clk) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_pinctrl_irq_handler(ptr noundef %desc) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %4 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handler_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %desc3 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc3, align 4
  %irq_banks = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %irq_banks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp69.not = icmp eq i32 %9, 0
  br i1 %cmp69.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %irq4 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq4, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bank.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %11, i32 %bank.070
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %13)
  %cmp5 = icmp eq i32 %1, %13
  br i1 %cmp5, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %bank.070, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %bank.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %bank.070, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bank.0.lcssa, i32 %9)
  %cmp8 = icmp eq i32 %bank.0.lcssa, %9
  br i1 %cmp8, label %for.end.do.end_crit_edge, label %for.end.if.end22_crit_edge, !prof !128

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge
  %bank.0.lcssa79 = phi i32 [ %bank.0.lcssa, %for.end.do.end_crit_edge ], [ %9, %for.inc.do.end_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1155, i32 noundef 9, ptr noundef null) #13
  br label %if.end22

if.end22:                                         ; preds = %do.end, %for.end.if.end22_crit_edge
  %bank.0.lcssa78 = phi i32 [ %bank.0.lcssa79, %do.end ], [ %bank.0.lcssa, %for.end.if.end22_crit_edge ]
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.chained_irq_enter.exit_crit_edge

if.end22.chained_irq_enter.exit_crit_edge:        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %if.end22
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %17(ptr noundef %irq_data.i) #13
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %19(ptr noundef %irq_data4.i) #13
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %21, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %21(ptr noundef %irq_data4.i) #13
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %if.end22.chained_irq_enter.exit_crit_edge
  %22 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc3, align 4
  %irq_bank_map.i.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %irq_bank_map.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_bank_map.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  %conv.i.i = and i32 %bank.0.lcssa78, 255
  br i1 %tobool.not.i.i, label %chained_irq_enter.exit.sunxi_irq_status_reg_from_bank.exit_crit_edge, label %if.else.i.i

chained_irq_enter.exit.sunxi_irq_status_reg_from_bank.exit_crit_edge: ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_irq_status_reg_from_bank.exit

if.else.i.i:                                      ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr i32, ptr %25, i32 %conv.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  br label %sunxi_irq_status_reg_from_bank.exit

sunxi_irq_status_reg_from_bank.exit:              ; preds = %if.else.i.i, %chained_irq_enter.exit.sunxi_irq_status_reg_from_bank.exit_crit_edge
  %retval.0.i.i = phi i32 [ %27, %if.else.i.i ], [ %conv.i.i, %chained_irq_enter.exit.sunxi_irq_status_reg_from_bank.exit_crit_edge ]
  %mul.i = shl i32 %retval.0.i.i, 5
  %add.i = add i32 %mul.i, 532
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %add.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !133
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !141
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool34.not = icmp eq i32 %30, 0
  br i1 %tobool34.not, label %sunxi_irq_status_reg_from_bank.exit.if.end46_crit_edge, label %if.then35

sunxi_irq_status_reg_from_bank.exit.if.end46_crit_edge: ; preds = %sunxi_irq_status_reg_from_bank.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then35:                                        ; preds = %sunxi_irq_status_reg_from_bank.exit
  %call36 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef 32, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call36)
  %cmp3874 = icmp slt i32 %call36, 32
  br i1 %cmp3874, label %for.body40.lr.ph, label %if.then35.if.end46_crit_edge

if.then35.if.end46_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

for.body40.lr.ph:                                 ; preds = %if.then35
  %domain = getelementptr inbounds %struct.sunxi_pinctrl, ptr %5, i32 0, i32 5
  %mul = shl i32 %bank.0.lcssa78, 5
  br label %for.body40

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.body40.lr.ph
  %irqoffset.075 = phi i32 [ %call36, %for.body40.lr.ph ], [ %call44, %for.body40.for.body40_crit_edge ]
  %33 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %domain, align 4
  %add = add i32 %irqoffset.075, %mul
  %call41 = call i32 @generic_handle_domain_irq(ptr noundef %34, i32 noundef %add) #13
  %add43 = add nsw i32 %irqoffset.075, 1
  %call44 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef 32, i32 noundef %add43) #13
  %cmp38 = icmp slt i32 %call44, 32
  br i1 %cmp38, label %for.body40.for.body40_crit_edge, label %for.body40.if.end46_crit_edge

for.body40.if.end46_crit_edge:                    ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body40

if.end46:                                         ; preds = %for.body40.if.end46_crit_edge, %if.then35.if.end46_crit_edge, %sunxi_irq_status_reg_from_bank.exit.if.end46_crit_edge
  %35 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i66 = icmp eq ptr %36, null
  br i1 %tobool.not.i66, label %if.else.i67, label %if.end46.chained_irq_exit.exit_crit_edge

if.end46.chained_irq_exit.exit_crit_edge:         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %chained_irq_exit.exit

if.else.i67:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %37 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i67, %if.end46.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %38, %if.else.i67 ], [ %36, %if.end46.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_pinctrl_setup_debounce(ptr nocapture noundef readonly %pctl, ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  %debounce = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_clk_get_parent_count(ptr noundef %node) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp.not = icmp eq i32 %call, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup37_crit_edge

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.54, ptr noundef null) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup37_crit_edge, label %if.end3

if.end.cleanup37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

if.end3:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.sunxi_pinctrl, ptr %pctl, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call4 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.55) #13
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end3.cleanup37_crit_edge, label %if.end8

if.end3.cleanup37_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

if.end8:                                          ; preds = %if.end3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call10 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.56) #13
  %cmp.i2 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2, label %if.end8.cleanup37_crit_edge, label %for.cond.preheader

if.end8.cleanup37_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

for.cond.preheader:                               ; preds = %if.end8
  %desc = getelementptr inbounds %struct.sunxi_pinctrl, ptr %pctl, i32 0, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %irq_banks36 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %irq_banks36 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_banks36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1537.not = icmp eq i32 %7, 0
  br i1 %cmp1537.not, label %for.cond.preheader.cleanup37_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup37_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %debounce) #13
  %8 = ptrtoint ptr %debounce to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %debounce, align 4, !annotation !140
  %call16 = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str.54, i32 noundef %i.038, ptr noundef nonnull %debounce) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %for.body
  %9 = ptrtoint ptr %debounce to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debounce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool20.not = icmp eq i32 %10, 0
  br i1 %tobool20.not, label %if.end19.for.inc_crit_edge, label %if.end22

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end22:                                         ; preds = %if.end19
  %div231 = lshr i32 %10, 1
  %add = add nuw i32 %div231, 1000000
  %div24 = udiv i32 %add, %10
  %call.i = call i32 @clk_get_rate(ptr noundef %call4) #13
  %sub.i = sub i32 %div24, %call.i
  %11 = call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #13
  %shr.i = lshr i32 %call.i, 1
  %sub4.i = sub i32 %div24, %shr.i
  %12 = call i32 @llvm.abs.i32(i32 %sub4.i, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %11)
  %cmp12.i = icmp ult i32 %12, %11
  %best_div.1.i = zext i1 %cmp12.i to i32
  %13 = call i32 @llvm.umin.i32(i32 %12, i32 %11) #13
  %shr.1.i = lshr i32 %call.i, 2
  %sub4.1.i = sub i32 %div24, %shr.1.i
  %14 = call i32 @llvm.abs.i32(i32 %sub4.1.i, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %13)
  %cmp12.1.i = icmp ult i32 %14, %13
  %best_div.1.1.i = select i1 %cmp12.1.i, i32 2, i32 %best_div.1.i
  %15 = call i32 @llvm.umin.i32(i32 %14, i32 %13) #13
  %shr.2.i = lshr i32 %call.i, 3
  %sub4.2.i = sub i32 %div24, %shr.2.i
  %16 = call i32 @llvm.abs.i32(i32 %sub4.2.i, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %15)
  %cmp12.2.i = icmp ult i32 %16, %15
  %best_div.1.2.i = select i1 %cmp12.2.i, i32 3, i32 %best_div.1.1.i
  %17 = call i32 @llvm.umin.i32(i32 %16, i32 %15) #13
  %shr.3.i = lshr i32 %call.i, 4
  %sub4.3.i = sub i32 %div24, %shr.3.i
  %18 = call i32 @llvm.abs.i32(i32 %sub4.3.i, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %17)
  %cmp12.3.i = icmp ult i32 %18, %17
  %best_div.1.3.i = select i1 %cmp12.3.i, i32 4, i32 %best_div.1.2.i
  %19 = call i32 @llvm.umin.i32(i32 %18, i32 %17) #13
  %shr.4.i = lshr i32 %call.i, 5
  %sub4.4.i = sub i32 %div24, %shr.4.i
  %20 = call i32 @llvm.abs.i32(i32 %sub4.4.i, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %19)
  %cmp12.4.i = icmp ult i32 %20, %19
  %best_div.1.4.i = select i1 %cmp12.4.i, i32 5, i32 %best_div.1.3.i
  %21 = call i32 @llvm.umin.i32(i32 %20, i32 %19) #13
  %shr.5.i = lshr i32 %call.i, 6
  %sub4.5.i = sub i32 %div24, %shr.5.i
  %22 = call i32 @llvm.abs.i32(i32 %sub4.5.i, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %21)
  %cmp12.5.i = icmp ult i32 %22, %21
  %best_div.1.5.i = select i1 %cmp12.5.i, i32 6, i32 %best_div.1.4.i
  %23 = call i32 @llvm.umin.i32(i32 %22, i32 %21) #13
  %shr.6.i = lshr i32 %call.i, 7
  %sub4.6.i = sub i32 %div24, %shr.6.i
  %24 = call i32 @llvm.abs.i32(i32 %sub4.6.i, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %23)
  %cmp12.6.i = icmp ult i32 %24, %23
  %best_div.1.6.i = select i1 %cmp12.6.i, i32 7, i32 %best_div.1.5.i
  %25 = call i32 @llvm.umin.i32(i32 %24, i32 %23) #13
  %call.i3 = call i32 @clk_get_rate(ptr noundef %call10) #13
  %sub.i4 = sub i32 %div24, %call.i3
  %26 = call i32 @llvm.abs.i32(i32 %sub.i4, i1 false) #13
  %shr.i5 = lshr i32 %call.i3, 1
  %sub4.i6 = sub i32 %div24, %shr.i5
  %27 = call i32 @llvm.abs.i32(i32 %sub4.i6, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %26)
  %cmp12.i7 = icmp ult i32 %27, %26
  %best_div.1.i8 = zext i1 %cmp12.i7 to i32
  %28 = call i32 @llvm.umin.i32(i32 %27, i32 %26) #13
  %shr.1.i9 = lshr i32 %call.i3, 2
  %sub4.1.i10 = sub i32 %div24, %shr.1.i9
  %29 = call i32 @llvm.abs.i32(i32 %sub4.1.i10, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %28)
  %cmp12.1.i11 = icmp ult i32 %29, %28
  %best_div.1.1.i12 = select i1 %cmp12.1.i11, i32 2, i32 %best_div.1.i8
  %30 = call i32 @llvm.umin.i32(i32 %29, i32 %28) #13
  %shr.2.i13 = lshr i32 %call.i3, 3
  %sub4.2.i14 = sub i32 %div24, %shr.2.i13
  %31 = call i32 @llvm.abs.i32(i32 %sub4.2.i14, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %30)
  %cmp12.2.i15 = icmp ult i32 %31, %30
  %best_div.1.2.i16 = select i1 %cmp12.2.i15, i32 3, i32 %best_div.1.1.i12
  %32 = call i32 @llvm.umin.i32(i32 %31, i32 %30) #13
  %shr.3.i17 = lshr i32 %call.i3, 4
  %sub4.3.i18 = sub i32 %div24, %shr.3.i17
  %33 = call i32 @llvm.abs.i32(i32 %sub4.3.i18, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %32)
  %cmp12.3.i19 = icmp ult i32 %33, %32
  %best_div.1.3.i20 = select i1 %cmp12.3.i19, i32 4, i32 %best_div.1.2.i16
  %34 = call i32 @llvm.umin.i32(i32 %33, i32 %32) #13
  %shr.4.i21 = lshr i32 %call.i3, 5
  %sub4.4.i22 = sub i32 %div24, %shr.4.i21
  %35 = call i32 @llvm.abs.i32(i32 %sub4.4.i22, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %34)
  %cmp12.4.i23 = icmp ult i32 %35, %34
  %best_div.1.4.i24 = select i1 %cmp12.4.i23, i32 5, i32 %best_div.1.3.i20
  %36 = call i32 @llvm.umin.i32(i32 %35, i32 %34) #13
  %shr.5.i25 = lshr i32 %call.i3, 6
  %sub4.5.i26 = sub i32 %div24, %shr.5.i25
  %37 = call i32 @llvm.abs.i32(i32 %sub4.5.i26, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %36)
  %cmp12.5.i27 = icmp ult i32 %37, %36
  %best_div.1.5.i28 = select i1 %cmp12.5.i27, i32 6, i32 %best_div.1.4.i24
  %38 = call i32 @llvm.umin.i32(i32 %37, i32 %36) #13
  %shr.6.i29 = lshr i32 %call.i3, 7
  %sub4.6.i30 = sub i32 %div24, %shr.6.i29
  %39 = call i32 @llvm.abs.i32(i32 %sub4.6.i30, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %38)
  %cmp12.6.i31 = icmp ult i32 %39, %38
  %best_div.1.6.i32 = select i1 %cmp12.6.i31, i32 7, i32 %best_div.1.5.i28
  %40 = call i32 @llvm.umin.i32(i32 %39, i32 %38) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %25)
  %cmp27 = icmp ult i32 %40, %25
  %call26.call25 = select i1 %cmp27, i32 %best_div.1.6.i32, i32 %best_div.1.6.i
  %. = zext i1 %cmp27 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !142
  call void @arm_heavy_mb() #13
  %conv32 = shl nuw nsw i32 %call26.call25, 4
  %shl = and i32 %conv32, 4080
  %or = or i32 %shl, %.
  %41 = call i32 @llvm.bswap.i32(i32 %or)
  %42 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pctl, align 4
  %44 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %desc, align 4
  %irq_bank_map.i.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %irq_bank_map.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %irq_bank_map.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %47, null
  %conv.i.i = and i32 %i.038, 255
  br i1 %tobool.not.i.i, label %if.end22.sunxi_irq_debounce_reg_from_bank.exit_crit_edge, label %if.else.i.i

if.end22.sunxi_irq_debounce_reg_from_bank.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_irq_debounce_reg_from_bank.exit

if.else.i.i:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr i32, ptr %47, i32 %conv.i.i
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i, align 4
  br label %sunxi_irq_debounce_reg_from_bank.exit

sunxi_irq_debounce_reg_from_bank.exit:            ; preds = %if.else.i.i, %if.end22.sunxi_irq_debounce_reg_from_bank.exit_crit_edge
  %retval.0.i.i = phi i32 [ %49, %if.else.i.i ], [ %conv.i.i, %if.end22.sunxi_irq_debounce_reg_from_bank.exit_crit_edge ]
  %mul.i = shl i32 %retval.0.i.i, 5
  %add.i = add i32 %mul.i, 536
  %add.ptr = getelementptr i8, ptr %43, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %41) #13, !srcloc !131
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %debounce) #13
  br label %cleanup37

for.inc:                                          ; preds = %sunxi_irq_debounce_reg_from_bank.exit, %if.end19.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %debounce) #13
  %inc = add nuw i32 %i.038, 1
  %50 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %desc, align 4
  %irq_banks = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %irq_banks to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq_banks, align 4
  %cmp15 = icmp ult i32 %inc, %53
  br i1 %cmp15, label %for.inc.for.body_crit_edge, label %for.inc.cleanup37_crit_edge

for.inc.cleanup37_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup37:                                        ; preds = %for.inc.cleanup37_crit_edge, %cleanup, %for.cond.preheader.cleanup37_crit_edge, %if.end8.cleanup37_crit_edge, %if.end3.cleanup37_crit_edge, %if.end.cleanup37_crit_edge, %entry.cleanup37_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %desc = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %pin_base = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pin_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pin_base, align 4
  %sub = sub i32 %pin, %5
  %trunc = trunc i32 %1 to i8
  %switch.tableidx = add i8 %trunc, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %6 = icmp ult i8 %switch.tableidx, 9
  br i1 %6, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 277, %switch.maskindex
  %7 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %switch.lobit.not = icmp eq i16 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %8 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.sunxi_pconf_get, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %div10.i14.i = lshr i32 %sub, 5
  %10 = and i32 %div10.i14.i, 255
  %narrow.i15.i = mul nuw nsw i32 %10, 36
  %11 = lshr i32 %sub, 2
  %12 = and i32 %11, 4
  %narrow11.i16.i = add nuw nsw i32 %narrow.i15.i, %12
  %narrow12.i17.i = add nuw nsw i32 %narrow11.i16.i, %switch.load
  %storemerge.in.i = shl i32 %sub, 1
  %storemerge.i = and i32 %storemerge.in.i, 30
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %narrow12.i17.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !133
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !143
  %shr = lshr i32 %16, %storemerge.i
  %and = and i32 %shr, 3
  %17 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %config, align 4
  %trunc63 = trunc i32 %18 to i8
  %19 = zext i8 %trunc63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc63, label %do.end [
    i8 9, label %sw.bb
    i8 5, label %sw.bb6
    i8 3, label %sw.bb11
    i8 1, label %sw.bb16
  ]

sw.bb:                                            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %mul = mul nuw nsw i32 %and, 2560
  %phi.bo = add nuw nsw i32 %mul, 2560
  br label %sw.epilog

sw.bb6:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp7.not = icmp eq i32 %and, 1
  br i1 %cmp7.not, label %sw.bb6.sw.epilog_crit_edge, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb11:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp12.not = icmp eq i32 %and, 2
  br i1 %cmp12.not, label %sw.bb11.sw.epilog_crit_edge, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb16:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp17.not = icmp eq i32 %and, 0
  br i1 %cmp17.not, label %sw.bb16.sw.epilog_crit_edge, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 521, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb16.sw.epilog_crit_edge, %sw.bb11.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %sw.bb
  %arg.0 = phi i32 [ %phi.bo, %sw.bb ], [ 256, %sw.bb6.sw.epilog_crit_edge ], [ 256, %sw.bb11.sw.epilog_crit_edge ], [ 0, %sw.bb16.sw.epilog_crit_edge ]
  %or.i = or i32 %arg.0, %and.i
  %20 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %sw.bb16.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end ], [ 0, %sw.epilog ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %sw.bb11.cleanup_crit_edge ], [ -22, %sw.bb16.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ], [ -524, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp106.not = icmp eq i32 %num_configs, 0
  br i1 %cmp106.not, label %entry.cleanup67_crit_edge, label %for.body.lr.ph

entry.cleanup67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup67

for.body.lr.ph:                                   ; preds = %entry
  %div10.i14.i = lshr i32 %pin, 5
  %0 = and i32 %div10.i14.i, 255
  %narrow.i15.i = mul nuw nsw i32 %0, 36
  %1 = lshr i32 %pin, 2
  %2 = and i32 %1, 4
  %narrow11.i16.i = add nuw nsw i32 %2, 28
  %narrow11.i16.i94 = add nuw nsw i32 %2, 20
  %storemerge.i100.in = shl i32 %pin, 1
  %storemerge.i100 = and i32 %storemerge.i100.in, 30
  %lock = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 12
  %shl = shl nuw i32 3, %storemerge.i100
  %neg = xor i32 %shl, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0107
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %shr.i = lshr i32 %4, 8
  %trunc = trunc i32 %4 to i8
  %5 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %trunc, label %for.body.cleanup67_crit_edge [
    i8 9, label %if.end.thread
    i8 3, label %sw.bb15
    i8 1, label %for.body.for.inc_crit_edge
    i8 5, label %sw.bb11
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.cleanup67_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup67

if.end.thread:                                    ; preds = %for.body
  %6 = add i32 %4, -10496
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7936, i32 %6)
  %7 = icmp ult i32 %6, -7936
  br i1 %7, label %if.end.thread.cleanup67_crit_edge, label %if.end9

if.end.thread.cleanup67_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup67

if.end9:                                          ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  %div.lhs.trunc = trunc i32 %shr.i to i8
  %div104 = udiv i8 %div.lhs.trunc, 10
  %div.zext = zext i8 %div104 to i32
  %sub = add nsw i32 %div.zext, -1
  br label %for.inc

sw.bb11:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %cmp12 = icmp ult i32 %4, 256
  br i1 %cmp12, label %sw.bb11.cleanup67_crit_edge, label %sw.bb11.for.inc_crit_edge

sw.bb11.for.inc_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sw.bb11.cleanup67_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup67

sw.bb15:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %cmp16 = icmp ult i32 %4, 256
  br i1 %cmp16, label %sw.bb15.cleanup67_crit_edge, label %sw.bb15.for.inc_crit_edge

sw.bb15.for.inc_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sw.bb15.cleanup67_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup67

for.inc:                                          ; preds = %sw.bb15.for.inc_crit_edge, %sw.bb11.for.inc_crit_edge, %if.end9, %for.body.for.inc_crit_edge
  %narrow11.i16.i94.pn = phi i32 [ %narrow11.i16.i94, %if.end9 ], [ %narrow11.i16.i, %sw.bb11.for.inc_crit_edge ], [ %narrow11.i16.i, %sw.bb15.for.inc_crit_edge ], [ %narrow11.i16.i, %for.body.for.inc_crit_edge ]
  %val.0 = phi i32 [ %sub, %if.end9 ], [ 1, %sw.bb11.for.inc_crit_edge ], [ 2, %sw.bb15.for.inc_crit_edge ], [ 0, %for.body.for.inc_crit_edge ]
  %narrow12.i17.i98 = add nuw nsw i32 %narrow11.i16.i94.pn, %narrow.i15.i
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %narrow12.i17.i98
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !133
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !144
  %and = and i32 %11, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !145
  tail call void @arm_heavy_mb() #13
  %shl47 = shl nuw i32 %val.0, %storemerge.i100
  %or = or i32 %and, %shl47
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  %add.ptr49 = getelementptr i8, ptr %14, i32 %narrow12.i17.i98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %12) #13, !srcloc !131
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call38) #13
  %inc = add nuw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup67_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup67_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup67

cleanup67:                                        ; preds = %for.inc.cleanup67_crit_edge, %sw.bb15.cleanup67_crit_edge, %sw.bb11.cleanup67_crit_edge, %if.end.thread.cleanup67_crit_edge, %for.body.cleanup67_crit_edge, %entry.cleanup67_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup67_crit_edge ], [ 0, %for.inc.cleanup67_crit_edge ], [ -22, %if.end.thread.cleanup67_crit_edge ], [ -22, %sw.bb11.cleanup67_crit_edge ], [ -22, %sw.bb15.cleanup67_crit_edge ], [ -524, %for.body.cleanup67_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pconf_group_get(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %groups = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin = getelementptr %struct.sunxi_pinctrl_group, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin, align 4
  %call1 = tail call i32 @sunxi_pconf_get(ptr noundef %pctldev, i32 noundef %3, ptr noundef %config)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pconf_group_set(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %groups = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin = getelementptr %struct.sunxi_pinctrl_group, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin, align 4
  %call1 = tail call i32 @sunxi_pconf_set(ptr noundef %pctldev, i32 noundef %3, ptr noundef %configs, i32 noundef %num_configs)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pctrl_get_groups_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %ngroups = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sunxi_pctrl_get_group_name(ptr noundef %pctldev, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %groups = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.sunxi_pinctrl_group, ptr %1, i32 %group
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pctrl_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %groups = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin = getelementptr %struct.sunxi_pinctrl_group, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pin, ptr %pins, align 4
  %3 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pctrl_dt_node_to_map(ptr noundef %pctldev, ptr noundef %node, ptr nocapture noundef %map, ptr nocapture noundef writeonly %num_maps) #0 align 64 {
entry:
  %val.i89.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %function.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %0 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %map, align 4
  %1 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %num_maps, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %function.i) #13
  %2 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %function.i, align 4, !annotation !140
  %call.i = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.29, ptr noundef nonnull %function.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.sunxi_pctrl_parse_function_prop.exit_crit_edge, label %if.end.i

entry.sunxi_pctrl_parse_function_prop.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_pctrl_parse_function_prop.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.30, ptr noundef nonnull %function.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.sunxi_pctrl_parse_function_prop.exit_crit_edge, label %sunxi_pctrl_parse_function_prop.exit.thread

if.end.i.sunxi_pctrl_parse_function_prop.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_pctrl_parse_function_prop.exit

sunxi_pctrl_parse_function_prop.exit.thread:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function.i) #13
  br label %do.end

sunxi_pctrl_parse_function_prop.exit:             ; preds = %if.end.i.sunxi_pctrl_parse_function_prop.exit_crit_edge, %entry.sunxi_pctrl_parse_function_prop.exit_crit_edge
  %3 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %retval.0.i = load ptr, ptr %function.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function.i) #13
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %sunxi_pctrl_parse_function_prop.exit.do.end_crit_edge, label %if.end

sunxi_pctrl_parse_function_prop.exit.do.end_crit_edge: ; preds = %sunxi_pctrl_parse_function_prop.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %sunxi_pctrl_parse_function_prop.exit.do.end_crit_edge, %sunxi_pctrl_parse_function_prop.exit.thread
  %dev = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.18, ptr noundef %node) #19
  br label %cleanup61

if.end:                                           ; preds = %sunxi_pctrl_parse_function_prop.exit
  %call.i.i = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.31, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.if.end9_crit_edge, label %if.end.i122

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end.i122:                                      ; preds = %if.end
  %call.i10.i = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %cmp2.i = icmp sgt i32 %call.i10.i, 0
  br i1 %cmp2.i, label %if.end.i122.if.end9_crit_edge, label %do.end7

if.end.i122.if.end9_crit_edge:                    ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

do.end7:                                          ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #15
  %dev8 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.21, ptr noundef %node) #19
  br label %cleanup61

if.end9:                                          ; preds = %if.end.i122.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call.i10.sink.i = phi i32 [ %call.i.i, %if.end.if.end9_crit_edge ], [ %call.i10.i, %if.end.i122.if.end9_crit_edge ]
  %retval.0.ph.i = phi ptr [ @.str.31, %if.end.if.end9_crit_edge ], [ @.str.32, %if.end.i122.if.end9_crit_edge ]
  %mul = shl nuw i32 %call.i10.sink.i, 1
  %8 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 28) #13
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !128

kmalloc_array.exit.thread:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %map, align 4
  br label %cleanup61

if.end7.i:                                        ; preds = %if.end9
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #16
  %12 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i, ptr %map, align 4
  %tobool11.not = icmp eq ptr %call8.i, null
  br i1 %tobool11.not, label %if.end7.i.cleanup61_crit_edge, label %if.end13

if.end7.i.cleanup61_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup61

if.end13:                                         ; preds = %if.end7.i
  %call.i.i126 = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.33, ptr noundef null) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i126, null
  br i1 %tobool.not.i.i, label %sunxi_pctrl_has_drive_prop.exit.i, label %if.end13.sunxi_pctrl_has_drive_prop.exit.thread.i_crit_edge

if.end13.sunxi_pctrl_has_drive_prop.exit.thread.i_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_pctrl_has_drive_prop.exit.thread.i

sunxi_pctrl_has_drive_prop.exit.i:                ; preds = %if.end13
  %call1.i.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.34, ptr noundef null) #13
  %tobool2.i.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.i.not.i, label %sunxi_pctrl_has_drive_prop.exit.i._crit_edge, label %sunxi_pctrl_has_drive_prop.exit.i.sunxi_pctrl_has_drive_prop.exit.thread.i_crit_edge

sunxi_pctrl_has_drive_prop.exit.i.sunxi_pctrl_has_drive_prop.exit.thread.i_crit_edge: ; preds = %sunxi_pctrl_has_drive_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_pctrl_has_drive_prop.exit.thread.i

sunxi_pctrl_has_drive_prop.exit.i._crit_edge:     ; preds = %sunxi_pctrl_has_drive_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %13

sunxi_pctrl_has_drive_prop.exit.thread.i:         ; preds = %sunxi_pctrl_has_drive_prop.exit.i.sunxi_pctrl_has_drive_prop.exit.thread.i_crit_edge, %if.end13.sunxi_pctrl_has_drive_prop.exit.thread.i_crit_edge
  br label %13

13:                                               ; preds = %sunxi_pctrl_has_drive_prop.exit.thread.i, %sunxi_pctrl_has_drive_prop.exit.i._crit_edge
  %tobool.not.i127 = phi i1 [ false, %sunxi_pctrl_has_drive_prop.exit.i._crit_edge ], [ true, %sunxi_pctrl_has_drive_prop.exit.thread.i ]
  %14 = phi i32 [ 1, %sunxi_pctrl_has_drive_prop.exit.i._crit_edge ], [ 2, %sunxi_pctrl_has_drive_prop.exit.thread.i ]
  %call.i66.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.35, ptr noundef null) #13
  %tobool.not.i67.i = icmp eq ptr %call.i66.i, null
  br i1 %tobool.not.i67.i, label %lor.lhs.false.i.i, label %.if.end7.i.i.i_crit_edge

.if.end7.i.i.i_crit_edge:                         ; preds = %13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i.i.i

lor.lhs.false.i.i:                                ; preds = %13
  %call1.i68.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.36, ptr noundef null) #13
  %tobool2.not.i.i = icmp eq ptr %call1.i68.i, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false3.i.i, label %lor.lhs.false.i.i.if.end7.i.i.i_crit_edge

lor.lhs.false.i.i.if.end7.i.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i.i.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %call4.i.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.37, ptr noundef null) #13
  %tobool5.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i.i, label %sunxi_pctrl_has_bias_prop.exit.i, label %lor.lhs.false3.i.i.if.end7.i.i.i_crit_edge

lor.lhs.false3.i.i.if.end7.i.i.i_crit_edge:       ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i.i.i

sunxi_pctrl_has_bias_prop.exit.i:                 ; preds = %lor.lhs.false3.i.i
  %call6.i.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.38, ptr noundef null) #13
  %tobool7.i.not.i = icmp ne ptr %call6.i.i, null
  %brmerge.i = or i1 %tobool.not.i127, %tobool7.i.not.i
  %.mux.i = select i1 %tobool7.i.not.i, i32 %14, i32 1
  br i1 %brmerge.i, label %sunxi_pctrl_has_bias_prop.exit.i.if.end7.i.i.i_crit_edge, label %sunxi_pctrl_has_bias_prop.exit.i.if.end18_crit_edge

sunxi_pctrl_has_bias_prop.exit.i.if.end18_crit_edge: ; preds = %sunxi_pctrl_has_bias_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

sunxi_pctrl_has_bias_prop.exit.i.if.end7.i.i.i_crit_edge: ; preds = %sunxi_pctrl_has_bias_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %sunxi_pctrl_has_bias_prop.exit.i.if.end7.i.i.i_crit_edge, %lor.lhs.false3.i.i.if.end7.i.i.i_crit_edge, %lor.lhs.false.i.i.if.end7.i.i.i_crit_edge, %.if.end7.i.i.i_crit_edge
  %15 = phi i32 [ %.mux.i, %sunxi_pctrl_has_bias_prop.exit.i.if.end7.i.i.i_crit_edge ], [ %14, %lor.lhs.false3.i.i.if.end7.i.i.i_crit_edge ], [ %14, %lor.lhs.false.i.i.if.end7.i.i.i_crit_edge ], [ %14, %.if.end7.i.i.i_crit_edge ]
  %16 = shl nuw nsw i32 %15, 2
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #16
  %tobool8.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool8.not.i, label %if.end7.i.i.i.if.then16_crit_edge, label %if.end11.i

if.end7.i.i.i.if.then16_crit_edge:                ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

if.end11.i:                                       ; preds = %if.end7.i.i.i
  %call.i70.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.33, ptr noundef null) #13
  %tobool.not.i71.i = icmp eq ptr %call.i70.i, null
  br i1 %tobool.not.i71.i, label %sunxi_pctrl_has_drive_prop.exit75.i, label %if.end11.i.if.then13.i_crit_edge

if.end11.i.if.then13.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i

sunxi_pctrl_has_drive_prop.exit75.i:              ; preds = %if.end11.i
  %call1.i72.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.34, ptr noundef null) #13
  %tobool2.i73.not.i = icmp eq ptr %call1.i72.i, null
  br i1 %tobool2.i73.not.i, label %sunxi_pctrl_has_drive_prop.exit75.i.if.end19.i_crit_edge, label %sunxi_pctrl_has_drive_prop.exit75.i.if.then13.i_crit_edge

sunxi_pctrl_has_drive_prop.exit75.i.if.then13.i_crit_edge: ; preds = %sunxi_pctrl_has_drive_prop.exit75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i

sunxi_pctrl_has_drive_prop.exit75.i.if.end19.i_crit_edge: ; preds = %sunxi_pctrl_has_drive_prop.exit75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.then13.i:                                      ; preds = %sunxi_pctrl_has_drive_prop.exit75.i.if.then13.i_crit_edge, %if.end11.i.if.then13.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #13
  %17 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i.i, align 4, !annotation !140
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.33, ptr noundef nonnull %val.i.i, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i76.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i76.i, label %if.then.i.i129, label %if.end5.i.i

if.then.i.i129:                                   ; preds = %if.then13.i
  %18 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %19)
  %cmp.i.i128 = icmp ult i32 %19, 10
  br i1 %cmp.i.i128, label %if.then.i.i129.sunxi_pctrl_parse_drive_prop.exit.thread.i_crit_edge, label %if.end.i.i130

if.then.i.i129.sunxi_pctrl_parse_drive_prop.exit.thread.i_crit_edge: ; preds = %if.then.i.i129
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_pctrl_parse_drive_prop.exit.thread.i

if.end.i.i130:                                    ; preds = %if.then.i.i129
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %19)
  %cmp2.i.i = icmp ugt i32 %19, 40
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end.i.i130.if.end4.i.i131_crit_edge

if.end.i.i130.if.end4.i.i131_crit_edge:           ; preds = %if.end.i.i130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i131

if.then3.i.i:                                     ; preds = %if.end.i.i130
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 40, ptr %val.i.i, align 4
  br label %if.end4.i.i131

if.end4.i.i131:                                   ; preds = %if.then3.i.i, %if.end.i.i130.if.end4.i.i131_crit_edge
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i.i, align 4
  %rem.i.i = urem i32 %22, 10
  %sub.i.i = sub i32 %22, %rem.i.i
  br label %sunxi_pctrl_parse_drive_prop.exit.i

if.end5.i.i:                                      ; preds = %if.then13.i
  %call.i.i12.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.34, ptr noundef nonnull %val.i.i, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i12.i.i)
  %tobool7.not.i.i = icmp sgt i32 %call.i.i12.i.i, -1
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end5.i.i.sunxi_pctrl_parse_drive_prop.exit.thread.i_crit_edge

if.end5.i.i.sunxi_pctrl_parse_drive_prop.exit.thread.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_pctrl_parse_drive_prop.exit.thread.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i.i, align 4
  %25 = mul i32 %24, 10
  %mul.i.i = add i32 %25, 10
  br label %sunxi_pctrl_parse_drive_prop.exit.i

sunxi_pctrl_parse_drive_prop.exit.thread.i:       ; preds = %if.end5.i.i.sunxi_pctrl_parse_drive_prop.exit.thread.i_crit_edge, %if.then.i.i129.sunxi_pctrl_parse_drive_prop.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #13
  br label %err_free.i

sunxi_pctrl_parse_drive_prop.exit.i:              ; preds = %if.end9.i.i, %if.end4.i.i131
  %retval.0.i.i = phi i32 [ %mul.i.i, %if.end9.i.i ], [ %sub.i.i, %if.end4.i.i131 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i132 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i132, label %sunxi_pctrl_parse_drive_prop.exit.i.err_free.i_crit_edge, label %cleanup.i

sunxi_pctrl_parse_drive_prop.exit.i.err_free.i_crit_edge: ; preds = %sunxi_pctrl_parse_drive_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free.i

cleanup.i:                                        ; preds = %sunxi_pctrl_parse_drive_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i.i = shl i32 %retval.0.i.i, 8
  %or.i.i = or i32 %shl.i.i, 9
  %26 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i.i, ptr %call8.i.i.i, align 128
  br label %if.end19.i

if.end19.i:                                       ; preds = %cleanup.i, %sunxi_pctrl_has_drive_prop.exit75.i.if.end19.i_crit_edge
  %idx.1.i = phi i32 [ 1, %cleanup.i ], [ 0, %sunxi_pctrl_has_drive_prop.exit75.i.if.end19.i_crit_edge ]
  %call.i77.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.35, ptr noundef null) #13
  %tobool.not.i78.i = icmp eq ptr %call.i77.i, null
  br i1 %tobool.not.i78.i, label %lor.lhs.false.i81.i, label %if.end19.i.if.then21.i_crit_edge

if.end19.i.if.then21.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21.i

lor.lhs.false.i81.i:                              ; preds = %if.end19.i
  %call1.i79.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.36, ptr noundef null) #13
  %tobool2.not.i80.i = icmp eq ptr %call1.i79.i, null
  br i1 %tobool2.not.i80.i, label %lor.lhs.false3.i84.i, label %lor.lhs.false.i81.i.if.then21.i_crit_edge

lor.lhs.false.i81.i.if.then21.i_crit_edge:        ; preds = %lor.lhs.false.i81.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21.i

lor.lhs.false3.i84.i:                             ; preds = %lor.lhs.false.i81.i
  %call4.i82.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.37, ptr noundef null) #13
  %tobool5.not.i83.i = icmp eq ptr %call4.i82.i, null
  br i1 %tobool5.not.i83.i, label %sunxi_pctrl_has_bias_prop.exit88.i, label %lor.lhs.false3.i84.i.if.then21.i_crit_edge

lor.lhs.false3.i84.i.if.then21.i_crit_edge:       ; preds = %lor.lhs.false3.i84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21.i

sunxi_pctrl_has_bias_prop.exit88.i:               ; preds = %lor.lhs.false3.i84.i
  %call6.i85.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.38, ptr noundef null) #13
  %tobool7.i86.not.i = icmp eq ptr %call6.i85.i, null
  br i1 %tobool7.i86.not.i, label %sunxi_pctrl_has_bias_prop.exit88.i.sunxi_pctrl_build_pin_config.exit_crit_edge, label %sunxi_pctrl_has_bias_prop.exit88.i.if.then21.i_crit_edge

sunxi_pctrl_has_bias_prop.exit88.i.if.then21.i_crit_edge: ; preds = %sunxi_pctrl_has_bias_prop.exit88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21.i

sunxi_pctrl_has_bias_prop.exit88.i.sunxi_pctrl_build_pin_config.exit_crit_edge: ; preds = %sunxi_pctrl_has_bias_prop.exit88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_pctrl_build_pin_config.exit

if.then21.i:                                      ; preds = %sunxi_pctrl_has_bias_prop.exit88.i.if.then21.i_crit_edge, %lor.lhs.false3.i84.i.if.then21.i_crit_edge, %lor.lhs.false.i81.i.if.then21.i_crit_edge, %if.end19.i.if.then21.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i89.i) #13
  %27 = ptrtoint ptr %val.i89.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val.i89.i, align 4, !annotation !140
  %call.i90.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.35, ptr noundef null) #13
  %tobool.not.i91.i = icmp eq ptr %call.i90.i, null
  br i1 %tobool.not.i91.i, label %if.end.i94.i, label %if.then21.i.if.end25.thread.i_crit_edge

if.then21.i.if.end25.thread.i_crit_edge:          ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.thread.i

if.end.i94.i:                                     ; preds = %if.then21.i
  %call1.i92.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.36, ptr noundef null) #13
  %tobool2.not.i93.i = icmp eq ptr %call1.i92.i, null
  br i1 %tobool2.not.i93.i, label %if.end4.i95.i, label %if.end.i94.i.if.end25.thread.i_crit_edge

if.end.i94.i.if.end25.thread.i_crit_edge:         ; preds = %if.end.i94.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.thread.i

if.end4.i95.i:                                    ; preds = %if.end.i94.i
  %call5.i.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.37, ptr noundef null) #13
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %if.end8.i.i133, label %if.end4.i95.i._crit_edge

if.end4.i95.i._crit_edge:                         ; preds = %if.end4.i95.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %31

if.end8.i.i133:                                   ; preds = %if.end4.i95.i
  %call.i.i.i96.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.38, ptr noundef nonnull %val.i89.i, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i96.i)
  %tobool10.not.i.i = icmp sgt i32 %call.i.i.i96.i, -1
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.end8.i.i133.cleanup32.i_crit_edge

if.end8.i.i133.cleanup32.i_crit_edge:             ; preds = %if.end8.i.i133
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32.i

if.end12.i.i:                                     ; preds = %if.end8.i.i133
  %28 = ptrtoint ptr %val.i89.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i89.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %29, label %if.end12.i.i.cleanup32.i_crit_edge [
    i32 0, label %if.end12.i.i._crit_edge
    i32 1, label %if.end12.i.i.if.end25.thread.i_crit_edge
    i32 2, label %sw.bb14.i.i
  ]

if.end12.i.i.if.end25.thread.i_crit_edge:         ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.thread.i

if.end12.i.i._crit_edge:                          ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %31

if.end12.i.i.cleanup32.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32.i

sw.bb14.i.i:                                      ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.thread.i

if.end25.thread.i:                                ; preds = %sw.bb14.i.i, %if.end12.i.i.if.end25.thread.i_crit_edge, %if.end.i94.i.if.end25.thread.i_crit_edge, %if.then21.i.if.end25.thread.i_crit_edge
  %retval.0.i97.ph.ph.i = phi i32 [ 259, %sw.bb14.i.i ], [ 261, %if.then21.i.if.end25.thread.i_crit_edge ], [ 259, %if.end.i94.i.if.end25.thread.i_crit_edge ], [ 261, %if.end12.i.i.if.end25.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i89.i) #13
  br label %cleanup32.thread.i

31:                                               ; preds = %if.end12.i.i._crit_edge, %if.end4.i95.i._crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i89.i) #13
  br label %cleanup32.thread.i

cleanup32.thread.i:                               ; preds = %31, %if.end25.thread.i
  %or.i99.i = phi i32 [ %retval.0.i97.ph.ph.i, %if.end25.thread.i ], [ 1, %31 ]
  %arrayidx31.i = getelementptr i32, ptr %call8.i.i.i, i32 %idx.1.i
  %32 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i99.i, ptr %arrayidx31.i, align 4
  br label %sunxi_pctrl_build_pin_config.exit

cleanup32.i:                                      ; preds = %if.end12.i.i.cleanup32.i_crit_edge, %if.end8.i.i133.cleanup32.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i89.i) #13
  br label %err_free.i

err_free.i:                                       ; preds = %cleanup32.i, %sunxi_pctrl_parse_drive_prop.exit.i.err_free.i_crit_edge, %sunxi_pctrl_parse_drive_prop.exit.thread.i
  %ret.3.i = phi i32 [ -22, %cleanup32.i ], [ -22, %sunxi_pctrl_parse_drive_prop.exit.thread.i ], [ %retval.0.i.i, %sunxi_pctrl_parse_drive_prop.exit.i.err_free.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #13
  %33 = inttoptr i32 %ret.3.i to ptr
  br label %sunxi_pctrl_build_pin_config.exit

sunxi_pctrl_build_pin_config.exit:                ; preds = %err_free.i, %cleanup32.thread.i, %sunxi_pctrl_has_bias_prop.exit88.i.sunxi_pctrl_build_pin_config.exit_crit_edge
  %configlen.0 = phi i32 [ 0, %err_free.i ], [ %15, %cleanup32.thread.i ], [ %15, %sunxi_pctrl_has_bias_prop.exit88.i.sunxi_pctrl_build_pin_config.exit_crit_edge ]
  %retval.0.i134 = phi ptr [ %33, %err_free.i ], [ %call8.i.i.i, %cleanup32.thread.i ], [ %call8.i.i.i, %sunxi_pctrl_has_bias_prop.exit88.i.sunxi_pctrl_build_pin_config.exit_crit_edge ]
  %cmp.i135 = icmp ugt ptr %retval.0.i134, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %sunxi_pctrl_build_pin_config.exit.if.then16_crit_edge, label %sunxi_pctrl_build_pin_config.exit.if.end18_crit_edge

sunxi_pctrl_build_pin_config.exit.if.end18_crit_edge: ; preds = %sunxi_pctrl_build_pin_config.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

sunxi_pctrl_build_pin_config.exit.if.then16_crit_edge: ; preds = %sunxi_pctrl_build_pin_config.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

if.then16:                                        ; preds = %sunxi_pctrl_build_pin_config.exit.if.then16_crit_edge, %if.end7.i.i.i.if.then16_crit_edge
  %retval.0.i134161 = phi ptr [ %retval.0.i134, %sunxi_pctrl_build_pin_config.exit.if.then16_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.i.i.i.if.then16_crit_edge ]
  %34 = ptrtoint ptr %retval.0.i134161 to i32
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 4
  call void @kfree(ptr noundef %36) #13
  %37 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %map, align 4
  br label %cleanup61

if.end18:                                         ; preds = %sunxi_pctrl_build_pin_config.exit.if.end18_crit_edge, %sunxi_pctrl_has_bias_prop.exit.i.if.end18_crit_edge
  %retval.0.i134167 = phi ptr [ %retval.0.i134, %sunxi_pctrl_build_pin_config.exit.if.end18_crit_edge ], [ null, %sunxi_pctrl_has_bias_prop.exit.i.if.end18_crit_edge ]
  %configlen.0166 = phi i32 [ %configlen.0, %sunxi_pctrl_build_pin_config.exit.if.end18_crit_edge ], [ 0, %sunxi_pctrl_has_bias_prop.exit.i.if.end18_crit_edge ]
  %call19 = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull %retval.0.ph.i, ptr noundef null) #13
  %call20 = call ptr @of_prop_next_string(ptr noundef %call19, ptr noundef null) #13
  %tobool21.not174 = icmp eq ptr %call20, null
  br i1 %tobool21.not174, label %if.end18.for.end_crit_edge, label %for.body.lr.ph

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end18
  %ngroups.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 9
  %groups.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 8
  %desc.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 2
  %variant10.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 14
  %tobool43.not = icmp eq ptr %retval.0.i134167, null
  %dev36 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0179 = phi i32 [ 0, %for.body.lr.ph ], [ %i.2, %cleanup.for.body_crit_edge ]
  %group.0175 = phi ptr [ %call20, %for.body.lr.ph ], [ %call55, %cleanup.for.body_crit_edge ]
  %38 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ngroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp6.not.i = icmp eq i32 %39, 0
  br i1 %cmp6.not.i, label %for.body.do.end27_crit_edge, label %for.body.lr.ph.i

for.body.do.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end27

for.body.lr.ph.i:                                 ; preds = %for.body
  %40 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %groups.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %39
  br i1 %exitcond.not.i, label %for.cond.i.do.end27_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.cond.i.do.end27_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end27

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.sunxi_pinctrl_group, ptr %41, i32 %i.07.i
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 4
  %call.i136 = call i32 @strcmp(ptr noundef %43, ptr noundef nonnull %group.0175) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool.not.i137 = icmp eq i32 %call.i136, 0
  br i1 %tobool.not.i137, label %sunxi_pinctrl_find_group_by_name.exit, label %for.cond.i

sunxi_pinctrl_find_group_by_name.exit:            ; preds = %for.body.i
  %tobool23.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool23.not, label %sunxi_pinctrl_find_group_by_name.exit.do.end27_crit_edge, label %if.end29

sunxi_pinctrl_find_group_by_name.exit.do.end27_crit_edge: ; preds = %sunxi_pinctrl_find_group_by_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end27

do.end27:                                         ; preds = %sunxi_pinctrl_find_group_by_name.exit.do.end27_crit_edge, %for.cond.i.do.end27_crit_edge, %for.body.do.end27_crit_edge
  %44 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.24, ptr noundef nonnull %group.0175) #19
  br label %cleanup

if.end29:                                         ; preds = %sunxi_pinctrl_find_group_by_name.exit
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 4
  %48 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %desc.i, align 4
  %npins.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp41.i = icmp sgt i32 %51, 0
  br i1 %cmp41.i, label %for.body.lr.ph.i138, label %if.end29.do.end35_crit_edge

if.end29.do.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

for.body.lr.ph.i138:                              ; preds = %if.end29
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 4
  br label %for.body.i141

for.body.i141:                                    ; preds = %for.inc.i.for.body.i141_crit_edge, %for.body.lr.ph.i138
  %i.042.i = phi i32 [ 0, %for.body.lr.ph.i138 ], [ %inc.i146, %for.inc.i.for.body.i141_crit_edge ]
  %name.i = getelementptr %struct.sunxi_desc_pin, ptr %53, i32 %i.042.i, i32 0, i32 1
  %54 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name.i, align 4
  %call.i139 = call i32 @strcmp(ptr noundef %55, ptr noundef %47) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool.not.i140 = icmp eq i32 %call.i139, 0
  br i1 %tobool.not.i140, label %if.then.i142, label %for.body.i141.for.inc.i_crit_edge

for.body.i141.for.inc.i_crit_edge:                ; preds = %for.body.i141
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i142:                                     ; preds = %for.body.i141
  %functions.i = getelementptr %struct.sunxi_desc_pin, ptr %53, i32 %i.042.i, i32 2
  %56 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %functions.i, align 4
  %name337.i = getelementptr inbounds %struct.sunxi_desc_function, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %name337.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name337.i, align 4
  %tobool4.not38.i = icmp eq ptr %59, null
  br i1 %tobool4.not38.i, label %if.then.i142.for.inc.i_crit_edge, label %if.then.i142.while.body.i_crit_edge

if.then.i142.while.body.i_crit_edge:              ; preds = %if.then.i142
  br label %while.body.i

if.then.i142.for.inc.i_crit_edge:                 ; preds = %if.then.i142
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

while.body.i:                                     ; preds = %if.end.i145.while.body.i_crit_edge, %if.then.i142.while.body.i_crit_edge
  %60 = phi ptr [ %66, %if.end.i145.while.body.i_crit_edge ], [ %59, %if.then.i142.while.body.i_crit_edge ]
  %func.039.i = phi ptr [ %incdec.ptr.i, %if.end.i145.while.body.i_crit_edge ], [ %57, %if.then.i142.while.body.i_crit_edge ]
  %call6.i = call i32 @strcmp(ptr noundef nonnull %60, ptr noundef nonnull %retval.0.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i144, label %while.body.i.if.end.i145_crit_edge

while.body.i.if.end.i145_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i145

land.lhs.true.i144:                               ; preds = %while.body.i
  %61 = ptrtoint ptr %func.039.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %func.039.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool8.not.i143 = icmp eq i32 %62, 0
  br i1 %tobool8.not.i143, label %land.lhs.true.i144.sunxi_pinctrl_desc_find_function_by_name.exit_crit_edge, label %lor.lhs.false.i

land.lhs.true.i144.sunxi_pinctrl_desc_find_function_by_name.exit_crit_edge: ; preds = %land.lhs.true.i144
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_pinctrl_desc_find_function_by_name.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i144
  %63 = ptrtoint ptr %variant10.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %variant10.i, align 4
  %and.i = and i32 %64, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i.if.end.i145_crit_edge, label %lor.lhs.false.i.sunxi_pinctrl_desc_find_function_by_name.exit_crit_edge

lor.lhs.false.i.sunxi_pinctrl_desc_find_function_by_name.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_pinctrl_desc_find_function_by_name.exit

lor.lhs.false.i.if.end.i145_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i145

if.end.i145:                                      ; preds = %lor.lhs.false.i.if.end.i145_crit_edge, %while.body.i.if.end.i145_crit_edge
  %incdec.ptr.i = getelementptr %struct.sunxi_desc_function, ptr %func.039.i, i32 1
  %name3.i = getelementptr %struct.sunxi_desc_function, ptr %func.039.i, i32 1, i32 1
  %65 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name3.i, align 4
  %tobool4.not.i = icmp eq ptr %66, null
  br i1 %tobool4.not.i, label %if.end.i145.for.inc.i_crit_edge, label %if.end.i145.while.body.i_crit_edge

if.end.i145.while.body.i_crit_edge:               ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i145.for.inc.i_crit_edge:                  ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i145.for.inc.i_crit_edge, %if.then.i142.for.inc.i_crit_edge, %for.body.i141.for.inc.i_crit_edge
  %inc.i146 = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i147 = icmp eq i32 %inc.i146, %51
  br i1 %exitcond.not.i147, label %for.inc.i.do.end35_crit_edge, label %for.inc.i.for.body.i141_crit_edge

for.inc.i.for.body.i141_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i141

for.inc.i.do.end35_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

sunxi_pinctrl_desc_find_function_by_name.exit:    ; preds = %lor.lhs.false.i.sunxi_pinctrl_desc_find_function_by_name.exit_crit_edge, %land.lhs.true.i144.sunxi_pinctrl_desc_find_function_by_name.exit_crit_edge
  %tobool31.not = icmp eq ptr %func.039.i, null
  br i1 %tobool31.not, label %sunxi_pinctrl_desc_find_function_by_name.exit.do.end35_crit_edge, label %if.end37

sunxi_pinctrl_desc_find_function_by_name.exit.do.end35_crit_edge: ; preds = %sunxi_pinctrl_desc_find_function_by_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

do.end35:                                         ; preds = %sunxi_pinctrl_desc_find_function_by_name.exit.do.end35_crit_edge, %for.inc.i.do.end35_crit_edge, %if.end29.do.end35_crit_edge
  %67 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.27, ptr noundef nonnull %retval.0.i, ptr noundef nonnull %group.0175) #19
  br label %cleanup

if.end37:                                         ; preds = %sunxi_pinctrl_desc_find_function_by_name.exit
  %69 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %map, align 4
  %type = getelementptr %struct.pinctrl_map, ptr %70, i32 %i.0179, i32 2
  %71 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %type, align 4
  %72 = load ptr, ptr %map, align 4
  %data = getelementptr %struct.pinctrl_map, ptr %72, i32 %i.0179, i32 4
  %73 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %group.0175, ptr %data, align 4
  %74 = load ptr, ptr %map, align 4
  %function42 = getelementptr %struct.pinctrl_map, ptr %74, i32 %i.0179, i32 4, i32 0, i32 1
  %75 = ptrtoint ptr %function42 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %retval.0.i, ptr %function42, align 4
  %inc = add i32 %i.0179, 1
  br i1 %tobool43.not, label %if.end37.cleanup_crit_edge, label %if.then44

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then44:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %map, align 4
  %type46 = getelementptr %struct.pinctrl_map, ptr %77, i32 %inc, i32 2
  %78 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4, ptr %type46, align 4
  %79 = load ptr, ptr %map, align 4
  %data48 = getelementptr %struct.pinctrl_map, ptr %79, i32 %inc, i32 4
  %80 = ptrtoint ptr %data48 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %group.0175, ptr %data48, align 4
  %81 = load ptr, ptr %map, align 4
  %configs = getelementptr %struct.pinctrl_map, ptr %81, i32 %inc, i32 4, i32 0, i32 1
  %82 = ptrtoint ptr %configs to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %retval.0.i134167, ptr %configs, align 4
  %83 = load ptr, ptr %map, align 4
  %num_configs = getelementptr %struct.pinctrl_map, ptr %83, i32 %inc, i32 4, i32 0, i32 2
  %84 = ptrtoint ptr %num_configs to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %configlen.0166, ptr %num_configs, align 4
  %inc53 = add i32 %i.0179, 2
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end37.cleanup_crit_edge, %do.end35, %do.end27
  %i.2 = phi i32 [ %i.0179, %do.end35 ], [ %i.0179, %do.end27 ], [ %inc53, %if.then44 ], [ %inc, %if.end37.cleanup_crit_edge ]
  %call55 = call ptr @of_prop_next_string(ptr noundef %call19, ptr noundef nonnull %group.0175) #13
  %tobool21.not = icmp eq ptr %call55, null
  br i1 %tobool21.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end18.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end18.for.end_crit_edge ], [ %i.2, %cleanup.for.end_crit_edge ]
  %85 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %i.0.lcssa, ptr %num_maps, align 4
  %86 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %map, align 4
  %mul56 = mul i32 %i.0.lcssa, 28
  %call57 = call noalias ptr @krealloc(ptr noundef %87, i32 noundef %mul56, i32 noundef 3264) #18
  %88 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call57, ptr %map, align 4
  %tobool58.not = icmp eq ptr %call57, null
  %. = select i1 %tobool58.not, i32 -12, i32 0
  br label %cleanup61

cleanup61:                                        ; preds = %for.end, %if.then16, %if.end7.i.cleanup61_crit_edge, %kmalloc_array.exit.thread, %do.end7, %do.end
  %retval.0 = phi i32 [ %34, %if.then16 ], [ -22, %do.end7 ], [ -22, %do.end ], [ -12, %if.end7.i.cleanup61_crit_edge ], [ %., %for.end ], [ -12, %kmalloc_array.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_pctrl_dt_free_map(ptr nocapture noundef readnone %pctldev, ptr noundef %map, i32 noundef %num_maps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_maps)
  %cmp9 = icmp ugt i32 %num_maps, 1
  br i1 %cmp9, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %type = getelementptr %struct.pinctrl_map, ptr %map, i32 %i.010, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp1.not = icmp eq i32 %1, 4
  br i1 %cmp1.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %configs = getelementptr %struct.pinctrl_map, ptr %map, i32 %i.010, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %configs, align 4
  tail call void @kfree(ptr noundef %3) #13
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %num_maps
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %map) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pmx_request(ptr noundef %pctldev, i32 noundef %offset) #0 align 64 {
entry:
  %supply = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %div54 = lshr i32 %offset, 5
  %conv1 = and i32 %div54, 65535
  %desc = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pin_base = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pin_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin_base, align 4
  %div255 = lshr i32 %3, 5
  %sub = sub nsw i32 %div54, %div255
  %idxprom = and i32 %sub, 65535
  %arrayidx = getelementptr %struct.sunxi_pinctrl, ptr %call, i32 0, i32 4, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %supply) #13
  %tobool.not = icmp eq ptr %5, null
  %6 = call ptr @memset(ptr %supply, i32 255, i32 16)
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %refcount = getelementptr %struct.sunxi_pinctrl, ptr %call, i32 0, i32 4, i32 %idxprom, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #13, !srcloc !146
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !128

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !147

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add nuw nsw i32 %conv1, 97
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %supply, i32 noundef 16, ptr noundef nonnull @.str.39, i32 noundef %add)
  %dev = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call7 = call ptr @regulator_get(ptr noundef %10, ptr noundef nonnull %supply) #13
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %add12 = add nuw nsw i32 %conv1, 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.40, i32 noundef %add12) #19
  %13 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = call i32 @regulator_enable(ptr noundef %call7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end24, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %add23 = add nuw nsw i32 %conv1, 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.43, i32 noundef %add23) #19
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  call void @regulator_put(ptr noundef %17) #13
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc, align 4
  %io_bias_cfg_variant.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %io_bias_cfg_variant.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_bias_cfg_variant.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.end24.sunxi_pinctrl_set_io_bias_cfg.exit_crit_edge, label %if.end.i

if.end24.sunxi_pinctrl_set_io_bias_cfg.exit_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_pinctrl_set_io_bias_cfg.exit

if.end.i:                                         ; preds = %if.end24
  %call.i = call i32 @regulator_get_voltage(ptr noundef %call7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %22 = icmp slt i32 %call.i, 1
  br i1 %22, label %if.end.i.sunxi_pinctrl_set_io_bias_cfg.exit_crit_edge, label %if.end7.i

if.end.i.sunxi_pinctrl_set_io_bias_cfg.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_pinctrl_set_io_bias_cfg.exit

if.end7.i:                                        ; preds = %if.end.i
  %23 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc, align 4
  %io_bias_cfg_variant9.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %io_bias_cfg_variant9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_bias_cfg_variant9.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %26, label %if.end7.i.sunxi_pinctrl_set_io_bias_cfg.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb38.i
  ]

if.end7.i.sunxi_pinctrl_set_io_bias_cfg.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_pinctrl_set_io_bias_cfg.exit

sw.bb.i:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800001, i32 %call.i)
  %cmp10.i = icmp ult i32 %call.i, 1800001
  br i1 %cmp10.i, label %sw.bb.i.if.end28.i_crit_edge, label %if.else.i

sw.bb.i.if.end28.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500001, i32 %call.i)
  %cmp13.i = icmp ult i32 %call.i, 2500001
  br i1 %cmp13.i, label %if.else.i.if.end28.i_crit_edge, label %if.else16.i

if.else.i.if.end28.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

if.else16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2800001, i32 %call.i)
  %cmp17.i = icmp ult i32 %call.i, 2800001
  br i1 %cmp17.i, label %if.else16.i.if.end28.i_crit_edge, label %if.else20.i

if.else16.i.if.end28.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

if.else20.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000001, i32 %call.i)
  %cmp21.i = icmp ult i32 %call.i, 3000001
  %..i = select i1 %cmp21.i, i32 10, i32 13
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else20.i, %if.else16.i.if.end28.i_crit_edge, %if.else.i.if.end28.i_crit_edge, %sw.bb.i.if.end28.i_crit_edge
  %val.0.i = phi i32 [ 0, %sw.bb.i.if.end28.i_crit_edge ], [ 6, %if.else.i.if.end28.i_crit_edge ], [ 9, %if.else16.i.if.end28.i_crit_edge ], [ %..i, %if.else20.i ]
  %pin_base.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %24, i32 0, i32 2
  %28 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pin_base.i, align 4
  %sub.i = sub i32 %offset, %29
  %30 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call, align 4
  %32 = lshr i32 %sub.i, 3
  %33 = and i32 %32, 1020
  %narrow.i.i = add nuw nsw i32 %33, 768
  %add.ptr.i = getelementptr i8, ptr %31, i32 %narrow.i.i
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !148
  %35 = and i32 %34, -251658241
  %36 = call i32 @llvm.bswap.i32(i32 %35) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !149
  call void @arm_heavy_mb() #13
  %or.i = or i32 %36, %val.0.i
  %37 = call i32 @llvm.bswap.i32(i32 %or.i) #13
  %38 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call, align 4
  %add.ptr37.i = getelementptr i8, ptr %39, i32 %narrow.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %37) #13, !srcloc !131
  br label %sunxi_pinctrl_set_io_bias_cfg.exit

sw.bb38.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800001, i32 %call.i)
  %cmp39.i = icmp ult i32 %call.i, 1800001
  %cond.i = zext i1 %cmp39.i to i32
  %lock.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 12
  %call45.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %40 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call, align 4
  %add.ptr51.i = getelementptr i8, ptr %41, i32 832
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i) #13, !srcloc !133
  %43 = call i32 @llvm.bswap.i32(i32 %42) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !150
  %shl.i = shl nuw i32 1, %conv1
  %neg.i = xor i32 %shl.i, -1
  %and56.i = and i32 %43, %neg.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !151
  call void @arm_heavy_mb() #13
  %shl61.i = shl nuw i32 %cond.i, %conv1
  %or62.i = or i32 %and56.i, %shl61.i
  %44 = call i32 @llvm.bswap.i32(i32 %or62.i) #13
  %45 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call, align 4
  %add.ptr64.i = getelementptr i8, ptr %46, i32 832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 %44) #13, !srcloc !131
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call45.i) #13
  br label %sunxi_pinctrl_set_io_bias_cfg.exit

sunxi_pinctrl_set_io_bias_cfg.exit:               ; preds = %sw.bb38.i, %if.end28.i, %if.end7.i.sunxi_pinctrl_set_io_bias_cfg.exit_crit_edge, %if.end.i.sunxi_pinctrl_set_io_bias_cfg.exit_crit_edge, %if.end24.sunxi_pinctrl_set_io_bias_cfg.exit_crit_edge
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7, ptr %arrayidx, align 4
  %refcount27 = getelementptr %struct.sunxi_pinctrl, ptr %call, i32 0, i32 4, i32 %idxprom, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount27, i32 noundef 4) #13
  %48 = ptrtoint ptr %refcount27 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 1, ptr %refcount27, align 4
  br label %cleanup

cleanup:                                          ; preds = %sunxi_pinctrl_set_io_bias_cfg.exit, %do.end20, %do.end, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %do.end ], [ %call15, %do.end20 ], [ 0, %sunxi_pinctrl_set_io_bias_cfg.exit ], [ 0, %if.else.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %supply) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pmx_free(ptr noundef %pctldev, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %div15 = lshr i32 %offset, 5
  %desc = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pin_base = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pin_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin_base, align 4
  %div216 = lshr i32 %3, 5
  %sub = sub nsw i32 %div15, %div216
  %idxprom = and i32 %sub, 65535
  %refcount = getelementptr %struct.sunxi_pinctrl, ptr %call, i32 0, i32 4, i32 %idxprom, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #13, !srcloc !153
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !147

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !154
  %arrayidx = getelementptr %struct.sunxi_pinctrl, ptr %call, i32 0, i32 4, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %6) #13
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call void @regulator_put(ptr noundef %8) #13
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pmx_get_funcs_cnt(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %nfunctions = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfunctions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sunxi_pmx_get_func_name(ptr noundef %pctldev, i32 noundef %function) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %functions = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.sunxi_pinctrl_function, ptr %1, i32 %function
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pmx_get_func_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %functions = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.sunxi_pinctrl_function, ptr %1, i32 %function, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %functions, align 4
  %ngroups = getelementptr %struct.sunxi_pinctrl_function, ptr %5, i32 %function, i32 2
  %6 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ngroups, align 4
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pmx_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %groups = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %add.ptr = getelementptr %struct.sunxi_pinctrl_group, ptr %1, i32 %group
  %functions = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %add.ptr1 = getelementptr %struct.sunxi_pinctrl_function, ptr %3, i32 %function
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %6 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr1, align 4
  %desc.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i, align 4
  %npins.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp41.i = icmp sgt i32 %11, 0
  br i1 %cmp41.i, label %for.body.lr.ph.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %variant10.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %name.i = getelementptr %struct.sunxi_desc_pin, ptr %13, i32 %i.042.i, i32 0, i32 1
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %15, ptr noundef %5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %functions.i = getelementptr %struct.sunxi_desc_pin, ptr %13, i32 %i.042.i, i32 2
  %16 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %functions.i, align 4
  %name337.i = getelementptr inbounds %struct.sunxi_desc_function, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %name337.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name337.i, align 4
  %tobool4.not38.i = icmp eq ptr %19, null
  br i1 %tobool4.not38.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.while.body.i_crit_edge

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  br label %while.body.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then.i.while.body.i_crit_edge
  %20 = phi ptr [ %26, %if.end.i.while.body.i_crit_edge ], [ %19, %if.then.i.while.body.i_crit_edge ]
  %func.039.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %17, %if.then.i.while.body.i_crit_edge ]
  %call6.i = tail call i32 @strcmp(ptr noundef nonnull %20, ptr noundef %7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %21 = ptrtoint ptr %func.039.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %func.039.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool8.not.i = icmp eq i32 %22, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.sunxi_pinctrl_desc_find_function_by_name.exit_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.sunxi_pinctrl_desc_find_function_by_name.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_pinctrl_desc_find_function_by_name.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %23 = ptrtoint ptr %variant10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %variant10.i, align 4
  %and.i = and i32 %24, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.sunxi_pinctrl_desc_find_function_by_name.exit_crit_edge

lor.lhs.false.i.sunxi_pinctrl_desc_find_function_by_name.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_pinctrl_desc_find_function_by_name.exit

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.sunxi_desc_function, ptr %func.039.i, i32 1
  %name3.i = getelementptr %struct.sunxi_desc_function, ptr %func.039.i, i32 1, i32 1
  %25 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name3.i, align 4
  %tobool4.not.i = icmp eq ptr %26, null
  br i1 %tobool4.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sunxi_pinctrl_desc_find_function_by_name.exit:    ; preds = %lor.lhs.false.i.sunxi_pinctrl_desc_find_function_by_name.exit_crit_edge, %land.lhs.true.i.sunxi_pinctrl_desc_find_function_by_name.exit_crit_edge
  %tobool.not = icmp eq ptr %func.039.i, null
  br i1 %tobool.not, label %sunxi_pinctrl_desc_find_function_by_name.exit.cleanup_crit_edge, label %if.end

sunxi_pinctrl_desc_find_function_by_name.exit.cleanup_crit_edge: ; preds = %sunxi_pinctrl_desc_find_function_by_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sunxi_pinctrl_desc_find_function_by_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %pin = getelementptr %struct.sunxi_pinctrl_group, ptr %1, i32 %group, i32 1
  %27 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pin, align 4
  %muxval = getelementptr inbounds %struct.sunxi_desc_function, ptr %func.039.i, i32 0, i32 2
  %29 = ptrtoint ptr %muxval to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %muxval, align 4
  %call.i12 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %lock.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i12, i32 0, i32 12
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %desc.i13 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i12, i32 0, i32 2
  %31 = ptrtoint ptr %desc.i13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %desc.i13, align 4
  %pin_base.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pin_base.i, align 4
  %sub.i = sub i32 %28, %34
  %35 = ptrtoint ptr %call.i12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i12, align 4
  %div10.i.i = lshr i32 %sub.i, 5
  %37 = and i32 %div10.i.i, 255
  %narrow.i.i = mul nuw nsw i32 %37, 36
  %38 = lshr i32 %sub.i, 1
  %39 = and i32 %38, 12
  %narrow11.i.i = add nuw nsw i32 %narrow.i.i, %39
  %add.ptr.i = getelementptr i8, ptr %36, i32 %narrow11.i.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !133
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !136
  %42 = shl i32 %sub.i, 2
  %43 = and i32 %42, 28
  %shl.i = shl nuw i32 15, %43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !137
  tail call void @arm_heavy_mb() #13
  %neg.i = xor i32 %shl.i, -1
  %and.i14 = and i32 %41, %neg.i
  %conv12.i = zext i8 %30 to i32
  %shl15.i = shl i32 %conv12.i, %43
  %or.i = or i32 %and.i14, %shl15.i
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %45 = ptrtoint ptr %call.i12 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i12, align 4
  %add.ptr19.i = getelementptr i8, ptr %46, i32 %narrow11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %44) #13, !srcloc !131
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sunxi_pinctrl_desc_find_function_by_name.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %sunxi_pinctrl_desc_find_function_by_name.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pmx_gpio_set_direction(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset, i1 noundef zeroext %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %.str.45..str.46 = select i1 %input, ptr @.str.45, ptr @.str.46
  %desc.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc.i, align 4
  %npins.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp31.i = icmp sgt i32 %3, 0
  br i1 %cmp31.i, label %for.body.lr.ph.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %conv.i = and i32 %offset, 65535
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.sunxi_desc_pin, ptr %5, i32 %i.032.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i)
  %cmp3.i = icmp eq i32 %7, %conv.i
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %functions.i = getelementptr %struct.sunxi_desc_pin, ptr %5, i32 %i.032.i, i32 2
  %8 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functions.i, align 4
  %name28.i = getelementptr inbounds %struct.sunxi_desc_function, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %name28.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name28.i, align 4
  %tobool.not29.i = icmp eq ptr %11, null
  br i1 %tobool.not29.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.while.body.i_crit_edge

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  br label %while.body.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then.i.while.body.i_crit_edge
  %12 = phi ptr [ %14, %if.end.i.while.body.i_crit_edge ], [ %11, %if.then.i.while.body.i_crit_edge ]
  %func.030.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %9, %if.then.i.while.body.i_crit_edge ]
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %12, ptr noundef nonnull %.str.45..str.46) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %sunxi_pinctrl_desc_find_function_by_pin.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.sunxi_desc_function, ptr %func.030.i, i32 1
  %name.i = getelementptr %struct.sunxi_desc_function, ptr %func.030.i, i32 1, i32 1
  %13 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sunxi_pinctrl_desc_find_function_by_pin.exit:     ; preds = %while.body.i
  %tobool2.not = icmp eq ptr %func.030.i, null
  br i1 %tobool2.not, label %sunxi_pinctrl_desc_find_function_by_pin.exit.cleanup_crit_edge, label %if.end4

sunxi_pinctrl_desc_find_function_by_pin.exit.cleanup_crit_edge: ; preds = %sunxi_pinctrl_desc_find_function_by_pin.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %sunxi_pinctrl_desc_find_function_by_pin.exit
  call void @__sanitizer_cov_trace_pc() #15
  %muxval = getelementptr inbounds %struct.sunxi_desc_function, ptr %func.030.i, i32 0, i32 2
  %15 = ptrtoint ptr %muxval to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %muxval, align 4
  %call.i10 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #13
  %lock.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i10, i32 0, i32 12
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %desc.i11 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i10, i32 0, i32 2
  %17 = ptrtoint ptr %desc.i11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc.i11, align 4
  %pin_base.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pin_base.i, align 4
  %sub.i = sub i32 %offset, %20
  %21 = ptrtoint ptr %call.i10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i10, align 4
  %div10.i.i = lshr i32 %sub.i, 5
  %23 = and i32 %div10.i.i, 255
  %narrow.i.i = mul nuw nsw i32 %23, 36
  %24 = lshr i32 %sub.i, 1
  %25 = and i32 %24, 12
  %narrow11.i.i = add nuw nsw i32 %narrow.i.i, %25
  %add.ptr.i12 = getelementptr i8, ptr %22, i32 %narrow11.i.i
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #13, !srcloc !133
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !136
  %28 = shl i32 %sub.i, 2
  %29 = and i32 %28, 28
  %shl.i = shl nuw i32 15, %29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !137
  tail call void @arm_heavy_mb() #13
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %27, %neg.i
  %conv12.i = zext i8 %16 to i32
  %shl15.i = shl i32 %conv12.i, %29
  %or.i = or i32 %and.i, %shl15.i
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %31 = ptrtoint ptr %call.i10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i10, align 4
  %add.ptr19.i = getelementptr i8, ptr %32, i32 %narrow11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %30) #13, !srcloc !131
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %sunxi_pinctrl_desc_find_function_by_pin.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %sunxi_pinctrl_desc_find_function_by_pin.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gpiochip_line_is_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pinctrl_irq_of_xlate(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %node, ptr nocapture noundef readonly %intspec, i32 noundef %intsize, ptr nocapture noundef writeonly %out_hwirq, ptr nocapture noundef writeonly %out_type) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %intsize)
  %cmp = icmp ult i32 %intsize, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %desc1 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc1, align 4
  %npins.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp31.i = icmp sgt i32 %5, 0
  br i1 %cmp31.i, label %for.body.lr.ph.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %pin_base = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %pin_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pin_base, align 4
  %8 = ptrtoint ptr %intspec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %intspec, align 4
  %mul = shl i32 %9, 5
  %add = add i32 %mul, %7
  %arrayidx2 = getelementptr i32, ptr %intspec, i32 1
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2, align 4
  %add3 = add i32 %add, %11
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %conv.i = and i32 %add3, 65535
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.sunxi_desc_pin, ptr %13, i32 %i.032.i
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i)
  %cmp3.i = icmp eq i32 %15, %conv.i
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %functions.i = getelementptr %struct.sunxi_desc_pin, ptr %13, i32 %i.032.i, i32 2
  %16 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %functions.i, align 4
  %name28.i = getelementptr inbounds %struct.sunxi_desc_function, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %name28.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name28.i, align 4
  %tobool.not29.i = icmp eq ptr %19, null
  br i1 %tobool.not29.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.while.body.i_crit_edge

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  br label %while.body.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then.i.while.body.i_crit_edge
  %20 = phi ptr [ %22, %if.end.i.while.body.i_crit_edge ], [ %19, %if.then.i.while.body.i_crit_edge ]
  %func.030.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %17, %if.then.i.while.body.i_crit_edge ]
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %20, ptr noundef nonnull dereferenceable(4) @.str.17) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %sunxi_pinctrl_desc_find_function_by_pin.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.sunxi_desc_function, ptr %func.030.i, i32 1
  %name.i = getelementptr %struct.sunxi_desc_function, ptr %func.030.i, i32 1, i32 1
  %21 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sunxi_pinctrl_desc_find_function_by_pin.exit:     ; preds = %while.body.i
  %tobool.not = icmp eq ptr %func.030.i, null
  br i1 %tobool.not, label %sunxi_pinctrl_desc_find_function_by_pin.exit.cleanup_crit_edge, label %if.end5

sunxi_pinctrl_desc_find_function_by_pin.exit.cleanup_crit_edge: ; preds = %sunxi_pinctrl_desc_find_function_by_pin.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %sunxi_pinctrl_desc_find_function_by_pin.exit
  call void @__sanitizer_cov_trace_pc() #15
  %irqbank = getelementptr inbounds %struct.sunxi_desc_function, ptr %func.030.i, i32 0, i32 3
  %23 = ptrtoint ptr %irqbank to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %irqbank, align 1
  %conv6 = zext i8 %24 to i32
  %mul7 = shl nuw nsw i32 %conv6, 5
  %irqnum = getelementptr inbounds %struct.sunxi_desc_function, ptr %func.030.i, i32 0, i32 4
  %25 = ptrtoint ptr %irqnum to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %irqnum, align 2
  %conv8 = zext i8 %26 to i32
  %add9 = add nuw nsw i32 %mul7, %conv8
  %27 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add9, ptr %out_hwirq, align 4
  %arrayidx10 = getelementptr i32, ptr %intspec, i32 2
  %28 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx10, align 4
  %30 = ptrtoint ptr %out_type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %out_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %sunxi_pinctrl_desc_find_function_by_pin.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sunxi_pinctrl_desc_find_function_by_pin.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_lockdep_class(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_pinctrl_irq_ack(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %desc = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %6 = lshr i32 %5, 5
  %irq_bank_map.i.i.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %irq_bank_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_bank_map.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %8, null
  %9 = and i32 %6, 255
  br i1 %tobool.not.i.i.i, label %entry.sunxi_irq_status_reg.exit_crit_edge, label %if.else.i.i.i

entry.sunxi_irq_status_reg.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_irq_status_reg.exit

if.else.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i, align 4
  br label %sunxi_irq_status_reg.exit

sunxi_irq_status_reg.exit:                        ; preds = %if.else.i.i.i, %entry.sunxi_irq_status_reg.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %11, %if.else.i.i.i ], [ %9, %entry.sunxi_irq_status_reg.exit_crit_edge ]
  %mul.i.i = shl i32 %retval.0.i.i.i, 5
  %add.i.i = add i32 %mul.i.i, 532
  %12 = and i32 %5, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !155
  tail call void @arm_heavy_mb() #13
  %shl = shl nuw i32 1, %12
  %13 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #13, !srcloc !131
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_pinctrl_irq_mask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %desc = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %6 = lshr i32 %5, 5
  %irq_bank_map.i.i.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %irq_bank_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_bank_map.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %8, null
  %9 = and i32 %6, 255
  br i1 %tobool.not.i.i.i, label %entry.sunxi_irq_ctrl_reg.exit_crit_edge, label %if.else.i.i.i

entry.sunxi_irq_ctrl_reg.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_irq_ctrl_reg.exit

if.else.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i, align 4
  br label %sunxi_irq_ctrl_reg.exit

sunxi_irq_ctrl_reg.exit:                          ; preds = %if.else.i.i.i, %entry.sunxi_irq_ctrl_reg.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %11, %if.else.i.i.i ], [ %9, %entry.sunxi_irq_ctrl_reg.exit_crit_edge ]
  %mul.i.i = shl i32 %retval.0.i.i.i, 5
  %add.i.i = add i32 %mul.i.i, 528
  %12 = and i32 %5, 31
  %lock = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 12
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %add.i.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !133
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !157
  tail call void @arm_heavy_mb() #13
  %shl = shl nuw i32 1, %12
  %neg = xor i32 %shl, -1
  %and = and i32 %16, %neg
  %17 = tail call i32 @llvm.bswap.i32(i32 %and)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr16 = getelementptr i8, ptr %19, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %17) #13, !srcloc !131
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_pinctrl_irq_unmask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %desc = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %6 = lshr i32 %5, 5
  %irq_bank_map.i.i.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %irq_bank_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_bank_map.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %8, null
  %9 = and i32 %6, 255
  br i1 %tobool.not.i.i.i, label %entry.sunxi_irq_ctrl_reg.exit_crit_edge, label %if.else.i.i.i

entry.sunxi_irq_ctrl_reg.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_irq_ctrl_reg.exit

if.else.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i, align 4
  br label %sunxi_irq_ctrl_reg.exit

sunxi_irq_ctrl_reg.exit:                          ; preds = %if.else.i.i.i, %entry.sunxi_irq_ctrl_reg.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %11, %if.else.i.i.i ], [ %9, %entry.sunxi_irq_ctrl_reg.exit_crit_edge ]
  %mul.i.i = shl i32 %retval.0.i.i.i, 5
  %add.i.i = add i32 %mul.i.i, 528
  %12 = and i32 %5, 31
  %lock = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 12
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %add.i.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !133
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !159
  tail call void @arm_heavy_mb() #13
  %shl = shl nuw i32 1, %12
  %or = or i32 %16, %shl
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr16 = getelementptr i8, ptr %19, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %17) #13, !srcloc !131
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pinctrl_irq_set_type(ptr nocapture noundef %d, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %desc = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %div9.i = lshr i32 %5, 5
  %irq_bank_map.i.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %irq_bank_map.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_bank_map.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  %8 = and i32 %div9.i, 255
  br i1 %tobool.not.i.i, label %entry.sunxi_irq_cfg_reg.exit_crit_edge, label %if.else.i.i

entry.sunxi_irq_cfg_reg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_irq_cfg_reg.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr i32, ptr %7, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  br label %sunxi_irq_cfg_reg.exit

sunxi_irq_cfg_reg.exit:                           ; preds = %if.else.i.i, %entry.sunxi_irq_cfg_reg.exit_crit_edge
  %retval.0.i.i = phi i32 [ %10, %if.else.i.i ], [ %8, %entry.sunxi_irq_cfg_reg.exit_crit_edge ]
  %11 = lshr i32 %5, 1
  %12 = and i32 %11, 12
  %mul5.i = shl i32 %retval.0.i.i, 5
  %add.i = add i32 %mul5.i, 512
  %add7.i = or i32 %add.i, %12
  %13 = shl i32 %5, 2
  %14 = and i32 %13, 28
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 8
  br i1 %15, label %switch.hole_check, label %sunxi_irq_cfg_reg.exit.cleanup_crit_edge

sunxi_irq_cfg_reg.exit.cleanup_crit_edge:         ; preds = %sunxi_irq_cfg_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.hole_check:                                ; preds = %sunxi_irq_cfg_reg.exit
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -113, %switch.maskindex
  %16 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %switch.lobit.not = icmp eq i8 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.sunxi_pinctrl_irq_set_type, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  %lock = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 12
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %and = and i32 %type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %common.i.i51 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %18 = ptrtoint ptr %common.i.i51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %common.i.i51, align 4
  %handle_irq.i52 = getelementptr inbounds %struct.irq_desc, ptr %19, i32 0, i32 3
  %handle_edge_irq.handle_fasteoi_irq = select i1 %tobool.not, ptr @handle_edge_irq, ptr @handle_fasteoi_irq
  %sunxi_pinctrl_edge_irq_chip.sunxi_pinctrl_level_irq_chip = select i1 %tobool.not, ptr @sunxi_pinctrl_edge_irq_chip, ptr @sunxi_pinctrl_level_irq_chip
  %20 = ptrtoint ptr %handle_irq.i52 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %handle_edge_irq.handle_fasteoi_irq, ptr %handle_irq.i52, align 4
  %name1.i53 = getelementptr inbounds %struct.irq_desc, ptr %19, i32 0, i32 35
  %21 = ptrtoint ptr %name1.i53 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %name1.i53, align 4
  %22 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %sunxi_pinctrl_edge_irq_chip.sunxi_pinctrl_level_irq_chip, ptr %22, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 %add7.i
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !133
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !160
  %shl = shl nuw i32 15, %14
  %neg = xor i32 %shl, -1
  %and16 = and i32 %27, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !161
  tail call void @arm_heavy_mb() #13
  %shl22 = shl nuw nsw i32 %switch.load, %14
  %or = or i32 %and16, %shl22
  %28 = tail call i32 @llvm.bswap.i32(i32 %or)
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add.ptr24 = getelementptr i8, ptr %30, i32 %add7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %28) #13, !srcloc !131
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #13
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %sunxi_irq_cfg_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %sunxi_irq_cfg_reg.exit.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pinctrl_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div3 = lshr i32 %3, 5
  %irq = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq, align 4
  %idxprom = and i32 %div3, 255
  %arrayidx = getelementptr i32, ptr %5, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call1 = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef %on) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_pinctrl_irq_request_resources(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_array = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %irq_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_array, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %desc.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i, align 4
  %npins.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp31.i = icmp sgt i32 %11, 0
  br i1 %cmp31.i, label %for.body.lr.ph.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %conv.i = and i32 %7, 65535
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.sunxi_desc_pin, ptr %13, i32 %i.032.i
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i)
  %cmp3.i = icmp eq i32 %15, %conv.i
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %functions.i = getelementptr %struct.sunxi_desc_pin, ptr %13, i32 %i.032.i, i32 2
  %16 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %functions.i, align 4
  %name28.i = getelementptr inbounds %struct.sunxi_desc_function, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %name28.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name28.i, align 4
  %tobool.not29.i = icmp eq ptr %19, null
  br i1 %tobool.not29.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.while.body.i_crit_edge

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  br label %while.body.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then.i.while.body.i_crit_edge
  %20 = phi ptr [ %22, %if.end.i.while.body.i_crit_edge ], [ %19, %if.then.i.while.body.i_crit_edge ]
  %func.030.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %17, %if.then.i.while.body.i_crit_edge ]
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %20, ptr noundef nonnull dereferenceable(4) @.str.17) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %sunxi_pinctrl_desc_find_function_by_pin.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.sunxi_desc_function, ptr %func.030.i, i32 1
  %name.i = getelementptr %struct.sunxi_desc_function, ptr %func.030.i, i32 1, i32 1
  %21 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sunxi_pinctrl_desc_find_function_by_pin.exit:     ; preds = %while.body.i
  %tobool.not = icmp eq ptr %func.030.i, null
  br i1 %tobool.not, label %sunxi_pinctrl_desc_find_function_by_pin.exit.cleanup_crit_edge, label %if.end

sunxi_pinctrl_desc_find_function_by_pin.exit.cleanup_crit_edge: ; preds = %sunxi_pinctrl_desc_find_function_by_pin.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sunxi_pinctrl_desc_find_function_by_pin.exit
  %chip = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip, align 4
  %pin_base = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %9, i32 0, i32 2
  %25 = ptrtoint ptr %pin_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pin_base, align 4
  %sub = sub i32 %7, %26
  %call5 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %24, i32 noundef %sub) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %29 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hwirq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.52, i32 noundef %30) #19
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %pctl_dev = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 13
  %31 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pctl_dev, align 4
  %33 = ptrtoint ptr %irq_array to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_array, align 4
  %35 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hwirq, align 4
  %arrayidx12 = getelementptr i32, ptr %34, i32 %36
  %37 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx12, align 4
  %muxval = getelementptr inbounds %struct.sunxi_desc_function, ptr %func.030.i, i32 0, i32 2
  %39 = ptrtoint ptr %muxval to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %muxval, align 4
  %call.i28 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %32) #13
  %lock.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i28, i32 0, i32 12
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %desc.i29 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %call.i28, i32 0, i32 2
  %41 = ptrtoint ptr %desc.i29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %desc.i29, align 4
  %pin_base.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pin_base.i, align 4
  %sub.i = sub i32 %38, %44
  %45 = ptrtoint ptr %call.i28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i28, align 4
  %div10.i.i = lshr i32 %sub.i, 5
  %47 = and i32 %div10.i.i, 255
  %narrow.i.i = mul nuw nsw i32 %47, 36
  %48 = lshr i32 %sub.i, 1
  %49 = and i32 %48, 12
  %narrow11.i.i = add nuw nsw i32 %narrow.i.i, %49
  %add.ptr.i30 = getelementptr i8, ptr %46, i32 %narrow11.i.i
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #13, !srcloc !133
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !136
  %52 = shl i32 %sub.i, 2
  %53 = and i32 %52, 28
  %shl.i = shl nuw i32 15, %53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !137
  tail call void @arm_heavy_mb() #13
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %51, %neg.i
  %conv12.i = zext i8 %40 to i32
  %shl15.i = shl i32 %conv12.i, %53
  %or.i = or i32 %and.i, %shl15.i
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %55 = ptrtoint ptr %call.i28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i28, align 4
  %add.ptr19.i = getelementptr i8, ptr %56, i32 %narrow11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %54) #13, !srcloc !131
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %sunxi_pinctrl_desc_find_function_by_pin.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ 0, %if.end9 ], [ -22, %sunxi_pinctrl_desc_find_function_by_pin.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_pinctrl_irq_release_resources(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chip = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %irq_array = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %irq_array to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_array, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %desc = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %pin_base = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pin_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pin_base, align 4
  %sub = sub i32 %9, %13
  tail call void @gpiochip_unlock_as_irq(ptr noundef %3, i32 noundef %sub) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_pinctrl_irq_ack_unmask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %desc.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  %6 = lshr i32 %5, 5
  %irq_bank_map.i.i.i.i = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %irq_bank_map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_bank_map.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %8, null
  %9 = and i32 %6, 255
  br i1 %tobool.not.i.i.i.i, label %entry.sunxi_pinctrl_irq_ack.exit_crit_edge, label %if.else.i.i.i.i

entry.sunxi_pinctrl_irq_ack.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_pinctrl_irq_ack.exit

if.else.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i.i = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i.i, align 4
  br label %sunxi_pinctrl_irq_ack.exit

sunxi_pinctrl_irq_ack.exit:                       ; preds = %if.else.i.i.i.i, %entry.sunxi_pinctrl_irq_ack.exit_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %11, %if.else.i.i.i.i ], [ %9, %entry.sunxi_pinctrl_irq_ack.exit_crit_edge ]
  %mul.i.i.i = shl i32 %retval.0.i.i.i.i, 5
  %add.i.i.i = add i32 %mul.i.i.i, 532
  %12 = and i32 %5, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !155
  tail call void @arm_heavy_mb() #13
  %shl.i = shl nuw i32 1, %12
  %13 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #13
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #13, !srcloc !131
  %16 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip_data.i.i, align 4
  %desc.i3 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %desc.i3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc.i3, align 4
  %20 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hwirq.i, align 4
  %22 = lshr i32 %21, 5
  %irq_bank_map.i.i.i.i5 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %19, i32 0, i32 4
  %23 = ptrtoint ptr %irq_bank_map.i.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_bank_map.i.i.i.i5, align 4
  %tobool.not.i.i.i.i6 = icmp eq ptr %24, null
  %25 = and i32 %22, 255
  br i1 %tobool.not.i.i.i.i6, label %sunxi_pinctrl_irq_ack.exit.sunxi_pinctrl_irq_unmask.exit_crit_edge, label %if.else.i.i.i.i8

sunxi_pinctrl_irq_ack.exit.sunxi_pinctrl_irq_unmask.exit_crit_edge: ; preds = %sunxi_pinctrl_irq_ack.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sunxi_pinctrl_irq_unmask.exit

if.else.i.i.i.i8:                                 ; preds = %sunxi_pinctrl_irq_ack.exit
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i.i7 = getelementptr i32, ptr %24, i32 %25
  %26 = ptrtoint ptr %arrayidx.i.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i.i7, align 4
  br label %sunxi_pinctrl_irq_unmask.exit

sunxi_pinctrl_irq_unmask.exit:                    ; preds = %if.else.i.i.i.i8, %sunxi_pinctrl_irq_ack.exit.sunxi_pinctrl_irq_unmask.exit_crit_edge
  %retval.0.i.i.i.i9 = phi i32 [ %27, %if.else.i.i.i.i8 ], [ %25, %sunxi_pinctrl_irq_ack.exit.sunxi_pinctrl_irq_unmask.exit_crit_edge ]
  %mul.i.i.i10 = shl i32 %retval.0.i.i.i.i9, 5
  %add.i.i.i11 = add i32 %mul.i.i.i10, 528
  %28 = and i32 %21, 31
  %lock.i = getelementptr inbounds %struct.sunxi_pinctrl, ptr %17, i32 0, i32 12
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %29 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %17, align 4
  %add.ptr.i12 = getelementptr i8, ptr %30, i32 %add.i.i.i11
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #13, !srcloc !133
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !159
  tail call void @arm_heavy_mb() #13
  %shl.i13 = shl nuw i32 1, %28
  %or.i = or i32 %32, %shl.i13
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %34 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %17, align 4
  %add.ptr16.i = getelementptr i8, ptr %35, i32 %add.i.i.i11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %33) #13, !srcloc !131
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(1) }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !20, !22, !23, !24, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !93, !95, !96, !97, !98, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !117}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @sunxi_pinctrl_init_with_variant.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 1422, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 1441, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @sunxi_pinctrl_init_with_variant._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @sunxi_pinctrl_init_with_variant._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 1485, i32 3}
!13 = !{ptr @sunxi_pinctrl_init_with_variant._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @sunxi_pinctrl_init_with_variant._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @sunxi_pinctrl_init_with_variant.lock_key, !16, !"lock_key", i1 false, i1 false}
!16 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 1512, i32 8}
!17 = !{ptr @sunxi_pinctrl_init_with_variant.request_key, !16, !"request_key", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 1527, i32 51}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 1559, i32 3}
!22 = !{ptr @sunxi_pinctrl_init_with_variant._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @sunxi_pinctrl_init_with_variant._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 1589, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sunxi_pinctrl_init_with_variant._entry.13, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @sunxi_pinctrl_init_with_variant._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @sunxi_pinctrl_irq_lock_class, !30, !"sunxi_pinctrl_irq_lock_class", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 43, i32 30}
!31 = !{ptr @sunxi_pinctrl_irq_request_class, !32, !"sunxi_pinctrl_irq_request_class", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 44, i32 30}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 1257, i32 28}
!35 = !{ptr @sunxi_pconf_ops, !36, !"sunxi_pconf_ops", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 613, i32 33}
!37 = !{ptr @sunxi_pctrl_ops, !38, !"sunxi_pctrl_ops", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 446, i32 33}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 344, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sunxi_pctrl_dt_node_to_map._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @sunxi_pctrl_dt_node_to_map._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 351, i32 3}
!46 = !{ptr @sunxi_pctrl_dt_node_to_map._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sunxi_pctrl_dt_node_to_map._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 379, i32 4}
!50 = !{ptr @sunxi_pctrl_dt_node_to_map._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sunxi_pctrl_dt_node_to_map._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 386, i32 4}
!54 = !{ptr @sunxi_pctrl_dt_node_to_map._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sunxi_pctrl_dt_node_to_map._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 237, i32 38}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 242, i32 38}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 255, i32 42}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 262, i32 42}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 172, i32 32}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 173, i32 26}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 164, i32 32}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 165, i32 26}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 166, i32 26}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 167, i32 26}
!76 = !{ptr @sunxi_pmx_ops, !77, !"sunxi_pmx_ops", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 831, i32 32}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 785, i32 35}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 788, i32 3}
!82 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @sunxi_pmx_request._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @sunxi_pmx_request._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 795, i32 3}
!87 = !{ptr @sunxi_pmx_request._entry.42, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @sunxi_pmx_request._entry_ptr.44, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 756, i32 10}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 758, i32 10}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 939, i32 2}
!95 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sunxi_pinctrl_gpio_to_irq.__UNIQUE_ID_ddebug288, !94, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!98 = !{ptr @sunxi_pinctrl_irq_domain_ops, !99, !"sunxi_pinctrl_irq_domain_ops", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 1140, i32 36}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 1084, i32 11}
!102 = !{ptr @sunxi_pinctrl_edge_irq_chip, !103, !"sunxi_pinctrl_edge_irq_chip", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 1083, i32 24}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 1096, i32 11}
!106 = !{ptr @sunxi_pinctrl_level_irq_chip, !107, !"sunxi_pinctrl_level_irq_chip", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 1095, i32 24}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 959, i32 3}
!110 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @sunxi_pinctrl_irq_request_resources._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @sunxi_pinctrl_irq_request_resources._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 1357, i32 30}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 1360, i32 33}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/sunxi/pinctrl-sunxi.c", i32 1364, i32 33}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"branch_weights", i32 1, i32 2000}
!129 = !{i8 0, i8 2}
!130 = !{i64 2155246639}
!131 = !{i64 722536}
!132 = !{i64 2155247129}
!133 = !{i64 722954}
!134 = !{i64 2155216105}
!135 = !{i64 2155216482}
!136 = !{i64 2155210547}
!137 = !{i64 2155210827}
!138 = !{i64 2155215369}
!139 = !{i64 2148189693, i64 2148189698, i64 2148189711, i64 2148189755, i64 2148189789, i64 2148189810}
!140 = !{!"auto-init"}
!141 = !{i64 2155227137}
!142 = !{i64 2155239358}
!143 = !{i64 2155204115}
!144 = !{i64 2155205892}
!145 = !{i64 2155206126}
!146 = !{i64 2148460144, i64 2148460176, i64 2148460205, i64 2148460239, i64 2148460270, i64 2148460293}
!147 = !{!"branch_weights", i32 2000, i32 1}
!148 = !{i64 2155207177}
!149 = !{i64 2155208095}
!150 = !{i64 2155209055}
!151 = !{i64 2155209293}
!152 = !{i64 2148548145}
!153 = !{i64 2148462609, i64 2148462641, i64 2148462670, i64 2148462704, i64 2148462735, i64 2148462758}
!154 = !{i64 2149985707}
!155 = !{i64 2155223043}
!156 = !{i64 2155223992}
!157 = !{i64 2155224222}
!158 = !{i64 2155225411}
!159 = !{i64 2155225640}
!160 = !{i64 2155222058}
!161 = !{i64 2155222327}
