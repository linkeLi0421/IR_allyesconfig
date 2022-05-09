; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-rk805.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-rk805.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.rk805_pin_function = type { ptr, ptr, i32, i32 }
%struct.rk805_pin_group = type { ptr, [1 x i32], i32 }
%struct.rk805_pin_config = type { i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rk805_pctrl_info = type { ptr, ptr, ptr, %struct.gpio_chip, %struct.pinctrl_desc, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.rk808 = type { ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_pinctrl_rk805__288_488_rk805_pinctrl_driver_init6 = internal global ptr @rk805_pinctrl_driver_init, section ".initcall6.init", align 4
@rk805_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rk805_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rk805_pinctrl_driver_exit = internal global ptr @rk805_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [60 x i8] c"pinctrl_rk805.description=RK805 pin control and GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [57 x i8] c"pinctrl_rk805.author=Joseph Chen <chenjh@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [49 x i8] c"pinctrl_rk805.file=drivers/pinctrl/pinctrl-rk805\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"pinctrl_rk805.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rk805-pinctrl\00", [18 x i8] zeroinitializer }, align 32
@rk805_pinctrl_desc = internal constant { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str, ptr null, i32 0, ptr @rk805_pinctrl_ops, ptr @rk805_pinmux_ops, ptr @rk805_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@rk805_gpio_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str.32, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @rk805_gpio_get_direction, ptr @rk805_gpio_direction_input, ptr @rk805_gpio_direction_output, ptr @rk805_gpio_get, ptr null, ptr @rk805_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -1, i16 0, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@rk805_pins_desc = internal constant { [2 x %struct.pinctrl_pin_desc], [40 x i8] } { [2 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.36, ptr null }], [40 x i8] zeroinitializer }, align 32
@rk805_pin_functions = internal constant { [1 x %struct.rk805_pin_function], [16 x i8] } { [1 x %struct.rk805_pin_function] [%struct.rk805_pin_function { ptr @.str.37, ptr @rk805_gpio_groups, i32 2, i32 0 }], [16 x i8] zeroinitializer }, align 32
@rk805_pin_groups = internal constant { [2 x %struct.rk805_pin_group], [40 x i8] } { [2 x %struct.rk805_pin_group] [%struct.rk805_pin_group { ptr @.str.35, [1 x i32] zeroinitializer, i32 1 }, %struct.rk805_pin_group { ptr @.str.36, [1 x i32] [i32 1], i32 1 }], [40 x i8] zeroinitializer }, align 32
@rk805_gpio_cfgs = internal constant { [2 x %struct.rk805_pin_config], [24 x i8] } { [2 x %struct.rk805_pin_config] [%struct.rk805_pin_config { i8 82, i8 0, i8 0, i8 1 }, %struct.rk805_pin_config { i8 82, i8 0, i8 0, i8 2 }], [24 x i8] zeroinitializer }, align 32
@rk805_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 453, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported RK805 ID %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rk805_pinctrl_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/pinctrl/pinctrl-rk805.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rk805_pinctrl_probe._entry_ptr = internal global ptr @rk805_pinctrl_probe._entry, section ".printk_index", align 4
@rk805_pinctrl_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rk805_pinctrl_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rk805_pinctrl_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Couldn't add gpiochip\0A\00", [41 x i8] zeroinitializer }, align 32
@rk805_pinctrl_probe._entry_ptr.8 = internal global ptr @rk805_pinctrl_probe._entry.6, section ".printk_index", align 4
@rk805_pinctrl_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 467, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Couldn't add pinctrl\0A\00", [42 x i8] zeroinitializer }, align 32
@rk805_pinctrl_probe._entry_ptr.11 = internal global ptr @rk805_pinctrl_probe._entry.9, section ".printk_index", align 4
@rk805_pinctrl_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 475, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't add gpiochip pin range\0A\00", [63 x i8] zeroinitializer }, align 32
@rk805_pinctrl_probe._entry_ptr.14 = internal global ptr @rk805_pinctrl_probe._entry.12, section ".printk_index", align 4
@rk805_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @rk805_pinctrl_get_groups_count, ptr @rk805_pinctrl_get_group_name, ptr @rk805_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@rk805_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @rk805_pinctrl_get_funcs_count, ptr @rk805_pinctrl_get_func_name, ptr @rk805_pinctrl_get_func_groups, ptr @rk805_pinctrl_set_mux, ptr null, ptr null, ptr @rk805_pmx_gpio_set_direction, i8 0 }, [56 x i8] zeroinitializer }, align 32
@rk805_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr @rk805_pinconf_get, ptr @rk805_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@_rk805_pinctrl_set_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 298, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set gpio%d GPIO failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_rk805_pinctrl_set_mux\00", [41 x i8] zeroinitializer }, align 32
@_rk805_pinctrl_set_mux._entry_ptr = internal global ptr @_rk805_pinctrl_set_mux._entry, section ".printk_index", align 4
@_rk805_pinctrl_set_mux._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't find function mux %d\0A\00", [33 x i8] zeroinitializer }, align 32
@_rk805_pinctrl_set_mux._entry_ptr.19 = internal global ptr @_rk805_pinctrl_set_mux._entry.17, section ".printk_index", align 4
@rk805_pmx_gpio_set_direction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set gpio%d mux failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rk805_pmx_gpio_set_direction\00", [35 x i8] zeroinitializer }, align 32
@rk805_pmx_gpio_set_direction._entry_ptr = internal global ptr @rk805_pmx_gpio_set_direction._entry, section ".printk_index", align 4
@rk805_pmx_gpio_set_direction._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 343, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"set gpio%d direction failed\0A\00", [35 x i8] zeroinitializer }, align 32
@rk805_pmx_gpio_set_direction._entry_ptr.24 = internal global ptr @rk805_pmx_gpio_set_direction._entry.22, section ".printk_index", align 4
@rk805_pinconf_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 370, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Properties not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rk805_pinconf_get\00", [46 x i8] zeroinitializer }, align 32
@rk805_pinconf_get._entry_ptr = internal global ptr @rk805_pinconf_get._entry, section ".printk_index", align 4
@rk805_gpio_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 143, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"get gpio%d value failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rk805_gpio_get\00", [17 x i8] zeroinitializer }, align 32
@rk805_gpio_get._entry_ptr = internal global ptr @rk805_gpio_get._entry, section ".printk_index", align 4
@rk805_pinconf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.29, ptr @.str.3, i32 397, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rk805_pinconf_set\00", [46 x i8] zeroinitializer }, align 32
@rk805_pinconf_set._entry_ptr = internal global ptr @rk805_pinconf_set._entry, section ".printk_index", align 4
@rk805_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 163, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"set gpio%d value %d failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rk805_gpio_set\00", [17 x i8] zeroinitializer }, align 32
@rk805_gpio_set._entry_ptr = internal global ptr @rk805_gpio_set._entry, section ".printk_index", align 4
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rk805-gpio\00", [21 x i8] zeroinitializer }, align 32
@rk805_gpio_get_direction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"get gpio%d direction failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rk805_gpio_get_direction\00", [39 x i8] zeroinitializer }, align 32
@rk805_gpio_get_direction._entry_ptr = internal global ptr @rk805_gpio_get_direction._entry, section ".printk_index", align 4
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@rk805_gpio_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.35, ptr @.str.36], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"rk805_pinctrl_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 482, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 485, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"rk805_pinctrl_desc\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 410, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"rk805_gpio_chip\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 203, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"rk805_pins_desc\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 94, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"rk805_pin_functions\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 99, i32 40 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"rk805_pin_groups\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 108, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"rk805_gpio_cfgs\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 124, i32 38 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 452, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 458, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 460, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 467, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 475, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"rk805_pinctrl_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 246, i32 33 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"rk805_pinmux_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 350, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"rk805_pinconf_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 405, i32 33 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 298, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 302, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 330, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 343, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 370, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 143, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 397, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 162, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 204, i32 13 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 193, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 95, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 96, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 101, i32 11 }
@___asan_gen_.197 = private unnamed_addr constant [18 x i8] c"rk805_gpio_groups\00", align 1
@___asan_gen_.198 = private constant [35 x i8] c"../drivers/pinctrl/pinctrl-rk805.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 88, i32 26 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_rk805_pinctrl_driver_exit, ptr @__initcall__kmod_pinctrl_rk805__288_488_rk805_pinctrl_driver_init6, ptr @_rk805_pinctrl_set_mux._entry, ptr @_rk805_pinctrl_set_mux._entry.17, ptr @_rk805_pinctrl_set_mux._entry_ptr, ptr @_rk805_pinctrl_set_mux._entry_ptr.19, ptr @rk805_gpio_get._entry, ptr @rk805_gpio_get._entry_ptr, ptr @rk805_gpio_get_direction._entry, ptr @rk805_gpio_get_direction._entry_ptr, ptr @rk805_gpio_set._entry, ptr @rk805_gpio_set._entry_ptr, ptr @rk805_pinconf_get._entry, ptr @rk805_pinconf_get._entry_ptr, ptr @rk805_pinconf_set._entry, ptr @rk805_pinconf_set._entry_ptr, ptr @rk805_pinctrl_driver_exit, ptr @rk805_pinctrl_probe._entry, ptr @rk805_pinctrl_probe._entry.12, ptr @rk805_pinctrl_probe._entry.6, ptr @rk805_pinctrl_probe._entry.9, ptr @rk805_pinctrl_probe._entry_ptr, ptr @rk805_pinctrl_probe._entry_ptr.11, ptr @rk805_pinctrl_probe._entry_ptr.14, ptr @rk805_pinctrl_probe._entry_ptr.8, ptr @rk805_pmx_gpio_set_direction._entry, ptr @rk805_pmx_gpio_set_direction._entry.22, ptr @rk805_pmx_gpio_set_direction._entry_ptr, ptr @rk805_pmx_gpio_set_direction._entry_ptr.24, ptr @rk805_pinctrl_driver, ptr @.str, ptr @rk805_pinctrl_desc, ptr @rk805_gpio_chip, ptr @rk805_pins_desc, ptr @rk805_pin_functions, ptr @rk805_pin_groups, ptr @rk805_gpio_cfgs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rk805_pinctrl_probe.lock_key, ptr @rk805_pinctrl_probe.request_key, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @rk805_pinctrl_ops, ptr @rk805_pinmux_ops, ptr @rk805_pinconf_ops, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @rk805_gpio_groups], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_gpio_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pins_desc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pin_functions to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pin_groups to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_gpio_cfgs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pinctrl_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pinctrl_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pinctrl_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pinctrl_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pinctrl_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rk805_pinctrl_set_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rk805_pinctrl_set_mux._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pmx_gpio_set_direction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pmx_gpio_set_direction._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pinconf_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_gpio_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pinconf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_gpio_get_direction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_gpio_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rk805_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rk805_pinctrl_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rk805_pinctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rk805_pinctrl_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk805_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call ptr @dev_fwnode(ptr noundef %1) #6
  tail call void @device_set_node(ptr noundef %dev, ptr noundef %call) #6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 432, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev5 = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev5, align 4
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %call.i, align 4
  %pinctrl_desc = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 4
  %8 = call ptr @memcpy(ptr %pinctrl_desc, ptr @rk805_pinctrl_desc, i32 44)
  %gpio_chip = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %gpio_chip, ptr @rk805_gpio_chip, i32 348)
  %parent11 = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %parent11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent11, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %variant = getelementptr inbounds %struct.rk808, ptr %6, i32 0, i32 3
  %12 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %variant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32848, i32 %13)
  %cond = icmp eq i32 %13, 32848
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %if.end
  %pins = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rk805_pins_desc, ptr %pins, align 4
  %num_pins = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 10
  %15 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %num_pins, align 4
  %functions = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %functions to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rk805_pin_functions, ptr %functions, align 4
  %num_functions = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %num_functions to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %num_functions, align 4
  %groups = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rk805_pin_groups, ptr %groups, align 4
  %num_pin_groups = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %num_pin_groups to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %num_pin_groups, align 4
  %pins14 = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %pins14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rk805_pins_desc, ptr %pins14, align 4
  %npins = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %npins, align 4
  %pin_cfg = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 11
  %22 = ptrtoint ptr %pin_cfg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @rk805_gpio_cfgs, ptr %pin_cfg, align 4
  %ngpio = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 3, i32 20
  %23 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2, ptr %ngpio, align 4
  %call22 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef %gpio_chip, ptr noundef nonnull %call.i, ptr noundef nonnull @rk805_pinctrl_probe.lock_key, ptr noundef nonnull @rk805_pinctrl_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %do.end26, label %if.end28

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %13) #9
  br label %cleanup

do.end26:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end28:                                         ; preds = %sw.bb
  %call31 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef %pinctrl_desc, ptr noundef nonnull %call.i) #6
  %pctl = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %pctl to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call31, ptr %pctl, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end37, label %if.end41

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  %25 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pctl, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end28
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end41.dev_name.exit_crit_edge

if.end41.dev_name.exit_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end41.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %31, %if.end.i ], [ %29, %if.end41.dev_name.exit_crit_edge ]
  %32 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %33 to i32
  %call47 = tail call i32 @gpiochip_add_pin_range(ptr noundef %gpio_chip, ptr noundef %retval.0.i, i32 noundef 0, i32 noundef 0, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.end53, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end53:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %dev_name.exit.cleanup_crit_edge, %do.end37, %do.end26, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %do.end26 ], [ %27, %do.end37 ], [ %call47, %do.end53 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk805_pinctrl_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %num_pin_groups = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %num_pin_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pin_groups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rk805_pinctrl_get_group_name(ptr noundef %pctldev, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %groups = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.rk805_pin_group, ptr %1, i32 %group
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk805_pinctrl_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %groups = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.rk805_pin_group, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pins1, ptr %pins, align 4
  %3 = load ptr, ptr %groups, align 4
  %npins = getelementptr %struct.rk805_pin_group, ptr %3, i32 %group, i32 2
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
define internal i32 @rk805_pinctrl_get_funcs_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %num_functions = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_functions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rk805_pinctrl_get_func_name(ptr noundef %pctldev, i32 noundef %function) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %functions = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.rk805_pin_function, ptr %1, i32 %function
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk805_pinctrl_get_func_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %functions = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.rk805_pin_function, ptr %1, i32 %function, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %functions, align 4
  %ngroups = getelementptr %struct.rk805_pin_function, ptr %5, i32 %function, i32 2
  %6 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ngroups, align 4
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk805_pinctrl_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %functions = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %mux_option = getelementptr %struct.rk805_pin_function, ptr %1, i32 %function, i32 3
  %2 = ptrtoint ptr %mux_option to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mux_option, align 4
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %pin_cfg.i = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 11
  %4 = ptrtoint ptr %pin_cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_cfg.i, align 4
  %arrayidx.i = getelementptr %struct.rk805_pin_config, ptr %5, i32 %group
  %fun_msk.i = getelementptr %struct.rk805_pin_config, ptr %5, i32 %group, i32 1
  %6 = ptrtoint ptr %fun_msk.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fun_msk.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry._rk805_pinctrl_set_mux.exit_crit_edge, label %if.end.i

entry._rk805_pinctrl_set_mux.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rk805_pinctrl_set_mux.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then1.i, label %do.end18.i

if.then1.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %regmap.i = getelementptr inbounds %struct.rk808, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  %conv7.i = zext i8 %7 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %conv.i, i32 noundef %conv7.i, i32 noundef %conv7.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not.i, label %if.then1.i._rk805_pinctrl_set_mux.exit_crit_edge, label %do.end.i

if.then1.i._rk805_pinctrl_set_mux.exit_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rk805_pinctrl_set_mux.exit

do.end.i:                                         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.15, i32 noundef %group) #9
  br label %_rk805_pinctrl_set_mux.exit

do.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev19.i = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev19.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.18, i32 noundef %3) #9
  br label %_rk805_pinctrl_set_mux.exit

_rk805_pinctrl_set_mux.exit:                      ; preds = %do.end18.i, %do.end.i, %if.then1.i._rk805_pinctrl_set_mux.exit_crit_edge, %entry._rk805_pinctrl_set_mux.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %do.end.i ], [ -22, %do.end18.i ], [ 0, %entry._rk805_pinctrl_set_mux.exit_crit_edge ], [ 0, %if.then1.i._rk805_pinctrl_set_mux.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk805_pmx_gpio_set_direction(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset, i1 noundef zeroext %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %pin_cfg.i = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 11
  %0 = ptrtoint ptr %pin_cfg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin_cfg.i, align 4
  %fun_msk.i = getelementptr %struct.rk805_pin_config, ptr %1, i32 %offset, i32 1
  %2 = ptrtoint ptr %fun_msk.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fun_msk.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.rk805_pin_config, ptr %1, i32 %offset
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %regmap.i = getelementptr inbounds %struct.rk808, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %conv7.i = zext i8 %3 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %conv.i, i32 noundef %conv7.i, i32 noundef %conv7.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not.i, label %if.end.i.if.end_crit_edge, label %do.end

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef %offset) #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %pin_cfg = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 11
  %12 = ptrtoint ptr %pin_cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pin_cfg, align 4
  %dir_msk = getelementptr %struct.rk805_pin_config, ptr %13, i32 %offset, i32 2
  %14 = ptrtoint ptr %dir_msk to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dir_msk, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not = icmp eq i8 %15, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.rk805_pin_config, ptr %13, i32 %offset
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  %regmap = getelementptr inbounds %struct.rk808, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %21 to i32
  %conv10 = zext i8 %15 to i32
  %spec.select = select i1 %input, i32 0, i32 %conv10
  %call.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %conv, i32 noundef %conv10, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool18.not = icmp eq i32 %call.i43, 0
  br i1 %tobool18.not, label %if.end4.cleanup_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end4.cleanup.sink.split_crit_edge, %do.end
  %.str.23.sink = phi ptr [ @.str.20, %do.end ], [ @.str.23, %if.end4.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i.i, %do.end ], [ %call.i43, %if.end4.cleanup.sink.split_crit_edge ]
  %dev23 = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 1
  %22 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull %.str.23.sink, i32 noundef %offset) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk805_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and.i)
  %cond = icmp eq i32 %and.i, 17
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  %gpio_chip = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 3
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gpio_chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !116
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %regmap.i = getelementptr inbounds %struct.rk808, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %pin_cfg.i = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 11
  %7 = ptrtoint ptr %pin_cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pin_cfg.i, align 4
  %arrayidx.i = getelementptr %struct.rk805_pin_config, ptr %8, i32 %pin
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  %call1.i = call i32 @regmap_read(ptr noundef %6, i32 noundef %conv.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.27, i32 noundef %pin) #9
  br label %rk805_gpio_get.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %15 = ptrtoint ptr %pin_cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pin_cfg.i, align 4
  %val_msk.i = getelementptr %struct.rk805_pin_config, ptr %16, i32 %pin, i32 3
  %17 = ptrtoint ptr %val_msk.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val_msk.i, align 1
  %conv4.i = zext i8 %18 to i32
  %and.i10 = and i32 %14, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool5.i = icmp ne i32 %and.i10, 0
  %lnot.ext.i = zext i1 %tobool5.i to i32
  br label %rk805_gpio_get.exit

rk805_gpio_get.exit:                              ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call1.i, %do.end.i ], [ %lnot.ext.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %conv3 = shl i32 %retval.0.i, 8
  %shl.i = and i32 %conv3, 16776960
  %or.i = or i32 %shl.i, 17
  %19 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.25) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %rk805_gpio_get.exit
  %retval.0 = phi i32 [ 0, %rk805_gpio_get.exit ], [ -524, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk805_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp15.not = icmp eq i32 %num_configs, 0
  br i1 %cmp15.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %gpio_chip = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %rk805_gpio_set.exit.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %rk805_gpio_set.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.016
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %1, 255
  %shr.i = lshr i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and.i)
  %cond = icmp eq i32 %and.i, 17
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %for.body
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gpio_chip) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %regmap.i = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %pin_cfg.i = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %pin_cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pin_cfg.i, align 4
  %arrayidx.i = getelementptr %struct.rk805_pin_config, ptr %7, i32 %pin
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %val_msk.i = getelementptr %struct.rk805_pin_config, ptr %7, i32 %pin, i32 3
  %10 = ptrtoint ptr %val_msk.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val_msk.i, align 1
  %conv3.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %tobool.not.i = icmp ult i32 %1, 256
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %conv3.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %sw.bb.rk805_gpio_set.exit_crit_edge, label %do.end.i

sw.bb.rk805_gpio_set.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk805_gpio_set.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.30, i32 noundef %pin, i32 noundef %shr.i) #9
  br label %rk805_gpio_set.exit

rk805_gpio_set.exit:                              ; preds = %do.end.i, %sw.bb.rk805_gpio_set.exit_crit_edge
  %call4 = tail call i32 @rk805_pmx_gpio_set_direction(ptr noundef %pctldev, ptr noundef null, i32 noundef %pin, i1 noundef zeroext false)
  %inc = add nuw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %rk805_gpio_set.exit.cleanup_crit_edge, label %rk805_gpio_set.exit.for.body_crit_edge

rk805_gpio_set.exit.for.body_crit_edge:           ; preds = %rk805_gpio_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

rk805_gpio_set.exit.cleanup_crit_edge:            ; preds = %rk805_gpio_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.25) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %rk805_gpio_set.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %rk805_gpio_set.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk805_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !116
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %regmap = getelementptr inbounds %struct.rk808, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %pin_cfg = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 11
  %5 = ptrtoint ptr %pin_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pin_cfg, align 4
  %arrayidx = getelementptr %struct.rk805_pin_config, ptr %6, i32 %offset
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef %conv, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.27, i32 noundef %offset) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %13 = ptrtoint ptr %pin_cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pin_cfg, align 4
  %val_msk = getelementptr %struct.rk805_pin_config, ptr %14, i32 %offset, i32 3
  %15 = ptrtoint ptr %val_msk to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val_msk, align 1
  %conv4 = zext i8 %16 to i32
  %and = and i32 %12, %conv4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5 = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %lnot.ext, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk805_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %regmap = getelementptr inbounds %struct.rk808, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %pin_cfg = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 11
  %4 = ptrtoint ptr %pin_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_cfg, align 4
  %arrayidx = getelementptr %struct.rk805_pin_config, ptr %5, i32 %offset
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %val_msk = getelementptr %struct.rk805_pin_config, ptr %5, i32 %offset, i32 3
  %8 = ptrtoint ptr %val_msk to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val_msk, align 1
  %conv3 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %conv3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %conv, i32 noundef %conv3, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.30, i32 noundef %offset, i32 noundef %value) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk805_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !116
  %pin_cfg = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 11
  %1 = ptrtoint ptr %pin_cfg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pin_cfg, align 4
  %dir_msk = getelementptr %struct.rk805_pin_config, ptr %2, i32 %offset, i32 2
  %3 = ptrtoint ptr %dir_msk to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dir_msk, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.rk805_pin_config, ptr %2, i32 %offset
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %regmap = getelementptr inbounds %struct.rk808, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %call3 = call i32 @regmap_read(ptr noundef %8, i32 noundef %conv, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.33, i32 noundef %offset) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %15 = ptrtoint ptr %pin_cfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pin_cfg, align 4
  %dir_msk9 = getelementptr %struct.rk805_pin_config, ptr %16, i32 %offset, i32 2
  %17 = ptrtoint ptr %dir_msk9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dir_msk9, align 1
  %conv10 = zext i8 %18 to i32
  %and = and i32 %14, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %. = zext i1 %tobool11.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %., %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk805_gpio_direction_input(ptr nocapture noundef readonly %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  %call = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk805_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %regmap.i = getelementptr inbounds %struct.rk808, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %pin_cfg.i = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 11
  %4 = ptrtoint ptr %pin_cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_cfg.i, align 4
  %arrayidx.i = getelementptr %struct.rk805_pin_config, ptr %5, i32 %offset
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %val_msk.i = getelementptr %struct.rk805_pin_config, ptr %5, i32 %offset, i32 3
  %8 = ptrtoint ptr %val_msk.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val_msk.i, align 1
  %conv3.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %conv3.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %entry.rk805_gpio_set.exit_crit_edge, label %do.end.i

entry.rk805_gpio_set.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk805_gpio_set.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rk805_pctrl_info, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.30, i32 noundef %offset, i32 noundef %value) #9
  br label %rk805_gpio_set.exit

rk805_gpio_set.exit:                              ; preds = %do.end.i, %entry.rk805_gpio_set.exit_crit_edge
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base, align 4
  %add = add i32 %13, %offset
  %call = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %add) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !86, !88, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_pinctrl_rk805__288_488_rk805_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_rk805__288_488_rk805_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 488, i32 1}
!2 = !{ptr @__exitcall_rk805_pinctrl_driver_exit, !1, !"__exitcall_rk805_pinctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 490, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 491, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 492, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 485, i32 11}
!12 = !{ptr @rk805_pinctrl_driver, !13, !"rk805_pinctrl_driver", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 482, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 452, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rk805_pinctrl_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rk805_pinctrl_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @rk805_pinctrl_probe.lock_key, !23, !"lock_key", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 458, i32 8}
!24 = !{ptr @rk805_pinctrl_probe.request_key, !23, !"request_key", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 460, i32 3}
!27 = !{ptr @rk805_pinctrl_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rk805_pinctrl_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 467, i32 3}
!31 = !{ptr @rk805_pinctrl_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @rk805_pinctrl_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 475, i32 3}
!35 = !{ptr @rk805_pinctrl_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rk805_pinctrl_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @rk805_pinctrl_desc, !38, !"rk805_pinctrl_desc", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 410, i32 34}
!39 = !{ptr @rk805_pinctrl_ops, !40, !"rk805_pinctrl_ops", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 246, i32 33}
!41 = !{ptr @rk805_pinmux_ops, !42, !"rk805_pinmux_ops", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 350, i32 32}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 298, i32 4}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @_rk805_pinctrl_set_mux._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @_rk805_pinctrl_set_mux._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 302, i32 3}
!50 = !{ptr @_rk805_pinctrl_set_mux._entry.17, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @_rk805_pinctrl_set_mux._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 330, i32 3}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rk805_pmx_gpio_set_direction._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @rk805_pmx_gpio_set_direction._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 343, i32 3}
!59 = !{ptr @rk805_pmx_gpio_set_direction._entry.22, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rk805_pmx_gpio_set_direction._entry_ptr.24, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @rk805_pinconf_ops, !62, !"rk805_pinconf_ops", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 405, i32 33}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 370, i32 3}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rk805_pinconf_get._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @rk805_pinconf_get._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 143, i32 3}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rk805_gpio_get._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @rk805_gpio_get._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 397, i32 4}
!75 = !{ptr @rk805_pinconf_set._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rk805_pinconf_set._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 162, i32 3}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @rk805_gpio_set._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @rk805_gpio_set._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 204, i32 13}
!84 = !{ptr @rk805_gpio_chip, !85, !"rk805_gpio_chip", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 203, i32 31}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 193, i32 3}
!88 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @rk805_gpio_get_direction._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @rk805_gpio_get_direction._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 95, i32 2}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 96, i32 2}
!95 = !{ptr @rk805_pins_desc, !96, !"rk805_pins_desc", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 94, i32 38}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 101, i32 11}
!99 = !{ptr @rk805_pin_functions, !100, !"rk805_pin_functions", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 99, i32 40}
!101 = !{ptr @rk805_gpio_groups, !102, !"rk805_gpio_groups", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 88, i32 26}
!103 = !{ptr @rk805_pin_groups, !104, !"rk805_pin_groups", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 108, i32 37}
!105 = !{ptr @rk805_gpio_cfgs, !106, !"rk805_gpio_cfgs", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/pinctrl-rk805.c", i32 124, i32 38}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{!"auto-init"}
