; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/bcm/pinctrl-nsp-gpio.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c"
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
%struct.atomic_t = type { i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.nsp_gpio = type { ptr, ptr, ptr, %struct.irq_chip, %struct.gpio_chip, ptr, %struct.pinctrl_desc, %struct.raw_spinlock }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_pinctrl_nsp_gpio__233_722_nsp_gpio_init3s = internal global ptr @nsp_gpio_init, section ".initcall3s.init", align 4
@nsp_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nsp_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nsp_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nsp-gpio-a\00", [21 x i8] zeroinitializer }, align 32
@nsp_gpio_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,nsp-gpio-a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@nsp_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 621, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Missing ngpios OF property\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nsp_gpio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/pinctrl/bcm/pinctrl-nsp-gpio.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nsp_gpio_probe._entry_ptr = internal global ptr @nsp_gpio_probe._entry, section ".printk_index", align 4
@nsp_gpio_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 634, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to map I/O memory\0A\00", [38 x i8] zeroinitializer }, align 32
@nsp_gpio_probe._entry_ptr.9 = internal global ptr @nsp_gpio_probe._entry.7, section ".printk_index", align 4
@nsp_gpio_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 640, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@nsp_gpio_probe._entry_ptr.11 = internal global ptr @nsp_gpio_probe._entry.10, section ".printk_index", align 4
@nsp_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio-a\00", [25 x i8] zeroinitializer }, align 32
@nsp_gpio_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 681, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to request IRQ%d: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@nsp_gpio_probe._entry_ptr.16 = internal global ptr @nsp_gpio_probe._entry.14, section ".printk_index", align 4
@nsp_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nsp_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nsp_gpio_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 697, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to add GPIO chip\0A\00", [39 x i8] zeroinitializer }, align 32
@nsp_gpio_probe._entry_ptr.19 = internal global ptr @nsp_gpio_probe._entry.17, section ".printk_index", align 4
@nsp_gpio_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 703, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to register pinconf\0A\00", [36 x i8] zeroinitializer }, align 32
@nsp_gpio_probe._entry_ptr.22 = internal global ptr @nsp_gpio_probe._entry.20, section ".printk_index", align 4
@nsp_gpio_direction_input.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pinctrl_nsp_gpio\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nsp_gpio_direction_input\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpio:%u set input\0A\00", [45 x i8] zeroinitializer }, align 32
@nsp_gpio_direction_output.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nsp_gpio_direction_output\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gpio:%u set output, value:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@nsp_gpio_set.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 80, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nsp_gpio_set\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gpio:%u set, value:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@nsp_gpio_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 251, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid GPIO IRQ type 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nsp_gpio_irq_set_type\00", [42 x i8] zeroinitializer }, align 32
@nsp_gpio_irq_set_type._entry_ptr = internal global ptr @nsp_gpio_irq_set_type._entry, section ".printk_index", align 4
@nsp_gpio_irq_set_type.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 66, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"gpio:%u level_low:%s falling:%s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio-%d\00", [24 x i8] zeroinitializer }, align 32
@nsp_pctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @nsp_get_groups_count, ptr @nsp_get_group_name, ptr null, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@nsp_pconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @nsp_pin_config_get, ptr @nsp_pin_config_set, ptr @nsp_pin_config_group_get, ptr @nsp_pin_config_group_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nsp_gpio_register_pinconf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 600, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to register pinctrl device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nsp_gpio_register_pinconf\00", [38 x i8] zeroinitializer }, align 32
@nsp_gpio_register_pinconf._entry_ptr = internal global ptr @nsp_gpio_register_pinconf._entry, section ".printk_index", align 4
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_grp\00", [23 x i8] zeroinitializer }, align 32
@nsp_pin_config_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 550, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid configuration\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nsp_pin_config_set\00", [45 x i8] zeroinitializer }, align 32
@nsp_pin_config_set._entry_ptr = internal global ptr @nsp_pin_config_set._entry, section ".printk_index", align 4
@nsp_gpio_set_pull.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nsp_gpio_set_pull\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"gpio:%u set pullup:%d pulldown: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@nsp_gpio_set_strength.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 0, i8 100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nsp_gpio_set_strength\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"gpio:%u set drive strength:%d mA\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 3, i64 5, i64 9, i64 24]
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"nsp_gpio_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 710, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 712, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"nsp_gpio_of_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 607, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 620, i32 46 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 621, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 634, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 640, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 644, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 666, i32 16 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 680, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 695, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 697, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 703, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 280, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 295, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 321, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 250, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 266, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 588, i32 12 }
@___asan_gen_.161 = private unnamed_addr constant [14 x i8] c"nsp_pctrl_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 346, i32 33 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"nsp_pconf_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 559, i32 33 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 600, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 343, i32 9 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 550, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 373, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [42 x i8] c"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 402, i32 2 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__initcall__kmod_pinctrl_nsp_gpio__233_722_nsp_gpio_init3s, ptr @nsp_gpio_irq_set_type._entry, ptr @nsp_gpio_irq_set_type._entry_ptr, ptr @nsp_gpio_probe._entry, ptr @nsp_gpio_probe._entry.10, ptr @nsp_gpio_probe._entry.14, ptr @nsp_gpio_probe._entry.17, ptr @nsp_gpio_probe._entry.20, ptr @nsp_gpio_probe._entry.7, ptr @nsp_gpio_probe._entry_ptr, ptr @nsp_gpio_probe._entry_ptr.11, ptr @nsp_gpio_probe._entry_ptr.16, ptr @nsp_gpio_probe._entry_ptr.19, ptr @nsp_gpio_probe._entry_ptr.22, ptr @nsp_gpio_probe._entry_ptr.9, ptr @nsp_gpio_register_pinconf._entry, ptr @nsp_gpio_register_pinconf._entry_ptr, ptr @nsp_pin_config_set._entry, ptr @nsp_pin_config_set._entry_ptr, ptr @nsp_gpio_driver, ptr @.str, ptr @nsp_gpio_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @nsp_gpio_probe.__key, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @nsp_gpio_probe.lock_key, ptr @nsp_gpio_probe.request_key, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @nsp_pctrl_ops, ptr @nsp_pconf_ops, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_gpio_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_gpio_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_gpio_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_gpio_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_gpio_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_gpio_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_gpio_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_gpio_register_pinconf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pin_config_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_gpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nsp_gpio_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !103
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %cleanup76

if.end:                                           ; preds = %entry
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 588, i32 noundef 3520) #8
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup76_crit_edge, label %if.end7

if.end.cleanup76_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup76

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call9 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup76

if.end18:                                         ; preds = %if.end7
  %call19 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #8
  %io_ctrl = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %io_ctrl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call19, ptr %io_ctrl, align 4
  %cmp.i145 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %do.end25, label %do.body29

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  %10 = ptrtoint ptr %io_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_ctrl, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup76

do.body29:                                        ; preds = %if.end18
  %lock = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 7
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @nsp_gpio_probe.__key, i16 noundef signext 2) #8
  %gc32 = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4
  %base33 = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 19
  %13 = ptrtoint ptr %base33 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %base33, align 4
  %can_sleep = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 23
  %14 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %can_sleep, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %conv = trunc i32 %16 to i16
  %ngpio = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 20
  %17 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %ngpio, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body29.dev_name.exit_crit_edge

do.body29.dev_name.exit_crit_edge:                ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body29.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %21, %if.end.i ], [ %19, %do.body29.dev_name.exit_crit_edge ]
  %22 = ptrtoint ptr %gc32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %retval.0.i, ptr %gc32, align 4
  %parent = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev1, ptr %parent, align 4
  %request = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 5
  %24 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @gpiochip_generic_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 6
  %25 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @gpiochip_generic_free, ptr %free, align 4
  %direction_input = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 8
  %26 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @nsp_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 9
  %27 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @nsp_gpio_direction_output, ptr %direction_output, align 4
  %get_direction = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 7
  %28 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @nsp_gpio_get_direction, ptr %get_direction, align 4
  %set = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 12
  %29 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @nsp_gpio_set, ptr %set, align 4
  %get = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 10
  %30 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @nsp_gpio_get, ptr %get, align 4
  %call35 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp = icmp sgt i32 %call35, 0
  br i1 %cmp, label %if.then37, label %dev_name.exit.if.end59_crit_edge

dev_name.exit.if.end59_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then37:                                        ; preds = %dev_name.exit
  %name = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.13, ptr %name, align 4
  %irq_ack = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 3, i32 6
  %32 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @nsp_gpio_irq_ack, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 3, i32 7
  %33 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @nsp_gpio_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 3, i32 9
  %34 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @nsp_gpio_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 3, i32 13
  %35 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @nsp_gpio_irq_set_type, ptr %irq_set_type, align 4
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 4
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  %39 = or i32 %38, 16777216
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr45 = getelementptr i8, ptr %46, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %44) #8, !srcloc !107
  %call.i146 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call35, ptr noundef nonnull @nsp_gpio_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.13, ptr noundef %gc32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool48.not = icmp eq i32 %call.i146, 0
  br i1 %tobool48.not, label %if.end54, label %do.end52

do.end52:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call35, i32 noundef %call.i146) #11
  br label %cleanup76

if.end54:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %irqchip = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 3
  %irq56 = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 37
  %47 = ptrtoint ptr %irq56 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %irqchip, ptr %irq56, align 4
  %parent_handler = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 37, i32 13
  %48 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 37, i32 15
  %49 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 37, i32 16
  %50 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %parents, align 4
  %default_type = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 37, i32 10
  %51 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 4, i32 37, i32 9
  %52 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @handle_bad_irq, ptr %handler, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end54, %dev_name.exit.if.end59_crit_edge
  %call61 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef %gc32, ptr noundef nonnull %call.i, ptr noundef nonnull @nsp_gpio_probe.lock_key, ptr noundef nonnull @nsp_gpio_probe.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %do.end67, label %if.end68

do.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #11
  br label %cleanup76

if.end68:                                         ; preds = %if.end59
  %pctldesc1.i = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 6
  %53 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %ngpio, align 4
  %conv.i = zext i16 %54 to i32
  %55 = mul nuw nsw i32 %conv.i, 12
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %57, i32 noundef %55, i32 noundef 3520) #8
  %tobool.not.i147 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i147, label %if.end68.do.end74_crit_edge, label %for.cond.preheader.i

if.end68.do.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end74

for.cond.preheader.i:                             ; preds = %if.end68
  %58 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp63.not.i = icmp eq i16 %59, 0
  br i1 %cmp63.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.064.i, 1
  %60 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ngpio, align 4
  %conv4.i = zext i16 %61 to i32
  %cmp.i148 = icmp ult i32 %inc.i, %conv4.i
  br i1 %cmp.i148, label %for.cond.i.for.body.i_crit_edge, label %for.end.i.loopexit

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.064.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i.i, i32 %i.064.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %i.064.i, ptr %arrayidx.i, align 4
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %call7.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %64, i32 noundef 3264, ptr noundef nonnull @.str.35, i32 noundef %i.064.i) #8
  %name.i = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i.i, i32 %i.064.i, i32 1
  %65 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i, ptr %name.i, align 4
  %tobool11.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool11.not.i, label %for.body.i.do.end74_crit_edge, label %for.cond.i

for.body.i.do.end74_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end74

for.end.i.loopexit:                               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.le = zext i16 %61 to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %conv4.i.le, %for.end.i.loopexit ]
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.end.i.dev_name.exit.i_crit_edge

for.end.i.dev_name.exit.i_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %67, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %for.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %71, %if.end.i.i ], [ %69, %for.end.i.dev_name.exit.i_crit_edge ]
  %72 = ptrtoint ptr %pctldesc1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %retval.0.i.i, ptr %pctldesc1.i, align 4
  %pctlops.i = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 6, i32 3
  %73 = ptrtoint ptr %pctlops.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @nsp_pctrl_ops, ptr %pctlops.i, align 4
  %pins17.i = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 6, i32 1
  %74 = ptrtoint ptr %pins17.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call5.i.i.i, ptr %pins17.i, align 4
  %npins.i = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 6, i32 2
  %75 = ptrtoint ptr %npins.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %.lcssa.i, ptr %npins.i, align 4
  %confops.i = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 6, i32 5
  %76 = ptrtoint ptr %confops.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @nsp_pconf_ops, ptr %confops.i, align 4
  %call21.i = call ptr @devm_pinctrl_register(ptr noundef %67, ptr noundef %pctldesc1.i, ptr noundef nonnull %call.i) #8
  %pctl.i = getelementptr inbounds %struct.nsp_gpio, ptr %call.i, i32 0, i32 5
  %77 = ptrtoint ptr %pctl.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call21.i, ptr %pctl.i, align 4
  %cmp.i.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %nsp_gpio_register_pinconf.exit, label %dev_name.exit.i.cleanup76_crit_edge

dev_name.exit.i.cleanup76_crit_edge:              ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup76

nsp_gpio_register_pinconf.exit:                   ; preds = %dev_name.exit.i
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.36) #11
  %80 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pctl.i, align 4
  %82 = ptrtoint ptr %81 to i32
  %tobool70.not = icmp eq ptr %81, null
  br i1 %tobool70.not, label %nsp_gpio_register_pinconf.exit.cleanup76_crit_edge, label %nsp_gpio_register_pinconf.exit.do.end74_crit_edge

nsp_gpio_register_pinconf.exit.do.end74_crit_edge: ; preds = %nsp_gpio_register_pinconf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end74

nsp_gpio_register_pinconf.exit.cleanup76_crit_edge: ; preds = %nsp_gpio_register_pinconf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup76

do.end74:                                         ; preds = %nsp_gpio_register_pinconf.exit.do.end74_crit_edge, %for.body.i.do.end74_crit_edge, %if.end68.do.end74_crit_edge
  %retval.0.i149152 = phi i32 [ %82, %nsp_gpio_register_pinconf.exit.do.end74_crit_edge ], [ -12, %if.end68.do.end74_crit_edge ], [ -12, %for.body.i.do.end74_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #11
  br label %cleanup76

cleanup76:                                        ; preds = %do.end74, %nsp_gpio_register_pinconf.exit.cleanup76_crit_edge, %dev_name.exit.i.cleanup76_crit_edge, %do.end67, %do.end52, %do.end25, %do.end15, %if.end.cleanup76_crit_edge, %do.end
  %retval.1 = phi i32 [ -19, %do.end ], [ %8, %do.end15 ], [ %12, %do.end25 ], [ %call61, %do.end67 ], [ %retval.0.i149152, %do.end74 ], [ -12, %if.end.cleanup76_crit_edge ], [ %call.i146, %do.end52 ], [ 0, %nsp_gpio_register_pinconf.exit.cleanup76_crit_edge ], [ 0, %dev_name.exit.i.cleanup76_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_gpio_direction_input(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %lock = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 7
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base.i = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %base_address.0.i = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %base_address.0.i, i32 72
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !104
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %shl.i = shl nuw i32 1, %gpio
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %2, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #8, !srcloc !107
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nsp_gpio_direction_input.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nsp_gpio_direction_input, %do.end18)) #8
          to label %if.then [label %do.end18], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nsp_gpio_direction_input.__UNIQUE_ID_ddebug228, ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef %gpio) #8
  br label %do.end18

do.end18:                                         ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_gpio_direction_output(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %lock = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 7
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base.i = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %base_address.0.i = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %base_address.0.i, i32 72
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !104
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %shl.i = shl nuw i32 1, %gpio
  %or.i = or i32 %2, %shl.i
  %neg.i = xor i32 %shl.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #8, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %base_address.0.i31 = load ptr, ptr %base.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %base_address.0.i31, i32 68
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #8, !srcloc !104
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %or.i34 = or i32 %6, %shl.i
  %and.i36 = and i32 %6, %neg.i
  %val.0.i = select i1 %tobool.not, i32 %and.i36, i32 %or.i34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %7) #8, !srcloc !107
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nsp_gpio_direction_output.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nsp_gpio_direction_output, %do.end21)) #8
          to label %if.then [label %do.end21], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nsp_gpio_direction_output.__UNIQUE_ID_ddebug229, ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef %gpio, i32 noundef %val) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_gpio_get_direction(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %lock = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 7
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base.i = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #8
  %3 = xor i32 %2, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = lshr i32 %4, %gpio
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsp_gpio_set(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %lock = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 7
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %base.i = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %base_address.0.i = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %base_address.0.i, i32 68
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !104
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %shl.i = shl nuw i32 1, %gpio
  %or.i = or i32 %2, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %2, %neg.i
  %val.0.i = select i1 %tobool.not, i32 %and.i, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #8, !srcloc !107
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nsp_gpio_set.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nsp_gpio_set, %do.end21)) #8
          to label %if.then [label %do.end21], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nsp_gpio_set.__UNIQUE_ID_ddebug230, ptr noundef %5, ptr noundef nonnull @.str.29, i32 noundef %gpio, i32 noundef %val) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_gpio_get(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %base = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !104
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  %4 = lshr i32 %3, %gpio
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsp_gpio_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %5) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %irq_get_trigger_type.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

irq_get_trigger_type.exit:                        ; preds = %entry
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %irq_get_trigger_type.exit.if.end_crit_edge, label %do.body

irq_get_trigger_type.exit.if.end_crit_edge:       ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body:                                          ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl nuw i32 1, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.nsp_gpio, ptr %call1, i32 0, i32 1
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #8, !srcloc !107
  br label %if.end

if.end:                                           ; preds = %do.body, %irq_get_trigger_type.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsp_gpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %lock = getelementptr inbounds %struct.nsp_gpio, ptr %call1, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  tail call fastcc void @nsp_gpio_irq_set_mask(ptr noundef %d, i1 noundef zeroext false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsp_gpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %lock = getelementptr inbounds %struct.nsp_gpio, ptr %call1, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  tail call fastcc void @nsp_gpio_irq_set_mask(ptr noundef %d, i1 noundef zeroext true)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_gpio_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %lock = getelementptr inbounds %struct.nsp_gpio, ptr %call1, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base.i = getelementptr inbounds %struct.nsp_gpio, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %5, i32 100
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !104
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %shl9.i = shl nuw i32 1, %3
  %and10.i = and i32 %7, %shl9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %retval.0.i76 = icmp ne i32 %and10.i, 0
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr5.i78 = getelementptr i8, ptr %9, i32 80
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i78) #8, !srcloc !104
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %and10.i80 = and i32 %11, %shl9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i80)
  %retval.0.i81 = icmp ne i32 %and10.i80, 0
  %and = and i32 %type, 15
  %12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end11 [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb6
    i32 4, label %sw.bb7
    i32 8, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.30, i32 noundef %type) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %entry.sw.epilog_crit_edge
  %falling.0.shrunk = phi i1 [ %retval.0.i76, %sw.bb8 ], [ %retval.0.i76, %sw.bb7 ], [ true, %sw.bb6 ], [ false, %entry.sw.epilog_crit_edge ]
  %level_low.0.shrunk = phi i1 [ true, %sw.bb8 ], [ false, %sw.bb7 ], [ %retval.0.i81, %sw.bb6 ], [ %retval.0.i81, %entry.sw.epilog_crit_edge ]
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %base_address.0.i = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %base_address.0.i, i32 100
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !104
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %or.i = or i32 %17, %shl9.i
  %neg.i = xor i32 %shl9.i, -1
  %and.i = and i32 %17, %neg.i
  %spec.select = select i1 %falling.0.shrunk, i32 %or.i, i32 %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #8, !srcloc !107
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %base_address.0.i85 = load ptr, ptr %base.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %base_address.0.i85, i32 80
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #8, !srcloc !104
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %or.i88 = or i32 %21, %shl9.i
  %and.i90 = and i32 %21, %neg.i
  %val.0.i91 = select i1 %level_low.0.shrunk, i32 %or.i88, i32 %and.i90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %val.0.i91) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %22) #8, !srcloc !107
  %and22 = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %handle_level_irq.handle_edge_irq = select i1 %tobool23.not, ptr @handle_level_irq, ptr @handle_edge_irq
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %23 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %handle_level_irq.handle_edge_irq, ptr %handle_irq.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nsp_gpio_irq_set_type.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nsp_gpio_irq_set_type, %cleanup)) #8
          to label %if.then41 [label %cleanup], !srcloc !110

if.then41:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call1, align 4
  %cond = select i1 %level_low.0.shrunk, ptr @.str.33, ptr @.str.34
  %cond47 = select i1 %falling.0.shrunk, ptr @.str.33, ptr @.str.34
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nsp_gpio_irq_set_type.__UNIQUE_ID_ddebug227, ptr noundef %27, ptr noundef nonnull @.str.32, i32 noundef %3, ptr noundef nonnull %cond, ptr noundef nonnull %cond47) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %sw.epilog, %do.end11
  %retval.0 = phi i32 [ -22, %do.end11 ], [ 0, %if.then41 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_gpio_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %int_bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %data) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_bits) #8
  %0 = ptrtoint ptr %int_bits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %int_bits, align 4
  %base = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 92
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 88
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %11 = and i32 %10, %7
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr21 = getelementptr i8, ptr %13, i32 64
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr28 = getelementptr i8, ptr %16, i32 80
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  %18 = xor i32 %17, %14
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr35 = getelementptr i8, ptr %20, i32 84
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %22 = and i32 %21, %18
  %23 = or i32 %22, %11
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %int_bits to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %int_bits, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %data, i32 0, i32 20
  %26 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %27 to i32
  %call40 = call i32 @_find_next_bit_be(ptr noundef nonnull %int_bits, i32 noundef %conv, i32 noundef 0) #8
  %28 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ngpio, align 4
  %conv4262 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call40, i32 %conv4262)
  %cmp63 = icmp slt i32 %call40, %conv4262
  br i1 %cmp63, label %for.body.lr.ph, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %data, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %bit.064 = phi i32 [ %call40, %for.body.lr.ph ], [ %call48, %for.body.for.body_crit_edge ]
  %30 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %domain, align 4
  %call45 = call i32 @generic_handle_domain_irq(ptr noundef %31, i32 noundef %bit.064) #8
  %32 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ngpio, align 4
  %conv47 = zext i16 %33 to i32
  %add = add nsw i32 %bit.064, 1
  %call48 = call i32 @_find_next_bit_be(ptr noundef nonnull %int_bits, i32 noundef %conv47, i32 noundef %add) #8
  %34 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ngpio, align 4
  %conv42 = zext i16 %35 to i32
  %cmp = icmp slt i32 %call48, %conv42
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %36 = ptrtoint ptr %int_bits to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %int_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool49.not = icmp ne i32 %37, 0
  %cond = zext i1 %tobool49.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_bits) #8
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp_gpio_irq_set_mask(ptr nocapture noundef readonly %d, i1 noundef zeroext %unmask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %5) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %irq_get_trigger_type.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

irq_get_trigger_type.exit:                        ; preds = %entry
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %irq_get_trigger_type.exit.if.else_crit_edge, label %if.then

irq_get_trigger_type.exit.if.else_crit_edge:      ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  %base.i = getelementptr inbounds %struct.nsp_gpio, ptr %call1, i32 0, i32 1
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %base_address.0.i = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %base_address.0.i, i32 92
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !104
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %shl.i = shl nuw i32 1, %3
  %or.i = or i32 %12, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %12, %neg.i
  %val.0.i = select i1 %unmask, i32 %or.i, i32 %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #8, !srcloc !107
  br label %if.end

if.else:                                          ; preds = %irq_get_trigger_type.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %base.i11 = getelementptr inbounds %struct.nsp_gpio, ptr %call1, i32 0, i32 1
  %14 = ptrtoint ptr %base.i11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %base_address.0.i12 = load ptr, ptr %base.i11, align 4
  %add.ptr.i13 = getelementptr i8, ptr %base_address.0.i12, i32 84
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #8, !srcloc !104
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %shl.i14 = shl nuw i32 1, %3
  %or.i15 = or i32 %16, %shl.i14
  %neg.i16 = xor i32 %shl.i14, -1
  %and.i17 = and i32 %16, %neg.i16
  %val.0.i18 = select i1 %unmask, i32 %or.i15, i32 %and.i17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %val.0.i18) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %17) #8, !srcloc !107
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsp_get_groups_count(ptr nocapture noundef readnone %pctldev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nsp_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.38
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_pin_config_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %trunc = trunc i32 %1 to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 5, label %sw.bb8
    i8 3, label %sw.bb12
    i8 9, label %sw.bb16
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 7
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %io_ctrl.i.i = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %io_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_ctrl.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !104
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %shl9.i.i = shl nuw i32 1, %pin
  %and10.i.i = and i32 %6, %shl9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %retval.0.i.i.not = icmp eq i32 %and10.i.i, 0
  %7 = ptrtoint ptr %io_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_ctrl.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %8, i32 28
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #8, !srcloc !104
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %and10.i20.i = and i32 %10, %shl9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i20.i)
  %retval.0.i21.i.not = icmp eq i32 %and10.i20.i, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #8
  %or.cond = select i1 %retval.0.i.i.not, i1 %retval.0.i21.i.not, i1 false
  %spec.select = select i1 %or.cond, i32 0, i32 -22
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i38 = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 7
  %call.i39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i38) #8
  %io_ctrl.i.i40 = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %io_ctrl.i.i40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_ctrl.i.i40, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %12, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i41) #8, !srcloc !104
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %shl9.i.i42 = shl nuw i32 1, %pin
  %and10.i.i43 = and i32 %14, %shl9.i.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i43)
  %retval.0.i.i44.not = icmp eq i32 %and10.i.i43, 0
  %15 = ptrtoint ptr %io_ctrl.i.i40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_ctrl.i.i40, align 4
  %add.ptr.i18.i46 = getelementptr i8, ptr %16, i32 28
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i46) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i38, i32 noundef %call.i39) #8
  %. = select i1 %retval.0.i.i44.not, i32 -22, i32 0
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i50 = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 7
  %call.i51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i50) #8
  %io_ctrl.i.i52 = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 2
  %18 = ptrtoint ptr %io_ctrl.i.i52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_ctrl.i.i52, align 4
  %add.ptr.i.i53 = getelementptr i8, ptr %19, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %shl9.i.i54 = shl nuw i32 1, %pin
  %21 = ptrtoint ptr %io_ctrl.i.i52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_ctrl.i.i52, align 4
  %add.ptr.i18.i58 = getelementptr i8, ptr %22, i32 28
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i58) #8, !srcloc !104
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %and10.i20.i59 = and i32 %24, %shl9.i.i54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i20.i59)
  %retval.0.i21.i60.not = icmp eq i32 %and10.i20.i59, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i50, i32 noundef %call.i51) #8
  %.37 = select i1 %retval.0.i21.i60.not, i32 -22, i32 0
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i62 = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 7
  %call.i63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i62) #8
  %io_ctrl.i = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 2
  %shl.i = shl nuw i32 1, %pin
  %25 = ptrtoint ptr %io_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_ctrl.i, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !104
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  %and.i64 = and i32 %28, %shl.i
  %shr.i = lshr i32 %and.i64, %pin
  %29 = shl i32 %shr.i, 2
  %30 = ptrtoint ptr %io_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_ctrl.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i) #8, !srcloc !104
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  %and.1.i = and i32 %33, %shl.i
  %shr.1.i = lshr i32 %and.1.i, %pin
  %34 = shl i32 %shr.1.i, 1
  %conv8.1.i = add i32 %34, %29
  %35 = ptrtoint ptr %io_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_ctrl.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %36, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i) #8, !srcloc !104
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  %and.2.i = and i32 %38, %shl.i
  %shr.2.i = lshr i32 %and.2.i, %pin
  %conv8.2.i = add i32 %conv8.1.i, %shr.2.i
  %add11.i = shl i32 %conv8.2.i, 9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i62, i32 noundef %call.i63) #8
  %conv20 = add i32 %add11.i, 512
  %shl.i65 = and i32 %conv20, 16776704
  %or.i = or i32 %shl.i65, 9
  %39 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb16, %sw.bb12, %sw.bb8, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb16 ], [ %., %sw.bb8 ], [ %.37, %sw.bb12 ], [ -524, %entry.cleanup_crit_edge ], [ %spec.select, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_pin_config_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp51.not = icmp eq i32 %num_configs, 0
  br i1 %cmp51.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %io_ctrl.i1.i = getelementptr inbounds %struct.nsp_gpio, ptr %call, i32 0, i32 2
  %shl.i5.i = shl nuw i32 1, %pin
  %neg.i7.i = xor i32 %shl.i5.i, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.052
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %trunc = trunc i32 %1 to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %trunc, label %do.end [
    i8 1, label %sw.bb
    i8 5, label %sw.bb7
    i8 3, label %sw.bb12
    i8 9, label %sw.bb17
    i8 24, label %sw.bb22
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @nsp_gpio_set_pull(ptr noundef %call, i32 noundef %pin, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %for.inc

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @nsp_gpio_set_pull(ptr noundef %call, i32 noundef %pin, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %for.inc

sw.bb12:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @nsp_gpio_set_pull(ptr noundef %call, i32 noundef %pin, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %for.inc

sw.bb17:                                          ; preds = %for.body
  %shr.i = lshr i32 %1, 8
  %call18 = tail call fastcc i32 @nsp_gpio_set_strength(ptr noundef %call, i32 noundef %pin, i32 noundef %shr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %sw.bb17.cleanup_crit_edge, label %sw.bb17.for.inc_crit_edge

sw.bb17.for.inc_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb22:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %tobool.not.i = icmp ult i32 %1, 256
  %3 = ptrtoint ptr %io_ctrl.i1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %base_address.0.i3.i = load ptr, ptr %io_ctrl.i1.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %base_address.0.i3.i, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i = or i32 %5, %shl.i5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %6) #8, !srcloc !107
  br label %for.inc

if.else.i:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  %and.i8.i = and i32 %5, %neg.i7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %and.i8.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %7) #8, !srcloc !107
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.39) #11
  br label %cleanup

for.inc:                                          ; preds = %if.else.i, %if.then.i, %sw.bb17.for.inc_crit_edge, %sw.bb12, %sw.bb7, %sw.bb
  %ret.1 = phi i32 [ %call18, %sw.bb17.for.inc_crit_edge ], [ 0, %sw.bb12 ], [ 0, %sw.bb7 ], [ 0, %sw.bb ], [ 0, %if.then.i ], [ 0, %if.else.i ]
  %inc = add nuw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %sw.bb17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end ], [ -524, %entry.cleanup_crit_edge ], [ %ret.1, %for.inc.cleanup_crit_edge ], [ %call18, %sw.bb17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsp_pin_config_group_get(ptr nocapture noundef readnone %pctldev, i32 noundef %selector, ptr nocapture noundef readnone %config) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsp_pin_config_group_set(ptr nocapture noundef readnone %pctldev, i32 noundef %selector, ptr nocapture noundef readnone %configs, i32 noundef %num_configs) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsp_gpio_set_pull(ptr noundef %chip, i32 noundef %gpio, i1 noundef zeroext %pull_up, i1 noundef zeroext %pull_down) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.nsp_gpio, ptr %chip, i32 0, i32 7
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %io_ctrl.i = getelementptr inbounds %struct.nsp_gpio, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %io_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %base_address.0.i = load ptr, ptr %io_ctrl.i, align 4
  %add.ptr.i = getelementptr i8, ptr %base_address.0.i, i32 28
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !104
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %shl.i = shl nuw i32 1, %gpio
  %or.i = or i32 %2, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %2, %neg.i
  %val.0.i = select i1 %pull_down, i32 %or.i, i32 %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #8, !srcloc !107
  %4 = ptrtoint ptr %io_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %base_address.0.i3 = load ptr, ptr %io_ctrl.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %base_address.0.i3, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #8, !srcloc !104
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %or.i6 = or i32 %6, %shl.i
  %and.i8 = and i32 %6, %neg.i
  %val.0.i9 = select i1 %pull_up, i32 %or.i6, i32 %and.i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %val.0.i9) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %7) #8, !srcloc !107
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nsp_gpio_set_pull.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nsp_gpio_set_pull, %do.end25)) #8
          to label %if.then [label %do.end25], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %conv21 = zext i1 %pull_up to i32
  %conv23 = zext i1 %pull_down to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nsp_gpio_set_pull.__UNIQUE_ID_ddebug231, ptr noundef %9, ptr noundef nonnull @.str.42, i32 noundef %gpio, i32 noundef %conv21, i32 noundef %conv23) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nsp_gpio_set_strength(ptr noundef %chip, i32 noundef %gpio, i32 noundef %strength) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %strength, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %0)
  %1 = icmp ult i32 %0, 15
  %rem = and i32 %strength, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond59 = and i1 %1, %tobool.not
  br i1 %or.cond59, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nsp_gpio_set_strength.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nsp_gpio_set_strength, %do.body9)) #8
          to label %if.then7 [label %do.body9], !srcloc !110

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nsp_gpio_set_strength.__UNIQUE_ID_ddebug232, ptr noundef %3, ptr noundef nonnull @.str.44, i32 noundef %gpio, i32 noundef %strength) #8
  br label %do.body9

do.body9:                                         ; preds = %if.then7, %if.end
  %lock = getelementptr inbounds %struct.nsp_gpio, ptr %chip, i32 0, i32 7
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %div58 = lshr i32 %strength, 1
  %sub = add nsw i32 %div58, -1
  %io_ctrl = getelementptr inbounds %struct.nsp_gpio, ptr %chip, i32 0, i32 2
  %shl = shl nuw i32 1, %gpio
  %neg = xor i32 %shl, -1
  %4 = ptrtoint ptr %io_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_ctrl, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !104
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %and = and i32 %7, %neg
  %shr = lshr i32 %sub, 2
  %shl22 = shl nuw i32 %shr, %gpio
  %or = or i32 %and, %shl22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %io_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !107
  %11 = ptrtoint ptr %io_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_ctrl, align 4
  %add.ptr.1 = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #8, !srcloc !104
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %and.1 = and i32 %14, %neg
  %shr.1 = lshr i32 %sub, 1
  %and21.1 = and i32 %shr.1, 1
  %shl22.1 = shl nuw i32 %and21.1, %gpio
  %or.1 = or i32 %and.1, %shl22.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.1)
  %16 = ptrtoint ptr %io_ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_ctrl, align 4
  %add.ptr27.1 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.1, i32 %15) #8, !srcloc !107
  %18 = ptrtoint ptr %io_ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_ctrl, align 4
  %add.ptr.2 = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #8, !srcloc !104
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %and.2 = and i32 %21, %neg
  %and21.2 = and i32 %sub, 1
  %shl22.2 = shl nuw i32 %and21.2, %gpio
  %or.2 = or i32 %and.2, %shl22.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.2)
  %23 = ptrtoint ptr %io_ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_ctrl, align 4
  %add.ptr27.2 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.2, i32 %22) #8, !srcloc !107
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body9 ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !25, !26, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !70, !71, !72, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__initcall__kmod_pinctrl_nsp_gpio__233_722_nsp_gpio_init3s, !1, !"__initcall__kmod_pinctrl_nsp_gpio__233_722_nsp_gpio_init3s", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 722, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 712, i32 11}
!4 = !{ptr @nsp_gpio_driver, !5, !"nsp_gpio_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 710, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 620, i32 46}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 621, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @nsp_gpio_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @nsp_gpio_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 634, i32 3}
!18 = !{ptr @nsp_gpio_probe._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @nsp_gpio_probe._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @nsp_gpio_probe._entry.10, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 640, i32 3}
!22 = !{ptr @nsp_gpio_probe._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @nsp_gpio_probe.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 644, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 666, i32 16}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 680, i32 4}
!30 = !{ptr @nsp_gpio_probe._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @nsp_gpio_probe._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @nsp_gpio_probe.lock_key, !33, !"lock_key", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 695, i32 8}
!34 = !{ptr @nsp_gpio_probe.request_key, !33, !"request_key", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 697, i32 3}
!37 = !{ptr @nsp_gpio_probe._entry.17, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @nsp_gpio_probe._entry_ptr.19, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 703, i32 3}
!41 = !{ptr @nsp_gpio_probe._entry.20, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @nsp_gpio_probe._entry_ptr.22, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 280, i32 2}
!45 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @nsp_gpio_direction_input.__UNIQUE_ID_ddebug228, !44, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 295, i32 2}
!50 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @nsp_gpio_direction_output.__UNIQUE_ID_ddebug229, !49, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 321, i32 2}
!54 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @nsp_gpio_set.__UNIQUE_ID_ddebug230, !53, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 250, i32 3}
!58 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @nsp_gpio_irq_set_type._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @nsp_gpio_irq_set_type._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 266, i32 2}
!63 = !{ptr @nsp_gpio_irq_set_type.__UNIQUE_ID_ddebug227, !62, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!64 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 588, i32 12}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 600, i32 3}
!70 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @nsp_gpio_register_pinconf._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @nsp_gpio_register_pinconf._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @nsp_pctrl_ops, !74, !"nsp_pctrl_ops", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 346, i32 33}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 343, i32 9}
!77 = !{ptr @nsp_pconf_ops, !78, !"nsp_pconf_ops", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 559, i32 33}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 550, i32 4}
!81 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @nsp_pin_config_set._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @nsp_pin_config_set._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 373, i32 2}
!86 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @nsp_gpio_set_pull.__UNIQUE_ID_ddebug231, !85, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 402, i32 2}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @nsp_gpio_set_strength.__UNIQUE_ID_ddebug232, !89, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!92 = !{ptr @nsp_gpio_of_match, !93, !"nsp_gpio_of_match", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c", i32 607, i32 34}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"auto-init"}
!104 = !{i64 4856390}
!105 = !{i64 2154030639}
!106 = !{i64 2154030866}
!107 = !{i64 4855972}
!108 = !{i64 2153991739}
!109 = !{i64 2153992110}
!110 = !{i64 2148318158, i64 2148318163, i64 2148318176, i64 2148318220, i64 2148318254, i64 2148318275}
!111 = !{i64 2153993509}
!112 = !{i64 2154012697}
!113 = !{i64 2153997161}
!114 = !{i64 2153994078}
!115 = !{i64 2153994574}
!116 = !{i64 2153995065}
!117 = !{i64 2153995556}
!118 = !{i64 2153996047}
!119 = !{i64 2153996538}
!120 = !{i64 2153992949}
!121 = !{i64 2154020922}
!122 = !{i64 2154019452}
!123 = !{i64 2154019750}
