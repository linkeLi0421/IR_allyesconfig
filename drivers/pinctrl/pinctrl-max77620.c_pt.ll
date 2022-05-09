; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-max77620.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-max77620.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.max77620_pin_function = type { ptr, ptr, i32, i32 }
%struct.max77620_pingroup = type { ptr, [1 x i32], i32, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.max77620_chip = type { ptr, ptr, i32, i32, i8, i8, [3 x i32], [3 x i32], ptr, ptr }
%struct.max77620_pctrl_info = type { ptr, ptr, ptr, [8 x i32], ptr, i32, ptr, i32, ptr, i32, [8 x %struct.max77620_pin_info], [8 x %struct.max77620_fps_config] }
%struct.max77620_pin_info = type { i32, i32 }
%struct.max77620_fps_config = type { i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_pinctrl_max77620__210_666_max77620_pinctrl_driver_init6 = internal global ptr @max77620_pinctrl_driver_init, section ".initcall6.init", align 4
@max77620_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max77620_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77620_pinctrl_pm_ops, ptr null, ptr null }, ptr @max77620_pinctrl_devtype, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max77620_pinctrl_driver_exit = internal global ptr @max77620_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description211 = internal constant [66 x i8] c"pinctrl_max77620.description=MAX77620/MAX20024 pin control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [59 x i8] c"pinctrl_max77620.author=Chaitanya Bandi<bandik@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author213 = internal constant [62 x i8] c"pinctrl_max77620.author=Laxman Dewangan<ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias214 = internal constant [49 x i8] c"pinctrl_max77620.alias=platform:max77620-pinctrl\00", section ".modinfo", align 1
@__UNIQUE_ID_file215 = internal constant [55 x i8] c"pinctrl_max77620.file=drivers/pinctrl/pinctrl-max77620\00", section ".modinfo", align 1
@__UNIQUE_ID_license216 = internal constant [32 x i8] c"pinctrl_max77620.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max77620-pinctrl\00", [47 x i8] zeroinitializer }, align 32
@max77620_pinctrl_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max77620_pinctrl_suspend, ptr @max77620_pinctrl_resume, ptr @max77620_pinctrl_suspend, ptr @max77620_pinctrl_resume, ptr @max77620_pinctrl_suspend, ptr @max77620_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max77620_pinctrl_devtype = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77620-pinctrl\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"max20024-pinctrl\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max77620_pins_desc = internal constant { [8 x %struct.pinctrl_pin_desc], [32 x i8] } { [8 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.6, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.7, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.8, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.9, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.10, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.11, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.12, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.13, ptr null }], [32 x i8] zeroinitializer }, align 32
@max77620_pin_function = internal constant { [7 x %struct.max77620_pin_function], [48 x i8] } { [7 x %struct.max77620_pin_function] [%struct.max77620_pin_function { ptr @.str.14, ptr @gpio_groups, i32 8, i32 0 }, %struct.max77620_pin_function { ptr @.str.15, ptr @gpio_groups, i32 8, i32 1 }, %struct.max77620_pin_function { ptr @.str.16, ptr @gpio_groups, i32 8, i32 2 }, %struct.max77620_pin_function { ptr @.str.17, ptr @gpio_groups, i32 8, i32 3 }, %struct.max77620_pin_function { ptr @.str.18, ptr @gpio_groups, i32 8, i32 4 }, %struct.max77620_pin_function { ptr @.str.19, ptr @gpio_groups, i32 8, i32 5 }, %struct.max77620_pin_function { ptr @.str.20, ptr @gpio_groups, i32 8, i32 6 }], [48 x i8] zeroinitializer }, align 32
@max77620_pingroups = internal constant { [8 x %struct.max77620_pingroup], [32 x i8] } { [8 x %struct.max77620_pingroup] [%struct.max77620_pingroup { ptr @.str.6, [1 x i32] zeroinitializer, i32 1, i32 1 }, %struct.max77620_pingroup { ptr @.str.7, [1 x i32] [i32 1], i32 1, i32 2 }, %struct.max77620_pingroup { ptr @.str.8, [1 x i32] [i32 2], i32 1, i32 2 }, %struct.max77620_pingroup { ptr @.str.9, [1 x i32] [i32 3], i32 1, i32 2 }, %struct.max77620_pingroup { ptr @.str.10, [1 x i32] [i32 4], i32 1, i32 3 }, %struct.max77620_pingroup { ptr @.str.11, [1 x i32] [i32 5], i32 1, i32 4 }, %struct.max77620_pingroup { ptr @.str.12, [1 x i32] [i32 6], i32 1, i32 5 }, %struct.max77620_pingroup { ptr @.str.13, [1 x i32] [i32 7], i32 1, i32 6 }], [32 x i8] zeroinitializer }, align 32
@max77620_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr null, ptr null, i32 0, ptr @max77620_pinctrl_ops, ptr @max77620_pinmux_ops, ptr @max77620_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@max77620_cfg_params = internal constant { [6 x %struct.pinconf_generic_params], [56 x i8] } { [6 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.49, i32 128, i32 0 }, %struct.pinconf_generic_params { ptr @.str.50, i32 129, i32 0 }, %struct.pinconf_generic_params { ptr @.str.51, i32 130, i32 0 }, %struct.pinconf_generic_params { ptr @.str.52, i32 131, i32 0 }, %struct.pinconf_generic_params { ptr @.str.53, i32 132, i32 0 }, %struct.pinconf_generic_params { ptr @.str.54, i32 133, i32 0 }], [56 x i8] zeroinitializer }, align 32
@max77620_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 592, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't register pinctrl driver\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max77620_pinctrl_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/pinctrl/pinctrl-max77620.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77620_pinctrl_probe._entry_ptr = internal global ptr @max77620_pinctrl_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@gpio_groups = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lpm-control-in\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fps-out\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"32k-out1\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sd0-dvs-in\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sd1-dvs-in\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reference-out\00", [18 x i8] zeroinitializer }, align 32
@max77620_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @max77620_pinctrl_get_groups_count, ptr @max77620_pinctrl_get_group_name, ptr @max77620_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@max77620_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @max77620_pinctrl_get_funcs_count, ptr @max77620_pinctrl_get_func_name, ptr @max77620_pinctrl_get_func_groups, ptr @max77620_pinctrl_enable, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@max77620_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr @max77620_pinconf_get, ptr @max77620_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@max77620_pinctrl_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"GPIO %u doesn't have function %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max77620_pinctrl_enable\00", [40 x i8] zeroinitializer }, align 32
@max77620_pinctrl_enable._entry_ptr = internal global ptr @max77620_pinctrl_enable._entry, section ".printk_index", align 4
@max77620_pinctrl_enable._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 259, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"REG AME GPIO update failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@max77620_pinctrl_enable._entry_ptr.25 = internal global ptr @max77620_pinctrl_enable._entry.23, section ".printk_index", align 4
@max77620_pinconf_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Reg PUE_GPIO read failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max77620_pinconf_get\00", [43 x i8] zeroinitializer }, align 32
@max77620_pinconf_get._entry_ptr = internal global ptr @max77620_pinconf_get._entry, section ".printk_index", align 4
@max77620_pinconf_get._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Reg PDE_GPIO read failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@max77620_pinconf_get._entry_ptr.30 = internal global ptr @max77620_pinconf_get._entry.28, section ".printk_index", align 4
@max77620_pinconf_get._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Properties not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@max77620_pinconf_get._entry_ptr.33 = internal global ptr @max77620_pinconf_get._entry.31, section ".printk_index", align 4
@max77620_pinconf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 511, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PUE_GPIO update failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max77620_pinconf_set\00", [43 x i8] zeroinitializer }, align 32
@max77620_pinconf_set._entry_ptr = internal global ptr @max77620_pinconf_set._entry, section ".printk_index", align 4
@max77620_pinconf_set._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 520, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PDE_GPIO update failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@max77620_pinconf_set._entry_ptr.38 = internal global ptr @max77620_pinconf_set._entry.36, section ".printk_index", align 4
@max77620_pinconf_set._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.35, ptr @.str.3, i32 526, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max77620_pinconf_set._entry_ptr.40 = internal global ptr @max77620_pinconf_set._entry.39, section ".printk_index", align 4
@max77620_pinconf_set._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.3, i32 535, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Reg 0x%02x update failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@max77620_pinconf_set._entry_ptr.43 = internal global ptr @max77620_pinconf_set._entry.41, section ".printk_index", align 4
@max77620_get_default_fps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.44, ptr @.str.3, i32 330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max77620_get_default_fps\00", [39 x i8] zeroinitializer }, align 32
@max77620_get_default_fps._entry_ptr = internal global ptr @max77620_get_default_fps._entry, section ".printk_index", align 4
@max77620_set_fps_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid parameter %d for pin %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max77620_set_fps_param\00", [41 x i8] zeroinitializer }, align 32
@max77620_set_fps_param._entry_ptr = internal global ptr @max77620_set_fps_param._entry, section ".printk_index", align 4
@max77620_set_fps_param._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.46, ptr @.str.3, i32 389, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max77620_set_fps_param._entry_ptr.48 = internal global ptr @max77620_set_fps_param._entry.47, section ".printk_index", align 4
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"maxim,active-fps-source\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"maxim,active-fps-power-up-slot\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"maxim,active-fps-power-down-slot\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"maxim,suspend-fps-source\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"maxim,suspend-fps-power-up-slot\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"maxim,suspend-fps-power-down-slot\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.55 = internal global [12 x i64] [i64 10, i64 8, i64 3, i64 5, i64 6, i64 8, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133]
@__sancov_gen_cov_switch_values.56 = internal global [8 x i64] [i64 6, i64 32, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133]
@___asan_gen_.57 = private unnamed_addr constant [24 x i8] c"max77620_pinctrl_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 657, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 659, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [24 x i8] c"max77620_pinctrl_pm_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 645, i32 32 }
@___asan_gen_.66 = private unnamed_addr constant [25 x i8] c"max77620_pinctrl_devtype\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 650, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"max77620_pins_desc\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 118, i32 38 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"max77620_pin_function\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 148, i32 43 }
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"max77620_pingroups\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 166, i32 39 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"max77620_pinctrl_desc\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 544, i32 28 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"max77620_cfg_params\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 50, i32 44 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 592, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 119, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 120, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 121, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 122, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 123, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 124, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 125, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 126, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 149, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [12 x i8] c"gpio_groups\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 129, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 150, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 151, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 152, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 153, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 154, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 155, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [21 x i8] c"max77620_pinctrl_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 204, i32 33 }
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c"max77620_pinmux_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 264, i32 32 }
@___asan_gen_.156 = private unnamed_addr constant [21 x i8] c"max77620_pinconf_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 539, i32 33 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 252, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 259, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 295, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 305, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 313, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 510, i32 5 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 519, i32 5 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 526, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 534, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 330, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 379, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 389, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 52, i32 15 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 55, i32 15 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 58, i32 15 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 61, i32 15 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 64, i32 15 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private constant [38 x i8] c"../drivers/pinctrl/pinctrl-max77620.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 67, i32 15 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_alias214, ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file215, ptr @__UNIQUE_ID_license216, ptr @__exitcall_max77620_pinctrl_driver_exit, ptr @__initcall__kmod_pinctrl_max77620__210_666_max77620_pinctrl_driver_init6, ptr @max77620_get_default_fps._entry, ptr @max77620_get_default_fps._entry_ptr, ptr @max77620_pinconf_get._entry, ptr @max77620_pinconf_get._entry.28, ptr @max77620_pinconf_get._entry.31, ptr @max77620_pinconf_get._entry_ptr, ptr @max77620_pinconf_get._entry_ptr.30, ptr @max77620_pinconf_get._entry_ptr.33, ptr @max77620_pinconf_set._entry, ptr @max77620_pinconf_set._entry.36, ptr @max77620_pinconf_set._entry.39, ptr @max77620_pinconf_set._entry.41, ptr @max77620_pinconf_set._entry_ptr, ptr @max77620_pinconf_set._entry_ptr.38, ptr @max77620_pinconf_set._entry_ptr.40, ptr @max77620_pinconf_set._entry_ptr.43, ptr @max77620_pinctrl_driver_exit, ptr @max77620_pinctrl_enable._entry, ptr @max77620_pinctrl_enable._entry.23, ptr @max77620_pinctrl_enable._entry_ptr, ptr @max77620_pinctrl_enable._entry_ptr.25, ptr @max77620_pinctrl_probe._entry, ptr @max77620_pinctrl_probe._entry_ptr, ptr @max77620_set_fps_param._entry, ptr @max77620_set_fps_param._entry.47, ptr @max77620_set_fps_param._entry_ptr, ptr @max77620_set_fps_param._entry_ptr.48, ptr @max77620_pinctrl_driver, ptr @.str, ptr @max77620_pinctrl_pm_ops, ptr @max77620_pinctrl_devtype, ptr @max77620_pins_desc, ptr @max77620_pin_function, ptr @max77620_pingroups, ptr @max77620_pinctrl_desc, ptr @max77620_cfg_params, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @gpio_groups, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @max77620_pinctrl_ops, ptr @max77620_pinmux_ops, ptr @max77620_pinconf_ops, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinctrl_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinctrl_devtype to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pins_desc to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pin_function to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pingroups to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_cfg_params to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_groups to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinctrl_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinctrl_enable._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinconf_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinconf_get._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinconf_get._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinconf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinconf_set._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinconf_set._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pinconf_set._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_get_default_fps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_set_fps_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_set_fps_param._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77620_pinctrl_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77620_pinctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77620_pinctrl_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call4 = tail call ptr @dev_fwnode(ptr noundef %1) #6
  tail call void @device_set_node(ptr noundef %dev, ptr noundef %call4) #6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 324, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %rmap = getelementptr inbounds %struct.max77620_chip, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmap, align 4
  %rmap9 = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %rmap9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %rmap9, align 4
  %pins = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @max77620_pins_desc, ptr %pins, align 4
  %num_pins = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %num_pins, align 4
  %functions = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %functions to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @max77620_pin_function, ptr %functions, align 4
  %num_functions = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %num_functions to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 7, ptr %num_functions, align 4
  %pin_groups = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %pin_groups to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @max77620_pingroups, ptr %pin_groups, align 4
  %num_pin_groups = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %num_pin_groups to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %num_pin_groups, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %if.end.dev_name.exit_crit_edge ]
  store ptr %retval.0.i, ptr @max77620_pinctrl_desc, align 4
  store ptr @max77620_pins_desc, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @max77620_pinctrl_desc, i32 0, i32 1), align 4
  store i32 8, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @max77620_pinctrl_desc, i32 0, i32 2), align 4
  store i32 6, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @max77620_pinctrl_desc, i32 0, i32 7), align 4
  store ptr @max77620_cfg_params, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @max77620_pinctrl_desc, i32 0, i32 8), align 4
  %uglygep = getelementptr i8, ptr %call.i, i32 132
  %19 = call ptr @memset(ptr %uglygep, i32 255, i32 192)
  %call23 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @max77620_pinctrl_desc, ptr noundef nonnull %call.i) #6
  %pctl = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %pctl to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call23, ptr %pctl, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %21 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pctl, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_pinctrl_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %num_pin_groups = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %num_pin_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pin_groups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @max77620_pinctrl_get_group_name(ptr noundef %pctldev, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %pin_groups = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin_groups, align 4
  %arrayidx = getelementptr %struct.max77620_pingroup, ptr %1, i32 %group
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_pinctrl_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %pin_groups = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin_groups, align 4
  %pins1 = getelementptr %struct.max77620_pingroup, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pins1, ptr %pins, align 4
  %3 = load ptr, ptr %pin_groups, align 4
  %npins = getelementptr %struct.max77620_pingroup, ptr %3, i32 %group, i32 2
  %4 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins, align 4
  %6 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %num_pins, align 4
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
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_pinctrl_get_funcs_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %num_functions = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_functions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @max77620_pinctrl_get_func_name(ptr noundef %pctldev, i32 noundef %function) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %functions = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.max77620_pin_function, ptr %1, i32 %function
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_pinctrl_get_func_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %functions = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.max77620_pin_function, ptr %1, i32 %function, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %functions, align 4
  %ngroups = getelementptr %struct.max77620_pin_function, ptr %5, i32 %function, i32 2
  %6 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ngroups, align 4
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_pinctrl_enable(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %function)
  %cmp = icmp eq i32 %function, 0
  br i1 %cmp, label %entry.if.end4_crit_edge, label %if.else

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = shl nuw i32 1, %group
  br label %if.end4

if.else:                                          ; preds = %entry
  %pin_groups = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin_groups, align 4
  %alt_option = getelementptr %struct.max77620_pingroup, ptr %1, i32 %group, i32 3
  %2 = ptrtoint ptr %alt_option to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alt_option, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %function)
  %cmp1 = icmp eq i32 %3, %function
  br i1 %cmp1, label %if.then2, label %do.end

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw i32 1, %group
  %phi.cast = and i32 %shl, 255
  br label %if.end4

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef %group, i32 noundef %function) #9
  br label %cleanup

if.end4:                                          ; preds = %if.then2, %entry.if.end4_crit_edge
  %shl5.pre-phi = phi i32 [ %.pre, %entry.if.end4_crit_edge ], [ %shl, %if.then2 ]
  %val.0 = phi i32 [ 0, %entry.if.end4_crit_edge ], [ %phi.cast, %if.then2 ]
  %rmap = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 64, i32 noundef %shl5.pre-phi, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %do.end13, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end13:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.24, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.end13 ], [ %call.i, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config, align 4
  %and.i = and i32 %3, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !153
  %trunc = trunc i32 %3 to i8
  %5 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %do.end33 [
    i8 6, label %sw.bb
    i8 8, label %sw.bb3
    i8 5, label %sw.bb10
    i8 3, label %sw.bb17
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.max77620_pctrl_info, ptr %call, i32 0, i32 10, i32 %pin
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %spec.select = zext i1 %cmp to i32
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx5 = getelementptr %struct.max77620_pctrl_info, ptr %call, i32 0, i32 10, i32 %pin
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp7 = icmp eq i32 %9, 2
  %spec.select57 = zext i1 %cmp7 to i32
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %rmap = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmap, align 4
  %call11 = call i32 @regmap_read(ptr noundef %11, i32 noundef 62, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end, label %if.end14

do.end:                                           ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %call11) #9
  br label %cleanup

if.end14:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %14 = lshr i32 %13, %pin
  %15 = and i32 %14, 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %rmap18 = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %rmap18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmap18, align 4
  %call19 = call i32 @regmap_read(ptr noundef %17, i32 noundef 63, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end25

do.end24:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %call19) #9
  br label %cleanup

if.end25:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %20 = lshr i32 %19, %pin
  %21 = and i32 %20, 1
  br label %sw.epilog

do.end33:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end25, %if.end14, %sw.bb3, %sw.bb
  %arg.0 = phi i32 [ %spec.select, %sw.bb ], [ %spec.select57, %sw.bb3 ], [ %15, %if.end14 ], [ %21, %if.end25 ]
  %shl.i = shl nuw nsw i32 %arg.0, 8
  %or.i = or i32 %shl.i, %and.i
  %22 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end33, %do.end24, %do.end
  %retval.0 = phi i32 [ -524, %do.end33 ], [ %call19, %do.end24 ], [ 0, %sw.epilog ], [ %call11, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  %val.i207 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp224.not = icmp eq i32 %num_configs, 0
  br i1 %cmp224.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %shl = shl nuw i32 1, %pin
  %rmap89 = getelementptr inbounds %struct.max77620_pctrl_info, ptr %call, i32 0, i32 2
  %2 = add i32 %pin, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %2)
  %3 = icmp ult i32 %2, -3
  %suspend_power_down_slots = getelementptr %struct.max77620_pctrl_info, ptr %call, i32 0, i32 11, i32 %pin, i32 5
  %suspend_power_up_slots = getelementptr %struct.max77620_pctrl_info, ptr %call, i32 0, i32 11, i32 %pin, i32 4
  %suspend_fps_src73 = getelementptr %struct.max77620_pctrl_info, ptr %call, i32 0, i32 11, i32 %pin, i32 3
  %sub65 = add nuw nsw i32 %pin, 83
  %arrayidx30 = getelementptr %struct.max77620_pctrl_info, ptr %call, i32 0, i32 11, i32 %pin
  %active_power_down_slots = getelementptr %struct.max77620_pctrl_info, ptr %call, i32 0, i32 11, i32 %pin, i32 2
  %active_power_up_slots = getelementptr %struct.max77620_pctrl_info, ptr %call, i32 0, i32 11, i32 %pin, i32 1
  %add14 = add i32 %pin, 54
  %arrayidx22 = getelementptr %struct.max77620_pctrl_info, ptr %call, i32 0, i32 10, i32 %pin
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0225 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0225
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %5, 255
  %shr.i = lshr i32 %5, 8
  %trunc = trunc i32 %5 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %trunc, label %do.end106 [
    i8 6, label %sw.bb
    i8 8, label %sw.bb10
    i8 -128, label %for.body.sw.bb24_crit_edge
    i8 -127, label %for.body.sw.bb24_crit_edge234
    i8 -126, label %for.body.sw.bb24_crit_edge235
    i8 -125, label %for.body.sw.bb52_crit_edge
    i8 -124, label %for.body.sw.bb52_crit_edge236
    i8 -123, label %for.body.sw.bb52_crit_edge237
    i8 5, label %cond.true
    i8 3, label %for.body.cond.end_crit_edge
  ]

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

for.body.sw.bb52_crit_edge237:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb52

for.body.sw.bb52_crit_edge236:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb52

for.body.sw.bb52_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb52

for.body.sw.bb24_crit_edge235:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24

for.body.sw.bb24_crit_edge234:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24

for.body.sw.bb24_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %tobool.not = icmp ult i32 %5, 256
  %cond = zext i1 %tobool.not to i32
  %7 = ptrtoint ptr %rmap89 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmap89, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %add14, i32 noundef 1, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end, label %sw.bb.do.end109_crit_edge

sw.bb.do.end109_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end109

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %cond8 = select i1 %tobool.not, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond8, ptr %arrayidx22, align 4
  br label %for.inc

sw.bb10:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %tobool11.not = icmp ult i32 %5, 256
  %not.tobool11.not = xor i1 %tobool11.not, true
  %cond12 = zext i1 %not.tobool11.not to i32
  %10 = ptrtoint ptr %rmap89 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmap89, align 4
  %call.i203 = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %add14, i32 noundef 1, i32 noundef %cond12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %tobool16.not = icmp eq i32 %call.i203, 0
  br i1 %tobool16.not, label %if.end18, label %sw.bb10.do.end109_crit_edge

sw.bb10.do.end109_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end109

if.end18:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %cond20 = select i1 %tobool11.not, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond20, ptr %arrayidx22, align 4
  br label %for.inc

sw.bb24:                                          ; preds = %for.body.sw.bb24_crit_edge, %for.body.sw.bb24_crit_edge234, %for.body.sw.bb24_crit_edge235
  br i1 %3, label %sw.bb24.cleanup_crit_edge, label %if.end28

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and.i)
  %cmp31 = icmp eq i32 %and.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr.i)
  %cmp32 = icmp eq i32 %shr.i, 4
  %or.cond200 = and i1 %cmp31, %cmp32
  br i1 %or.cond200, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i, align 4, !annotation !153
  %14 = ptrtoint ptr %rmap89 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmap89, align 4
  %call.i204 = call i32 @regmap_read(ptr noundef %15, i32 noundef %sub65, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %cmp.i = icmp slt i32 %call.i204, 0
  br i1 %cmp.i, label %max77620_get_default_fps.exit.thread, label %max77620_get_default_fps.exit

max77620_get_default_fps.exit.thread:             ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.26, i32 noundef %call.i204) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

max77620_get_default_fps.exit:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  %and.i205 = lshr i32 %19, 6
  %shr.i206 = and i32 %and.i205, 3
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr.i206, ptr %arrayidx30, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %for.inc

if.end39:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %and.i)
  %cmp43 = icmp eq i32 %and.i, 129
  %active_power_up_slots.active_power_down_slots = select i1 %cmp43, ptr %active_power_up_slots, ptr %active_power_down_slots
  %active_power_up_slots.sink = select i1 %cmp31, ptr %arrayidx30, ptr %active_power_up_slots.active_power_down_slots
  %21 = ptrtoint ptr %active_power_up_slots.sink to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr.i, ptr %active_power_up_slots.sink, align 4
  %call48 = call fastcc i32 @max77620_set_fps_param(ptr noundef %call, i32 noundef %pin, i32 noundef %and.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end39.cleanup_crit_edge, label %if.end39.for.inc_crit_edge

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb52:                                          ; preds = %for.body.sw.bb52_crit_edge, %for.body.sw.bb52_crit_edge236, %for.body.sw.bb52_crit_edge237
  br i1 %3, label %sw.bb52.cleanup_crit_edge, label %if.end57

sw.bb52.cleanup_crit_edge:                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end57:                                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_const_cmp4(i32 131, i32 %and.i)
  %cmp60 = icmp eq i32 %and.i, 131
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr.i)
  %cmp62 = icmp eq i32 %shr.i, 4
  %or.cond202 = and i1 %cmp60, %cmp62
  br i1 %or.cond202, label %if.then63, label %if.end70

if.then63:                                        ; preds = %if.end57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i207) #6
  %22 = ptrtoint ptr %val.i207 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %val.i207, align 4, !annotation !153
  %23 = ptrtoint ptr %rmap89 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmap89, align 4
  %call.i209 = call i32 @regmap_read(ptr noundef %24, i32 noundef %sub65, ptr noundef nonnull %val.i207) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %cmp.i210 = icmp slt i32 %call.i209, 0
  br i1 %cmp.i210, label %max77620_get_default_fps.exit216.thread, label %max77620_get_default_fps.exit216

max77620_get_default_fps.exit216.thread:          ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.26, i32 noundef %call.i209) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i207) #6
  br label %cleanup

max77620_get_default_fps.exit216:                 ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %val.i207 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i207, align 4
  %and.i212 = lshr i32 %28, 6
  %shr.i213 = and i32 %and.i212, 3
  %29 = ptrtoint ptr %suspend_fps_src73 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr.i213, ptr %suspend_fps_src73, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i207) #6
  br label %for.inc

if.end70:                                         ; preds = %if.end57
  br i1 %cmp60, label %if.then72, label %if.else74

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %suspend_fps_src73 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr.i, ptr %suspend_fps_src73, align 4
  br label %for.inc

if.else74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %and.i)
  %cmp75 = icmp eq i32 %and.i, 132
  br i1 %cmp75, label %if.then76, label %if.else77

if.then76:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %suspend_power_up_slots to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr.i, ptr %suspend_power_up_slots, align 4
  br label %for.inc

if.else77:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %suspend_power_down_slots to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr.i, ptr %suspend_power_down_slots, align 4
  br label %for.inc

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond82 = phi i32 [ %shl, %cond.true ], [ 0, %for.body.cond.end_crit_edge ]
  %33 = ptrtoint ptr %rmap89 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmap89, align 4
  %call.i217 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 62, i32 noundef %shl, i32 noundef %cond82, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %cmp92 = icmp slt i32 %call.i217, 0
  br i1 %cmp92, label %do.end, label %if.end94

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %call.i217) #9
  br label %cleanup

if.end94:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp83 = icmp eq i32 %and.i, 3
  %spec.select = select i1 %cmp83, i32 %shl, i32 0
  %35 = ptrtoint ptr %rmap89 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmap89, align 4
  %call.i218 = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 63, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %cmp98 = icmp slt i32 %call.i218, 0
  br i1 %cmp98, label %do.end102, label %if.end94.for.inc_crit_edge

if.end94.for.inc_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end102:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %call.i218) #9
  br label %cleanup

do.end106:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32) #9
  br label %cleanup

for.inc:                                          ; preds = %if.end94.for.inc_crit_edge, %if.else77, %if.then76, %if.then72, %max77620_get_default_fps.exit216, %if.end39.for.inc_crit_edge, %max77620_get_default_fps.exit, %if.end18, %if.end
  %inc = add nuw i32 %i.0225, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end109:                                        ; preds = %sw.bb10.do.end109_crit_edge, %sw.bb.do.end109_crit_edge
  %ret.0 = phi i32 [ %call.i203, %sw.bb10.do.end109_crit_edge ], [ %call.i, %sw.bb.do.end109_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %add14, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end109, %for.inc.cleanup_crit_edge, %do.end106, %do.end102, %do.end, %max77620_get_default_fps.exit216.thread, %sw.bb52.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %max77620_get_default_fps.exit.thread, %sw.bb24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end106 ], [ %call.i217, %do.end ], [ %call.i218, %do.end102 ], [ %ret.0, %do.end109 ], [ %call.i204, %max77620_get_default_fps.exit.thread ], [ %call.i209, %max77620_get_default_fps.exit216.thread ], [ 0, %entry.cleanup_crit_edge ], [ -22, %sw.bb24.cleanup_crit_edge ], [ %call48, %if.end39.cleanup_crit_edge ], [ -22, %sw.bb52.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77620_set_fps_param(ptr nocapture noundef readonly %mpci, i32 noundef %pin, i32 noundef %param) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.max77620_pctrl_info, ptr %mpci, i32 0, i32 11, i32 %pin
  %sub = add i32 %pin, 83
  %0 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %param, label %do.end [
    i32 133, label %entry.sw.bb10_crit_edge
    i32 130, label %entry.sw.bb10_crit_edge50
    i32 129, label %entry.sw.bb6_crit_edge
    i32 132, label %entry.sw.bb6_crit_edge51
    i32 131, label %if.then4
    i32 128, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.bb6_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb10_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %suspend_fps_src = getelementptr %struct.max77620_pctrl_info, ptr %mpci, i32 0, i32 11, i32 %pin, i32 3
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge51
  %active_power_up_slots = getelementptr %struct.max77620_pctrl_info, ptr %mpci, i32 0, i32 11, i32 %pin, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %param)
  %cmp7 = icmp eq i32 %param, 132
  %suspend_power_up_slots = getelementptr %struct.max77620_pctrl_info, ptr %mpci, i32 0, i32 11, i32 %pin, i32 4
  %spec.select = select i1 %cmp7, ptr %suspend_power_up_slots, ptr %active_power_up_slots
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge50
  %active_power_down_slots = getelementptr %struct.max77620_pctrl_info, ptr %mpci, i32 0, i32 11, i32 %pin, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 133, i32 %param)
  %cmp11 = icmp eq i32 %param, 133
  %suspend_power_down_slots = getelementptr %struct.max77620_pctrl_info, ptr %mpci, i32 0, i32 11, i32 %pin, i32 5
  %spec.select49 = select i1 %cmp11, ptr %suspend_power_down_slots, ptr %active_power_down_slots
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %mpci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mpci, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.45, i32 noundef %param, i32 noundef %pin) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb6, %if.then4, %entry.sw.epilog_crit_edge
  %param_val.0.in = phi ptr [ %suspend_fps_src, %if.then4 ], [ %arrayidx, %entry.sw.epilog_crit_edge ], [ %spec.select, %sw.bb6 ], [ %spec.select49, %sw.bb10 ]
  %mask.0 = phi i32 [ 192, %if.then4 ], [ 192, %entry.sw.epilog_crit_edge ], [ 56, %sw.bb6 ], [ 7, %sw.bb10 ]
  %shift.0 = phi i32 [ 6, %if.then4 ], [ 6, %entry.sw.epilog_crit_edge ], [ 3, %sw.bb6 ], [ 0, %sw.bb10 ]
  %3 = ptrtoint ptr %param_val.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %param_val.0 = load i32, ptr %param_val.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %param_val.0)
  %cmp14 = icmp slt i32 %param_val.0, 0
  br i1 %cmp14, label %sw.epilog.cleanup_crit_edge, label %if.end16

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %sw.epilog
  %rmap = getelementptr inbounds %struct.max77620_pctrl_info, ptr %mpci, i32 0, i32 2
  %4 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmap, align 4
  %shl = shl i32 %param_val.0, %shift.0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %sub, i32 noundef %mask.0, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17 = icmp slt i32 %call.i, 0
  br i1 %cmp17, label %do.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %mpci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mpci, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.42, i32 noundef %sub, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end16.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %call.i, %do.end21 ], [ %call.i, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_pinctrl_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
for.inc7.7:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call6.119 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 1, i32 noundef 131)
  %call6.1.1 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 1, i32 noundef 132)
  %call6.2.1 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 1, i32 noundef 133)
  %call6.220 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 2, i32 noundef 131)
  %call6.1.2 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 2, i32 noundef 132)
  %call6.2.2 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 2, i32 noundef 133)
  %call6.3 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 3, i32 noundef 131)
  %call6.1.3 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 3, i32 noundef 132)
  %call6.2.3 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 3, i32 noundef 133)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_pinctrl_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
for.inc7.7:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call6.119 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 1, i32 noundef 128)
  %call6.1.1 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 1, i32 noundef 129)
  %call6.2.1 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 1, i32 noundef 130)
  %call6.220 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 2, i32 noundef 128)
  %call6.1.2 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 2, i32 noundef 129)
  %call6.2.2 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 2, i32 noundef 130)
  %call6.3 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 3, i32 noundef 128)
  %call6.1.3 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 3, i32 noundef 129)
  %call6.2.3 = tail call fastcc i32 @max77620_set_fps_param(ptr noundef %1, i32 noundef 3, i32 noundef 130)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__initcall__kmod_pinctrl_max77620__210_666_max77620_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_max77620__210_666_max77620_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 666, i32 1}
!2 = !{ptr @__exitcall_max77620_pinctrl_driver_exit, !1, !"__exitcall_max77620_pinctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description211, !4, !"__UNIQUE_ID_description211", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 668, i32 1}
!5 = !{ptr @__UNIQUE_ID_author212, !6, !"__UNIQUE_ID_author212", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 669, i32 1}
!7 = !{ptr @__UNIQUE_ID_author213, !8, !"__UNIQUE_ID_author213", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 670, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias214, !10, !"__UNIQUE_ID_alias214", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 671, i32 1}
!11 = !{ptr @__UNIQUE_ID_file215, !12, !"__UNIQUE_ID_file215", i1 false, i1 false}
!12 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 672, i32 1}
!13 = !{ptr @__UNIQUE_ID_license216, !12, !"__UNIQUE_ID_license216", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 659, i32 11}
!16 = !{ptr @max77620_pinctrl_driver, !17, !"max77620_pinctrl_driver", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 657, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 592, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @max77620_pinctrl_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @max77620_pinctrl_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 119, i32 2}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 120, i32 2}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 121, i32 2}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 122, i32 2}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 123, i32 2}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 124, i32 2}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 125, i32 2}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 126, i32 2}
!42 = !{ptr @max77620_pins_desc, !43, !"max77620_pins_desc", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 118, i32 38}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 149, i32 2}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 150, i32 2}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 151, i32 2}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 152, i32 2}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 153, i32 2}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 154, i32 2}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 155, i32 2}
!58 = !{ptr @max77620_pin_function, !59, !"max77620_pin_function", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 148, i32 43}
!60 = !{ptr @gpio_groups, !61, !"gpio_groups", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 129, i32 27}
!62 = !{ptr @max77620_pingroups, !63, !"max77620_pingroups", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 166, i32 39}
!64 = !{ptr @max77620_pinctrl_desc, !65, !"max77620_pinctrl_desc", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 544, i32 28}
!66 = !{ptr @max77620_pinctrl_ops, !67, !"max77620_pinctrl_ops", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 204, i32 33}
!68 = !{ptr @max77620_pinmux_ops, !69, !"max77620_pinmux_ops", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 264, i32 32}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 252, i32 3}
!72 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @max77620_pinctrl_enable._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @max77620_pinctrl_enable._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 259, i32 3}
!77 = !{ptr @max77620_pinctrl_enable._entry.23, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @max77620_pinctrl_enable._entry_ptr.25, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @max77620_pinconf_ops, !80, !"max77620_pinconf_ops", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 539, i32 33}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 295, i32 4}
!83 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @max77620_pinconf_get._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @max77620_pinconf_get._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 305, i32 4}
!88 = !{ptr @max77620_pinconf_get._entry.28, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @max77620_pinconf_get._entry_ptr.30, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 313, i32 3}
!92 = !{ptr @max77620_pinconf_get._entry.31, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @max77620_pinconf_get._entry_ptr.33, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 510, i32 5}
!96 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @max77620_pinconf_set._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @max77620_pinconf_set._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 519, i32 5}
!101 = !{ptr @max77620_pinconf_set._entry.36, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @max77620_pinconf_set._entry_ptr.38, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @max77620_pinconf_set._entry.39, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 526, i32 4}
!105 = !{ptr @max77620_pinconf_set._entry_ptr.40, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 534, i32 2}
!108 = !{ptr @max77620_pinconf_set._entry.41, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @max77620_pinconf_set._entry_ptr.43, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 330, i32 3}
!112 = !{ptr @max77620_get_default_fps._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @max77620_get_default_fps._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 379, i32 3}
!116 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @max77620_set_fps_param._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @max77620_set_fps_param._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @max77620_set_fps_param._entry.47, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 389, i32 3}
!121 = !{ptr @max77620_set_fps_param._entry_ptr.48, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 52, i32 15}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 55, i32 15}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 58, i32 15}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 61, i32 15}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 64, i32 15}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 67, i32 15}
!134 = !{ptr @max77620_cfg_params, !135, !"max77620_cfg_params", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 50, i32 44}
!136 = !{ptr @max77620_pinctrl_pm_ops, !137, !"max77620_pinctrl_pm_ops", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 645, i32 32}
!138 = distinct !{null, !139, !"max77620_suspend_fps_param", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 600, i32 12}
!140 = distinct !{null, !141, !"max77620_active_fps_param", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 606, i32 12}
!142 = !{ptr @max77620_pinctrl_devtype, !143, !"max77620_pinctrl_devtype", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/pinctrl-max77620.c", i32 650, i32 40}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{!"auto-init"}
