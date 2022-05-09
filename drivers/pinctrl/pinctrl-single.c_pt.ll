; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-single.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-single.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pcs_conf_type = type { ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcs_soc_data = type { i32, i32, i32, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.pcs_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, %struct.pcs_soc_data, %struct.raw_spinlock, %struct.mutex, i32, i32, i32, i32, i32, i8, i32, %struct.pcs_data, %struct.list_head, %struct.list_head, %struct.irq_chip, ptr, %struct.pinctrl_desc, ptr, ptr }
%struct.pcs_data = type { ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pcs_gpiofunc_range = type { i32, i32, i32, %struct.list_head }
%struct.pcs_pdata = type { i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.pcs_func_vals = type { ptr, i32, i32 }
%struct.pcs_function = type { ptr, ptr, i32, ptr, i32, ptr, i32, %struct.list_head }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pcs_conf_vals = type { i32, i32, i32, i32, i32 }
%struct.function_desc = type { ptr, ptr, i32, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pin_desc = type { ptr, ptr, i8, ptr, i32, ptr, ptr, ptr }
%struct.pinctrl_setting_mux = type { i32, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.pcs_interrupt = type { ptr, i32, i32, %struct.list_head }

@__initcall__kmod_pinctrl_single__233_1988_pcs_driver_init6 = internal global ptr @pcs_driver_init, section ".initcall6.init", align 4
@pcs_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pcs_probe, ptr @pcs_remove, ptr null, ptr @pinctrl_single_suspend, ptr @pinctrl_single_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pcs_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pcs_driver_exit = internal global ptr @pcs_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author234 = internal constant [55 x i8] c"pinctrl_single.author=Tony Lindgren <tony@atomide.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [86 x i8] c"pinctrl_single.description=One-register-per-pin type device tree based pinctrl driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [51 x i8] c"pinctrl_single.file=drivers/pinctrl/pinctrl-single\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [30 x i8] c"pinctrl_single.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinctrl-single\00", [17 x i8] zeroinitializer }, align 32
@pcs_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-padconf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pinctrl_single_omap_wkup }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-padconf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pinctrl_single_omap_wkup }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-padconf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pinctrl_single_omap_wkup }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-padconf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pinctrl_single_dra7 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am437-padconf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pinctrl_single_am437x }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pinctrl-single\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pinctrl_single }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pinconf-single\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pinconf_single }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/pinctrl/pinctrl-single.c\00", [63 x i8] zeroinitializer }, align 32
@pcs_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pcs->lock\00", [21 x i8] zeroinitializer }, align 32
@pcs_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pcs->mutex\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pinctrl-single,register-width\00", [34 x i8] zeroinitializer }, align 32
@pcs_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.1, i32 1804, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"register width not specified\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcs_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcs_probe._entry_ptr = internal global ptr @pcs_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pinctrl-single,function-mask\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pinctrl-single,function-off\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pinctrl-single,bit-per-mux\00", [37 x i8] zeroinitializer }, align 32
@pcs_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.1, i32 1831, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to patch #pinctrl-cells\0A\00", [32 x i8] zeroinitializer }, align 32
@pcs_probe._entry_ptr.15 = internal global ptr @pcs_probe._entry.13, section ".printk_index", align 4
@pcs_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.1, i32 1838, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not get resource\0A\00", [40 x i8] zeroinitializer }, align 32
@pcs_probe._entry_ptr.18 = internal global ptr @pcs_probe._entry.16, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@pcs_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str.1, i32 1845, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not get mem_region\0A\00", [38 x i8] zeroinitializer }, align 32
@pcs_probe._entry_ptr.21 = internal global ptr @pcs_probe._entry.19, section ".printk_index", align 4
@pcs_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.7, ptr @.str.1, i32 1852, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"could not ioremap\0A\00", [45 x i8] zeroinitializer }, align 32
@pcs_probe._entry_ptr.24 = internal global ptr @pcs_probe._entry.22, section ".printk_index", align 4
@pcs_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @pinctrl_generic_get_group_count, ptr @pinctrl_generic_get_group_name, ptr @pinctrl_generic_get_group_pins, ptr @pcs_pin_dbg_show, ptr @pcs_dt_node_to_map, ptr @pcs_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@pcs_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @pinmux_generic_get_function_count, ptr @pinmux_generic_get_function_name, ptr @pinmux_generic_get_function_groups, ptr @pcs_set_mux, ptr @pcs_request_gpio, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@pcs_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @pcs_pinconf_get, ptr @pcs_pinconf_set, ptr @pcs_pinconf_group_get, ptr @pcs_pinconf_group_set, ptr @pcs_pinconf_dbg_show, ptr @pcs_pinconf_group_dbg_show, ptr @pcs_pinconf_config_dbg_show }, [32 x i8] zeroinitializer }, align 32
@pcs_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.7, ptr @.str.1, i32 1888, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"could not register single pinctrl driver\0A\00", [54 x i8] zeroinitializer }, align 32
@pcs_probe._entry_ptr.27 = internal global ptr @pcs_probe._entry.25, section ".printk_index", align 4
@pcs_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.7, ptr @.str.1, i32 1914, ptr @.str.30, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"initialized with no interrupts\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pcs_probe._entry_ptr.31 = internal global ptr @pcs_probe._entry.28, section ".printk_index", align 4
@pcs_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.7, ptr @.str.1, i32 1917, ptr @.str.34, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%i pins, size %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pcs_probe._entry_ptr.35 = internal global ptr @pcs_probe._entry.32, section ".printk_index", align 4
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"#pinctrl-cells\00", [17 x i8] zeroinitializer }, align 32
@pcs_quirk_missing_pinctrl_cells._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.1, i32 1751, ptr @.str.30, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"please update dts to use %s = <%i>\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pcs_quirk_missing_pinctrl_cells\00", [32 x i8] zeroinitializer }, align 32
@pcs_quirk_missing_pinctrl_cells._entry_ptr = internal global ptr @pcs_quirk_missing_pinctrl_cells._entry, section ".printk_index", align 4
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%zx %08x %s \00", [19 x i8] zeroinitializer }, align 32
@pcs_dt_node_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.1, i32 1279, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no pins entries for %pOFn\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcs_dt_node_to_map\00", [45 x i8] zeroinitializer }, align 32
@pcs_dt_node_to_map._entry_ptr = internal global ptr @pcs_dt_node_to_map._entry, section ".printk_index", align 4
@pcs_dt_node_to_map._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.1, i32 1287, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@pcs_dt_node_to_map._entry_ptr.43 = internal global ptr @pcs_dt_node_to_map._entry.42, section ".printk_index", align 4
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pinctrl-single,bits\00", [44 x i8] zeroinitializer }, align 32
@pcs_parse_bits_in_pinctrl_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.1, i32 1124, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid number of rows: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pcs_parse_bits_in_pinctrl_entry\00", [32 x i8] zeroinitializer }, align 32
@pcs_parse_bits_in_pinctrl_entry._entry_ptr = internal global ptr @pcs_parse_bits_in_pinctrl_entry._entry, section ".printk_index", align 4
@pcs_parse_bits_in_pinctrl_entry._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.1, i32 1129, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pinconf not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@pcs_parse_bits_in_pinctrl_entry._entry_ptr.49 = internal global ptr @pcs_parse_bits_in_pinctrl_entry._entry.47, section ".printk_index", align 4
@pcs_parse_bits_in_pinctrl_entry._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.1, i32 1160, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid args_count for spec: %i\0A\00", [63 x i8] zeroinitializer }, align 32
@pcs_parse_bits_in_pinctrl_entry._entry_ptr.52 = internal global ptr @pcs_parse_bits_in_pinctrl_entry._entry.50, section ".printk_index", align 4
@pcs_parse_bits_in_pinctrl_entry.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.46, ptr @.str.1, ptr @.str.54, i8 1, i8 36, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinctrl_single\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%pOFn index: 0x%x value: 0x%x mask: 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@pcs_parse_bits_in_pinctrl_entry._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.46, ptr @.str.1, i32 1183, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid mask for %pOFn at 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@pcs_parse_bits_in_pinctrl_entry._entry_ptr.57 = internal global ptr @pcs_parse_bits_in_pinctrl_entry._entry.55, section ".printk_index", align 4
@pcs_parse_bits_in_pinctrl_entry._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.46, ptr @.str.1, i32 1192, ptr @.str.30, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid submask 0x%x for %pOFn at 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@pcs_parse_bits_in_pinctrl_entry._entry_ptr.60 = internal global ptr @pcs_parse_bits_in_pinctrl_entry._entry.58, section ".printk_index", align 4
@pcs_parse_bits_in_pinctrl_entry._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.46, ptr @.str.1, i32 1204, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not add functions for %pOFn %ux\0A\00", [57 x i8] zeroinitializer }, align 32
@pcs_parse_bits_in_pinctrl_entry._entry_ptr.63 = internal global ptr @pcs_parse_bits_in_pinctrl_entry._entry.61, section ".printk_index", align 4
@pcs_get_pin_by_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.1, i32 819, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mux offset out of range: 0x%x (0x%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcs_get_pin_by_offset\00", [42 x i8] zeroinitializer }, align 32
@pcs_get_pin_by_offset._entry_ptr = internal global ptr @pcs_get_pin_by_offset._entry, section ".printk_index", align 4
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pinctrl-single,pins\00", [44 x i8] zeroinitializer }, align 32
@pcs_parse_one_pinctrl_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.67, ptr @.str.1, i32 1009, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pcs_parse_one_pinctrl_entry\00", [36 x i8] zeroinitializer }, align 32
@pcs_parse_one_pinctrl_entry._entry_ptr = internal global ptr @pcs_parse_one_pinctrl_entry._entry, section ".printk_index", align 4
@pcs_parse_one_pinctrl_entry._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.67, ptr @.str.1, i32 1032, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@pcs_parse_one_pinctrl_entry._entry_ptr.69 = internal global ptr @pcs_parse_one_pinctrl_entry._entry.68, section ".printk_index", align 4
@pcs_parse_one_pinctrl_entry.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.67, ptr @.str.1, ptr @.str.70, i8 1, i8 6, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%pOFn index: 0x%x value: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@pcs_parse_one_pinctrl_entry._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.67, ptr @.str.1, i32 1055, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@pcs_parse_one_pinctrl_entry._entry_ptr.72 = internal global ptr @pcs_parse_one_pinctrl_entry._entry.71, section ".printk_index", align 4
@pcs_parse_pinconf.prop2 = internal constant { [5 x %struct.pcs_conf_type], [56 x i8] } { [5 x %struct.pcs_conf_type] [%struct.pcs_conf_type { ptr @.str.73, i32 9 }, %struct.pcs_conf_type { ptr @.str.74, i32 24 }, %struct.pcs_conf_type { ptr @.str.75, i32 12 }, %struct.pcs_conf_type { ptr @.str.76, i32 13 }, %struct.pcs_conf_type { ptr @.str.77, i32 15 }], [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pinctrl-single,drive-strength\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pinctrl-single,slew-rate\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pinctrl-single,input-enable\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pinctrl-single,input-schmitt\00", [35 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pinctrl-single,low-power-mode\00", [34 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pinctrl-single,bias-pullup\00", [37 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pinctrl-single,bias-pulldown\00", [35 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pinctrl-single,input-schmitt-enable\00", [60 x i8] zeroinitializer }, align 32
@pcs_add_conf4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.1, i32 898, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mask field of the property can't be 0\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcs_add_conf4\00", [18 x i8] zeroinitializer }, align 32
@pcs_add_conf4._entry_ptr = internal global ptr @pcs_add_conf4._entry, section ".printk_index", align 4
@pcs_add_conf4.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.82, ptr @.str.1, ptr @.str.83, i8 0, i8 -30, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to match enable or disable bits\0A\00", [56 x i8] zeroinitializer }, align 32
@pcs_set_mux.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.84, ptr @.str.1, ptr @.str.85, i8 0, i8 95, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcs_set_mux\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enabling %s function%i\0A\00", [40 x i8] zeroinitializer }, align 32
@pcs_get_function._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.1, i32 356, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s could not find function%i\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcs_get_function\00", [47 x i8] zeroinitializer }, align 32
@pcs_get_function._entry_ptr = internal global ptr @pcs_get_function._entry, section ".printk_index", align 4
@pcs_allocate_pin_table.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.88, ptr @.str.1, ptr @.str.89, i8 0, i8 -72, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcs_allocate_pin_table\00", [41 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"allocating %i pins\0A\00", [44 x i8] zeroinitializer }, align 32
@pcs_allocate_pin_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.1, i32 754, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error adding pins: %i\0A\00", [41 x i8] zeroinitializer }, align 32
@pcs_allocate_pin_table._entry_ptr = internal global ptr @pcs_allocate_pin_table._entry, section ".printk_index", align 4
@pcs_add_pin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.1, i32 692, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"too many pins, max %i\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcs_add_pin\00", [20 x i8] zeroinitializer }, align 32
@pcs_add_pin._entry_ptr = internal global ptr @pcs_add_pin._entry, section ".printk_index", align 4
@pcs_add_pin.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.92, ptr @.str.1, ptr @.str.93, i8 0, i8 -81, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"irq enabled at boot for pin at %lx (%x), clearing\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pinctrl-single,gpio-range\00", [38 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"#pinctrl-single,gpio-range-cells\00", [63 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pinctrl\00", [24 x i8] zeroinitializer }, align 32
@pcs_irqdomain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @pcs_irqdomain_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@pcs_lock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pcs_request_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pinctrl_single_omap_wkup = internal constant { %struct.pcs_soc_data, [44 x i8] } { %struct.pcs_soc_data { i32 4, i32 0, i32 16384, i32 32768, ptr null }, [44 x i8] zeroinitializer }, align 32
@pinctrl_single_dra7 = internal constant { %struct.pcs_soc_data, [44 x i8] } { %struct.pcs_soc_data { i32 0, i32 0, i32 16777216, i32 33554432, ptr null }, [44 x i8] zeroinitializer }, align 32
@pinctrl_single_am437x = internal constant { %struct.pcs_soc_data, [44 x i8] } { %struct.pcs_soc_data { i32 12, i32 0, i32 536870912, i32 1073741824, ptr null }, [44 x i8] zeroinitializer }, align 32
@pinctrl_single = internal constant { %struct.pcs_soc_data, [44 x i8] } zeroinitializer, align 32
@pinconf_single = internal constant { %struct.pcs_soc_data, [44 x i8] } { %struct.pcs_soc_data { i32 1, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.100 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 13, i64 14]
@__sancov_gen_cov_switch_values.101 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 3, i64 5, i64 9, i64 12, i64 13, i64 14, i64 15, i64 24]
@___asan_gen_.102 = private unnamed_addr constant [11 x i8] c"pcs_driver\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1975, i32 31 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1979, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant [13 x i8] c"pcs_of_match\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1963, i32 34 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1786, i32 6 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1795, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1796, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1801, i32 33 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1804, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1809, i32 33 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1821, i32 33 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1827, i32 9 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1831, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1838, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1845, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1852, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [16 x i8] c"pcs_pinctrl_ops\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 329, i32 33 }
@___asan_gen_.180 = private unnamed_addr constant [15 x i8] c"pcs_pinmux_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 445, i32 32 }
@___asan_gen_.183 = private unnamed_addr constant [16 x i8] c"pcs_pinconf_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 667, i32 33 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1888, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1914, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1917, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1742, i32 21 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1750, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 313, i32 16 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1278, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1286, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1116, i32 21 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1124, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1129, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1159, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1169, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1181, i32 5 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1190, i32 5 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1202, i32 5 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 818, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1002, i32 21 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1009, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1031, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1048, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1053, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant [6 x i8] c"prop2\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 920, i32 36 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 921, i32 5 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 922, i32 5 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 923, i32 5 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 924, i32 5 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 925, i32 5 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 928, i32 5 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 929, i32 5 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 930, i32 5 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 898, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 906, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 379, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 355, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 737, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 754, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 691, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 701, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1339, i32 25 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1340, i32 25 }
@___asan_gen_.396 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1575, i32 21 }
@___asan_gen_.399 = private unnamed_addr constant [18 x i8] c"pcs_irqdomain_ops\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1561, i32 36 }
@___asan_gen_.402 = private unnamed_addr constant [15 x i8] c"pcs_lock_class\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 229, i32 30 }
@___asan_gen_.405 = private unnamed_addr constant [18 x i8] c"pcs_request_class\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 232, i32 30 }
@___asan_gen_.408 = private unnamed_addr constant [25 x i8] c"pinctrl_single_omap_wkup\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1939, i32 34 }
@___asan_gen_.411 = private unnamed_addr constant [20 x i8] c"pinctrl_single_dra7\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1945, i32 34 }
@___asan_gen_.414 = private unnamed_addr constant [22 x i8] c"pinctrl_single_am437x\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1950, i32 34 }
@___asan_gen_.417 = private unnamed_addr constant [15 x i8] c"pinctrl_single\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1956, i32 34 }
@___asan_gen_.420 = private unnamed_addr constant [15 x i8] c"pinconf_single\00", align 1
@___asan_gen_.421 = private constant [36 x i8] c"../drivers/pinctrl/pinctrl-single.c\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1959, i32 34 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_pcs_driver_exit, ptr @__initcall__kmod_pinctrl_single__233_1988_pcs_driver_init6, ptr @pcs_add_conf4._entry, ptr @pcs_add_conf4._entry_ptr, ptr @pcs_add_pin._entry, ptr @pcs_add_pin._entry_ptr, ptr @pcs_allocate_pin_table._entry, ptr @pcs_allocate_pin_table._entry_ptr, ptr @pcs_driver_exit, ptr @pcs_dt_node_to_map._entry, ptr @pcs_dt_node_to_map._entry.42, ptr @pcs_dt_node_to_map._entry_ptr, ptr @pcs_dt_node_to_map._entry_ptr.43, ptr @pcs_get_function._entry, ptr @pcs_get_function._entry_ptr, ptr @pcs_get_pin_by_offset._entry, ptr @pcs_get_pin_by_offset._entry_ptr, ptr @pcs_parse_bits_in_pinctrl_entry._entry, ptr @pcs_parse_bits_in_pinctrl_entry._entry.47, ptr @pcs_parse_bits_in_pinctrl_entry._entry.50, ptr @pcs_parse_bits_in_pinctrl_entry._entry.55, ptr @pcs_parse_bits_in_pinctrl_entry._entry.58, ptr @pcs_parse_bits_in_pinctrl_entry._entry.61, ptr @pcs_parse_bits_in_pinctrl_entry._entry_ptr, ptr @pcs_parse_bits_in_pinctrl_entry._entry_ptr.49, ptr @pcs_parse_bits_in_pinctrl_entry._entry_ptr.52, ptr @pcs_parse_bits_in_pinctrl_entry._entry_ptr.57, ptr @pcs_parse_bits_in_pinctrl_entry._entry_ptr.60, ptr @pcs_parse_bits_in_pinctrl_entry._entry_ptr.63, ptr @pcs_parse_one_pinctrl_entry._entry, ptr @pcs_parse_one_pinctrl_entry._entry.68, ptr @pcs_parse_one_pinctrl_entry._entry.71, ptr @pcs_parse_one_pinctrl_entry._entry_ptr, ptr @pcs_parse_one_pinctrl_entry._entry_ptr.69, ptr @pcs_parse_one_pinctrl_entry._entry_ptr.72, ptr @pcs_probe._entry, ptr @pcs_probe._entry.13, ptr @pcs_probe._entry.16, ptr @pcs_probe._entry.19, ptr @pcs_probe._entry.22, ptr @pcs_probe._entry.25, ptr @pcs_probe._entry.28, ptr @pcs_probe._entry.32, ptr @pcs_probe._entry_ptr, ptr @pcs_probe._entry_ptr.15, ptr @pcs_probe._entry_ptr.18, ptr @pcs_probe._entry_ptr.21, ptr @pcs_probe._entry_ptr.24, ptr @pcs_probe._entry_ptr.27, ptr @pcs_probe._entry_ptr.31, ptr @pcs_probe._entry_ptr.35, ptr @pcs_quirk_missing_pinctrl_cells._entry, ptr @pcs_quirk_missing_pinctrl_cells._entry_ptr, ptr @pcs_driver, ptr @.str, ptr @pcs_of_match, ptr @.str.1, ptr @pcs_probe.__key, ptr @.str.2, ptr @pcs_probe.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @pcs_pinctrl_ops, ptr @pcs_pinmux_ops, ptr @pcs_pinconf_ops, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.70, ptr @pcs_parse_pinconf.prop2, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @pcs_irqdomain_ops, ptr @pcs_lock_class, ptr @pcs_request_class, ptr @pinctrl_single_omap_wkup, ptr @pinctrl_single_dra7, ptr @pinctrl_single_am437x, ptr @pinctrl_single, ptr @pinconf_single], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_quirk_missing_pinctrl_cells._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_dt_node_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_dt_node_to_map._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_parse_bits_in_pinctrl_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_parse_bits_in_pinctrl_entry._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_parse_bits_in_pinctrl_entry._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_parse_bits_in_pinctrl_entry._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_parse_bits_in_pinctrl_entry._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_parse_bits_in_pinctrl_entry._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_get_pin_by_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_parse_one_pinctrl_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_parse_one_pinctrl_entry._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_parse_one_pinctrl_entry._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_parse_pinconf.prop2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_add_conf4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_get_function._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_allocate_pin_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_add_pin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_irqdomain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_lock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcs_request_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinctrl_single_omap_wkup to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinctrl_single_dra7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinctrl_single_am437x to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinctrl_single to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinconf_single to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcs_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pcs_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcs_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @pcs_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcs_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %gpiospec.i = alloca %struct.of_phandle_args, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !229

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1786, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 436, i32 noundef 3520) #7
  %tobool27.not = icmp eq ptr %call.i, null
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %dev31 = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %dev31 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev31, align 4
  %np32 = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %np32 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %np32, align 4
  %lock = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @pcs_probe.__key, i16 noundef signext 2) #7
  %mutex = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @pcs_probe.__key.3) #7
  %gpiofuncs = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 20
  %4 = ptrtoint ptr %gpiofuncs to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %gpiofuncs, ptr %gpiofuncs, align 4
  %prev.i = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 20, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %gpiofuncs, ptr %prev.i, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  %flags39 = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %flags39 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %flags39, align 4
  %socdata = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 9
  %9 = call ptr @memcpy(ptr %socdata, ptr %call, i32 20)
  %width = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 12
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef %width, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool41.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end47:                                         ; preds = %if.end29
  %fmask = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 13
  %call.i.i302 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef %fmask, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i302)
  %tobool49.not = icmp sgt i32 %call.i.i302, -1
  br i1 %tobool49.not, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %fmask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmask, align 4
  %14 = tail call i32 @llvm.cttz.i32(i32 %13, i1 false) #7, !range !230
  %shr = lshr i32 %13, %14
  br label %if.end58

if.else:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %fmask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %fmask, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then50
  %.sink322 = phi i32 [ %14, %if.then50 ], [ 0, %if.else ]
  %.sink = phi i32 [ %shr, %if.then50 ], [ 0, %if.else ]
  %16 = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 14
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink322, ptr %16, align 4
  %18 = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 16
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %18, align 4
  %foff = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 15
  %call.i.i303 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %foff, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i303)
  %tobool60.not = icmp sgt i32 %call.i.i303, -1
  br i1 %tobool60.not, label %if.end58.if.end63_crit_edge, label %if.then61

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %foff to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %foff, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end58.if.end63_crit_edge
  %call.i304 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef null) #7
  %tobool.i = icmp ne ptr %call.i304, null
  %bits_per_mux = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 17
  %frombool = zext i1 %tobool.i to i8
  %21 = ptrtoint ptr %bits_per_mux to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %bits_per_mux, align 4
  %cond = select i1 %tobool.i, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %val.i, align 4, !annotation !231
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %pcs_quirk_missing_pinctrl_cells.exit.thread316, label %do.end.i

pcs_quirk_missing_pinctrl_cells.exit.thread316:   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end74

do.end.i:                                         ; preds = %if.end63
  %23 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev31, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef %cond) #10
  %25 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev31, align 4
  %call.i.i305 = call noalias ptr @devm_kmalloc(ptr noundef %26, i32 noundef 64, i32 noundef 3520) #7
  %tobool3.not.i = icmp eq ptr %call.i.i305, null
  br i1 %tobool3.not.i, label %do.end.i.pcs_quirk_missing_pinctrl_cells.exit.thread_crit_edge, label %if.end5.i

do.end.i.pcs_quirk_missing_pinctrl_cells.exit.thread_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcs_quirk_missing_pinctrl_cells.exit.thread

if.end5.i:                                        ; preds = %do.end.i
  %length.i = getelementptr inbounds %struct.property, ptr %call.i.i305, i32 0, i32 1
  %27 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %length.i, align 4
  %28 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev31, align 4
  %call.i42.i = call noalias ptr @devm_kmalloc(ptr noundef %29, i32 noundef 4, i32 noundef 3520) #7
  %value.i = getelementptr inbounds %struct.property, ptr %call.i.i305, i32 0, i32 2
  %30 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i42.i, ptr %value.i, align 4
  %tobool9.not.i = icmp eq ptr %call.i42.i, null
  br i1 %tobool9.not.i, label %if.end5.i.pcs_quirk_missing_pinctrl_cells.exit.thread_crit_edge, label %if.end11.i

if.end5.i.pcs_quirk_missing_pinctrl_cells.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcs_quirk_missing_pinctrl_cells.exit.thread

if.end11.i:                                       ; preds = %if.end5.i
  %31 = ptrtoint ptr %call.i42.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond, ptr %call.i42.i, align 4
  %32 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev31, align 4
  %call14.i = call noalias ptr @devm_kstrdup(ptr noundef %33, ptr noundef nonnull @.str.36, i32 noundef 3264) #7
  %34 = ptrtoint ptr %call.i.i305 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call14.i, ptr %call.i.i305, align 4
  %tobool17.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool17.not.i, label %if.end11.i.pcs_quirk_missing_pinctrl_cells.exit.thread_crit_edge, label %pcs_quirk_missing_pinctrl_cells.exit

if.end11.i.pcs_quirk_missing_pinctrl_cells.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcs_quirk_missing_pinctrl_cells.exit.thread

pcs_quirk_missing_pinctrl_cells.exit.thread:      ; preds = %if.end11.i.pcs_quirk_missing_pinctrl_cells.exit.thread_crit_edge, %if.end5.i.pcs_quirk_missing_pinctrl_cells.exit.thread_crit_edge, %do.end.i.pcs_quirk_missing_pinctrl_cells.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %do.end72

pcs_quirk_missing_pinctrl_cells.exit:             ; preds = %if.end11.i
  %missing_nr_pinctrl_cells.i = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 8
  %35 = ptrtoint ptr %missing_nr_pinctrl_cells.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i305, ptr %missing_nr_pinctrl_cells.i, align 4
  %call21.i = call i32 @of_add_property(ptr noundef %1, ptr noundef nonnull %call.i.i305) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool68.not = icmp eq i32 %call21.i, 0
  br i1 %tobool68.not, label %pcs_quirk_missing_pinctrl_cells.exit.if.end74_crit_edge, label %pcs_quirk_missing_pinctrl_cells.exit.do.end72_crit_edge

pcs_quirk_missing_pinctrl_cells.exit.do.end72_crit_edge: ; preds = %pcs_quirk_missing_pinctrl_cells.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

pcs_quirk_missing_pinctrl_cells.exit.if.end74_crit_edge: ; preds = %pcs_quirk_missing_pinctrl_cells.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

do.end72:                                         ; preds = %pcs_quirk_missing_pinctrl_cells.exit.do.end72_crit_edge, %pcs_quirk_missing_pinctrl_cells.exit.thread
  %retval.0.i315 = phi i32 [ -12, %pcs_quirk_missing_pinctrl_cells.exit.thread ], [ %call21.i, %pcs_quirk_missing_pinctrl_cells.exit.do.end72_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end74:                                         ; preds = %pcs_quirk_missing_pinctrl_cells.exit.if.end74_crit_edge, %pcs_quirk_missing_pinctrl_cells.exit.thread316
  %call75 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool76.not = icmp eq ptr %call75, null
  %36 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev31, align 4
  br i1 %tobool76.not, label %do.end80, label %if.end82

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end82:                                         ; preds = %if.end74
  %38 = ptrtoint ptr %call75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call75, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call75, i32 0, i32 1
  %40 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %39
  %add.i = add i32 %sub.i, %41
  %call85 = call ptr @__devm_request_region(ptr noundef %37, ptr noundef nonnull @iomem_resource, i32 noundef %39, i32 noundef %add.i, ptr noundef nonnull @.str) #7
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call85, ptr %call.i, align 4
  %tobool88.not = icmp eq ptr %call85, null
  br i1 %tobool88.not, label %do.end92, label %if.end94

do.end92:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end94:                                         ; preds = %if.end82
  %end.i306 = getelementptr inbounds %struct.resource, ptr %call85, i32 0, i32 1
  %45 = ptrtoint ptr %end.i306 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %end.i306, align 4
  %47 = ptrtoint ptr %call85 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call85, align 4
  %sub.i307 = add i32 %46, 1
  %add.i308 = sub i32 %sub.i307, %48
  %size = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 3
  %49 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add.i308, ptr %size, align 4
  %50 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev31, align 4
  %52 = load i32, ptr %call85, align 4
  %call101 = call ptr @devm_ioremap(ptr noundef %51, i32 noundef %52, i32 noundef %add.i308) #7
  %base = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 1
  %53 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call101, ptr %base, align 4
  %tobool103.not = icmp eq ptr %call101, null
  br i1 %tobool103.not, label %do.end107, label %if.end109

do.end107:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end109:                                        ; preds = %if.end94
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %57 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %width, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i32 %58, label %if.end109.sw.epilog_crit_edge [
    i32 8, label %if.end109.sw.epilog.sink.split_crit_edge
    i32 16, label %sw.bb111
    i32 32, label %sw.bb114
  ]

if.end109.sw.epilog.sink.split_crit_edge:         ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end109.sw.epilog_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb111:                                         ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb114:                                         ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb114, %sw.bb111, %if.end109.sw.epilog.sink.split_crit_edge
  %pcs_readl.sink = phi ptr [ @pcs_readl, %sw.bb114 ], [ @pcs_readw, %sw.bb111 ], [ @pcs_readb, %if.end109.sw.epilog.sink.split_crit_edge ]
  %pcs_writel.sink = phi ptr [ @pcs_writel, %sw.bb114 ], [ @pcs_writew, %sw.bb111 ], [ @pcs_writeb, %if.end109.sw.epilog.sink.split_crit_edge ]
  %read115 = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 25
  %60 = ptrtoint ptr %read115 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %pcs_readl.sink, ptr %read115, align 4
  %write116 = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 26
  %61 = ptrtoint ptr %write116 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %pcs_writel.sink, ptr %write116, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end109.sw.epilog_crit_edge
  %desc = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 24
  %62 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str, ptr %desc, align 4
  %pctlops = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 24, i32 3
  %63 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @pcs_pinctrl_ops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 24, i32 4
  %64 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @pcs_pinmux_ops, ptr %pmxops, align 4
  %65 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags39, align 4
  %and = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool120.not = icmp eq i32 %and, 0
  br i1 %tobool120.not, label %sw.epilog.if.end123_crit_edge, label %if.then121

sw.epilog.if.end123_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then121:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %confops = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 24, i32 5
  %67 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @pcs_pinconf_ops, ptr %confops, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %sw.epilog.if.end123_crit_edge
  %owner = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 24, i32 6
  %68 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %owner, align 4
  %call125 = call fastcc i32 @pcs_allocate_pin_table(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp = icmp slt i32 %call125, 0
  br i1 %cmp, label %if.end123.free_crit_edge, label %if.end127

if.end123.free_crit_edge:                         ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end127:                                        ; preds = %if.end123
  %69 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev31, align 4
  %pctl = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 6
  %call130 = call i32 @pinctrl_register_and_init(ptr noundef %desc, ptr noundef %70, ptr noundef nonnull %call.i, ptr noundef %pctl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end137, label %do.end135

do.end135:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.26) #10
  br label %free

if.end137:                                        ; preds = %if.end127
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %gpiospec.i) #7
  %73 = call ptr @memset(ptr %gpiospec.i, i32 255, i32 72)
  %call.i21.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %gpiospec.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %tobool.not22.i = icmp eq i32 %call.i21.i, 0
  br i1 %tobool.not22.i, label %if.end.lr.ph.i, label %if.end137.if.end141_crit_edge

if.end137.if.end141_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.end.lr.ph.i:                                   ; preds = %if.end137
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %gpiospec.i, i32 0, i32 2
  %arrayidx6.i = getelementptr inbounds %struct.of_phandle_args, ptr %gpiospec.i, i32 0, i32 2, i32 1
  %arrayidx8.i = getelementptr inbounds %struct.of_phandle_args, ptr %gpiospec.i, i32 0, i32 2, i32 2
  br label %if.end.i

if.end.i:                                         ; preds = %list_add_tail.exit.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %i.023.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %inc.i, %list_add_tail.exit.i.if.end.i_crit_edge ]
  %74 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev31, align 4
  %call.i20.i = call noalias ptr @devm_kmalloc(ptr noundef %75, i32 noundef 20, i32 noundef 3520) #7
  %tobool2.not.i = icmp eq ptr %call.i20.i, null
  br i1 %tobool2.not.i, label %pcs_add_gpio_func.exit, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  %76 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %args.i, align 4
  %78 = ptrtoint ptr %call.i20.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %call.i20.i, align 4
  %79 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx6.i, align 4
  %npins.i = getelementptr inbounds %struct.pcs_gpiofunc_range, ptr %call.i20.i, i32 0, i32 1
  %81 = ptrtoint ptr %npins.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %npins.i, align 4
  %82 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx8.i, align 4
  %gpiofunc.i = getelementptr inbounds %struct.pcs_gpiofunc_range, ptr %call.i20.i, i32 0, i32 2
  %84 = ptrtoint ptr %gpiofunc.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %gpiofunc.i, align 4
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %node9.i = getelementptr inbounds %struct.pcs_gpiofunc_range, ptr %call.i20.i, i32 0, i32 3
  %85 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i, align 4
  %call.i.i.i310 = call zeroext i1 @__list_add_valid(ptr noundef %node9.i, ptr noundef %86, ptr noundef %gpiofuncs) #7
  br i1 %call.i.i.i310, label %if.end.i.i.i, label %if.end4.i.list_add_tail.exit.i_crit_edge

if.end4.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %node9.i, ptr %prev.i, align 4
  %88 = ptrtoint ptr %node9.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %gpiofuncs, ptr %node9.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.pcs_gpiofunc_range, ptr %call.i20.i, i32 0, i32 3, i32 1
  %89 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev3.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %node9.i, ptr %86, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end4.i.list_add_tail.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #7
  %inc.i = add i32 %i.023.i, 1
  %call.i.i311 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, i32 noundef -1, i32 noundef %inc.i, ptr noundef nonnull %gpiospec.i) #7
  %tobool.not.i312 = icmp eq i32 %call.i.i311, 0
  br i1 %tobool.not.i312, label %list_add_tail.exit.i.if.end.i_crit_edge, label %list_add_tail.exit.i.if.end141_crit_edge

list_add_tail.exit.i.if.end141_crit_edge:         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

list_add_tail.exit.i.if.end.i_crit_edge:          ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pcs_add_gpio_func.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %gpiospec.i) #7
  br label %free

if.end141:                                        ; preds = %list_add_tail.exit.i.if.end141_crit_edge, %if.end137.if.end141_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %gpiospec.i) #7
  %call142 = call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 9, i32 1
  %91 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call142, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool146.not = icmp eq i32 %call142, 0
  br i1 %tobool146.not, label %if.end141.if.end149_crit_edge, label %if.then147

if.end141.if.end149_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

if.then147:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags39, align 4
  %or = or i32 %93, 2
  store i32 %or, ptr %flags39, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then147, %if.end141.if.end149_crit_edge
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %94 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %platform_data.i, align 8
  %tobool152.not = icmp eq ptr %95, null
  br i1 %tobool152.not, label %if.end149.if.end169_crit_edge, label %if.then153

if.end149.if.end169_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

if.then153:                                       ; preds = %if.end149
  %rearm = getelementptr inbounds %struct.pcs_pdata, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %rearm to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rearm, align 4
  %tobool154.not = icmp eq ptr %97, null
  br i1 %tobool154.not, label %if.then153.if.end159_crit_edge, label %if.then155

if.then153.if.end159_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

if.then155:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #9
  %rearm158 = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 9, i32 4
  %98 = ptrtoint ptr %rearm158 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %rearm158, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then155, %if.then153.if.end159_crit_edge
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool161.not = icmp eq i32 %100, 0
  br i1 %tobool161.not, label %if.end159.if.end169_crit_edge, label %if.then162

if.end159.if.end169_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

if.then162:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %irq, align 4
  %102 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags39, align 4
  %or167 = or i32 %103, 2
  store i32 %or167, ptr %flags39, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then162, %if.end159.if.end169_crit_edge, %if.end149.if.end169_crit_edge
  %104 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags39, align 4
  %and171 = and i32 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.end169.do.end185_crit_edge, label %if.then173

if.end169.do.end185_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end185

if.then173:                                       ; preds = %if.end169
  %call174 = call fastcc i32 @pcs_irq_init_chained_handler(ptr noundef nonnull %call.i, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %cmp175 = icmp slt i32 %call174, 0
  br i1 %cmp175, label %do.end179, label %if.then173.do.end185_crit_edge

if.then173.do.end185_crit_edge:                   ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end185

do.end179:                                        ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev31, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %107, ptr noundef nonnull @.str.29) #10
  br label %do.end185

do.end185:                                        ; preds = %do.end179, %if.then173.do.end185_crit_edge, %if.end169.do.end185_crit_edge
  %108 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev31, align 4
  %npins = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 24, i32 2
  %110 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %npins, align 4
  %112 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %size, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %109, ptr noundef nonnull @.str.33, i32 noundef %111, i32 noundef %113) #10
  %114 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pctl, align 4
  %call190 = call i32 @pinctrl_enable(ptr noundef %115) #7
  br label %cleanup

free:                                             ; preds = %pcs_add_gpio_func.exit, %do.end135, %if.end123.free_crit_edge
  %ret.0 = phi i32 [ %call125, %if.end123.free_crit_edge ], [ %call130, %do.end135 ], [ -12, %pcs_add_gpio_func.exit ]
  call fastcc void @pcs_free_resources(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %free, %do.end185, %do.end107, %do.end92, %do.end80, %do.end72, %do.end45, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i.i, %do.end45 ], [ %retval.0.i315, %do.end72 ], [ %ret.0, %free ], [ %call190, %do.end185 ], [ -19, %do.end107 ], [ -16, %do.end92 ], [ -19, %do.end80 ], [ -12, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcs_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcs_free_resources(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinctrl_single_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup8_crit_edge, label %if.end

entry.cleanup8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup8

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %width.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width.i, align 4
  %div73.i = lshr i32 %5, 3
  %saved_vals.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %saved_vals.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %saved_vals.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then2.if.end5.i_crit_edge

if.then2.if.end5.i_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then.i:                                        ; preds = %if.then2
  %dev.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %size.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %11, i32 noundef 2848) #7
  %12 = ptrtoint ptr %saved_vals.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %saved_vals.i, align 4
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i, label %if.then.i.cleanup8_crit_edge, label %if.end5thread-pre-split.i

if.then.i.cleanup8_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup8

if.end5thread-pre-split.i:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr.i = load i32, ptr %width.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end5thread-pre-split.i, %if.then2.if.end5.i_crit_edge
  %14 = phi i32 [ %.pr.i, %if.end5thread-pre-split.i ], [ %5, %if.then2.if.end5.i_crit_edge ]
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %14, label %if.end5.i.if.end6_crit_edge [
    i32 64, label %sw.bb.i
    i32 32, label %sw.bb10.i
    i32 16, label %sw.bb25.i
  ]

if.end5.i.if.end6_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb.i:                                          ; preds = %if.end5.i
  %size8.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %size8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp82.not.i = icmp eq i32 %17, 0
  br i1 %cmp82.not.i, label %sw.bb.i.if.end6_crit_edge, label %for.body.lr.ph.i

sw.bb.i.if.end6_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.body.lr.ph.i:                                 ; preds = %sw.bb.i
  %18 = ptrtoint ptr %saved_vals.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %saved_vals.i, align 4
  %read.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 25
  %base.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %regsl.084.i = phi ptr [ %19, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %i.083.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i, align 4
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 %i.083.i
  %call9.i = tail call i32 %21(ptr noundef %add.ptr.i) #7
  %conv.i = zext i32 %call9.i to i64
  %incdec.ptr.i = getelementptr i64, ptr %regsl.084.i, i32 1
  %24 = ptrtoint ptr %regsl.084.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv.i, ptr %regsl.084.i, align 8
  %add.i = add i32 %i.083.i, %div73.i
  %25 = ptrtoint ptr %size8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size8.i, align 4
  %cmp.i = icmp ult i32 %add.i, %26
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end6_crit_edge

for.body.i.if.end6_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

sw.bb10.i:                                        ; preds = %if.end5.i
  %size13.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %size13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1479.not.i = icmp eq i32 %28, 0
  br i1 %cmp1479.not.i, label %sw.bb10.i.if.end6_crit_edge, label %for.body16.lr.ph.i

sw.bb10.i.if.end6_crit_edge:                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.body16.lr.ph.i:                               ; preds = %sw.bb10.i
  %29 = ptrtoint ptr %saved_vals.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %saved_vals.i, align 4
  %read17.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 25
  %base18.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 1
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.body16.lr.ph.i
  %regsw.081.i = phi ptr [ %30, %for.body16.lr.ph.i ], [ %incdec.ptr21.i, %for.body16.i.for.body16.i_crit_edge ]
  %i.180.i = phi i32 [ 0, %for.body16.lr.ph.i ], [ %add23.i, %for.body16.i.for.body16.i_crit_edge ]
  %31 = ptrtoint ptr %read17.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read17.i, align 4
  %33 = ptrtoint ptr %base18.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base18.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %34, i32 %i.180.i
  %call20.i = tail call i32 %32(ptr noundef %add.ptr19.i) #7
  %incdec.ptr21.i = getelementptr i32, ptr %regsw.081.i, i32 1
  %35 = ptrtoint ptr %regsw.081.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call20.i, ptr %regsw.081.i, align 4
  %add23.i = add i32 %i.180.i, %div73.i
  %36 = ptrtoint ptr %size13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size13.i, align 4
  %cmp14.i = icmp ult i32 %add23.i, %37
  br i1 %cmp14.i, label %for.body16.i.for.body16.i_crit_edge, label %for.body16.i.if.end6_crit_edge

for.body16.i.if.end6_crit_edge:                   ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16.i

sw.bb25.i:                                        ; preds = %if.end5.i
  %size28.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %size28.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp2976.not.i = icmp eq i32 %39, 0
  br i1 %cmp2976.not.i, label %sw.bb25.i.if.end6_crit_edge, label %for.body31.lr.ph.i

sw.bb25.i.if.end6_crit_edge:                      ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.body31.lr.ph.i:                               ; preds = %sw.bb25.i
  %40 = ptrtoint ptr %saved_vals.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %saved_vals.i, align 4
  %read32.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 25
  %base33.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 1
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.body31.i.for.body31.i_crit_edge, %for.body31.lr.ph.i
  %regshw.078.i = phi ptr [ %41, %for.body31.lr.ph.i ], [ %incdec.ptr37.i, %for.body31.i.for.body31.i_crit_edge ]
  %i.277.i = phi i32 [ 0, %for.body31.lr.ph.i ], [ %add39.i, %for.body31.i.for.body31.i_crit_edge ]
  %42 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i, align 4
  %44 = ptrtoint ptr %base33.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base33.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %45, i32 %i.277.i
  %call35.i = tail call i32 %43(ptr noundef %add.ptr34.i) #7
  %conv36.i = trunc i32 %call35.i to i16
  %incdec.ptr37.i = getelementptr i16, ptr %regshw.078.i, i32 1
  %46 = ptrtoint ptr %regshw.078.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv36.i, ptr %regshw.078.i, align 2
  %add39.i = add i32 %i.277.i, %div73.i
  %47 = ptrtoint ptr %size28.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size28.i, align 4
  %cmp29.i = icmp ult i32 %add39.i, %48
  br i1 %cmp29.i, label %for.body31.i.for.body31.i_crit_edge, label %for.body31.i.if.end6_crit_edge

for.body31.i.if.end6_crit_edge:                   ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.body31.i.for.body31.i_crit_edge:              ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body31.i

if.end6:                                          ; preds = %for.body31.i.if.end6_crit_edge, %sw.bb25.i.if.end6_crit_edge, %for.body16.i.if.end6_crit_edge, %sw.bb10.i.if.end6_crit_edge, %for.body.i.if.end6_crit_edge, %sw.bb.i.if.end6_crit_edge, %if.end5.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %pctl = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pctl, align 4
  %call7 = tail call i32 @pinctrl_force_sleep(ptr noundef %50) #7
  br label %cleanup8

cleanup8:                                         ; preds = %if.end6, %if.then.i.cleanup8_crit_edge, %entry.cleanup8_crit_edge
  %retval.1 = phi i32 [ %call7, %if.end6 ], [ -22, %entry.cleanup8_crit_edge ], [ -12, %if.then.i.cleanup8_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinctrl_single_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %width.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width.i, align 4
  %div54.i = lshr i32 %5, 3
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %5, label %if.then2.if.end3_crit_edge [
    i32 64, label %sw.bb.i
    i32 32, label %sw.bb2.i
    i32 16, label %sw.bb16.i
  ]

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

sw.bb.i:                                          ; preds = %if.then2
  %size.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp63.not.i = icmp eq i32 %8, 0
  br i1 %cmp63.not.i, label %sw.bb.i.if.end3_crit_edge, label %for.body.lr.ph.i

sw.bb.i.if.end3_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.body.lr.ph.i:                                 ; preds = %sw.bb.i
  %saved_vals.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %saved_vals.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %saved_vals.i, align 4
  %write.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 26
  %base.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %regsl.065.i = phi ptr [ %10, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %i.064.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i, align 4
  %incdec.ptr.i = getelementptr i64, ptr %regsl.065.i, i32 1
  %13 = ptrtoint ptr %regsl.065.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %regsl.065.i, align 8
  %conv.i = trunc i64 %14 to i32
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %i.064.i
  tail call void %12(i32 noundef %conv.i, ptr noundef %add.ptr.i) #7
  %add.i = add i32 %i.064.i, %div54.i
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  %cmp.i = icmp ult i32 %add.i, %18
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end3_crit_edge

for.body.i.if.end3_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

sw.bb2.i:                                         ; preds = %if.then2
  %size5.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %size5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp660.not.i = icmp eq i32 %20, 0
  br i1 %cmp660.not.i, label %sw.bb2.i.if.end3_crit_edge, label %for.body8.lr.ph.i

sw.bb2.i.if.end3_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.body8.lr.ph.i:                                ; preds = %sw.bb2.i
  %saved_vals3.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %saved_vals3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %saved_vals3.i, align 4
  %write9.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 26
  %base11.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 1
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %regsw.062.i = phi ptr [ %22, %for.body8.lr.ph.i ], [ %incdec.ptr10.i, %for.body8.i.for.body8.i_crit_edge ]
  %i.161.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %add14.i, %for.body8.i.for.body8.i_crit_edge ]
  %23 = ptrtoint ptr %write9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write9.i, align 4
  %incdec.ptr10.i = getelementptr i32, ptr %regsw.062.i, i32 1
  %25 = ptrtoint ptr %regsw.062.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %regsw.062.i, align 4
  %27 = ptrtoint ptr %base11.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base11.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %28, i32 %i.161.i
  tail call void %24(i32 noundef %26, ptr noundef %add.ptr12.i) #7
  %add14.i = add i32 %i.161.i, %div54.i
  %29 = ptrtoint ptr %size5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size5.i, align 4
  %cmp6.i = icmp ult i32 %add14.i, %30
  br i1 %cmp6.i, label %for.body8.i.for.body8.i_crit_edge, label %for.body8.i.if.end3_crit_edge

for.body8.i.if.end3_crit_edge:                    ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.i

sw.bb16.i:                                        ; preds = %if.then2
  %size19.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %size19.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp2057.not.i = icmp eq i32 %32, 0
  br i1 %cmp2057.not.i, label %sw.bb16.i.if.end3_crit_edge, label %for.body22.lr.ph.i

sw.bb16.i.if.end3_crit_edge:                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.body22.lr.ph.i:                               ; preds = %sw.bb16.i
  %saved_vals17.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %saved_vals17.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %saved_vals17.i, align 4
  %write23.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 26
  %base26.i = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 1
  br label %for.body22.i

for.body22.i:                                     ; preds = %for.body22.i.for.body22.i_crit_edge, %for.body22.lr.ph.i
  %regshw.059.i = phi ptr [ %34, %for.body22.lr.ph.i ], [ %incdec.ptr24.i, %for.body22.i.for.body22.i_crit_edge ]
  %i.258.i = phi i32 [ 0, %for.body22.lr.ph.i ], [ %add29.i, %for.body22.i.for.body22.i_crit_edge ]
  %35 = ptrtoint ptr %write23.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write23.i, align 4
  %incdec.ptr24.i = getelementptr i16, ptr %regshw.059.i, i32 1
  %37 = ptrtoint ptr %regshw.059.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %regshw.059.i, align 2
  %conv25.i = zext i16 %38 to i32
  %39 = ptrtoint ptr %base26.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base26.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %40, i32 %i.258.i
  tail call void %36(i32 noundef %conv25.i, ptr noundef %add.ptr27.i) #7
  %add29.i = add i32 %i.258.i, %div54.i
  %41 = ptrtoint ptr %size19.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size19.i, align 4
  %cmp20.i = icmp ult i32 %add29.i, %42
  br i1 %cmp20.i, label %for.body22.i.for.body22.i_crit_edge, label %for.body22.i.if.end3_crit_edge

for.body22.i.if.end3_crit_edge:                   ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.body22.i.for.body22.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body22.i

if.end3:                                          ; preds = %for.body22.i.if.end3_crit_edge, %sw.bb16.i.if.end3_crit_edge, %for.body8.i.if.end3_crit_edge, %sw.bb2.i.if.end3_crit_edge, %for.body.i.if.end3_crit_edge, %sw.bb.i.if.end3_crit_edge, %if.then2.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %pctl = getelementptr inbounds %struct.pcs_device, ptr %1, i32 0, i32 6
  %43 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pctl, align 4
  %call4 = tail call i32 @pinctrl_force_default(ptr noundef %44) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcs_readb(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %reg) #7, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcs_writeb(i32 noundef %val, ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %conv = trunc i32 %val to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %reg, i8 %conv) #7, !srcloc !235
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcs_readw(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %reg) #7, !srcloc !236
  %1 = tail call i16 @llvm.bswap.i16(i16 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcs_writew(i32 noundef %val, ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %conv = trunc i32 %val to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %reg, i16 %0) #7, !srcloc !239
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcs_readl(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #7, !srcloc !240
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcs_writel(i32 noundef %val, ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 %0) #7, !srcloc !243
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcs_allocate_pin_table(ptr nocapture noundef %pcs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_mux = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 17
  %0 = ptrtoint ptr %bits_per_mux to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bits_per_mux, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fmask = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 13
  %2 = ptrtoint ptr %fmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmask, align 4
  %4 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 true) #7, !range !230
  %sub.i = sub nuw nsw i32 32, %4
  %bits_per_pin = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 18
  %5 = ptrtoint ptr %bits_per_pin to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.i, ptr %bits_per_pin, align 4
  %size = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %mul = shl i32 %7, 3
  %div2 = udiv i32 %mul, %sub.i
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %width = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 12
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %div61 = lshr i32 %9, 3
  %size3 = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 3
  %10 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size3, align 4
  %div4 = udiv i32 %11, %div61
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %nr_pins.0 = phi i32 [ %div2, %if.then ], [ %div4, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcs_allocate_pin_table.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcs_allocate_pin_table, %do.end)) #7
          to label %if.then10 [label %do.end], !srcloc !245

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcs_allocate_pin_table.__UNIQUE_ID_ddebug229, ptr noundef %13, ptr noundef nonnull @.str.89, i32 noundef %nr_pins.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %dev12 = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_pins.0, i32 12) #7
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !229

devm_kcalloc.exit.thread:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %pins66 = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 19
  %16 = ptrtoint ptr %pins66 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pins66, align 4
  br label %cleanup35

devm_kcalloc.exit:                                ; preds = %do.end
  %17 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev12, align 4
  %19 = extractvalue { i32, i1 } %14, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef %19, i32 noundef 3520) #7
  %pins = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 19
  %20 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i, ptr %pins, align 4
  %tobool16.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool16.not, label %devm_kcalloc.exit.cleanup35_crit_edge, label %if.end18

devm_kcalloc.exit.cleanup35_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup35

if.end18:                                         ; preds = %devm_kcalloc.exit
  %pins21 = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 24, i32 1
  %21 = ptrtoint ptr %pins21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5.i.i, ptr %pins21, align 4
  %npins = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 24, i32 2
  %22 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %nr_pins.0, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pins.0)
  %cmp69.not = icmp eq i32 %nr_pins.0, 0
  br i1 %cmp69.not, label %if.end18.cleanup35_crit_edge, label %for.body.lr.ph

if.end18.cleanup35_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup35

for.body.lr.ph:                                   ; preds = %if.end18
  %width.i = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 12
  %bits_per_pin.i = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 18
  br label %for.body

for.cond:                                         ; preds = %pcs_pin_reg_offset_get.exit
  %inc = add nuw i32 %i.070, 1
  %23 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup35_crit_edge

for.cond.cleanup35_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup35

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %25 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %width.i, align 4
  %div10.i = lshr i32 %26, 3
  %27 = ptrtoint ptr %bits_per_mux to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bits_per_mux, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i62 = icmp eq i8 %28, 0
  br i1 %tobool.not.i62, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %bits_per_pin.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bits_per_pin.i, align 4
  %mul.i = mul i32 %30, %i.070
  %div111.i = lshr i32 %mul.i, 3
  %31 = urem i32 %div111.i, %div10.i
  %mul3.i = sub nsw i32 %div111.i, %31
  br label %pcs_pin_reg_offset_get.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %mul4.i = mul i32 %div10.i, %i.070
  br label %pcs_pin_reg_offset_get.exit

pcs_pin_reg_offset_get.exit:                      ; preds = %if.end.i, %if.then.i
  %retval.0.i63 = phi i32 [ %mul3.i, %if.then.i ], [ %mul4.i, %if.end.i ]
  %call26 = tail call fastcc i32 @pcs_add_pin(ptr noundef %pcs, i32 noundef %retval.0.i63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %cleanup.thread, label %for.cond

cleanup.thread:                                   ; preds = %pcs_pin_reg_offset_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.90, i32 noundef %call26) #10
  br label %cleanup35

cleanup35:                                        ; preds = %cleanup.thread, %for.cond.cleanup35_crit_edge, %if.end18.cleanup35_crit_edge, %devm_kcalloc.exit.cleanup35_crit_edge, %devm_kcalloc.exit.thread
  %retval.2 = phi i32 [ -12, %devm_kcalloc.exit.cleanup35_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %call26, %cleanup.thread ], [ 0, %if.end18.cleanup35_crit_edge ], [ 0, %for.cond.cleanup35_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcs_irq_init_chained_handler(ptr noundef %pcs, ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %socdata = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 9
  %irq_enable_mask = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %irq_enable_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_enable_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %irq_status_mask = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %irq_status_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_status_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %irq = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %irq, align 4
  br label %cleanup22

if.end:                                           ; preds = %lor.lhs.false
  %irqs = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 21
  %5 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %irqs, ptr %irqs, align 4
  %prev.i = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 21, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %irqs, ptr %prev.i, align 4
  %name2 = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 22, i32 1
  %7 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.96, ptr %name2, align 4
  %irq_ack = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 22, i32 6
  %8 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pcs_irq_mask, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 22, i32 7
  %9 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @pcs_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 22, i32 9
  %10 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pcs_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_wake = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 22, i32 14
  %11 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pcs_irq_set_wake, ptr %irq_set_wake, align 4
  %flags = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 7
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %irq14 = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq14, align 4
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef nonnull @pcs_irq_handler, ptr noundef null, i32 noundef 82048, ptr noundef nonnull @.str.96, ptr noundef %socdata) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.then8.if.end15_crit_edge, label %if.then11

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %irq14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %irq14, align 4
  br label %cleanup22

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @irq_set_chained_handler_and_data(i32 noundef %15, ptr noundef nonnull @pcs_irq_chain_handler, ptr noundef %socdata) #7
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then8.if.end15_crit_edge
  %size = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 3
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %tobool.not.i.i = icmp eq ptr %np, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @irq_domain_create_simple(ptr noundef %spec.select.i.i, i32 noundef %18, i32 noundef 0, ptr noundef nonnull @pcs_irqdomain_ops, ptr noundef %socdata) #7
  %domain = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 23
  %19 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call1.i, ptr %domain, align 4
  %tobool18.not = icmp eq ptr %call1.i, null
  br i1 %tobool18.not, label %if.then19, label %if.end15.cleanup22_crit_edge

if.end15.cleanup22_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %irq20 = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %irq20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq20, align 4
  tail call void @__irq_set_handler(i32 noundef %21, ptr noundef null, i32 noundef 1, ptr noundef null) #7
  br label %cleanup22

cleanup22:                                        ; preds = %if.then19, %if.end15.cleanup22_crit_edge, %if.then11, %if.then
  %retval.1 = phi i32 [ -22, %if.then19 ], [ -22, %if.then ], [ %call.i, %if.then11 ], [ 0, %if.end15.cleanup22_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcs_free_resources(ptr noundef %pcs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %socdata.i = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 9
  %irq.i = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.pcs_irq_free.exit_crit_edge, label %if.end.i

entry.pcs_irq_free.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcs_irq_free.exit

if.end.i:                                         ; preds = %entry
  %domain.i = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 23
  %2 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then1.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @irq_domain_remove(ptr noundef nonnull %3) #7
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  %flags.i = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 7
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call ptr @free_irq(i32 noundef %7, ptr noundef %socdata.i) #7
  br label %pcs_irq_free.exit

if.else.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__irq_set_handler(i32 noundef %7, ptr noundef null, i32 noundef 1, ptr noundef null) #7
  br label %pcs_irq_free.exit

pcs_irq_free.exit:                                ; preds = %if.else.i, %if.then5.i, %entry.pcs_irq_free.exit_crit_edge
  %pctl = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 6
  %8 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pctl, align 4
  tail call void @pinctrl_unregister(ptr noundef %9) #7
  %missing_nr_pinctrl_cells = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 8
  %10 = ptrtoint ptr %missing_nr_pinctrl_cells to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %missing_nr_pinctrl_cells, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %pcs_irq_free.exit.if.end_crit_edge, label %if.then

pcs_irq_free.exit.if.end_crit_edge:               ; preds = %pcs_irq_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %pcs_irq_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  %np = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 5
  %12 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %np, align 4
  %call = tail call i32 @of_remove_property(ptr noundef %13, ptr noundef nonnull %11) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %pcs_irq_free.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_add_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_pins(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcs_pin_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %width.i = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width.i, align 4
  %div10.i = lshr i32 %1, 3
  %bits_per_mux.i = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 17
  %2 = ptrtoint ptr %bits_per_mux.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bits_per_mux.i, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bits_per_pin.i = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 18
  %4 = ptrtoint ptr %bits_per_pin.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pin.i, align 4
  %mul.i = mul i32 %5, %pin
  %div111.i = lshr i32 %mul.i, 3
  %6 = urem i32 %div111.i, %div10.i
  %mul3.i = sub nsw i32 %div111.i, %6
  br label %pcs_pin_reg_offset_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul4.i = mul i32 %div10.i, %pin
  br label %pcs_pin_reg_offset_get.exit

pcs_pin_reg_offset_get.exit:                      ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %mul3.i, %if.then.i ], [ %mul4.i, %if.end.i ]
  %read = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 25
  %7 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read, align 4
  %base = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %retval.0.i
  %call2 = tail call i32 %8(ptr noundef %add.ptr) #7
  %11 = ptrtoint ptr %bits_per_mux.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bits_per_mux.i, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %pcs_pin_reg_offset_get.exit.if.end_crit_edge, label %if.then

pcs_pin_reg_offset_get.exit.if.end_crit_edge:     ; preds = %pcs_pin_reg_offset_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %pcs_pin_reg_offset_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %fmask = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 13
  %13 = ptrtoint ptr %fmask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmask, align 4
  %15 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width.i, align 4
  %bits_per_pin.i14 = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 18
  %17 = ptrtoint ptr %bits_per_pin.i14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bits_per_pin.i14, align 4
  %div.i = udiv i32 %16, %18
  %rem.i = urem i32 %pin, %div.i
  %mul.i15 = mul i32 %rem.i, %18
  %shl = shl i32 %14, %mul.i15
  %and = and i32 %shl, %call2
  br label %if.end

if.end:                                           ; preds = %if.then, %pcs_pin_reg_offset_get.exit.if.end_crit_edge
  %val.0 = phi i32 [ %and, %if.then ], [ %call2, %pcs_pin_reg_offset_get.exit.if.end_crit_edge ]
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add = add i32 %22, %retval.0.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.39, i32 noundef %add, i32 noundef %val.0, ptr noundef nonnull @.str) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcs_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr nocapture noundef %map, ptr nocapture noundef writeonly %num_maps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %dev = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 56, i32 noundef 3520) #7
  %2 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5.i.i, ptr %map, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %num_maps, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 4, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.free_map_crit_edge, label %if.end6

if.end.free_map_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_map

if.end6:                                          ; preds = %if.end
  %bits_per_mux = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 17
  %6 = ptrtoint ptr %bits_per_mux to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bits_per_mux, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call9 = tail call fastcc i32 @pcs_parse_bits_in_pinctrl_entry(ptr noundef %call, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then8.free_pgnames_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8.free_pgnames_crit_edge:                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_pgnames

if.else:                                          ; preds = %if.end6
  %call13 = tail call fastcc i32 @pcs_parse_one_pinctrl_entry(ptr noundef %call, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.else.free_pgnames_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.free_pgnames_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_pgnames

free_pgnames:                                     ; preds = %if.else.free_pgnames_crit_edge, %if.then8.free_pgnames_crit_edge
  %ret.0 = phi i32 [ %call9, %if.then8.free_pgnames_crit_edge ], [ %call13, %if.else.free_pgnames_crit_edge ]
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.40, ptr noundef %np_config) #10
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void @devm_kfree(ptr noundef %11, ptr noundef nonnull %call.i) #7
  br label %free_map

free_map:                                         ; preds = %free_pgnames, %if.end.free_map_crit_edge
  %ret.1 = phi i32 [ %ret.0, %free_pgnames ], [ -12, %if.end.free_map_crit_edge ]
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 4
  tail call void @devm_kfree(ptr noundef %13, ptr noundef %15) #7
  br label %cleanup

cleanup:                                          ; preds = %free_map, %if.else.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free_map ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcs_dt_free_map(ptr noundef %pctldev, ptr noundef %map, i32 noundef %num_maps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %dev = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @devm_kfree(ptr noundef %1, ptr noundef %map) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcs_parse_bits_in_pinctrl_entry(ptr noundef %pcs, ptr noundef %np, ptr nocapture noundef readonly %map, ptr nocapture noundef writeonly %num_maps, ptr noundef %pgnames) unnamed_addr #2 align 64 {
entry:
  %pinctrl_spec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pinctrl_count_index_with_args(ptr noundef %np, ptr noundef nonnull @.str.44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %call) #10
  br label %cleanup116

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %do.end4

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 4
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.48) #10
  br label %cleanup116

if.end6:                                          ; preds = %if.end
  %width = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 12
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %bits_per_pin = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 18
  %8 = ptrtoint ptr %bits_per_pin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pin, align 4
  %div = udiv i32 %7, %9
  %dev7 = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 4
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 %div) #7
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %array3_size.exit, label %array3_size.exit.thread

array3_size.exit:                                 ; preds = %if.end6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef -1, i32 noundef 3520) #7
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %array3_size.exit.cleanup116_crit_edge, label %array3_size.exit.array3_size.exit211_crit_edge

array3_size.exit.array3_size.exit211_crit_edge:   ; preds = %array3_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %array3_size.exit211

array3_size.exit.cleanup116_crit_edge:            ; preds = %array3_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup116

array3_size.exit.thread:                          ; preds = %if.end6
  %14 = extractvalue { i32, i1 } %12, 0
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 12) #7
  %16 = extractvalue { i32, i1 } %15, 1
  %17 = extractvalue { i32, i1 } %15, 0
  %spec.select.i = select i1 %16, i32 -1, i32 %17
  %call.i220 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef %spec.select.i, i32 noundef 3520) #7
  %tobool10.not221 = icmp eq ptr %call.i220, null
  br i1 %tobool10.not221, label %array3_size.exit.thread.cleanup116_crit_edge, label %if.end.i209

array3_size.exit.thread.cleanup116_crit_edge:     ; preds = %array3_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup116

if.end.i209:                                      ; preds = %array3_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 4) #7
  %19 = extractvalue { i32, i1 } %18, 1
  %20 = extractvalue { i32, i1 } %18, 0
  %spec.select.i208 = select i1 %19, i32 -1, i32 %20
  br label %array3_size.exit211

array3_size.exit211:                              ; preds = %if.end.i209, %array3_size.exit.array3_size.exit211_crit_edge
  %call.i222227 = phi ptr [ %call.i220, %if.end.i209 ], [ %call.i, %array3_size.exit.array3_size.exit211_crit_edge ]
  %retval.0.i210 = phi i32 [ %spec.select.i208, %if.end.i209 ], [ -1, %array3_size.exit.array3_size.exit211_crit_edge ]
  %21 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev7, align 4
  %call.i212 = tail call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef %retval.0.i210, i32 noundef 3520) #7
  %tobool16.not = icmp eq ptr %call.i212, null
  br i1 %tobool16.not, label %array3_size.exit211.free_vals_crit_edge, label %for.body.lr.ph

array3_size.exit211.free_vals_crit_edge:          ; preds = %array3_size.exit211
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_vals

for.body.lr.ph:                                   ; preds = %array3_size.exit211
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %pinctrl_spec, i32 0, i32 1
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %pinctrl_spec, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds %struct.of_phandle_args, ptr %pinctrl_spec, i32 0, i32 2, i32 1
  %arrayidx35 = getelementptr inbounds %struct.of_phandle_args, ptr %pinctrl_spec, i32 0, i32 2, i32 2
  %fmask = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 13
  %base = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 1
  %size.i = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 3
  %bits_per_mux.i = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0268 = phi i32 [ 0, %for.body.lr.ph ], [ %inc93, %for.inc.for.body_crit_edge ]
  %found.0267 = phi i32 [ 0, %for.body.lr.ph ], [ %found.1.ph250, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pinctrl_spec) #7
  %23 = call ptr @memset(ptr %pinctrl_spec, i32 255, i32 72)
  %call20 = call i32 @pinctrl_parse_index_with_args(ptr noundef %np, ptr noundef nonnull @.str.44, i32 noundef %i.0268, ptr noundef nonnull %pinctrl_spec) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %cleanup.thread236

cleanup.thread236:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pinctrl_spec) #7
  br label %cleanup116

if.end23:                                         ; preds = %for.body
  %24 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp24 = icmp slt i32 %25, 3
  br i1 %cmp24, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end23
  %26 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %args, align 4
  %28 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx33, align 4
  %30 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx35, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcs_parse_bits_in_pinctrl_entry.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcs_parse_bits_in_pinctrl_entry, %do.end47)) #7
          to label %if.then42 [label %do.end47], !srcloc !245

if.then42:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev7, align 4
  %34 = ptrtoint ptr %pinctrl_spec to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pinctrl_spec, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcs_parse_bits_in_pinctrl_entry.__UNIQUE_ID_ddebug232, ptr noundef %33, ptr noundef nonnull @.str.54, ptr noundef %35, i32 noundef %27, i32 noundef %29, i32 noundef %31) #7
  br label %do.end47

do.end47:                                         ; preds = %if.then42, %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool48.not259262 = icmp eq i32 %31, 0
  br i1 %tobool48.not259262, label %do.end47.for.inc_crit_edge, label %while.body.lr.ph.lr.ph

do.end47.for.inc_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

while.body.lr.ph.lr.ph:                           ; preds = %do.end47
  %mul.i = shl i32 %27, 3
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end82.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %mask.0.ph264 = phi i32 [ %31, %while.body.lr.ph.lr.ph ], [ %and62, %if.end82.while.body.lr.ph_crit_edge ]
  %found.1.ph263 = phi i32 [ %found.0267, %while.body.lr.ph.lr.ph ], [ %inc, %if.end82.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %do.end67.while.body_crit_edge, %while.body.lr.ph
  %mask.0260 = phi i32 [ %mask.0.ph264, %while.body.lr.ph ], [ %and62, %do.end67.while.body_crit_edge ]
  %36 = call i32 @llvm.cttz.i32(i32 %mask.0260, i1 true) #7, !range !230
  %37 = ptrtoint ptr %fmask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fmask, align 4
  %shl = shl i32 %38, %36
  %and53 = and i32 %shl, %mask.0260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %cmp55 = icmp eq i32 %and53, 0
  br i1 %cmp55, label %while.body.for.inc.sink.split_crit_edge, label %if.end61

while.body.for.inc.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

if.end61:                                         ; preds = %while.body
  %39 = ptrtoint ptr %bits_per_pin to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bits_per_pin, align 4
  %neg = xor i32 %shl, -1
  %and62 = and i32 %mask.0260, %neg
  call void @__sanitizer_cov_trace_cmp4(i32 %and53, i32 %shl)
  %cmp63.not = icmp eq i32 %and53, %shl
  br i1 %cmp63.not, label %if.end69, label %do.end67

do.end67:                                         ; preds = %if.end61
  %41 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.59, i32 noundef %and53, ptr noundef %np, i32 noundef %27) #10
  %tobool48.not = icmp eq i32 %and62, 0
  br i1 %tobool48.not, label %do.end67.for.inc_crit_edge, label %do.end67.while.body_crit_edge

do.end67.while.body_crit_edge:                    ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.end67.for.inc_crit_edge:                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end69:                                         ; preds = %if.end61
  %div51.le = udiv i32 %36, %40
  %and52.le = and i32 %shl, %29
  %arrayidx70 = getelementptr %struct.pcs_func_vals, ptr %call.i222227, i32 %found.1.ph263
  %mask71 = getelementptr %struct.pcs_func_vals, ptr %call.i222227, i32 %found.1.ph263, i32 2
  %43 = ptrtoint ptr %mask71 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shl, ptr %mask71, align 4
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %45, i32 %27
  %46 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr, ptr %arrayidx70, align 4
  %val74 = getelementptr %struct.pcs_func_vals, ptr %call.i222227, i32 %found.1.ph263, i32 1
  %47 = ptrtoint ptr %val74 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and52.le, ptr %val74, align 4
  %48 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %27)
  %cmp.not.i = icmp ugt i32 %49, %27
  br i1 %cmp.not.i, label %if.end.i213, label %pcs_get_pin_by_offset.exit.thread

pcs_get_pin_by_offset.exit.thread:                ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.64, i32 noundef %27, i32 noundef %49) #10
  br label %for.inc.sink.split

if.end.i213:                                      ; preds = %if.end69
  %52 = ptrtoint ptr %bits_per_mux.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bits_per_mux.i, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #9
  %div.i = udiv i32 %mul.i, %40
  br label %pcs_get_pin_by_offset.exit

if.else.i:                                        ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %width, align 4
  %div314.i = lshr i32 %55, 3
  %div4.i = udiv i32 %27, %div314.i
  br label %pcs_get_pin_by_offset.exit

pcs_get_pin_by_offset.exit:                       ; preds = %if.else.i, %if.then2.i
  %retval.0.i214 = phi i32 [ %div.i, %if.then2.i ], [ %div4.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i214)
  %cmp76 = icmp slt i32 %retval.0.i214, 0
  br i1 %cmp76, label %pcs_get_pin_by_offset.exit.for.inc.sink.split_crit_edge, label %if.end82

pcs_get_pin_by_offset.exit.for.inc.sink.split_crit_edge: ; preds = %pcs_get_pin_by_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

if.end82:                                         ; preds = %pcs_get_pin_by_offset.exit
  %add = add nuw i32 %retval.0.i214, %div51.le
  %inc = add i32 %found.1.ph263, 1
  %arrayidx83 = getelementptr i32, ptr %call.i212, i32 %found.1.ph263
  %56 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add, ptr %arrayidx83, align 4
  %tobool48.not259 = icmp eq i32 %and62, 0
  br i1 %tobool48.not259, label %if.end82.for.inc_crit_edge, label %if.end82.while.body.lr.ph_crit_edge

if.end82.while.body.lr.ph_crit_edge:              ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph

if.end82.for.inc_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cleanup:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.51, i32 noundef %25) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pinctrl_spec) #7
  br label %for.end

for.inc.sink.split:                               ; preds = %pcs_get_pin_by_offset.exit.for.inc.sink.split_crit_edge, %pcs_get_pin_by_offset.exit.thread, %while.body.for.inc.sink.split_crit_edge
  %.str.62.sink = phi ptr [ @.str.62, %pcs_get_pin_by_offset.exit.thread ], [ @.str.56, %while.body.for.inc.sink.split_crit_edge ], [ @.str.62, %pcs_get_pin_by_offset.exit.for.inc.sink.split_crit_edge ]
  %59 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull %.str.62.sink, ptr noundef %np, i32 noundef %27) #10
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end82.for.inc_crit_edge, %do.end67.for.inc_crit_edge, %do.end47.for.inc_crit_edge
  %found.1.ph250 = phi i32 [ %found.0267, %do.end47.for.inc_crit_edge ], [ %found.1.ph263, %for.inc.sink.split ], [ %found.1.ph263, %do.end67.for.inc_crit_edge ], [ %inc, %if.end82.for.inc_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pinctrl_spec) #7
  %inc93 = add nuw nsw i32 %i.0268, 1
  %exitcond.not = icmp eq i32 %inc93, %call
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup
  %found.0254 = phi i32 [ %found.0267, %cleanup ], [ %found.1.ph250, %for.inc.for.end_crit_edge ]
  %61 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %np, align 4
  %63 = ptrtoint ptr %pgnames to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %pgnames, align 4
  %mutex = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %64 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %np, align 4
  %66 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev7, align 4
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %67, i32 noundef 36, i32 noundef 3520) #7
  %tobool.not.i216 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i216, label %for.end.free_pins_crit_edge, label %if.end.i217

for.end.free_pins_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_pins

if.end.i217:                                      ; preds = %for.end
  %vals1.i = getelementptr inbounds %struct.pcs_function, ptr %call.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %vals1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i222227, ptr %vals1.i, align 4
  %nvals2.i = getelementptr inbounds %struct.pcs_function, ptr %call.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %nvals2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %found.0254, ptr %nvals2.i, align 4
  %70 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %65, ptr %call.i.i, align 4
  %pctl.i = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 6
  %71 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pctl.i, align 4
  %call4.i = call i32 @pinmux_generic_add_function(ptr noundef %72, ptr noundef %65, ptr noundef %pgnames, i32 noundef 1, ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.then5.i, label %if.end100

if.then5.i:                                       ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev7, align 4
  call void @devm_kfree(ptr noundef %74, ptr noundef nonnull %call.i.i) #7
  br label %free_pins

if.end100:                                        ; preds = %if.end.i217
  %75 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pctl.i, align 4
  %77 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %np, align 4
  %call102 = call i32 @pinctrl_generic_add_group(ptr noundef %76, ptr noundef %78, ptr noundef nonnull %call.i212, i32 noundef %found.0254, ptr noundef %pcs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %free_function, label %if.end105

if.end105:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %map, align 4
  %type = getelementptr inbounds %struct.pinctrl_map, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 2, ptr %type, align 4
  %82 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %np, align 4
  %84 = load ptr, ptr %map, align 4
  %data = getelementptr inbounds %struct.pinctrl_map, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %83, ptr %data, align 4
  %86 = load ptr, ptr %np, align 4
  %87 = load ptr, ptr %map, align 4
  %function109 = getelementptr inbounds %struct.pinctrl_map, ptr %87, i32 0, i32 4, i32 0, i32 1
  %88 = ptrtoint ptr %function109 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %86, ptr %function109, align 4
  %89 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %num_maps, align 4
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup116

free_function:                                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pctl.i, align 4
  %call112 = call i32 @pinmux_generic_remove_function(ptr noundef %91, i32 noundef %call4.i) #7
  br label %free_pins

free_pins:                                        ; preds = %free_function, %if.then5.i, %for.end.free_pins_crit_edge
  %res.0 = phi i32 [ %call102, %free_function ], [ %call4.i, %if.then5.i ], [ -12, %for.end.free_pins_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  %92 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev7, align 4
  call void @devm_kfree(ptr noundef %93, ptr noundef nonnull %call.i212) #7
  br label %free_vals

free_vals:                                        ; preds = %free_pins, %array3_size.exit211.free_vals_crit_edge
  %res.1 = phi i32 [ %res.0, %free_pins ], [ -12, %array3_size.exit211.free_vals_crit_edge ]
  %94 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev7, align 4
  call void @devm_kfree(ptr noundef %95, ptr noundef nonnull %call.i222227) #7
  br label %cleanup116

cleanup116:                                       ; preds = %free_vals, %if.end105, %cleanup.thread236, %array3_size.exit.thread.cleanup116_crit_edge, %array3_size.exit.cleanup116_crit_edge, %do.end4, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ -524, %do.end4 ], [ %res.1, %free_vals ], [ 0, %if.end105 ], [ -12, %array3_size.exit.cleanup116_crit_edge ], [ -12, %array3_size.exit.thread.cleanup116_crit_edge ], [ %call20, %cleanup.thread236 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcs_parse_one_pinctrl_entry(ptr noundef %pcs, ptr noundef %np, ptr nocapture noundef readonly %map, ptr nocapture noundef writeonly %num_maps, ptr noundef %pgnames) unnamed_addr #2 align 64 {
entry:
  %value.i.i = alloca [2 x i32], align 4
  %s.i = alloca ptr, align 4
  %conf.i = alloca ptr, align 4
  %pinctrl_spec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pinctrl_count_index_with_args(ptr noundef %np, ptr noundef nonnull @.str.66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  %dev = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %call) #10
  br label %cleanup100

if.end:                                           ; preds = %entry
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 12) #7
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %if.end.cleanup100_crit_edge, label %devm_kcalloc.exit, !prof !229

if.end.cleanup100_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup100

devm_kcalloc.exit:                                ; preds = %if.end
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = extractvalue { i32, i1 } %2, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %6, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup100_crit_edge, label %devm_kcalloc.exit182

devm_kcalloc.exit.cleanup100_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup100

devm_kcalloc.exit182:                             ; preds = %devm_kcalloc.exit
  %7 = shl nuw nsw i32 %call, 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call5.i.i179 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %7, i32 noundef 3520) #7
  %tobool7.not = icmp eq ptr %call5.i.i179, null
  br i1 %tobool7.not, label %devm_kcalloc.exit182.free_vals_crit_edge, label %for.body.lr.ph

devm_kcalloc.exit182.free_vals_crit_edge:         ; preds = %devm_kcalloc.exit182
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_vals

for.body.lr.ph:                                   ; preds = %devm_kcalloc.exit182
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %pinctrl_spec, i32 0, i32 1
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %pinctrl_spec, i32 0, i32 2
  %base = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds %struct.of_phandle_args, ptr %pinctrl_spec, i32 0, i32 2, i32 1
  %arrayidx34 = getelementptr inbounds %struct.of_phandle_args, ptr %pinctrl_spec, i32 0, i32 2, i32 2
  %size.i = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 3
  %bits_per_mux.i = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 17
  %bits_per_pin.i = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 18
  %width.i = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0234 = phi i32 [ 0, %for.body.lr.ph ], [ %inc62, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pinctrl_spec) #7
  %10 = call ptr @memset(ptr %pinctrl_spec, i32 255, i32 72)
  %call11 = call i32 @pinctrl_parse_index_with_args(ptr noundef %np, ptr noundef nonnull @.str.66, i32 noundef %i.0234, ptr noundef nonnull %pinctrl_spec) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %cleanup.thread205

cleanup.thread205:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pinctrl_spec) #7
  br label %cleanup100

if.end14:                                         ; preds = %for.body
  %11 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %args_count, align 4
  %13 = add i32 %12, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %13)
  %14 = icmp ult i32 %13, -2
  br i1 %14, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.51, i32 noundef %12) #10
  br label %cleanup.thread

if.end24:                                         ; preds = %if.end14
  %17 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %args, align 4
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %18
  %arrayidx25 = getelementptr %struct.pcs_func_vals, ptr %call5.i.i, i32 %i.0234
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %arrayidx25, align 4
  %22 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %12, label %if.end24.do.body37_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb30
  ]

if.end24.do.body37_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body37

sw.bb:                                            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx32, align 4
  br label %do.body37.sink.split

sw.bb30:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx32, align 4
  %27 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx34, align 4
  %or = or i32 %28, %26
  br label %do.body37.sink.split

do.body37.sink.split:                             ; preds = %sw.bb30, %sw.bb
  %.sink = phi i32 [ %24, %sw.bb ], [ %or, %sw.bb30 ]
  %val = getelementptr %struct.pcs_func_vals, ptr %call5.i.i, i32 %i.0234, i32 1
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %val, align 4
  br label %do.body37

do.body37:                                        ; preds = %do.body37.sink.split, %if.end24.do.body37_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcs_parse_one_pinctrl_entry.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcs_parse_one_pinctrl_entry, %do.end50)) #7
          to label %if.then43 [label %do.end50], !srcloc !245

if.then43:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %pinctrl_spec to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pinctrl_spec, align 4
  %val47 = getelementptr %struct.pcs_func_vals, ptr %call5.i.i, i32 %i.0234, i32 1
  %34 = ptrtoint ptr %val47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val47, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcs_parse_one_pinctrl_entry.__UNIQUE_ID_ddebug231, ptr noundef %31, ptr noundef nonnull @.str.70, ptr noundef %33, i32 noundef %18, i32 noundef %35) #7
  br label %do.end50

do.end50:                                         ; preds = %if.then43, %do.body37
  %36 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %18)
  %cmp.not.i = icmp ugt i32 %37, %18
  br i1 %cmp.not.i, label %if.end.i, label %pcs_get_pin_by_offset.exit.thread

pcs_get_pin_by_offset.exit.thread:                ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.64, i32 noundef %18, i32 noundef %37) #10
  br label %do.end56

if.end.i:                                         ; preds = %do.end50
  %40 = ptrtoint ptr %bits_per_mux.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bits_per_mux.i, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = shl i32 %18, 3
  %42 = ptrtoint ptr %bits_per_pin.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bits_per_pin.i, align 4
  %div.i = udiv i32 %mul.i, %43
  br label %pcs_get_pin_by_offset.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %width.i, align 4
  %div314.i = lshr i32 %45, 3
  %div4.i = udiv i32 %18, %div314.i
  br label %pcs_get_pin_by_offset.exit

pcs_get_pin_by_offset.exit:                       ; preds = %if.else.i, %if.then2.i
  %retval.0.i183 = phi i32 [ %div.i, %if.then2.i ], [ %div4.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i183)
  %cmp52 = icmp slt i32 %retval.0.i183, 0
  br i1 %cmp52, label %pcs_get_pin_by_offset.exit.do.end56_crit_edge, label %for.inc

pcs_get_pin_by_offset.exit.do.end56_crit_edge:    ; preds = %pcs_get_pin_by_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

do.end56:                                         ; preds = %pcs_get_pin_by_offset.exit.do.end56_crit_edge, %pcs_get_pin_by_offset.exit.thread
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.62, ptr noundef %np, i32 noundef %18) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end56, %do.end21
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pinctrl_spec) #7
  br label %for.end

for.inc:                                          ; preds = %pcs_get_pin_by_offset.exit
  %inc62 = add nuw nsw i32 %i.0234, 1
  %arrayidx59 = getelementptr i32, ptr %call5.i.i179, i32 %i.0234
  %48 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i183, ptr %arrayidx59, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pinctrl_spec) #7
  %exitcond.not = icmp eq i32 %inc62, %call
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread
  %found.0220 = phi i32 [ %i.0234, %cleanup.thread ], [ %call, %for.inc.for.end_crit_edge ]
  %49 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %np, align 4
  %51 = ptrtoint ptr %pgnames to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %pgnames, align 4
  %mutex = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %52 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %np, align 4
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %55, i32 noundef 36, i32 noundef 3520) #7
  %tobool.not.i185 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i185, label %for.end.free_pins_crit_edge, label %if.end.i186

for.end.free_pins_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_pins

if.end.i186:                                      ; preds = %for.end
  %vals1.i = getelementptr inbounds %struct.pcs_function, ptr %call.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %vals1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call5.i.i, ptr %vals1.i, align 4
  %nvals2.i = getelementptr inbounds %struct.pcs_function, ptr %call.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %nvals2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %found.0220, ptr %nvals2.i, align 4
  %58 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %53, ptr %call.i.i, align 4
  %pctl.i = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 6
  %59 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pctl.i, align 4
  %call4.i = call i32 @pinmux_generic_add_function(ptr noundef %60, ptr noundef %53, ptr noundef %pgnames, i32 noundef 1, ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.then5.i, label %if.end69

if.then5.i:                                       ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  call void @devm_kfree(ptr noundef %62, ptr noundef nonnull %call.i.i) #7
  br label %free_pins

if.end69:                                         ; preds = %if.end.i186
  %63 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pctl.i, align 4
  %65 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %np, align 4
  %call71 = call i32 @pinctrl_generic_add_group(ptr noundef %64, ptr noundef %66, ptr noundef nonnull %call5.i.i179, i32 noundef %found.0220, ptr noundef %pcs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end69.free_function_crit_edge, label %if.end74

if.end69.free_function_crit_edge:                 ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_function

if.end74:                                         ; preds = %if.end69
  %67 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %map, align 4
  %type = getelementptr inbounds %struct.pinctrl_map, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %type, align 4
  %70 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %np, align 4
  %72 = load ptr, ptr %map, align 4
  %data = getelementptr inbounds %struct.pinctrl_map, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %71, ptr %data, align 4
  %74 = load ptr, ptr %np, align 4
  %75 = load ptr, ptr %map, align 4
  %function78 = getelementptr inbounds %struct.pinctrl_map, ptr %75, i32 0, i32 4, i32 0, i32 1
  %76 = ptrtoint ptr %function78 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %74, ptr %function78, align 4
  %flags = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 7
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags, align 4
  %and = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool79.not = icmp eq i32 %and, 0
  br i1 %tobool79.not, label %if.end74.if.end91_crit_edge, label %for.body.preheader.i

if.end74.if.end91_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

for.body.preheader.i:                             ; preds = %if.end74
  %79 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %map, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conf.i) #7
  %call.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.73, ptr noundef null) #7
  %tobool1.not.i = icmp ne ptr %call.i, null
  %inc.i = zext i1 %tobool1.not.i to i32
  %call.1.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.74, ptr noundef null) #7
  %tobool1.not.1.i = icmp ne ptr %call.1.i, null
  %inc.1.i = zext i1 %tobool1.not.1.i to i32
  %spec.select.1.i = add nuw nsw i32 %inc.1.i, %inc.i
  %call.2.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.75, ptr noundef null) #7
  %tobool1.not.2.i = icmp ne ptr %call.2.i, null
  %inc.2.i = zext i1 %tobool1.not.2.i to i32
  %spec.select.2.i = add nuw nsw i32 %spec.select.1.i, %inc.2.i
  %call.3.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.76, ptr noundef null) #7
  %tobool1.not.3.i = icmp ne ptr %call.3.i, null
  %inc.3.i = zext i1 %tobool1.not.3.i to i32
  %spec.select.3.i = add nuw nsw i32 %spec.select.2.i, %inc.3.i
  %call.4.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.77, ptr noundef null) #7
  %tobool1.not.4.i = icmp ne ptr %call.4.i, null
  %inc.4.i = zext i1 %tobool1.not.4.i to i32
  %spec.select.4.i = add nuw nsw i32 %spec.select.3.i, %inc.4.i
  %call10.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.78, ptr noundef null) #7
  %tobool11.not.i = icmp ne ptr %call10.i, null
  %inc13.i = zext i1 %tobool11.not.i to i32
  %spec.select99.i = add nuw nsw i32 %spec.select.4.i, %inc13.i
  %call10.1.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.79, ptr noundef null) #7
  %tobool11.not.1.i = icmp ne ptr %call10.1.i, null
  %inc13.1.i = zext i1 %tobool11.not.1.i to i32
  %spec.select99.1.i = add nuw nsw i32 %spec.select99.i, %inc13.1.i
  %call10.2.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.80, ptr noundef null) #7
  %tobool11.not.2.i = icmp ne ptr %call10.2.i, null
  %inc13.2.i = zext i1 %tobool11.not.2.i to i32
  %spec.select99.2.i = add nuw nsw i32 %spec.select99.1.i, %inc13.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select99.2.i)
  %tobool18.not.i = icmp eq i32 %spec.select99.2.i, 0
  br i1 %tobool18.not.i, label %if.then86, label %if.end20.i

if.end20.i:                                       ; preds = %for.body.preheader.i
  %81 = mul nuw nsw i32 %spec.select99.2.i, 20
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %83, i32 noundef %81, i32 noundef 3520) #7
  %conf22.i = getelementptr inbounds %struct.pcs_function, ptr %call.i.i, i32 0, i32 5
  %84 = ptrtoint ptr %conf22.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call5.i.i.i, ptr %conf22.i, align 4
  %tobool24.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool24.not.i, label %if.end20.i.free_pingroups_crit_edge, label %if.end26.i

if.end20.i.free_pingroups_crit_edge:              ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_pingroups

if.end26.i:                                       ; preds = %if.end20.i
  %nconfs27.i = getelementptr inbounds %struct.pcs_function, ptr %call.i.i, i32 0, i32 6
  %85 = ptrtoint ptr %nconfs27.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %spec.select99.2.i, ptr %nconfs27.i, align 4
  %86 = ptrtoint ptr %conf.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call5.i.i.i, ptr %conf.i, align 4
  %87 = shl nuw nsw i32 %spec.select99.2.i, 2
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 4
  %call5.i.i100.i = call noalias ptr @devm_kmalloc(ptr noundef %89, i32 noundef %87, i32 noundef 3520) #7
  %tobool32.not.i = icmp eq ptr %call5.i.i100.i, null
  br i1 %tobool32.not.i, label %if.end26.i.free_pingroups_crit_edge, label %if.end34.i

if.end26.i.free_pingroups_crit_edge:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_pingroups

if.end34.i:                                       ; preds = %if.end26.i
  %90 = ptrtoint ptr %s.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call5.i.i100.i, ptr %s.i, align 4
  %91 = getelementptr inbounds [2 x i32], ptr %value.i.i, i32 0, i32 1
  br label %for.body38.i

for.body38.i:                                     ; preds = %pcs_add_conf2.exit.i.for.body38.i_crit_edge, %if.end34.i
  %i.2119.i = phi i32 [ 0, %if.end34.i ], [ %inc43.i, %pcs_add_conf2.exit.i.for.body38.i_crit_edge ]
  %incdec.ptr.i.i114118.i = phi ptr [ %call5.i.i.i, %if.end34.i ], [ %incdec.ptr.i.i113.i, %pcs_add_conf2.exit.i.for.body38.i_crit_edge ]
  %incdec.ptr.i1.i116117.i = phi ptr [ %call5.i.i100.i, %if.end34.i ], [ %incdec.ptr.i1.i115.i, %pcs_add_conf2.exit.i.for.body38.i_crit_edge ]
  %arrayidx39.i = getelementptr [5 x %struct.pcs_conf_type], ptr @pcs_parse_pinconf.prop2, i32 0, i32 %i.2119.i
  %92 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx39.i, align 4
  %param.i = getelementptr [5 x %struct.pcs_conf_type], ptr @pcs_parse_pinconf.prop2, i32 0, i32 %i.2119.i, i32 1
  %94 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %param.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i.i) #7
  %96 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %value.i.i, align 4, !annotation !231
  %97 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %91, align 4, !annotation !231
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef %93, ptr noundef nonnull %value.i.i, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.i.i190, label %for.body38.i.pcs_add_conf2.exit.i_crit_edge

for.body38.i.pcs_add_conf2.exit.i_crit_edge:      ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcs_add_conf2.exit.i

if.end.i.i190:                                    ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %91, align 4
  %100 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %value.i.i, align 4
  %and.i.i = and i32 %101, %99
  store i32 %and.i.i, ptr %value.i.i, align 4
  %102 = call i32 @llvm.cttz.i32(i32 %99, i1 true) #7, !range !230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %iszero.i.i = icmp eq i32 %99, 0
  %sub.i.i = select i1 %iszero.i.i, i32 -1, i32 %102
  %103 = ptrtoint ptr %incdec.ptr.i.i114118.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %95, ptr %incdec.ptr.i.i114118.i, align 4
  %val.i.i.i = getelementptr inbounds %struct.pcs_conf_vals, ptr %incdec.ptr.i.i114118.i, i32 0, i32 1
  %104 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %and.i.i, ptr %val.i.i.i, align 4
  %enable2.i.i.i = getelementptr inbounds %struct.pcs_conf_vals, ptr %incdec.ptr.i.i114118.i, i32 0, i32 2
  %105 = ptrtoint ptr %enable2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %enable2.i.i.i, align 4
  %disable3.i.i.i = getelementptr inbounds %struct.pcs_conf_vals, ptr %incdec.ptr.i.i114118.i, i32 0, i32 3
  %106 = ptrtoint ptr %disable3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %disable3.i.i.i, align 4
  %mask4.i.i.i = getelementptr inbounds %struct.pcs_conf_vals, ptr %incdec.ptr.i.i114118.i, i32 0, i32 4
  %107 = ptrtoint ptr %mask4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %99, ptr %mask4.i.i.i, align 4
  %incdec.ptr.i.i.i = getelementptr %struct.pcs_conf_vals, ptr %incdec.ptr.i.i114118.i, i32 1
  %108 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %value.i.i, align 4
  %shr.i.i = lshr i32 %109, %sub.i.i
  %shl.i.i.i.i = shl i32 %shr.i.i, 8
  %and.i.i.i.i = and i32 %95, 255
  %or.i.i.i.i = or i32 %shl.i.i.i.i, %and.i.i.i.i
  %110 = ptrtoint ptr %incdec.ptr.i1.i116117.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or.i.i.i.i, ptr %incdec.ptr.i1.i116117.i, align 4
  %incdec.ptr.i1.i.i = getelementptr i32, ptr %incdec.ptr.i1.i116117.i, i32 1
  br label %pcs_add_conf2.exit.i

pcs_add_conf2.exit.i:                             ; preds = %if.end.i.i190, %for.body38.i.pcs_add_conf2.exit.i_crit_edge
  %incdec.ptr.i1.i115.i = phi ptr [ %incdec.ptr.i1.i116117.i, %for.body38.i.pcs_add_conf2.exit.i_crit_edge ], [ %incdec.ptr.i1.i.i, %if.end.i.i190 ]
  %incdec.ptr.i.i113.i = phi ptr [ %incdec.ptr.i.i114118.i, %for.body38.i.pcs_add_conf2.exit.i_crit_edge ], [ %incdec.ptr.i.i.i, %if.end.i.i190 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i.i) #7
  %inc43.i = add nuw nsw i32 %i.2119.i, 1
  %exitcond.not.i = icmp eq i32 %inc43.i, 5
  br i1 %exitcond.not.i, label %if.then84, label %pcs_add_conf2.exit.i.for.body38.i_crit_edge

pcs_add_conf2.exit.i.for.body38.i_crit_edge:      ; preds = %pcs_add_conf2.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body38.i

if.then84:                                        ; preds = %pcs_add_conf2.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %conf.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %incdec.ptr.i.i113.i, ptr %conf.i, align 4
  %112 = ptrtoint ptr %s.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %incdec.ptr.i1.i115.i, ptr %s.i, align 4
  call fastcc void @pcs_add_conf4(ptr noundef %pcs, ptr noundef %np, ptr noundef nonnull @.str.78, i32 noundef 5, ptr noundef nonnull %conf.i, ptr noundef nonnull %s.i) #7
  call fastcc void @pcs_add_conf4(ptr noundef %pcs, ptr noundef %np, ptr noundef nonnull @.str.79, i32 noundef 3, ptr noundef nonnull %conf.i, ptr noundef nonnull %s.i) #7
  call fastcc void @pcs_add_conf4(ptr noundef %pcs, ptr noundef %np, ptr noundef nonnull @.str.80, i32 noundef 14, ptr noundef nonnull %conf.i, ptr noundef nonnull %s.i) #7
  %type.i = getelementptr %struct.pinctrl_map, ptr %80, i32 1, i32 2
  %113 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 4, ptr %type.i, align 4
  %114 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %np, align 4
  %data.i = getelementptr %struct.pinctrl_map, ptr %80, i32 1, i32 4
  %116 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %data.i, align 4
  %configs.i = getelementptr %struct.pinctrl_map, ptr %80, i32 1, i32 4, i32 0, i32 1
  %117 = ptrtoint ptr %configs.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call5.i.i100.i, ptr %configs.i, align 4
  %num_configs.i = getelementptr %struct.pinctrl_map, ptr %80, i32 1, i32 4, i32 0, i32 2
  %118 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %spec.select99.2.i, ptr %num_configs.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conf.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i) #7
  br label %if.end91

if.then86:                                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conf.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i) #7
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %if.then84, %if.end74.if.end91_crit_edge
  %.sink273 = phi i32 [ 2, %if.then84 ], [ 1, %if.then86 ], [ 1, %if.end74.if.end91_crit_edge ]
  %119 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %.sink273, ptr %num_maps, align 4
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup100

free_pingroups:                                   ; preds = %if.end26.i.free_pingroups_crit_edge, %if.end20.i.free_pingroups_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conf.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i) #7
  %120 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pctl.i, align 4
  %call94 = call i32 @pinctrl_generic_remove_group(ptr noundef %121, i32 noundef %call71) #7
  %122 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %num_maps, align 4
  br label %free_function

free_function:                                    ; preds = %free_pingroups, %if.end69.free_function_crit_edge
  %res.0 = phi i32 [ -12, %free_pingroups ], [ %call71, %if.end69.free_function_crit_edge ]
  %123 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pctl.i, align 4
  %call96 = call i32 @pinmux_generic_remove_function(ptr noundef %124, i32 noundef %call4.i) #7
  br label %free_pins

free_pins:                                        ; preds = %free_function, %if.then5.i, %for.end.free_pins_crit_edge
  %res.1 = phi i32 [ %res.0, %free_function ], [ %call4.i, %if.then5.i ], [ -12, %for.end.free_pins_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 4
  call void @devm_kfree(ptr noundef %126, ptr noundef nonnull %call5.i.i179) #7
  br label %free_vals

free_vals:                                        ; preds = %free_pins, %devm_kcalloc.exit182.free_vals_crit_edge
  %res.2 = phi i32 [ %res.1, %free_pins ], [ -12, %devm_kcalloc.exit182.free_vals_crit_edge ]
  %127 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev, align 4
  call void @devm_kfree(ptr noundef %128, ptr noundef nonnull %call5.i.i) #7
  br label %cleanup100

cleanup100:                                       ; preds = %free_vals, %if.end91, %cleanup.thread205, %devm_kcalloc.exit.cleanup100_crit_edge, %if.end.cleanup100_crit_edge, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ %res.2, %free_vals ], [ 0, %if.end91 ], [ -12, %devm_kcalloc.exit.cleanup100_crit_edge ], [ %call11, %cleanup.thread205 ], [ -12, %if.end.cleanup100_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_count_index_with_args(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_parse_index_with_args(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_add_group(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_remove_function(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_add_function(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_remove_group(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcs_add_conf4(ptr nocapture noundef readonly %pcs, ptr noundef %np, ptr noundef %name, i32 noundef %param, ptr nocapture noundef %conf, ptr nocapture noundef %settings) unnamed_addr #2 align 64 {
entry:
  %value = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %value) #7
  %0 = getelementptr inbounds [4 x i32], ptr %value, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %value, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %value, i32 0, i32 3
  %3 = call ptr @memset(ptr %value, i32 255, i32 16)
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef %name, ptr noundef nonnull %value, i32 noundef 4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.81) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %and = and i32 %9, %5
  store i32 %and, ptr %value, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %0, align 4
  %and8 = and i32 %11, %5
  store i32 %and8, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %and11 = and i32 %13, %5
  store i32 %and11, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and8)
  %cmp.i = icmp eq i32 %and, %and8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and11)
  %cmp1.i = icmp eq i32 %and, %and11
  %spec.select.i = select i1 %cmp1.i, i32 0, i32 -22
  %ret.0.i = select i1 %cmp.i, i32 1, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  br i1 %cmp, label %do.body17, label %if.end3.if.end28_crit_edge

if.end3.if.end28_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.body17:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcs_add_conf4.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcs_add_conf4, %if.end28)) #7
          to label %if.then23 [label %if.end28], !srcloc !245

if.then23:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %dev24 = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 4
  %14 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev24, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcs_add_conf4.__UNIQUE_ID_ddebug230, ptr noundef %15, ptr noundef nonnull @.str.83) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %do.body17, %if.end3.if.end28_crit_edge
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %2, align 4
  %24 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %conf, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %param, ptr %25, align 4
  %27 = load ptr, ptr %conf, align 4
  %val.i = getelementptr inbounds %struct.pcs_conf_vals, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %17, ptr %val.i, align 4
  %29 = load ptr, ptr %conf, align 4
  %enable2.i = getelementptr inbounds %struct.pcs_conf_vals, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %enable2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %19, ptr %enable2.i, align 4
  %31 = load ptr, ptr %conf, align 4
  %disable3.i = getelementptr inbounds %struct.pcs_conf_vals, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %disable3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %21, ptr %disable3.i, align 4
  %33 = load ptr, ptr %conf, align 4
  %mask4.i = getelementptr inbounds %struct.pcs_conf_vals, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %mask4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %23, ptr %mask4.i, align 4
  %35 = load ptr, ptr %conf, align 4
  %incdec.ptr.i = getelementptr %struct.pcs_conf_vals, ptr %35, i32 1
  store ptr %incdec.ptr.i, ptr %conf, align 4
  %shl.i.i = shl nsw i32 %ret.0.i, 8
  %and.i.i = and i32 %param, 255
  %or.i.i = or i32 %shl.i.i, %and.i.i
  %36 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %settings, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i.i, ptr %37, align 4
  %39 = load ptr, ptr %settings, align 4
  %incdec.ptr.i38 = getelementptr i32, ptr %39, i32 1
  store ptr %incdec.ptr.i38, ptr %settings, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %value) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_groups(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcs_set_mux(ptr noundef %pctldev, i32 noundef %fselector, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %fmask = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %fmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @pinmux_generic_get_function(ptr noundef %pctldev, i32 noundef %fselector) #7
  %data = getelementptr inbounds %struct.function_desc, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcs_set_mux.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcs_set_mux, %do.end)) #7
          to label %if.then10 [label %do.end], !srcloc !245

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcs_set_mux.__UNIQUE_ID_ddebug227, ptr noundef %5, ptr noundef nonnull @.str.85, ptr noundef %7, i32 noundef %fselector) #7
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %nvals = getelementptr inbounds %struct.pcs_function, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %nvals to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nvals, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp61.not = icmp eq i32 %9, 0
  br i1 %cmp61.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %vals12 = getelementptr inbounds %struct.pcs_function, ptr %3, i32 0, i32 1
  %lock = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 10
  %read = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 25
  %bits_per_mux = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 17
  %write = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %vals12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vals12, align 4
  %arrayidx = getelementptr %struct.pcs_func_vals, ptr %11, i32 %i.062
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %12 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call19 = tail call i32 %13(ptr noundef %15) #7
  %16 = ptrtoint ptr %bits_per_mux to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bits_per_mux, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool20.not = icmp eq i8 %17, 0
  %mask22 = getelementptr %struct.pcs_func_vals, ptr %11, i32 %i.062, i32 2
  %mask.0.in = select i1 %tobool20.not, ptr %fmask, ptr %mask22
  %18 = ptrtoint ptr %mask.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %mask.0 = load i32, ptr %mask.0.in, align 4
  %neg = xor i32 %mask.0, -1
  %and = and i32 %call19, %neg
  %val25 = getelementptr %struct.pcs_func_vals, ptr %11, i32 %i.062, i32 1
  %19 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val25, align 4
  %and26 = and i32 %20, %mask.0
  %or = or i32 %and26, %and
  %21 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write, align 4
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  tail call void %22(i32 noundef %or, ptr noundef %24) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #7
  %inc = add nuw i32 %i.062, 1
  %25 = ptrtoint ptr %nvals to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nvals, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcs_request_gpio(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %fmask = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %fmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup35_crit_edge, label %if.end

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup35

if.end:                                           ; preds = %entry
  %gpiofuncs = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 20
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %pos.0.in = phi ptr [ %gpiofuncs, %if.end ], [ %pos.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %pos.0 = load ptr, ptr %pos.0.in, align 4
  %cmp.i.not = icmp eq ptr %pos.0, %gpiofuncs
  br i1 %cmp.i.not, label %for.cond.cleanup35_crit_edge, label %for.body

for.cond.cleanup35_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup35

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr i8, ptr %pos.0, i32 -12
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %npins = getelementptr i8, ptr %pos.0, i32 -8
  %5 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %npins, align 4
  %add = add i32 %6, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %pin)
  %cmp.not = icmp ule i32 %add, %pin
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %pin)
  %cmp8 = icmp ugt i32 %4, %pin
  %or.cond = or i1 %cmp8, %cmp.not
  br i1 %or.cond, label %for.body.for.cond_crit_edge, label %if.end10

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.end10:                                         ; preds = %for.body
  %width.i = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 12
  %7 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width.i, align 4
  %div10.i = lshr i32 %8, 3
  %bits_per_mux.i = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 17
  %9 = ptrtoint ptr %bits_per_mux.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bits_per_mux.i, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %bits_per_pin.i = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 18
  %11 = ptrtoint ptr %bits_per_pin.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bits_per_pin.i, align 4
  %mul.i = mul i32 %12, %pin
  %div111.i = lshr i32 %mul.i, 3
  %13 = urem i32 %div111.i, %div10.i
  %mul3.i = sub nsw i32 %div111.i, %13
  %div.i = udiv i32 %8, %12
  %rem.i = urem i32 %pin, %div.i
  %mul.i76 = mul i32 %rem.i, %12
  %read = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 25
  %14 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read, align 4
  %base = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %17, i32 %mul3.i
  %call16 = tail call i32 %15(ptr noundef %add.ptr15) #7
  %18 = ptrtoint ptr %fmask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fmask, align 4
  %shl = shl i32 %19, %mul.i76
  %neg = xor i32 %shl, -1
  %and = and i32 %call16, %neg
  %gpiofunc = getelementptr i8, ptr %pos.0, i32 -4
  %20 = ptrtoint ptr %gpiofunc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gpiofunc, align 4
  %shl18 = shl i32 %21, %mul.i76
  %or = or i32 %and, %shl18
  br label %cleanup35.sink.split

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %mul4.i = mul i32 %div10.i, %pin
  %read21 = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 25
  %22 = ptrtoint ptr %read21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read21, align 4
  %base22 = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 1
  %24 = ptrtoint ptr %base22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base22, align 4
  %add.ptr23 = getelementptr i8, ptr %25, i32 %mul4.i
  %call24 = tail call i32 %23(ptr noundef %add.ptr23) #7
  %26 = ptrtoint ptr %fmask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fmask, align 4
  %neg26 = xor i32 %27, -1
  %and27 = and i32 %call24, %neg26
  %gpiofunc28 = getelementptr i8, ptr %pos.0, i32 -4
  %28 = ptrtoint ptr %gpiofunc28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gpiofunc28, align 4
  %or29 = or i32 %and27, %29
  br label %cleanup35.sink.split

cleanup35.sink.split:                             ; preds = %if.else, %if.then13
  %base.sink = phi ptr [ %base, %if.then13 ], [ %base22, %if.else ]
  %mul3.i.sink = phi i32 [ %mul3.i, %if.then13 ], [ %mul4.i, %if.else ]
  %or.sink = phi i32 [ %or, %if.then13 ], [ %or29, %if.else ]
  %write = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 26
  %30 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write, align 4
  %32 = ptrtoint ptr %base.sink to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.sink, align 4
  %add.ptr20 = getelementptr i8, ptr %33, i32 %mul3.i.sink
  tail call void %31(i32 noundef %or.sink, ptr noundef %add.ptr20) #7
  br label %cleanup35

cleanup35:                                        ; preds = %cleanup35.sink.split, %for.cond.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup35_crit_edge ], [ 0, %cleanup35.sink.split ], [ 0, %for.cond.cleanup35_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcs_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  %config.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pin_desc_tree.i.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 2
  %call.i.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i.i, i32 noundef %pin) #7
  %mux_setting.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i, i32 0, i32 6
  %0 = ptrtoint ptr %mux_setting.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux_setting.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %func2.i = getelementptr inbounds %struct.pinctrl_setting_mux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %func2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %func2.i, align 4
  %call3.i = tail call ptr @pinmux_generic_get_function(ptr noundef %pctldev, i32 noundef %3) #7
  %data.i = getelementptr inbounds %struct.function_desc, ptr %call3.i, i32 0, i32 3
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %do.end.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end.i
  %nconfs = getelementptr inbounds %struct.pcs_function, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %nconfs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nconfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp96.not = icmp eq i32 %7, 0
  br i1 %cmp96.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config, align 4
  %and.i = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp3 = icmp eq i32 %and.i, 1
  br i1 %cmp3, label %if.then4, label %for.body.lr.ph.split

for.body.lr.ph.split:                             ; preds = %for.body.lr.ph
  %conf = getelementptr inbounds %struct.pcs_function, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %conf, align 4
  br label %for.body

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, i32 noundef %3) #10
  br label %cleanup

for.body:                                         ; preds = %for.inc45.for.body_crit_edge, %for.body.lr.ph.split
  %i.097 = phi i32 [ 0, %for.body.lr.ph.split ], [ %inc46, %for.inc45.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pcs_conf_vals, ptr %11, i32 %i.097
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %15)
  %cmp9.not = icmp eq i32 %and.i, %15
  br i1 %cmp9.not, label %if.end12, label %for.inc45

if.then4:                                         ; preds = %for.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config.i) #7
  %16 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %config.i, align 4
  %call1.i = call i32 @pcs_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr noundef nonnull %config.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i82 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i82, label %if.then4.pcs_pinconf_bias_disable.exit_crit_edge, label %for.cond.i

if.then4.pcs_pinconf_bias_disable.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcs_pinconf_bias_disable.exit

for.cond.i:                                       ; preds = %if.then4
  %17 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %config.i, align 4
  %call1.i.1 = call i32 @pcs_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr noundef nonnull %config.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool.not.i82.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool.not.i82.1, label %for.cond.i.pcs_pinconf_bias_disable.exit_crit_edge, label %for.cond.i.1

for.cond.i.pcs_pinconf_bias_disable.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcs_pinconf_bias_disable.exit

for.cond.i.1:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config.i) #7
  %18 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %config, align 4
  br label %cleanup

pcs_pinconf_bias_disable.exit:                    ; preds = %for.cond.i.pcs_pinconf_bias_disable.exit_crit_edge, %if.then4.pcs_pinconf_bias_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config.i) #7
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %width = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 12
  %19 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width, align 4
  %div80 = lshr i32 %20, 3
  %mul = mul i32 %div80, %pin
  %read = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 25
  %21 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read, align 4
  %base = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 %mul
  %call13 = tail call i32 %22(ptr noundef %add.ptr) #7
  %25 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %conf, align 4
  %arrayidx15 = getelementptr %struct.pcs_conf_vals, ptr %26, i32 %i.097
  %mask = getelementptr %struct.pcs_conf_vals, ptr %26, i32 %i.097, i32 4
  %27 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mask, align 4
  %and = and i32 %28, %call13
  %29 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx15, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %30, label %sw.default43 [
    i32 3, label %if.end12.sw.bb_crit_edge
    i32 5, label %if.end12.sw.bb_crit_edge118
    i32 14, label %if.end12.sw.bb_crit_edge119
    i32 13, label %for.cond28.preheader
  ]

if.end12.sw.bb_crit_edge119:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end12.sw.bb_crit_edge118:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end12.sw.bb_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.cond28.preheader:                             ; preds = %if.end12
  %32 = ptrtoint ptr %nconfs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nconfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp3098.not = icmp eq i32 %33, 0
  br i1 %cmp3098.not, label %for.cond28.preheader.for.end_crit_edge, label %for.cond28.preheader.for.body31_crit_edge

for.cond28.preheader.for.body31_crit_edge:        ; preds = %for.cond28.preheader
  br label %for.body31

for.cond28.preheader.for.end_crit_edge:           ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

sw.bb:                                            ; preds = %if.end12.sw.bb_crit_edge, %if.end12.sw.bb_crit_edge118, %if.end12.sw.bb_crit_edge119
  %enable = getelementptr %struct.pcs_conf_vals, ptr %26, i32 %i.097, i32 2
  %34 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %35)
  %cmp21.not = icmp eq i32 %and, %35
  br i1 %cmp21.not, label %lor.lhs.false, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %disable = getelementptr %struct.pcs_conf_vals, ptr %26, i32 %i.097, i32 3
  %36 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %disable, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %37)
  %cmp24 = icmp eq i32 %and, %37
  br i1 %cmp24, label %lor.lhs.false.cleanup_crit_edge, label %if.end26

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %config, align 4
  br label %cleanup

for.body31:                                       ; preds = %for.inc.for.body31_crit_edge, %for.cond28.preheader.for.body31_crit_edge
  %j.099 = phi i32 [ %inc, %for.inc.for.body31_crit_edge ], [ 0, %for.cond28.preheader.for.body31_crit_edge ]
  %arrayidx33 = getelementptr %struct.pcs_conf_vals, ptr %26, i32 %j.099
  %39 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %40)
  %cond = icmp eq i32 %40, 14
  br i1 %cond, label %sw.bb35, label %for.body31.for.inc_crit_edge

for.body31.for.inc_crit_edge:                     ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb35:                                          ; preds = %for.body31
  %enable38 = getelementptr %struct.pcs_conf_vals, ptr %26, i32 %j.099, i32 2
  %41 = ptrtoint ptr %enable38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %enable38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %42)
  %cmp39.not = icmp eq i32 %and, %42
  br i1 %cmp39.not, label %sw.bb35.for.inc_crit_edge, label %sw.bb35.cleanup_crit_edge

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb35.for.inc_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %sw.bb35.for.inc_crit_edge, %for.body31.for.inc_crit_edge
  %inc = add nuw i32 %j.099, 1
  %exitcond104.not = icmp eq i32 %inc, %33
  br i1 %exitcond104.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body31_crit_edge

for.inc.for.body31_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body31

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond28.preheader.for.end_crit_edge
  %43 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and, ptr %config, align 4
  br label %cleanup

sw.default43:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and, ptr %config, align 4
  br label %cleanup

for.inc45:                                        ; preds = %for.body
  %inc46 = add nuw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc46, %7
  br i1 %exitcond.not, label %for.inc45.cleanup_crit_edge, label %for.inc45.for.body_crit_edge

for.inc45.for.body_crit_edge:                     ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc45.cleanup_crit_edge:                      ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc45.cleanup_crit_edge, %sw.default43, %for.end, %sw.bb35.cleanup_crit_edge, %if.end26, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %pcs_pinconf_bias_disable.exit, %for.cond.i.1, %do.end.i, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond.i.1 ], [ -524, %pcs_pinconf_bias_disable.exit ], [ -524, %lor.lhs.false.cleanup_crit_edge ], [ -524, %sw.bb.cleanup_crit_edge ], [ 0, %sw.default43 ], [ 0, %for.end ], [ 0, %if.end26 ], [ -524, %do.end.i ], [ -524, %entry.cleanup_crit_edge ], [ -524, %for.cond.preheader.cleanup_crit_edge ], [ -524, %sw.bb35.cleanup_crit_edge ], [ -524, %for.inc45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcs_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  %config.i97 = alloca i32, align 4
  %config.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pin_desc_tree.i.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 2
  %call.i.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i.i, i32 noundef %pin) #7
  %mux_setting.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i, i32 0, i32 6
  %0 = ptrtoint ptr %mux_setting.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux_setting.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %func2.i = getelementptr inbounds %struct.pinctrl_setting_mux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %func2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %func2.i, align 4
  %call3.i = tail call ptr @pinmux_generic_get_function(ptr noundef %pctldev, i32 noundef %3) #7
  %data.i = getelementptr inbounds %struct.function_desc, ptr %call3.i, i32 0, i32 3
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %do.end.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp134.not = icmp eq i32 %num_configs, 0
  br i1 %cmp134.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond2.preheader.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond2.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %nconfs = getelementptr inbounds %struct.pcs_function, ptr %5, i32 0, i32 6
  %conf = getelementptr inbounds %struct.pcs_function, ptr %5, i32 0, i32 5
  %width = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 12
  %read = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 25
  %base = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 1
  %write = getelementptr inbounds %struct.pcs_device, ptr %call, i32 0, i32 26
  %6 = ptrtoint ptr %nconfs to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %nconfs, align 4
  br label %for.cond2.preheader

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pcs_device, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, i32 noundef %3) #10
  br label %cleanup

for.cond:                                         ; preds = %for.end
  %inc52 = add nuw i32 %j.0135, 1
  %exitcond145.not = icmp eq i32 %inc52, %num_configs
  br i1 %exitcond145.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.cond2.preheader_crit_edge

for.cond.for.cond2.preheader_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond2.preheader

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond2.preheader:                              ; preds = %for.cond.for.cond2.preheader_crit_edge, %for.cond2.preheader.lr.ph
  %9 = phi i32 [ %.pr, %for.cond2.preheader.lr.ph ], [ %54, %for.cond.for.cond2.preheader_crit_edge ]
  %j.0135 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc52, %for.cond.for.cond2.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3130.not = icmp eq i32 %9, 0
  br i1 %cmp3130.not, label %for.cond2.preheader.for.end_crit_edge, label %for.body4.lr.ph

for.cond2.preheader.for.end_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %arrayidx = getelementptr i32, ptr %configs, i32 %j.0135
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %11, 255
  %12 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conf, align 4
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body4.lr.ph
  %i.0131 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.inc.for.body4_crit_edge ]
  %arrayidx6 = getelementptr %struct.pcs_conf_vals, ptr %13, i32 %i.0131
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %15)
  %cmp7.not = icmp eq i32 %and.i, %15
  br i1 %cmp7.not, label %if.end9, label %for.inc

if.end9:                                          ; preds = %for.body4
  %16 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width, align 4
  %div95 = lshr i32 %17, 3
  %mul = mul i32 %div95, %pin
  %18 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read, align 4
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %mul
  %call10 = tail call i32 %19(ptr noundef %add.ptr) #7
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %conf, align 4
  %arrayidx14 = getelementptr %struct.pcs_conf_vals, ptr %25, i32 %i.0131
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx14, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %27, label %if.end9.cleanup_crit_edge [
    i32 13, label %if.end9.sw.bb_crit_edge
    i32 9, label %if.end9.sw.bb_crit_edge162
    i32 24, label %if.end9.sw.bb_crit_edge163
    i32 15, label %if.end9.sw.bb_crit_edge164
    i32 12, label %if.end9.sw.bb_crit_edge165
    i32 1, label %sw.bb25
    i32 3, label %if.end9.sw.bb26_crit_edge
    i32 5, label %if.end9.sw.bb26_crit_edge166
    i32 14, label %sw.bb30
  ]

if.end9.sw.bb26_crit_edge166:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end9.sw.bb26_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end9.sw.bb_crit_edge165:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end9.sw.bb_crit_edge164:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end9.sw.bb_crit_edge163:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end9.sw.bb_crit_edge162:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %if.end9.sw.bb_crit_edge162, %if.end9.sw.bb_crit_edge163, %if.end9.sw.bb_crit_edge164, %if.end9.sw.bb_crit_edge165
  %shr.i = lshr i32 %23, 8
  %mask = getelementptr %struct.pcs_conf_vals, ptr %25, i32 %i.0131, i32 4
  %29 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mask, align 4
  %31 = tail call i32 @llvm.cttz.i32(i32 %30, i1 true), !range !230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %iszero = icmp eq i32 %30, 0
  %sub = select i1 %iszero, i32 -1, i32 %31
  %neg = xor i32 %30, -1
  %and = and i32 %call10, %neg
  %shl = shl i32 %shr.i, %sub
  %and24 = and i32 %shl, %30
  %or = or i32 %and24, %and
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config.i) #7
  %32 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %config.i, align 4
  %call1.i = call i32 @pcs_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr noundef nonnull %config.i, i32 noundef 1) #7
  %33 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 5, ptr %config.i, align 4
  %call1.i.1 = call i32 @pcs_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr noundef nonnull %config.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config.i) #7
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end9.sw.bb26_crit_edge, %if.end9.sw.bb26_crit_edge166
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %23)
  %tobool27.not = icmp ult i32 %23, 256
  br i1 %tobool27.not, label %sw.bb30.thread, label %sw.bb30.thread146

sw.bb30.thread:                                   ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  %mask33117 = getelementptr %struct.pcs_conf_vals, ptr %25, i32 %i.0131, i32 4
  %34 = ptrtoint ptr %mask33117 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mask33117, align 4
  %neg34118 = xor i32 %35, -1
  %and35119 = and i32 %call10, %neg34118
  br label %if.else

sw.bb30.thread146:                                ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config.i97) #7
  %36 = ptrtoint ptr %config.i97 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %config.i97, align 4
  %call1.i103 = call i32 @pcs_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr noundef nonnull %config.i97, i32 noundef 1) #7
  %37 = ptrtoint ptr %config.i97 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %config.i97, align 4
  %call1.i103.1 = call i32 @pcs_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr noundef nonnull %config.i97, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config.i97) #7
  %38 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %conf, align 4
  %mask33147 = getelementptr %struct.pcs_conf_vals, ptr %39, i32 %i.0131, i32 4
  %40 = ptrtoint ptr %mask33147 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mask33147, align 4
  %neg34148 = xor i32 %41, -1
  %and35149 = and i32 %call10, %neg34148
  br label %if.then37

sw.bb30:                                          ; preds = %if.end9
  %mask33 = getelementptr %struct.pcs_conf_vals, ptr %25, i32 %i.0131, i32 4
  %42 = ptrtoint ptr %mask33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mask33, align 4
  %neg34 = xor i32 %43, -1
  %and35 = and i32 %call10, %neg34
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %23)
  %tobool36.not = icmp ult i32 %23, 256
  br i1 %tobool36.not, label %sw.bb30.if.else_crit_edge, label %sw.bb30.if.then37_crit_edge

sw.bb30.if.then37_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37

sw.bb30.if.else_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then37:                                        ; preds = %sw.bb30.if.then37_crit_edge, %sw.bb30.thread146
  %and35151 = phi i32 [ %and35149, %sw.bb30.thread146 ], [ %and35, %sw.bb30.if.then37_crit_edge ]
  %44 = phi ptr [ %39, %sw.bb30.thread146 ], [ %25, %sw.bb30.if.then37_crit_edge ]
  %enable = getelementptr %struct.pcs_conf_vals, ptr %44, i32 %i.0131, i32 2
  %45 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %enable, align 4
  %or40 = or i32 %46, %and35151
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb30.if.else_crit_edge, %sw.bb30.thread
  %and35121 = phi i32 [ %and35119, %sw.bb30.thread ], [ %and35, %sw.bb30.if.else_crit_edge ]
  %disable = getelementptr %struct.pcs_conf_vals, ptr %25, i32 %i.0131, i32 3
  %47 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %disable, align 4
  %or43 = or i32 %48, %and35121
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then37, %sw.bb25, %sw.bb
  %data.0 = phi i32 [ %or40, %if.then37 ], [ %or43, %if.else ], [ %call10, %sw.bb25 ], [ %or, %sw.bb ]
  %49 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write, align 4
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr46 = getelementptr i8, ptr %52, i32 %mul
  tail call void %50(i32 noundef %data.0, ptr noundef %add.ptr46) #7
  br label %for.end

for.inc:                                          ; preds = %for.body4
  %inc = add nuw i32 %i.0131, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.epilog, %for.cond2.preheader.for.end_crit_edge
  %i.0127 = phi i32 [ %i.0131, %sw.epilog ], [ 0, %for.cond2.preheader.for.end_crit_edge ], [ %9, %for.inc.for.end_crit_edge ]
  %53 = ptrtoint ptr %nconfs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nconfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0127, i32 %54)
  %cmp48.not = icmp ult i32 %i.0127, %54
  br i1 %cmp48.not, label %for.cond, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.end.i, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end.i ], [ -524, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ -524, %for.end.cleanup_crit_edge ], [ -524, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcs_pinconf_group_get(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef %config) #2 align 64 {
entry:
  %pins = alloca ptr, align 4
  %npins = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pins) #7
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pins, align 4, !annotation !231
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %npins) #7
  %1 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %npins, align 4, !annotation !231
  %call = call i32 @pinctrl_generic_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr noundef nonnull %pins, ptr noundef nonnull %npins) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.not = icmp eq i32 %3, 0
  br i1 %cmp20.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %if.end8.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %old.021 = phi i32 [ %11, %if.end8.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %i.022
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call1 = call i32 @pcs_pinconf_get(ptr noundef %pctldev, i32 noundef %7, ptr noundef %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.022)
  %tobool5.not = icmp eq i32 %i.022, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %land.lhs.true

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %old.021, i32 %9)
  %cmp6.not = icmp eq i32 %old.021, %9
  br i1 %cmp6.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config, align 4
  %inc = add nuw i32 %i.022, 1
  %12 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %if.end8.for.body_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ], [ -524, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %npins) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pins) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcs_pinconf_group_set(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  %pins = alloca ptr, align 4
  %npins = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pins) #7
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pins, align 4, !annotation !231
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %npins) #7
  %1 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %npins, align 4, !annotation !231
  %call = call i32 @pinctrl_generic_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr noundef nonnull %pins, ptr noundef nonnull %npins) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.not = icmp eq i32 %3, 0
  br i1 %cmp12.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.013, 1
  %4 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %i.013
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call1 = call i32 @pcs_pinconf_set(ptr noundef %pctldev, i32 noundef %9, ptr noundef %configs, i32 noundef %num_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %npins) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pins) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pcs_pinconf_dbg_show(ptr nocapture noundef %pctldev, ptr nocapture noundef %s, i32 noundef %pin) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pcs_pinconf_group_dbg_show(ptr nocapture noundef %pctldev, ptr nocapture noundef %s, i32 noundef %selector) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcs_pinconf_config_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pinconf_generic_dump_config(ptr noundef %pctldev, ptr noundef %s, i32 noundef %config) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dump_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcs_add_pin(ptr nocapture noundef %pcs, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pins = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 19
  %cur = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur, align 4
  %npins = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 24, i32 2
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.91, i32 noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_enable_mask = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %irq_enable_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_enable_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.if.end23_crit_edge, label %if.then3

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then3:                                         ; preds = %if.end
  %read = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 25
  %8 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read, align 4
  %base = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 1
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %offset
  %call = tail call i32 %9(ptr noundef %add.ptr) #7
  %12 = ptrtoint ptr %irq_enable_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_enable_mask, align 4
  %and = and i32 %13, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then3.if.end23_crit_edge, label %do.body7

if.then3.if.end23_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.body7:                                         ; preds = %if.then3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcs_add_pin.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcs_add_pin, %do.end17)) #7
          to label %if.then13 [label %do.end17], !srcloc !245

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %dev14 = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 4
  %14 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev14, align 4
  %16 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcs, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add = add i32 %19, %offset
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcs_add_pin.__UNIQUE_ID_ddebug228, ptr noundef %15, ptr noundef nonnull @.str.93, i32 noundef %add, i32 noundef %call) #7
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body7
  %20 = ptrtoint ptr %irq_enable_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_enable_mask, align 4
  %neg = xor i32 %21, -1
  %and19 = and i32 %call, %neg
  %write = getelementptr inbounds %struct.pcs_device, ptr %pcs, i32 0, i32 26
  %22 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write, align 4
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr21 = getelementptr i8, ptr %25, i32 %offset
  tail call void %23(i32 noundef %and19, ptr noundef %add.ptr21) #7
  br label %if.end23

if.end23:                                         ; preds = %do.end17, %if.then3.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %26 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %27, i32 %1
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %1, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cur, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %cur, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %1, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcs_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irqs.i = getelementptr i8, ptr %1, i32 200
  %4 = ptrtoint ptr %irqs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pos.038.i = load ptr, ptr %irqs.i, align 4
  %cmp.i.not39.i = icmp eq ptr %pos.038.i, %irqs.i
  br i1 %cmp.i.not39.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %irq_enable_mask.i = getelementptr inbounds %struct.pcs_soc_data, ptr %1, i32 0, i32 2
  %lock.i = getelementptr i8, ptr %1, i32 20
  %read.i = getelementptr i8, ptr %1, i32 392
  %write.i = getelementptr i8, ptr %1, i32 396
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.040.i = phi ptr [ %pos.038.i, %for.body.lr.ph.i ], [ %pos.0.i, %cleanup.i.for.body.i_crit_edge ]
  %irq5.i = getelementptr i8, ptr %pos.040.i, i32 -4
  %5 = ptrtoint ptr %irq5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp.not.i = icmp eq i32 %6, %3
  br i1 %cmp.not.i, label %if.end.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i = getelementptr i8, ptr %pos.040.i, i32 -12
  %7 = ptrtoint ptr %irq_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_enable_mask.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %11 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr4.i, align 4
  %call6.i = tail call i32 %10(ptr noundef %12) #7
  %neg.i = xor i32 %8, -1
  %and.i = and i32 %call6.i, %neg.i
  %13 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i, align 4
  %15 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr4.i, align 4
  tail call void %14(i32 noundef %and.i, ptr noundef %16) #7
  %17 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i, align 4
  %19 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr4.i, align 4
  %call13.i = tail call i32 %18(ptr noundef %20) #7
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %21 = ptrtoint ptr %pos.040.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %pos.0.i = load ptr, ptr %pos.040.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %irqs.i
  br i1 %cmp.i.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %rearm.i = getelementptr inbounds %struct.pcs_soc_data, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %rearm.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rearm.i, align 4
  %tobool17.not.i = icmp eq ptr %23, null
  br i1 %tobool17.not.i, label %for.end.i.pcs_irq_set.exit_crit_edge, label %if.then18.i

for.end.i.pcs_irq_set.exit_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcs_irq_set.exit

if.then18.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %23() #7
  br label %pcs_irq_set.exit

pcs_irq_set.exit:                                 ; preds = %if.then18.i, %for.end.i.pcs_irq_set.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcs_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irqs.i = getelementptr i8, ptr %1, i32 200
  %4 = ptrtoint ptr %irqs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pos.038.i = load ptr, ptr %irqs.i, align 4
  %cmp.i.not39.i = icmp eq ptr %pos.038.i, %irqs.i
  br i1 %cmp.i.not39.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %irq_enable_mask.i = getelementptr inbounds %struct.pcs_soc_data, ptr %1, i32 0, i32 2
  %lock.i = getelementptr i8, ptr %1, i32 20
  %read.i = getelementptr i8, ptr %1, i32 392
  %write.i = getelementptr i8, ptr %1, i32 396
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.040.i = phi ptr [ %pos.038.i, %for.body.lr.ph.i ], [ %pos.0.i, %cleanup.i.for.body.i_crit_edge ]
  %irq5.i = getelementptr i8, ptr %pos.040.i, i32 -4
  %5 = ptrtoint ptr %irq5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp.not.i = icmp eq i32 %6, %3
  br i1 %cmp.not.i, label %if.end.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i = getelementptr i8, ptr %pos.040.i, i32 -12
  %7 = ptrtoint ptr %irq_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_enable_mask.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %11 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr4.i, align 4
  %call6.i = tail call i32 %10(ptr noundef %12) #7
  %or.i = or i32 %call6.i, %8
  %13 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i, align 4
  %15 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr4.i, align 4
  tail call void %14(i32 noundef %or.i, ptr noundef %16) #7
  %17 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i, align 4
  %19 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr4.i, align 4
  %call13.i = tail call i32 %18(ptr noundef %20) #7
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %21 = ptrtoint ptr %pos.040.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %pos.0.i = load ptr, ptr %pos.040.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %irqs.i
  br i1 %cmp.i.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %rearm.i = getelementptr inbounds %struct.pcs_soc_data, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %rearm.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rearm.i, align 4
  %tobool17.not.i = icmp eq ptr %23, null
  br i1 %tobool17.not.i, label %for.end.i.pcs_irq_set.exit_crit_edge, label %if.then18.i

for.end.i.pcs_irq_set.exit_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcs_irq_set.exit

if.then18.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %23() #7
  br label %pcs_irq_set.exit

pcs_irq_set.exit:                                 ; preds = %if.then18.i, %for.end.i.pcs_irq_set.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcs_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %chip_data.i.i2 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i2, align 4
  %irq.i3 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %2 = ptrtoint ptr %irq.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i3, align 4
  %irqs.i.i4 = getelementptr i8, ptr %1, i32 200
  %4 = ptrtoint ptr %irqs.i.i4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %pos.038.i.i5 = load ptr, ptr %irqs.i.i4, align 4
  %cmp.i.not39.i.i6 = icmp eq ptr %pos.038.i.i5, %irqs.i.i4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.i.not39.i.i6, label %if.then.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.then.for.end.i.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then
  %irq_enable_mask.i.i = getelementptr inbounds %struct.pcs_soc_data, ptr %1, i32 0, i32 2
  %lock.i.i = getelementptr i8, ptr %1, i32 20
  %read.i.i = getelementptr i8, ptr %1, i32 392
  %write.i.i = getelementptr i8, ptr %1, i32 396
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %pos.040.i.i = phi ptr [ %pos.038.i.i5, %for.body.lr.ph.i.i ], [ %pos.0.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %irq5.i.i = getelementptr i8, ptr %pos.040.i.i, i32 -4
  %5 = ptrtoint ptr %irq5.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp.not.i.i = icmp eq i32 %6, %3
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.body.i.i.cleanup.i.i_crit_edge

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i.i = getelementptr i8, ptr %pos.040.i.i, i32 -12
  %7 = ptrtoint ptr %irq_enable_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_enable_mask.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #7
  %9 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i.i, align 4
  %11 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr4.i.i, align 4
  %call6.i.i = tail call i32 %10(ptr noundef %12) #7
  %or.i.i = or i32 %call6.i.i, %8
  %13 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i.i, align 4
  %15 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr4.i.i, align 4
  tail call void %14(i32 noundef %or.i.i, ptr noundef %16) #7
  %17 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i.i, align 4
  %19 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr4.i.i, align 4
  %call13.i.i = tail call i32 %18(ptr noundef %20) #7
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #7
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.cleanup.i.i_crit_edge
  %21 = ptrtoint ptr %pos.040.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %pos.0.i.i = load ptr, ptr %pos.040.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %pos.0.i.i, %irqs.i.i4
  br i1 %cmp.i.not.i.i, label %cleanup.i.i.for.end.i.i_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %if.then.for.end.i.i_crit_edge
  %rearm.i.i = getelementptr inbounds %struct.pcs_soc_data, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %rearm.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rearm.i.i, align 4
  %tobool17.not.i.i = icmp eq ptr %23, null
  br i1 %tobool17.not.i.i, label %for.end.i.i.if.end_crit_edge, label %for.end.i.i.if.end.sink.split_crit_edge

for.end.i.i.if.end.sink.split_crit_edge:          ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

for.end.i.i.if.end_crit_edge:                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i.not39.i.i6, label %if.else.for.end.i.i25_crit_edge, label %for.body.lr.ph.i.i11

if.else.for.end.i.i25_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i25

for.body.lr.ph.i.i11:                             ; preds = %if.else
  %irq_enable_mask.i.i7 = getelementptr inbounds %struct.pcs_soc_data, ptr %1, i32 0, i32 2
  %lock.i.i8 = getelementptr i8, ptr %1, i32 20
  %read.i.i9 = getelementptr i8, ptr %1, i32 392
  %write.i.i10 = getelementptr i8, ptr %1, i32 396
  br label %for.body.i.i15

for.body.i.i15:                                   ; preds = %cleanup.i.i22.for.body.i.i15_crit_edge, %for.body.lr.ph.i.i11
  %pos.040.i.i12 = phi ptr [ %pos.038.i.i5, %for.body.lr.ph.i.i11 ], [ %pos.0.i.i20, %cleanup.i.i22.for.body.i.i15_crit_edge ]
  %irq5.i.i13 = getelementptr i8, ptr %pos.040.i.i12, i32 -4
  %24 = ptrtoint ptr %irq5.i.i13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq5.i.i13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %3)
  %cmp.not.i.i14 = icmp eq i32 %25, %3
  br i1 %cmp.not.i.i14, label %if.end.i.i19, label %for.body.i.i15.cleanup.i.i22_crit_edge

for.body.i.i15.cleanup.i.i22_crit_edge:           ; preds = %for.body.i.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i.i22

if.end.i.i19:                                     ; preds = %for.body.i.i15
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i.i16 = getelementptr i8, ptr %pos.040.i.i12, i32 -12
  %26 = ptrtoint ptr %irq_enable_mask.i.i7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq_enable_mask.i.i7, align 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i8) #7
  %28 = ptrtoint ptr %read.i.i9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read.i.i9, align 4
  %30 = ptrtoint ptr %add.ptr4.i.i16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr4.i.i16, align 4
  %call6.i.i17 = tail call i32 %29(ptr noundef %31) #7
  %neg.i.i = xor i32 %27, -1
  %and.i.i = and i32 %call6.i.i17, %neg.i.i
  %32 = ptrtoint ptr %write.i.i10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write.i.i10, align 4
  %34 = ptrtoint ptr %add.ptr4.i.i16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr4.i.i16, align 4
  tail call void %33(i32 noundef %and.i.i, ptr noundef %35) #7
  %36 = ptrtoint ptr %read.i.i9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read.i.i9, align 4
  %38 = ptrtoint ptr %add.ptr4.i.i16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr4.i.i16, align 4
  %call13.i.i18 = tail call i32 %37(ptr noundef %39) #7
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i8) #7
  br label %cleanup.i.i22

cleanup.i.i22:                                    ; preds = %if.end.i.i19, %for.body.i.i15.cleanup.i.i22_crit_edge
  %40 = ptrtoint ptr %pos.040.i.i12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %pos.0.i.i20 = load ptr, ptr %pos.040.i.i12, align 4
  %cmp.i.not.i.i21 = icmp eq ptr %pos.0.i.i20, %irqs.i.i4
  br i1 %cmp.i.not.i.i21, label %cleanup.i.i22.for.end.i.i25_crit_edge, label %cleanup.i.i22.for.body.i.i15_crit_edge

cleanup.i.i22.for.body.i.i15_crit_edge:           ; preds = %cleanup.i.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i15

cleanup.i.i22.for.end.i.i25_crit_edge:            ; preds = %cleanup.i.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i25

for.end.i.i25:                                    ; preds = %cleanup.i.i22.for.end.i.i25_crit_edge, %if.else.for.end.i.i25_crit_edge
  %rearm.i.i23 = getelementptr inbounds %struct.pcs_soc_data, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %rearm.i.i23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rearm.i.i23, align 4
  %tobool17.not.i.i24 = icmp eq ptr %42, null
  br i1 %tobool17.not.i.i24, label %for.end.i.i25.if.end_crit_edge, label %for.end.i.i25.if.end.sink.split_crit_edge

for.end.i.i25.if.end.sink.split_crit_edge:        ; preds = %for.end.i.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

for.end.i.i25.if.end_crit_edge:                   ; preds = %for.end.i.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.sink.split:                                ; preds = %for.end.i.i25.if.end.sink.split_crit_edge, %for.end.i.i.if.end.sink.split_crit_edge
  %.sink = phi ptr [ %23, %for.end.i.i.if.end.sink.split_crit_edge ], [ %42, %for.end.i.i25.if.end.sink.split_crit_edge ]
  tail call void %.sink() #7
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %for.end.i.i25.if.end_crit_edge, %for.end.i.i.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcs_irq_handler(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irqs.i = getelementptr i8, ptr %d, i32 200
  %0 = ptrtoint ptr %irqs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %pos.020.i = load ptr, ptr %irqs.i, align 4
  %cmp.i.not21.i = icmp eq ptr %pos.020.i, %irqs.i
  br i1 %cmp.i.not21.i, label %entry.pcs_irq_handle.exit_crit_edge, label %for.body.lr.ph.i

entry.pcs_irq_handle.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcs_irq_handle.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %lock.i = getelementptr i8, ptr %d, i32 20
  %read.i = getelementptr i8, ptr %d, i32 392
  %irq_status_mask.i = getelementptr inbounds %struct.pcs_soc_data, ptr %d, i32 0, i32 3
  %domain.i = getelementptr i8, ptr %d, i32 344
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.023.i = phi ptr [ %pos.020.i, %for.body.lr.ph.i ], [ %pos.0.i, %if.end.i.for.body.i_crit_edge ]
  %count.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %count.1.i, %if.end.i.for.body.i_crit_edge ]
  %add.ptr4.i = getelementptr i8, ptr %pos.023.i, i32 -12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %1 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read.i, align 4
  %3 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr4.i, align 4
  %call5.i = tail call i32 %2(ptr noundef %4) #7
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %5 = ptrtoint ptr %irq_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_status_mask.i, align 4
  %and.i = and i32 %6, %call5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %domain.i, align 4
  %hwirq.i = getelementptr i8, ptr %pos.023.i, i32 -8
  %9 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwirq.i, align 4
  %call8.i = tail call i32 @generic_handle_domain_irq(ptr noundef %8, i32 noundef %10) #7
  %inc.i = add i32 %count.022.i, 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %count.1.i = phi i32 [ %inc.i, %if.then.i ], [ %count.022.i, %for.body.i.if.end.i_crit_edge ]
  %11 = ptrtoint ptr %pos.023.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %pos.0.i = load ptr, ptr %pos.023.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %irqs.i
  br i1 %cmp.i.not.i, label %if.end.i.pcs_irq_handle.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i.pcs_irq_handle.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcs_irq_handle.exit

pcs_irq_handle.exit:                              ; preds = %if.end.i.pcs_irq_handle.exit_crit_edge, %entry.pcs_irq_handle.exit_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %entry.pcs_irq_handle.exit_crit_edge ], [ %count.1.i, %if.end.i.pcs_irq_handle.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa.i)
  %tobool.not = icmp ne i32 %count.0.lcssa.i, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcs_irq_chain_handler(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #7
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #7
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %irq_data4.i) #7
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %irqs.i = getelementptr i8, ptr %1, i32 200
  %12 = ptrtoint ptr %irqs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %pos.020.i = load ptr, ptr %irqs.i, align 4
  %cmp.i.not21.i = icmp eq ptr %pos.020.i, %irqs.i
  br i1 %cmp.i.not21.i, label %chained_irq_enter.exit.pcs_irq_handle.exit_crit_edge, label %for.body.lr.ph.i

chained_irq_enter.exit.pcs_irq_handle.exit_crit_edge: ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcs_irq_handle.exit

for.body.lr.ph.i:                                 ; preds = %chained_irq_enter.exit
  %lock.i = getelementptr i8, ptr %1, i32 20
  %read.i = getelementptr i8, ptr %1, i32 392
  %irq_status_mask.i = getelementptr inbounds %struct.pcs_soc_data, ptr %1, i32 0, i32 3
  %domain.i = getelementptr i8, ptr %1, i32 344
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i7.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.023.i = phi ptr [ %pos.020.i, %for.body.lr.ph.i ], [ %pos.0.i, %if.end.i7.for.body.i_crit_edge ]
  %add.ptr4.i = getelementptr i8, ptr %pos.023.i, i32 -12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %13 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read.i, align 4
  %15 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr4.i, align 4
  %call5.i = tail call i32 %14(ptr noundef %16) #7
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %17 = ptrtoint ptr %irq_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq_status_mask.i, align 4
  %and.i = and i32 %18, %call5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %for.body.i.if.end.i7_crit_edge, label %if.then.i

for.body.i.if.end.i7_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i7

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %domain.i, align 4
  %hwirq.i = getelementptr i8, ptr %pos.023.i, i32 -8
  %21 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hwirq.i, align 4
  %call8.i = tail call i32 @generic_handle_domain_irq(ptr noundef %20, i32 noundef %22) #7
  br label %if.end.i7

if.end.i7:                                        ; preds = %if.then.i, %for.body.i.if.end.i7_crit_edge
  %23 = ptrtoint ptr %pos.023.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %pos.0.i = load ptr, ptr %pos.023.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %irqs.i
  br i1 %cmp.i.not.i, label %if.end.i7.pcs_irq_handle.exit_crit_edge, label %if.end.i7.for.body.i_crit_edge

if.end.i7.for.body.i_crit_edge:                   ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i7.pcs_irq_handle.exit_crit_edge:          ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcs_irq_handle.exit

pcs_irq_handle.exit:                              ; preds = %if.end.i7.pcs_irq_handle.exit_crit_edge, %chained_irq_enter.exit.pcs_irq_handle.exit_crit_edge
  %24 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i9 = icmp eq ptr %25, null
  br i1 %tobool.not.i9, label %if.else.i10, label %pcs_irq_handle.exit.chained_irq_exit.exit_crit_edge

pcs_irq_handle.exit.chained_irq_exit.exit_crit_edge: ; preds = %pcs_irq_handle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_exit.exit

if.else.i10:                                      ; preds = %pcs_irq_handle.exit
  call void @__sanitizer_cov_trace_pc() #9
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %26 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i10, %pcs_irq_handle.exit.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %27, %if.else.i10 ], [ %25, %pcs_irq_handle.exit.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcs_irqdomain_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %dev = getelementptr i8, ptr %1, i32 -20
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 20, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr i8, ptr %1, i32 -32
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %5, i32 %hwirq
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr1, ptr %call.i, align 4
  %hwirq2 = getelementptr inbounds %struct.pcs_interrupt, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %hwirq2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %hwirq, ptr %hwirq2, align 4
  %irq3 = getelementptr inbounds %struct.pcs_interrupt, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %irq3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %irq, ptr %irq3, align 4
  %mutex = getelementptr i8, ptr %1, i32 64
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %node = getelementptr inbounds %struct.pcs_interrupt, ptr %call.i, i32 0, i32 3
  %irqs = getelementptr i8, ptr %1, i32 200
  %prev.i = getelementptr i8, ptr %1, i32 204
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %10, ptr noundef %irqs) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %node, ptr %prev.i, align 4
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %irqs, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.pcs_interrupt, ptr %call.i, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %node, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %call5 = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #7
  %chip = getelementptr i8, ptr %1, i32 208
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef %chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #7
  tail call void @__irq_set_lockdep_class(i32 noundef %irq, ptr noundef nonnull @pcs_lock_class, ptr noundef nonnull @pcs_request_class) #7
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 1024) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_lockdep_class(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_remove_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_sleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_default(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !24, !26, !27, !28, !29, !30, !31, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !71, !72, !73, !74, !76, !78, !80, !81, !82, !83, !85, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !126, !127, !128, !130, !131, !133, !134, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !160, !161, !162, !164, !165, !167, !169, !170, !171, !173, !175, !176, !177, !178, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !193, !195, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218}
!llvm.module.flags = !{!220, !221, !222, !223, !224, !225, !226, !227}
!llvm.ident = !{!228}

!0 = !{ptr @__initcall__kmod_pinctrl_single__233_1988_pcs_driver_init6, !1, !"__initcall__kmod_pinctrl_single__233_1988_pcs_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1988, i32 1}
!2 = !{ptr @__exitcall_pcs_driver_exit, !1, !"__exitcall_pcs_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author234, !4, !"__UNIQUE_ID_author234", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1990, i32 1}
!5 = !{ptr @__UNIQUE_ID_description235, !6, !"__UNIQUE_ID_description235", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1991, i32 1}
!7 = !{ptr @__UNIQUE_ID_file236, !8, !"__UNIQUE_ID_file236", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1992, i32 1}
!9 = !{ptr @__UNIQUE_ID_license237, !8, !"__UNIQUE_ID_license237", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1979, i32 12}
!12 = !{ptr @pcs_driver, !13, !"pcs_driver", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1975, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1786, i32 6}
!16 = !{ptr @pcs_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1795, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pcs_probe.__key.3, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1796, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1801, i32 33}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1804, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pcs_probe._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @pcs_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1809, i32 33}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1821, i32 33}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1827, i32 9}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1831, i32 3}
!39 = !{ptr @pcs_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @pcs_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1838, i32 3}
!43 = !{ptr @pcs_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @pcs_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1845, i32 3}
!47 = !{ptr @pcs_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @pcs_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1852, i32 3}
!51 = !{ptr @pcs_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @pcs_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1888, i32 3}
!55 = !{ptr @pcs_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @pcs_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1914, i32 4}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @pcs_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @pcs_probe._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1917, i32 2}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @pcs_probe._entry.32, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @pcs_probe._entry_ptr.35, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1742, i32 21}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1750, i32 2}
!71 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @pcs_quirk_missing_pinctrl_cells._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @pcs_quirk_missing_pinctrl_cells._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @pcs_pinctrl_ops, !75, !"pcs_pinctrl_ops", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 329, i32 33}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 313, i32 16}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1278, i32 4}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @pcs_dt_node_to_map._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @pcs_dt_node_to_map._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @pcs_dt_node_to_map._entry.42, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1286, i32 4}
!85 = !{ptr @pcs_dt_node_to_map._entry_ptr.43, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1116, i32 21}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1124, i32 3}
!90 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @pcs_parse_bits_in_pinctrl_entry._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @pcs_parse_bits_in_pinctrl_entry._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1129, i32 3}
!95 = !{ptr @pcs_parse_bits_in_pinctrl_entry._entry.47, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @pcs_parse_bits_in_pinctrl_entry._entry_ptr.49, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1159, i32 4}
!99 = !{ptr @pcs_parse_bits_in_pinctrl_entry._entry.50, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @pcs_parse_bits_in_pinctrl_entry._entry_ptr.52, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1169, i32 3}
!103 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @pcs_parse_bits_in_pinctrl_entry.__UNIQUE_ID_ddebug232, !102, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1181, i32 5}
!107 = !{ptr @pcs_parse_bits_in_pinctrl_entry._entry.55, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @pcs_parse_bits_in_pinctrl_entry._entry_ptr.57, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1190, i32 5}
!111 = !{ptr @pcs_parse_bits_in_pinctrl_entry._entry.58, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @pcs_parse_bits_in_pinctrl_entry._entry_ptr.60, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1202, i32 5}
!115 = !{ptr @pcs_parse_bits_in_pinctrl_entry._entry.61, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @pcs_parse_bits_in_pinctrl_entry._entry_ptr.63, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.64, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 818, i32 3}
!119 = !{ptr @.str.65, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @pcs_get_pin_by_offset._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @pcs_get_pin_by_offset._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1002, i32 21}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1009, i32 3}
!126 = !{ptr @pcs_parse_one_pinctrl_entry._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @pcs_parse_one_pinctrl_entry._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @pcs_parse_one_pinctrl_entry._entry.68, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1031, i32 4}
!130 = !{ptr @pcs_parse_one_pinctrl_entry._entry_ptr.69, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1048, i32 3}
!133 = !{ptr @pcs_parse_one_pinctrl_entry.__UNIQUE_ID_ddebug231, !132, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!134 = !{ptr @pcs_parse_one_pinctrl_entry._entry.71, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1053, i32 4}
!136 = !{ptr @pcs_parse_one_pinctrl_entry._entry_ptr.72, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.73, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 921, i32 5}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 922, i32 5}
!141 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 923, i32 5}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 924, i32 5}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 925, i32 5}
!147 = !{ptr @pcs_parse_pinconf.prop2, !148, !"prop2", i1 false, i1 false}
!148 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 920, i32 36}
!149 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 928, i32 5}
!151 = !{ptr @.str.79, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 929, i32 5}
!153 = !{ptr @.str.80, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 930, i32 5}
!155 = distinct !{null, !156, !"prop4", i1 false, i1 false}
!156 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 927, i32 36}
!157 = !{ptr @.str.81, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 898, i32 3}
!159 = !{ptr @.str.82, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @pcs_add_conf4._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @pcs_add_conf4._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 906, i32 3}
!164 = !{ptr @pcs_add_conf4.__UNIQUE_ID_ddebug230, !163, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!165 = !{ptr @pcs_pinmux_ops, !166, !"pcs_pinmux_ops", i1 false, i1 false}
!166 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 445, i32 32}
!167 = !{ptr @.str.84, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 379, i32 2}
!169 = !{ptr @.str.85, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @pcs_set_mux.__UNIQUE_ID_ddebug227, !168, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!171 = !{ptr @pcs_pinconf_ops, !172, !"pcs_pinconf_ops", i1 false, i1 false}
!172 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 667, i32 33}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 355, i32 3}
!175 = !{ptr @.str.87, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @pcs_get_function._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @pcs_get_function._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = distinct !{null, !179, !"pcs_bias", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 219, i32 30}
!180 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 737, i32 2}
!182 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @pcs_allocate_pin_table.__UNIQUE_ID_ddebug229, !181, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 754, i32 4}
!186 = !{ptr @pcs_allocate_pin_table._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @pcs_allocate_pin_table._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 691, i32 3}
!190 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @pcs_add_pin._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @pcs_add_pin._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 701, i32 4}
!195 = !{ptr @pcs_add_pin.__UNIQUE_ID_ddebug228, !194, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!196 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1339, i32 25}
!198 = !{ptr @.str.95, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1340, i32 25}
!200 = !{ptr @.str.96, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1575, i32 21}
!202 = !{ptr @pcs_irqdomain_ops, !203, !"pcs_irqdomain_ops", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1561, i32 36}
!204 = !{ptr @pcs_lock_class, !205, !"pcs_lock_class", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 229, i32 30}
!206 = !{ptr @pcs_request_class, !207, !"pcs_request_class", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 232, i32 30}
!208 = !{ptr @pcs_of_match, !209, !"pcs_of_match", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1963, i32 34}
!210 = !{ptr @pinctrl_single_omap_wkup, !211, !"pinctrl_single_omap_wkup", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1939, i32 34}
!212 = !{ptr @pinctrl_single_dra7, !213, !"pinctrl_single_dra7", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1945, i32 34}
!214 = !{ptr @pinctrl_single_am437x, !215, !"pinctrl_single_am437x", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1950, i32 34}
!216 = !{ptr @pinctrl_single, !217, !"pinctrl_single", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1956, i32 34}
!218 = !{ptr @pinconf_single, !219, !"pinconf_single", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/pinctrl-single.c", i32 1959, i32 34}
!220 = !{i32 1, !"wchar_size", i32 2}
!221 = !{i32 1, !"min_enum_size", i32 4}
!222 = !{i32 8, !"branch-target-enforcement", i32 0}
!223 = !{i32 8, !"sign-return-address", i32 0}
!224 = !{i32 8, !"sign-return-address-all", i32 0}
!225 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!226 = !{i32 7, !"uwtable", i32 1}
!227 = !{i32 7, !"frame-pointer", i32 2}
!228 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!229 = !{!"branch_weights", i32 1, i32 2000}
!230 = !{i32 0, i32 33}
!231 = !{!"auto-init"}
!232 = !{i64 4083458}
!233 = !{i64 2154016794}
!234 = !{i64 2154017938}
!235 = !{i64 4083063}
!236 = !{i64 4082840}
!237 = !{i64 2154017252}
!238 = !{i64 2154018205}
!239 = !{i64 4082640}
!240 = !{i64 4083678}
!241 = !{i64 2154017710}
!242 = !{i64 2154018594}
!243 = !{i64 4083260}
!244 = !{i8 0, i8 2}
!245 = !{i64 2149001027, i64 2149001032, i64 2149001045, i64 2149001089, i64 2149001123, i64 2149001144}
