; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-oxnas.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-oxnas.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.oxnas_gpio_bank = type { ptr, %struct.gpio_chip, %struct.irq_chip, i32 }
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
%struct.oxnas_pinctrl_data = type { ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.oxnas_pinctrl = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.oxnas_function = type { ptr, ptr, i32 }
%struct.oxnas_pin_group = type { ptr, i32, i32, ptr }
%struct.oxnas_desc_function = type { ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_pinctrl_oxnas__235_1286_oxnas_gpio_register3 = internal global ptr @oxnas_gpio_register, section ".initcall3.init", align 4
@__initcall__kmod_pinctrl_oxnas__236_1292_oxnas_pinctrl_register3 = internal global ptr @oxnas_pinctrl_register, section ".initcall3.init", align 4
@oxnas_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @oxnas_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @oxnas_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"oxnas-gpio\00", [21 x i8] zeroinitializer }, align 32
@oxnas_gpio_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"oxsemi,ox810se-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"oxsemi,ox820-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-ranges\00", [20 x i8] zeroinitializer }, align 32
@oxnas_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gpio-ranges property not found\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"oxnas_gpio_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/pinctrl/pinctrl-oxnas.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@oxnas_gpio_probe._entry_ptr = internal global ptr @oxnas_gpio_probe._entry, section ".printk_index", align 4
@oxnas_gpio_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1214, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid gpio-ranges base arg\0A\00", [34 x i8] zeroinitializer }, align 32
@oxnas_gpio_probe._entry_ptr.9 = internal global ptr @oxnas_gpio_probe._entry.7, section ".printk_index", align 4
@oxnas_gpio_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid gpio-ranges count arg\0A\00", [33 x i8] zeroinitializer }, align 32
@oxnas_gpio_probe._entry_ptr.12 = internal global ptr @oxnas_gpio_probe._entry.10, section ".printk_index", align 4
@oxnas_gpio_banks = internal global { [2 x %struct.oxnas_gpio_bank], [232 x i8] } { [2 x %struct.oxnas_gpio_bank] [%struct.oxnas_gpio_bank { ptr null, %struct.gpio_chip { ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @oxnas_gpio_get_direction, ptr @oxnas_gpio_direction_input, ptr @oxnas_gpio_direction_output, ptr @oxnas_gpio_get, ptr null, ptr @oxnas_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 32, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, %struct.irq_chip { ptr null, ptr @.str.16, ptr @oxnas_gpio_irq_startup, ptr null, ptr null, ptr null, ptr @oxnas_gpio_irq_ack, ptr @oxnas_gpio_irq_mask, ptr null, ptr @oxnas_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @oxnas_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, i32 0 }, %struct.oxnas_gpio_bank { ptr null, %struct.gpio_chip { ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @oxnas_gpio_get_direction, ptr @oxnas_gpio_direction_input, ptr @oxnas_gpio_direction_output, ptr @oxnas_gpio_get, ptr null, ptr @oxnas_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 32, i16 32, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, %struct.irq_chip { ptr null, ptr @.str.17, ptr @oxnas_gpio_irq_startup, ptr null, ptr null, ptr null, ptr @oxnas_gpio_irq_ack, ptr @oxnas_gpio_irq_mask, ptr null, ptr @oxnas_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @oxnas_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, i32 0 }], [232 x i8] zeroinitializer }, align 32
@oxnas_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@oxnas_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@oxnas_gpio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1251, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to add GPIO chip %u: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@oxnas_gpio_probe._entry_ptr.15 = internal global ptr @oxnas_gpio_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO0\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO1\00", [26 x i8] zeroinitializer }, align 32
@oxnas_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @oxnas_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.18, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @oxnas_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"oxnas-pinctrl\00", [18 x i8] zeroinitializer }, align 32
@oxnas_pinctrl_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"oxsemi,ox810se-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @oxnas_ox810se_pinctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"oxsemi,ox820-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @oxnas_ox820_pinctrl_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"oxsemi,sys-ctrl\00", [16 x i8] zeroinitializer }, align 32
@oxnas_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 1175, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get sys ctrl regmap\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"oxnas_pinctrl_probe\00", [44 x i8] zeroinitializer }, align 32
@oxnas_pinctrl_probe._entry_ptr = internal global ptr @oxnas_pinctrl_probe._entry, section ".printk_index", align 4
@oxnas_pinctrl_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 1188, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register pinctrl device\0A\00", [61 x i8] zeroinitializer }, align 32
@oxnas_pinctrl_probe._entry_ptr.24 = internal global ptr @oxnas_pinctrl_probe._entry.22, section ".printk_index", align 4
@oxnas_ox810se_pinctrl_data = internal global { %struct.oxnas_pinctrl_data, [24 x i8] } { %struct.oxnas_pinctrl_data { ptr @oxnas_ox810se_pinctrl_desc, ptr @ox810se_pinctrl }, [24 x i8] zeroinitializer }, align 32
@oxnas_ox820_pinctrl_data = internal global { %struct.oxnas_pinctrl_data, [24 x i8] } { %struct.oxnas_pinctrl_data { ptr @oxnas_ox820_pinctrl_desc, ptr @ox820_pinctrl }, [24 x i8] zeroinitializer }, align 32
@oxnas_ox810se_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.18, ptr @oxnas_ox810se_pins, i32 35, ptr @oxnas_pinctrl_ops, ptr @oxnas_ox810se_pinmux_ops, ptr @oxnas_ox810se_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@ox810se_pinctrl = internal global { %struct.oxnas_pinctrl, [60 x i8] } { %struct.oxnas_pinctrl { ptr null, ptr null, ptr null, ptr @oxnas_ox810se_functions, i32 2, ptr @oxnas_ox810se_groups, i32 35, ptr @oxnas_gpio_banks, i32 2 }, [60 x i8] zeroinitializer }, align 32
@oxnas_ox810se_pins = internal constant { [35 x %struct.pinctrl_pin_desc], [124 x i8] } { [35 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.48, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.49, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.50, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.51, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.52, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.53, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.54, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.55, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.56, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.57, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.58, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.59, ptr null }], [124 x i8] zeroinitializer }, align 32
@oxnas_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @oxnas_pinctrl_get_groups_count, ptr @oxnas_pinctrl_get_group_name, ptr @oxnas_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@oxnas_ox810se_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @oxnas_pinmux_get_functions_count, ptr @oxnas_pinmux_get_function_name, ptr @oxnas_pinmux_get_function_groups, ptr @oxnas_ox810se_pinmux_enable, ptr @oxnas_ox810se_gpio_request_enable, ptr null, ptr @oxnas_gpio_set_direction, i8 0 }, [56 x i8] zeroinitializer }, align 32
@oxnas_ox810se_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @oxnas_ox810se_pinconf_get, ptr @oxnas_ox810se_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio9\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio10\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio11\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio12\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio13\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio14\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio15\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio16\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio17\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio18\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio19\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio20\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio21\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio22\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio23\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio24\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio25\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio26\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio27\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio28\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio29\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio30\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio31\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio32\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio33\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio34\00", [25 x i8] zeroinitializer }, align 32
@oxnas_ox810se_pinmux_enable.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.60, ptr @.str.61, ptr @.str.4, ptr @.str.62, i8 0, i8 -106, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pinctrl_oxnas\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"oxnas_ox810se_pinmux_enable\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"setting function %s bank %d pin %d fct %d mask %x\0A\00", [45 x i8] zeroinitializer }, align 32
@oxnas_ox810se_pinmux_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.4, i32 632, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot mux pin %u to function %u\0A\00", [62 x i8] zeroinitializer }, align 32
@oxnas_ox810se_pinmux_enable._entry_ptr = internal global ptr @oxnas_ox810se_pinmux_enable._entry, section ".printk_index", align 4
@oxnas_ox810se_gpio_request_enable.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.60, ptr @.str.64, ptr @.str.4, ptr @.str.65, i8 0, i8 -81, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"oxnas_ox810se_gpio_request_enable\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"requesting gpio %d in bank %d (id %d) with mask 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@oxnas_ox810se_pinconf_set.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.60, ptr @.str.66, ptr @.str.4, ptr @.str.67, i8 0, i8 -28, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"oxnas_ox810se_pinconf_set\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"setting pin %d bank %d mask 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@oxnas_ox810se_pinconf_set.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.60, ptr @.str.66, ptr @.str.4, ptr @.str.68, i8 0, i8 -26, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"   pullup\0A\00", [21 x i8] zeroinitializer }, align 32
@oxnas_ox810se_pinconf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.66, ptr @.str.4, i32 929, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Property %u not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@oxnas_ox810se_pinconf_set._entry_ptr = internal global ptr @oxnas_ox810se_pinconf_set._entry, section ".printk_index", align 4
@oxnas_ox810se_functions = internal constant { [2 x %struct.oxnas_function], [40 x i8] } { [2 x %struct.oxnas_function] [%struct.oxnas_function { ptr @.str.70, ptr @oxnas_ox810se_fct0_group, i32 35 }, %struct.oxnas_function { ptr @.str.71, ptr @oxnas_ox810se_fct3_group, i32 24 }], [40 x i8] zeroinitializer }, align 32
@oxnas_ox810se_groups = internal constant { [35 x %struct.oxnas_pin_group], [144 x i8] } { [35 x %struct.oxnas_pin_group] [%struct.oxnas_pin_group { ptr @.str.25, i32 0, i32 0, ptr @.compoundliteral }, %struct.oxnas_pin_group { ptr @.str.26, i32 1, i32 0, ptr @.compoundliteral.72 }, %struct.oxnas_pin_group { ptr @.str.27, i32 2, i32 0, ptr @.compoundliteral.73 }, %struct.oxnas_pin_group { ptr @.str.28, i32 3, i32 0, ptr @.compoundliteral.74 }, %struct.oxnas_pin_group { ptr @.str.29, i32 4, i32 0, ptr @.compoundliteral.75 }, %struct.oxnas_pin_group { ptr @.str.30, i32 5, i32 0, ptr @.compoundliteral.76 }, %struct.oxnas_pin_group { ptr @.str.31, i32 6, i32 0, ptr @.compoundliteral.77 }, %struct.oxnas_pin_group { ptr @.str.32, i32 7, i32 0, ptr @.compoundliteral.78 }, %struct.oxnas_pin_group { ptr @.str.33, i32 8, i32 0, ptr @.compoundliteral.79 }, %struct.oxnas_pin_group { ptr @.str.34, i32 9, i32 0, ptr @.compoundliteral.80 }, %struct.oxnas_pin_group { ptr @.str.35, i32 10, i32 0, ptr @.compoundliteral.81 }, %struct.oxnas_pin_group { ptr @.str.36, i32 11, i32 0, ptr @.compoundliteral.82 }, %struct.oxnas_pin_group { ptr @.str.37, i32 12, i32 0, ptr @.compoundliteral.83 }, %struct.oxnas_pin_group { ptr @.str.38, i32 13, i32 0, ptr @.compoundliteral.84 }, %struct.oxnas_pin_group { ptr @.str.39, i32 14, i32 0, ptr @.compoundliteral.85 }, %struct.oxnas_pin_group { ptr @.str.40, i32 15, i32 0, ptr @.compoundliteral.86 }, %struct.oxnas_pin_group { ptr @.str.41, i32 16, i32 0, ptr @.compoundliteral.87 }, %struct.oxnas_pin_group { ptr @.str.42, i32 17, i32 0, ptr @.compoundliteral.88 }, %struct.oxnas_pin_group { ptr @.str.43, i32 18, i32 0, ptr @.compoundliteral.89 }, %struct.oxnas_pin_group { ptr @.str.44, i32 19, i32 0, ptr @.compoundliteral.90 }, %struct.oxnas_pin_group { ptr @.str.45, i32 20, i32 0, ptr @.compoundliteral.91 }, %struct.oxnas_pin_group { ptr @.str.46, i32 21, i32 0, ptr @.compoundliteral.92 }, %struct.oxnas_pin_group { ptr @.str.47, i32 22, i32 0, ptr @.compoundliteral.93 }, %struct.oxnas_pin_group { ptr @.str.48, i32 23, i32 0, ptr @.compoundliteral.94 }, %struct.oxnas_pin_group { ptr @.str.49, i32 24, i32 0, ptr @.compoundliteral.95 }, %struct.oxnas_pin_group { ptr @.str.50, i32 25, i32 0, ptr @.compoundliteral.96 }, %struct.oxnas_pin_group { ptr @.str.51, i32 26, i32 0, ptr @.compoundliteral.97 }, %struct.oxnas_pin_group { ptr @.str.52, i32 27, i32 0, ptr @.compoundliteral.98 }, %struct.oxnas_pin_group { ptr @.str.53, i32 28, i32 0, ptr @.compoundliteral.99 }, %struct.oxnas_pin_group { ptr @.str.54, i32 29, i32 0, ptr @.compoundliteral.100 }, %struct.oxnas_pin_group { ptr @.str.55, i32 30, i32 0, ptr @.compoundliteral.101 }, %struct.oxnas_pin_group { ptr @.str.56, i32 31, i32 0, ptr @.compoundliteral.102 }, %struct.oxnas_pin_group { ptr @.str.57, i32 32, i32 1, ptr @.compoundliteral.103 }, %struct.oxnas_pin_group { ptr @.str.58, i32 33, i32 1, ptr @.compoundliteral.104 }, %struct.oxnas_pin_group { ptr @.str.59, i32 34, i32 1, ptr @.compoundliteral.105 }], [144 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@oxnas_ox810se_fct0_group = internal constant { [35 x ptr], [52 x i8] } { [35 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], [52 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fct3\00", [27 x i8] zeroinitializer }, align 32
@oxnas_ox810se_fct3_group = internal constant { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.71, i32 3 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@oxnas_ox820_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.18, ptr @oxnas_ox820_pins, i32 50, ptr @oxnas_pinctrl_ops, ptr @oxnas_ox820_pinmux_ops, ptr @oxnas_ox820_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@ox820_pinctrl = internal global { %struct.oxnas_pinctrl, [60 x i8] } { %struct.oxnas_pinctrl { ptr null, ptr null, ptr null, ptr @oxnas_ox820_functions, i32 4, ptr @oxnas_ox820_groups, i32 50, ptr @oxnas_gpio_banks, i32 2 }, [60 x i8] zeroinitializer }, align 32
@oxnas_ox820_pins = internal constant { [50 x %struct.pinctrl_pin_desc], [136 x i8] } { [50 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.48, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.49, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.50, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.51, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.52, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.53, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.54, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.55, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.56, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.57, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.58, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.59, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.106, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.107, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.108, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.109, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.110, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.111, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.112, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.113, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.114, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.115, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.116, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.117, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.118, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.119, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.120, ptr null }], [136 x i8] zeroinitializer }, align 32
@oxnas_ox820_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @oxnas_pinmux_get_functions_count, ptr @oxnas_pinmux_get_function_name, ptr @oxnas_pinmux_get_function_groups, ptr @oxnas_ox820_pinmux_enable, ptr @oxnas_ox820_gpio_request_enable, ptr null, ptr @oxnas_gpio_set_direction, i8 0 }, [56 x i8] zeroinitializer }, align 32
@oxnas_ox820_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @oxnas_ox820_pinconf_get, ptr @oxnas_ox820_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio35\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio36\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio37\00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio38\00", [25 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio39\00", [25 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio40\00", [25 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio41\00", [25 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio42\00", [25 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio43\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio44\00", [25 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio45\00", [25 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio46\00", [25 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio47\00", [25 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio48\00", [25 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio49\00", [25 x i8] zeroinitializer }, align 32
@oxnas_ox820_pinmux_enable.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.60, ptr @.str.121, ptr @.str.4, ptr @.str.62, i8 0, i8 -93, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"oxnas_ox820_pinmux_enable\00", [38 x i8] zeroinitializer }, align 32
@oxnas_ox820_pinmux_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.121, ptr @.str.4, i32 687, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@oxnas_ox820_pinmux_enable._entry_ptr = internal global ptr @oxnas_ox820_pinmux_enable._entry, section ".printk_index", align 4
@oxnas_ox820_gpio_request_enable.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.60, ptr @.str.122, ptr @.str.4, ptr @.str.65, i8 0, i8 -73, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"oxnas_ox820_gpio_request_enable\00", [32 x i8] zeroinitializer }, align 32
@oxnas_ox820_pinconf_set.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.60, ptr @.str.123, ptr @.str.4, ptr @.str.67, i8 0, i8 -19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"oxnas_ox820_pinconf_set\00", [40 x i8] zeroinitializer }, align 32
@oxnas_ox820_pinconf_set.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.60, ptr @.str.123, ptr @.str.4, ptr @.str.68, i8 0, i8 -17, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@oxnas_ox820_pinconf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.123, ptr @.str.4, i32 964, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@oxnas_ox820_pinconf_set._entry_ptr = internal global ptr @oxnas_ox820_pinconf_set._entry, section ".printk_index", align 4
@oxnas_ox820_functions = internal constant { [4 x %struct.oxnas_function], [48 x i8] } { [4 x %struct.oxnas_function] [%struct.oxnas_function { ptr @.str.70, ptr @oxnas_ox820_fct0_group, i32 50 }, %struct.oxnas_function { ptr @.str.124, ptr @oxnas_ox820_fct1_group, i32 15 }, %struct.oxnas_function { ptr @.str.125, ptr @oxnas_ox820_fct4_group, i32 12 }, %struct.oxnas_function { ptr @.str.126, ptr @oxnas_ox820_fct5_group, i32 4 }], [48 x i8] zeroinitializer }, align 32
@oxnas_ox820_groups = internal constant { [50 x %struct.oxnas_pin_group], [192 x i8] } { [50 x %struct.oxnas_pin_group] [%struct.oxnas_pin_group { ptr @.str.25, i32 0, i32 0, ptr @.compoundliteral.127 }, %struct.oxnas_pin_group { ptr @.str.26, i32 1, i32 0, ptr @.compoundliteral.128 }, %struct.oxnas_pin_group { ptr @.str.27, i32 2, i32 0, ptr @.compoundliteral.129 }, %struct.oxnas_pin_group { ptr @.str.28, i32 3, i32 0, ptr @.compoundliteral.130 }, %struct.oxnas_pin_group { ptr @.str.29, i32 4, i32 0, ptr @.compoundliteral.131 }, %struct.oxnas_pin_group { ptr @.str.30, i32 5, i32 0, ptr @.compoundliteral.132 }, %struct.oxnas_pin_group { ptr @.str.31, i32 6, i32 0, ptr @.compoundliteral.133 }, %struct.oxnas_pin_group { ptr @.str.32, i32 7, i32 0, ptr @.compoundliteral.134 }, %struct.oxnas_pin_group { ptr @.str.33, i32 8, i32 0, ptr @.compoundliteral.135 }, %struct.oxnas_pin_group { ptr @.str.34, i32 9, i32 0, ptr @.compoundliteral.136 }, %struct.oxnas_pin_group { ptr @.str.35, i32 10, i32 0, ptr @.compoundliteral.137 }, %struct.oxnas_pin_group { ptr @.str.36, i32 11, i32 0, ptr @.compoundliteral.138 }, %struct.oxnas_pin_group { ptr @.str.37, i32 12, i32 0, ptr @.compoundliteral.139 }, %struct.oxnas_pin_group { ptr @.str.38, i32 13, i32 0, ptr @.compoundliteral.140 }, %struct.oxnas_pin_group { ptr @.str.39, i32 14, i32 0, ptr @.compoundliteral.141 }, %struct.oxnas_pin_group { ptr @.str.40, i32 15, i32 0, ptr @.compoundliteral.142 }, %struct.oxnas_pin_group { ptr @.str.41, i32 16, i32 0, ptr @.compoundliteral.143 }, %struct.oxnas_pin_group { ptr @.str.42, i32 17, i32 0, ptr @.compoundliteral.144 }, %struct.oxnas_pin_group { ptr @.str.43, i32 18, i32 0, ptr @.compoundliteral.145 }, %struct.oxnas_pin_group { ptr @.str.44, i32 19, i32 0, ptr @.compoundliteral.146 }, %struct.oxnas_pin_group { ptr @.str.45, i32 20, i32 0, ptr @.compoundliteral.147 }, %struct.oxnas_pin_group { ptr @.str.46, i32 21, i32 0, ptr @.compoundliteral.148 }, %struct.oxnas_pin_group { ptr @.str.47, i32 22, i32 0, ptr @.compoundliteral.149 }, %struct.oxnas_pin_group { ptr @.str.48, i32 23, i32 0, ptr @.compoundliteral.150 }, %struct.oxnas_pin_group { ptr @.str.49, i32 24, i32 0, ptr @.compoundliteral.151 }, %struct.oxnas_pin_group { ptr @.str.50, i32 25, i32 0, ptr @.compoundliteral.152 }, %struct.oxnas_pin_group { ptr @.str.51, i32 26, i32 0, ptr @.compoundliteral.153 }, %struct.oxnas_pin_group { ptr @.str.52, i32 27, i32 0, ptr @.compoundliteral.154 }, %struct.oxnas_pin_group { ptr @.str.53, i32 28, i32 0, ptr @.compoundliteral.155 }, %struct.oxnas_pin_group { ptr @.str.54, i32 29, i32 0, ptr @.compoundliteral.156 }, %struct.oxnas_pin_group { ptr @.str.55, i32 30, i32 0, ptr @.compoundliteral.157 }, %struct.oxnas_pin_group { ptr @.str.56, i32 31, i32 0, ptr @.compoundliteral.158 }, %struct.oxnas_pin_group { ptr @.str.57, i32 32, i32 1, ptr @.compoundliteral.159 }, %struct.oxnas_pin_group { ptr @.str.58, i32 33, i32 1, ptr @.compoundliteral.160 }, %struct.oxnas_pin_group { ptr @.str.59, i32 34, i32 1, ptr @.compoundliteral.161 }, %struct.oxnas_pin_group { ptr @.str.106, i32 35, i32 1, ptr @.compoundliteral.162 }, %struct.oxnas_pin_group { ptr @.str.107, i32 36, i32 1, ptr @.compoundliteral.163 }, %struct.oxnas_pin_group { ptr @.str.108, i32 37, i32 1, ptr @.compoundliteral.164 }, %struct.oxnas_pin_group { ptr @.str.109, i32 38, i32 1, ptr @.compoundliteral.165 }, %struct.oxnas_pin_group { ptr @.str.110, i32 39, i32 1, ptr @.compoundliteral.166 }, %struct.oxnas_pin_group { ptr @.str.111, i32 40, i32 1, ptr @.compoundliteral.167 }, %struct.oxnas_pin_group { ptr @.str.112, i32 41, i32 1, ptr @.compoundliteral.168 }, %struct.oxnas_pin_group { ptr @.str.113, i32 42, i32 1, ptr @.compoundliteral.169 }, %struct.oxnas_pin_group { ptr @.str.114, i32 43, i32 1, ptr @.compoundliteral.170 }, %struct.oxnas_pin_group { ptr @.str.115, i32 44, i32 1, ptr @.compoundliteral.171 }, %struct.oxnas_pin_group { ptr @.str.116, i32 45, i32 1, ptr @.compoundliteral.172 }, %struct.oxnas_pin_group { ptr @.str.117, i32 46, i32 1, ptr @.compoundliteral.173 }, %struct.oxnas_pin_group { ptr @.str.118, i32 47, i32 1, ptr @.compoundliteral.174 }, %struct.oxnas_pin_group { ptr @.str.119, i32 48, i32 1, ptr @.compoundliteral.175 }, %struct.oxnas_pin_group { ptr @.str.120, i32 49, i32 1, ptr @.compoundliteral.176 }], [192 x i8] zeroinitializer }, align 32
@oxnas_ox820_fct0_group = internal constant { [50 x ptr], [56 x i8] } { [50 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fct1\00", [27 x i8] zeroinitializer }, align 32
@oxnas_ox820_fct1_group = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [36 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fct4\00", [27 x i8] zeroinitializer }, align 32
@oxnas_ox820_fct4_group = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114], [48 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fct5\00", [27 x i8] zeroinitializer }, align 32
@oxnas_ox820_fct5_group = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.124, i32 1 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.124, i32 1 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.125, i32 4 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.125, i32 4 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.125, i32 4 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.125, i32 4 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.124, i32 1 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.124, i32 1 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.124, i32 1 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.124, i32 1 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.124, i32 1 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.124, i32 1 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.124, i32 1 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.124, i32 1 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.124, i32 1 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.124, i32 1 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.124, i32 1 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.150 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.124, i32 1 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { [4 x %struct.oxnas_desc_function], [32 x i8] } { [4 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.124, i32 1 }, %struct.oxnas_desc_function { ptr @.str.125, i32 5 }, %struct.oxnas_desc_function zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.125, i32 4 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.125, i32 4 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.125, i32 4 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.126, i32 5 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.156 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.126, i32 5 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.126, i32 5 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.126, i32 5 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.125, i32 4 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.125, i32 4 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.125, i32 4 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { [3 x %struct.oxnas_desc_function], [40 x i8] } { [3 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function { ptr @.str.125, i32 4 }, %struct.oxnas_desc_function zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { [2 x %struct.oxnas_desc_function], [16 x i8] } { [2 x %struct.oxnas_desc_function] [%struct.oxnas_desc_function { ptr @.str.70, i32 0 }, %struct.oxnas_desc_function zeroinitializer], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.177 = private unnamed_addr constant [18 x i8] c"oxnas_gpio_driver\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1273, i32 31 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1275, i32 11 }
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c"oxnas_gpio_of_match\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1267, i32 34 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1204, i32 43 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1206, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1214, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1219, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"oxnas_gpio_banks\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1089, i32 31 }
@___asan_gen_.222 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1248, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1250, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1090, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1091, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [21 x i8] c"oxnas_pinctrl_driver\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1258, i32 31 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1260, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant [23 x i8] c"oxnas_pinctrl_of_match\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1142, i32 34 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1173, i32 14 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1175, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1188, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [27 x i8] c"oxnas_ox810se_pinctrl_data\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1132, i32 34 }
@___asan_gen_.270 = private unnamed_addr constant [25 x i8] c"oxnas_ox820_pinctrl_data\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1137, i32 34 }
@___asan_gen_.273 = private unnamed_addr constant [27 x i8] c"oxnas_ox810se_pinctrl_desc\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1103, i32 28 }
@___asan_gen_.276 = private unnamed_addr constant [16 x i8] c"ox810se_pinctrl\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1094, i32 29 }
@___asan_gen_.279 = private unnamed_addr constant [19 x i8] c"oxnas_ox810se_pins\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 104, i32 38 }
@___asan_gen_.282 = private unnamed_addr constant [18 x i8] c"oxnas_pinctrl_ops\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 551, i32 33 }
@___asan_gen_.285 = private unnamed_addr constant [25 x i8] c"oxnas_ox810se_pinmux_ops\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 822, i32 32 }
@___asan_gen_.288 = private unnamed_addr constant [26 x i8] c"oxnas_ox810se_pinconf_ops\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 972, i32 33 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 105, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 106, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 107, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 108, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 109, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 110, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 111, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 112, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 113, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 114, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 115, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 116, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 117, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 118, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 119, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 120, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 121, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 122, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 123, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 124, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 125, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 126, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 127, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 128, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 129, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 130, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 131, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 132, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 133, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 134, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 135, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 136, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 137, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 138, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 139, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 599, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 632, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 700, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 912, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 920, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 928, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant [24 x i8] c"oxnas_ox810se_functions\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 259, i32 36 }
@___asan_gen_.435 = private unnamed_addr constant [21 x i8] c"oxnas_ox810se_groups\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 286, i32 37 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 260, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant [25 x i8] c"oxnas_ox810se_fct0_group\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 195, i32 27 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 261, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [25 x i8] c"oxnas_ox810se_fct3_group\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 207, i32 27 }
@___asan_gen_.450 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.452 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.455 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.458 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.464 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.467 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.468 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.470 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.472 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.477 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.481 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.483 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.484 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [25 x i8] c"oxnas_ox820_pinctrl_desc\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1122, i32 28 }
@___asan_gen_.488 = private unnamed_addr constant [14 x i8] c"ox820_pinctrl\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1113, i32 29 }
@___asan_gen_.491 = private unnamed_addr constant [17 x i8] c"oxnas_ox820_pins\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 142, i32 38 }
@___asan_gen_.494 = private unnamed_addr constant [23 x i8] c"oxnas_ox820_pinmux_ops\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 831, i32 32 }
@___asan_gen_.497 = private unnamed_addr constant [24 x i8] c"oxnas_ox820_pinconf_ops\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 978, i32 33 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 178, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 179, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 180, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 181, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 182, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 183, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 184, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 185, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 186, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 187, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 188, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 189, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 190, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 191, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 192, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 650, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 687, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 731, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 949, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 963, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant [22 x i8] c"oxnas_ox820_functions\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 264, i32 36 }
@___asan_gen_.563 = private unnamed_addr constant [19 x i8] c"oxnas_ox820_groups\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 383, i32 37 }
@___asan_gen_.566 = private unnamed_addr constant [23 x i8] c"oxnas_ox820_fct0_group\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 218, i32 27 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 266, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant [23 x i8] c"oxnas_ox820_fct1_group\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 234, i32 27 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 267, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant [23 x i8] c"oxnas_ox820_fct4_group\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 242, i32 27 }
@___asan_gen_.581 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 268, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant [23 x i8] c"oxnas_ox820_fct5_group\00", align 1
@___asan_gen_.585 = private constant [35 x i8] c"../drivers/pinctrl/pinctrl-oxnas.c\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 248, i32 27 }
@___asan_gen_.587 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.588 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.589 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.590 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.591 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.592 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.594 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.595 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.596 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.597 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.598 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.600 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.601 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.602 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.603 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.604 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.606 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.607 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.608 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.609 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.610 = private unnamed_addr constant [21 x i8] c".compoundliteral.150\00", align 1
@___asan_gen_.611 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.612 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.613 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.615 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.616 = private unnamed_addr constant [21 x i8] c".compoundliteral.156\00", align 1
@___asan_gen_.617 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.618 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.619 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.621 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.622 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.623 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.624 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.625 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.626 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.627 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.628 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.630 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.631 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.632 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.633 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.634 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.635 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.636 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@llvm.compiler.used = appending global [222 x ptr] [ptr @__initcall__kmod_pinctrl_oxnas__235_1286_oxnas_gpio_register3, ptr @__initcall__kmod_pinctrl_oxnas__236_1292_oxnas_pinctrl_register3, ptr @oxnas_gpio_probe._entry, ptr @oxnas_gpio_probe._entry.10, ptr @oxnas_gpio_probe._entry.13, ptr @oxnas_gpio_probe._entry.7, ptr @oxnas_gpio_probe._entry_ptr, ptr @oxnas_gpio_probe._entry_ptr.12, ptr @oxnas_gpio_probe._entry_ptr.15, ptr @oxnas_gpio_probe._entry_ptr.9, ptr @oxnas_ox810se_pinconf_set._entry, ptr @oxnas_ox810se_pinconf_set._entry_ptr, ptr @oxnas_ox810se_pinmux_enable._entry, ptr @oxnas_ox810se_pinmux_enable._entry_ptr, ptr @oxnas_ox820_pinconf_set._entry, ptr @oxnas_ox820_pinconf_set._entry_ptr, ptr @oxnas_ox820_pinmux_enable._entry, ptr @oxnas_ox820_pinmux_enable._entry_ptr, ptr @oxnas_pinctrl_probe._entry, ptr @oxnas_pinctrl_probe._entry.22, ptr @oxnas_pinctrl_probe._entry_ptr, ptr @oxnas_pinctrl_probe._entry_ptr.24, ptr @oxnas_gpio_driver, ptr @.str, ptr @oxnas_gpio_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @oxnas_gpio_banks, ptr @oxnas_gpio_probe.lock_key, ptr @oxnas_gpio_probe.request_key, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @oxnas_pinctrl_driver, ptr @.str.18, ptr @oxnas_pinctrl_of_match, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @oxnas_ox810se_pinctrl_data, ptr @oxnas_ox820_pinctrl_data, ptr @oxnas_ox810se_pinctrl_desc, ptr @ox810se_pinctrl, ptr @oxnas_ox810se_pins, ptr @oxnas_pinctrl_ops, ptr @oxnas_ox810se_pinmux_ops, ptr @oxnas_ox810se_pinconf_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @oxnas_ox810se_functions, ptr @oxnas_ox810se_groups, ptr @.str.70, ptr @oxnas_ox810se_fct0_group, ptr @.str.71, ptr @oxnas_ox810se_fct3_group, ptr @.compoundliteral, ptr @.compoundliteral.72, ptr @.compoundliteral.73, ptr @.compoundliteral.74, ptr @.compoundliteral.75, ptr @.compoundliteral.76, ptr @.compoundliteral.77, ptr @.compoundliteral.78, ptr @.compoundliteral.79, ptr @.compoundliteral.80, ptr @.compoundliteral.81, ptr @.compoundliteral.82, ptr @.compoundliteral.83, ptr @.compoundliteral.84, ptr @.compoundliteral.85, ptr @.compoundliteral.86, ptr @.compoundliteral.87, ptr @.compoundliteral.88, ptr @.compoundliteral.89, ptr @.compoundliteral.90, ptr @.compoundliteral.91, ptr @.compoundliteral.92, ptr @.compoundliteral.93, ptr @.compoundliteral.94, ptr @.compoundliteral.95, ptr @.compoundliteral.96, ptr @.compoundliteral.97, ptr @.compoundliteral.98, ptr @.compoundliteral.99, ptr @.compoundliteral.100, ptr @.compoundliteral.101, ptr @.compoundliteral.102, ptr @.compoundliteral.103, ptr @.compoundliteral.104, ptr @.compoundliteral.105, ptr @oxnas_ox820_pinctrl_desc, ptr @ox820_pinctrl, ptr @oxnas_ox820_pins, ptr @oxnas_ox820_pinmux_ops, ptr @oxnas_ox820_pinconf_ops, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @oxnas_ox820_functions, ptr @oxnas_ox820_groups, ptr @oxnas_ox820_fct0_group, ptr @.str.124, ptr @oxnas_ox820_fct1_group, ptr @.str.125, ptr @oxnas_ox820_fct4_group, ptr @.str.126, ptr @oxnas_ox820_fct5_group, ptr @.compoundliteral.127, ptr @.compoundliteral.128, ptr @.compoundliteral.129, ptr @.compoundliteral.130, ptr @.compoundliteral.131, ptr @.compoundliteral.132, ptr @.compoundliteral.133, ptr @.compoundliteral.134, ptr @.compoundliteral.135, ptr @.compoundliteral.136, ptr @.compoundliteral.137, ptr @.compoundliteral.138, ptr @.compoundliteral.139, ptr @.compoundliteral.140, ptr @.compoundliteral.141, ptr @.compoundliteral.142, ptr @.compoundliteral.143, ptr @.compoundliteral.144, ptr @.compoundliteral.145, ptr @.compoundliteral.146, ptr @.compoundliteral.147, ptr @.compoundliteral.148, ptr @.compoundliteral.149, ptr @.compoundliteral.150, ptr @.compoundliteral.151, ptr @.compoundliteral.152, ptr @.compoundliteral.153, ptr @.compoundliteral.154, ptr @.compoundliteral.155, ptr @.compoundliteral.156, ptr @.compoundliteral.157, ptr @.compoundliteral.158, ptr @.compoundliteral.159, ptr @.compoundliteral.160, ptr @.compoundliteral.161, ptr @.compoundliteral.162, ptr @.compoundliteral.163, ptr @.compoundliteral.164, ptr @.compoundliteral.165, ptr @.compoundliteral.166, ptr @.compoundliteral.167, ptr @.compoundliteral.168, ptr @.compoundliteral.169, ptr @.compoundliteral.170, ptr @.compoundliteral.171, ptr @.compoundliteral.172, ptr @.compoundliteral.173, ptr @.compoundliteral.174, ptr @.compoundliteral.175, ptr @.compoundliteral.176], section "llvm.metadata"
@0 = internal global [210 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_gpio_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_gpio_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_gpio_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_gpio_banks to i32), i32 984, i32 1216, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_gpio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_pinctrl_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_pinctrl_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox810se_pinctrl_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox820_pinctrl_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox810se_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox810se_pinctrl to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox810se_pins to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox810se_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox810se_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox810se_pinmux_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox810se_pinconf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox810se_functions to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox810se_groups to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox810se_fct0_group to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox810se_fct3_group to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox820_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_pinctrl to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox820_pins to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox820_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox820_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox820_pinmux_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox820_pinconf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox820_functions to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox820_groups to i32), i32 800, i32 992, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox820_fct0_group to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox820_fct1_group to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox820_fct4_group to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_ox820_fct5_group to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_gpio_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @oxnas_gpio_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_pinctrl_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @oxnas_pinctrl_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pinspec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pinspec) #9
  %2 = call ptr @memset(ptr %pinspec, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %pinspec) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.of_phandle_args, ptr %pinspec, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %div91 = lshr i32 %4, 5
  %arrayidx3 = getelementptr inbounds %struct.of_phandle_args, ptr %pinspec, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %4)
  %cmp = icmp ugt i32 %4, 63
  br i1 %cmp, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %6)
  %cmp10 = icmp ugt i32 %6, 32
  br i1 %cmp10, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %arrayidx17 = getelementptr [2 x %struct.oxnas_gpio_bank], ptr @oxnas_gpio_banks, i32 0, i32 %div91
  %call18 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %7 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call18, ptr %arrayidx17, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %call25 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %id29 = getelementptr [2 x %struct.oxnas_gpio_bank], ptr @oxnas_gpio_banks, i32 0, i32 %div91, i32 3
  %9 = ptrtoint ptr %id29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div91, ptr %id29, align 4
  %parent = getelementptr [2 x %struct.oxnas_gpio_bank], ptr @oxnas_gpio_banks, i32 0, i32 %div91, i32 1, i32 2
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 4
  %conv = trunc i32 %6 to i16
  %ngpio = getelementptr [2 x %struct.oxnas_gpio_bank], ptr @oxnas_gpio_banks, i32 0, i32 %div91, i32 1, i32 20
  %11 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %ngpio, align 4
  %irq33 = getelementptr [2 x %struct.oxnas_gpio_bank], ptr @oxnas_gpio_banks, i32 0, i32 %div91, i32 1, i32 37
  %irq_chip = getelementptr [2 x %struct.oxnas_gpio_bank], ptr @oxnas_gpio_banks, i32 0, i32 %div91, i32 2
  %12 = ptrtoint ptr %irq33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %irq_chip, ptr %irq33, align 4
  %parent_handler = getelementptr [2 x %struct.oxnas_gpio_bank], ptr @oxnas_gpio_banks, i32 0, i32 %div91, i32 1, i32 37, i32 13
  %13 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @oxnas_gpio_irq_handler, ptr %parent_handler, align 4
  %num_parents = getelementptr [2 x %struct.oxnas_gpio_bank], ptr @oxnas_gpio_banks, i32 0, i32 %div91, i32 1, i32 37, i32 15
  %14 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %num_parents, align 4
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3520) #9
  %parents = getelementptr [2 x %struct.oxnas_gpio_bank], ptr @oxnas_gpio_banks, i32 0, i32 %div91, i32 1, i32 37, i32 16
  %15 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i, ptr %parents, align 4
  %tobool37.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool37.not, label %if.end28.cleanup_crit_edge, label %if.end39

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.end28
  %gpio_chip = getelementptr [2 x %struct.oxnas_gpio_bank], ptr @oxnas_gpio_banks, i32 0, i32 %div91, i32 1
  %16 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call25, ptr %call5.i.i, align 4
  %default_type = getelementptr [2 x %struct.oxnas_gpio_bank], ptr @oxnas_gpio_banks, i32 0, i32 %div91, i32 1, i32 37, i32 10
  %17 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr [2 x %struct.oxnas_gpio_bank], ptr @oxnas_gpio_banks, i32 0, i32 %div91, i32 1, i32 37, i32 9
  %18 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @handle_level_irq, ptr %handler, align 4
  %call43 = call i32 @gpiochip_add_data_with_key(ptr noundef %gpio_chip, ptr noundef %arrayidx17, ptr noundef nonnull @oxnas_gpio_probe.lock_key, ptr noundef nonnull @oxnas_gpio_probe.request_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end49, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %div91, i32 noundef %call43) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.end39.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then21, %do.end14, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ -22, %do.end14 ], [ %8, %if.then21 ], [ %call43, %do.end49 ], [ %call25, %if.end24.cleanup_crit_edge ], [ -12, %if.end28.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pinspec) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxnas_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #9
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #9
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #9
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %11(ptr noundef %irq_data4.i) #9
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call1, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !264
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  %16 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %stat, align 4
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %stat, i32 noundef 32, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call5)
  %cmp19 = icmp ult i32 %call5, 32
  br i1 %cmp19, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pin.020 = phi i32 [ %call5, %for.body.lr.ph ], [ %call7, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain, align 4
  %call6 = call i32 @generic_handle_domain_irq(ptr noundef %18, i32 noundef %pin.020) #9
  %add = add nuw nsw i32 %pin.020, 1
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %stat, i32 noundef 32, i32 noundef %add) #9
  %cmp = icmp ult i32 %call7, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %19 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i16 = icmp eq ptr %20, null
  br i1 %tobool.not.i16, label %if.else.i17, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_exit.exit

if.else.i17:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %21 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i17, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %22, %if.else.i17 ], [ %20, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !264
  %3 = xor i32 %2, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = lshr i32 %4, %offset
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %shl = shl nuw i32 1, %offset
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #9, !srcloc !266
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %shl = shl nuw i32 1, %offset
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %2, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #9, !srcloc !266
  br label %oxnas_gpio_set.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr2.i = getelementptr i8, ptr %2, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %0) #9, !srcloc !266
  br label %oxnas_gpio_set.exit

oxnas_gpio_set.exit:                              ; preds = %if.else.i, %if.then.i
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #9, !srcloc !266
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !264
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = lshr i32 %3, %offset
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxnas_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %shl = shl nuw i32 1, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %2, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #9, !srcloc !266
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr2 = getelementptr i8, ptr %2, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %0) #9, !srcloc !266
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_gpio_irq_startup(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %shl.i = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !266
  tail call void @oxnas_gpio_irq_unmask(ptr noundef %data)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxnas_gpio_irq_ack(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call1, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #9, !srcloc !266
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxnas_gpio_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %7
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !268
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call1, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !264
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  %neg = xor i32 %shl, -1
  %and5 = and i32 %11, %neg
  %12 = tail call i32 @llvm.bswap.i32(i32 %and5)
  %13 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call1, align 4
  %add.ptr7 = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %12) #9, !srcloc !266
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %and8 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end25_crit_edge, label %do.body11

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call1, align 4
  %add.ptr17 = getelementptr i8, ptr %16, i32 44
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #9, !srcloc !264
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  %neg21 = xor i32 %shl, -1
  %and22 = and i32 %18, %neg21
  %19 = tail call i32 @llvm.bswap.i32(i32 %and22)
  %20 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call1, align 4
  %add.ptr24 = getelementptr i8, ptr %21, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %19) #9, !srcloc !266
  br label %if.end25

if.end25:                                         ; preds = %do.body11, %if.end.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxnas_gpio_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %7
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call1, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !264
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  %or = or i32 %11, %shl
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call1, align 4
  %add.ptr6 = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %12) #9, !srcloc !266
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %and7 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end23_crit_edge, label %do.body10

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call1, align 4
  %add.ptr16 = getelementptr i8, ptr %16, i32 44
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !264
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !275
  %or20 = or i32 %18, %shl
  %19 = tail call i32 @llvm.bswap.i32(i32 %or20)
  %20 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call1, align 4
  %add.ptr22 = getelementptr i8, ptr %21, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %19) #9, !srcloc !266
  br label %if.end23

if.end23:                                         ; preds = %do.body10, %if.end.if.end23_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @oxnas_gpio_irq_set_type(ptr nocapture noundef readonly %data, i32 noundef %type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @handle_edge_irq, ptr %handle_irq.i, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @oxnas_pinctrl_of_match, ptr noundef %1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data1 = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %pctl3 = getelementptr inbounds %struct.oxnas_pinctrl_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pctl3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pctl3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end8

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #9
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %dev15 = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev15, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i, align 4
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call19 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %11, ptr noundef nonnull @.str.19) #9
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call19, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #12
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  %13 = ptrtoint ptr %pctl3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pctl3, align 4
  %functions = getelementptr inbounds %struct.oxnas_pinctrl, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %functions, align 4
  %functions26 = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %functions26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %functions26, align 4
  %18 = load ptr, ptr %pctl3, align 4
  %nfunctions = getelementptr inbounds %struct.oxnas_pinctrl, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nfunctions, align 4
  %nfunctions28 = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %nfunctions28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %nfunctions28, align 4
  %22 = load ptr, ptr %pctl3, align 4
  %groups = getelementptr inbounds %struct.oxnas_pinctrl, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %groups, align 4
  %groups30 = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %groups30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %groups30, align 4
  %26 = load ptr, ptr %pctl3, align 4
  %ngroups = getelementptr inbounds %struct.oxnas_pinctrl, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ngroups, align 4
  %ngroups32 = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call.i, i32 0, i32 6
  %29 = ptrtoint ptr %ngroups32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ngroups32, align 4
  %30 = load ptr, ptr %pctl3, align 4
  %gpio_banks = getelementptr inbounds %struct.oxnas_pinctrl, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %gpio_banks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gpio_banks, align 4
  %gpio_banks34 = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %gpio_banks34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %gpio_banks34, align 4
  %34 = load ptr, ptr %pctl3, align 4
  %nbanks = getelementptr inbounds %struct.oxnas_pinctrl, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nbanks, align 4
  %nbanks36 = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call.i, i32 0, i32 8
  %37 = ptrtoint ptr %nbanks36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %nbanks36, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %call39 = tail call ptr @pinctrl_register(ptr noundef %39, ptr noundef %dev, ptr noundef nonnull %call.i) #9
  %pctldev = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %pctldev to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call39, ptr %pctldev, align 4
  %cmp.i83 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %do.end45, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end45:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #12
  %41 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pctldev, align 4
  %43 = ptrtoint ptr %42 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.end24.cleanup_crit_edge, %do.end, %if.end8.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %43, %do.end45 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_pinctrl_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %ngroups = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @oxnas_pinctrl_get_group_name(ptr noundef %pctldev, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %groups = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.oxnas_pin_group, ptr %1, i32 %group
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_pinctrl_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %groups = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin = getelementptr %struct.oxnas_pin_group, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pin, ptr %pins, align 4
  %3 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_pinmux_get_functions_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %nfunctions = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfunctions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @oxnas_pinmux_get_function_name(ptr noundef %pctldev, i32 noundef %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %functions = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.oxnas_function, ptr %1, i32 %func
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_pinmux_get_function_groups(ptr noundef %pctldev, i32 noundef %func, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %functions = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.oxnas_function, ptr %1, i32 %func, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %functions, align 4
  %ngroups = getelementptr %struct.oxnas_function, ptr %5, i32 %func, i32 2
  %6 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ngroups, align 4
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_ox810se_pinmux_enable(ptr noundef %pctldev, i32 noundef %func, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %groups = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %functions = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %arrayidx1 = getelementptr %struct.oxnas_function, ptr %3, i32 %func
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %functions3 = getelementptr %struct.oxnas_pin_group, ptr %1, i32 %group, i32 3
  %6 = ptrtoint ptr %functions3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functions3, align 4
  %pin = getelementptr %struct.oxnas_pin_group, ptr %1, i32 %group, i32 1
  %8 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pin, align 4
  %shl = shl nuw i32 1, %9
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %tobool.not83 = icmp eq ptr %11, null
  br i1 %tobool.not83, label %entry.do.end45_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.do.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

while.body:                                       ; preds = %if.end42.while.body_crit_edge, %entry.while.body_crit_edge
  %12 = phi ptr [ %40, %if.end42.while.body_crit_edge ], [ %11, %entry.while.body_crit_edge ]
  %functions2.084 = phi ptr [ %incdec.ptr, %if.end42.while.body_crit_edge ], [ %7, %entry.while.body_crit_edge ]
  %call6 = tail call i32 @strcmp(ptr noundef nonnull %12, ptr noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body, label %if.end42

do.body:                                          ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxnas_ox810se_pinmux_enable.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@oxnas_ox810se_pinmux_enable, %do.end)) #9
          to label %if.then13 [label %do.end], !srcloc !276

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %bank = getelementptr %struct.oxnas_pin_group, ptr %1, i32 %group, i32 2
  %15 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bank, align 4
  %17 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pin, align 4
  %fct = getelementptr inbounds %struct.oxnas_desc_function, ptr %functions2.084, i32 0, i32 1
  %19 = ptrtoint ptr %fct to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fct, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxnas_ox810se_pinmux_enable.__UNIQUE_ID_ddebug227, ptr noundef %14, ptr noundef nonnull @.str.62, ptr noundef %5, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %shl) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 4
  %bank15 = getelementptr %struct.oxnas_pin_group, ptr %1, i32 %group, i32 2
  %23 = ptrtoint ptr %bank15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bank15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool16.not = icmp eq i32 %24, 0
  %cond = select i1 %tobool16.not, i32 12, i32 16
  %fct17 = getelementptr inbounds %struct.oxnas_desc_function, ptr %functions2.084, i32 0, i32 1
  %25 = ptrtoint ptr %fct17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fct17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp = icmp eq i32 %26, 1
  %spec.select = select i1 %cmp, i32 %shl, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %cond, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %27 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call, align 4
  %29 = ptrtoint ptr %bank15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bank15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool22.not = icmp eq i32 %30, 0
  %cond23 = select i1 %tobool22.not, i32 20, i32 24
  %31 = ptrtoint ptr %fct17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fct17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp25 = icmp eq i32 %32, 2
  %cond29 = select i1 %cmp25, i32 %shl, i32 0
  %call.i79 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %cond23, i32 noundef %shl, i32 noundef %cond29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %33 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call, align 4
  %35 = ptrtoint ptr %bank15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bank15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool33.not = icmp eq i32 %36, 0
  %cond34 = select i1 %tobool33.not, i32 140, i32 144
  %37 = ptrtoint ptr %fct17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fct17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp36 = icmp eq i32 %38, 3
  %cond40 = select i1 %cmp36, i32 %shl, i32 0
  %call.i80 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %cond34, i32 noundef %shl, i32 noundef %cond40, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %cleanup

if.end42:                                         ; preds = %while.body
  %incdec.ptr = getelementptr %struct.oxnas_desc_function, ptr %functions2.084, i32 1
  %39 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %40, null
  br i1 %tobool.not, label %if.end42.do.end45_crit_edge, label %if.end42.while.body_crit_edge

if.end42.while.body_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end42.do.end45_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

do.end45:                                         ; preds = %if.end42.do.end45_crit_edge, %entry.do.end45_crit_edge
  %dev46 = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 1
  %41 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.63, i32 noundef %group, i32 noundef %func) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %do.end45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_ox810se_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readonly %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %gc = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 7
  %0 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gc, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %base = getelementptr inbounds %struct.oxnas_gpio_bank, ptr %call1, i32 0, i32 1, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %sub = sub i32 %offset, %3
  %shl = shl nuw i32 1, %sub
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxnas_ox810se_gpio_request_enable.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@oxnas_ox810se_gpio_request_enable, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !276

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %id = getelementptr inbounds %struct.oxnas_gpio_bank, ptr %call1, i32 0, i32 3
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxnas_ox810se_gpio_request_enable.__UNIQUE_ID_ddebug229, ptr noundef %5, ptr noundef nonnull @.str.65, i32 noundef %offset, i32 noundef %7, i32 noundef %9, i32 noundef %shl) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %id8 = getelementptr inbounds %struct.oxnas_gpio_bank, ptr %call1, i32 0, i32 3
  %12 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  %cond = select i1 %tobool9.not, i32 12, i32 16
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %cond, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %16 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool13.not = icmp eq i32 %17, 0
  %cond14 = select i1 %tobool13.not, i32 20, i32 24
  %call.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %cond14, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  %20 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool18.not = icmp eq i32 %21, 0
  %cond19 = select i1 %tobool18.not, i32 140, i32 144
  %call.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %cond19, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_gpio_set_direction(ptr nocapture noundef readnone %pctldev, ptr nocapture noundef readonly %range, i32 noundef %offset, i1 noundef zeroext %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gc = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 7
  %0 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gc, align 4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %shl.i = shl nuw i32 1, %offset
  br i1 %input, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #9, !srcloc !266
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %5) #9, !srcloc !266
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %5) #9, !srcloc !266
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_ox810se_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %gpio_banks.i = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %gpio_banks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_banks.i, align 4
  %div1.i = lshr i32 %pin, 5
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config, align 4
  %and.i = and i32 %3, 255
  %base = getelementptr %struct.oxnas_gpio_bank, ptr %1, i32 %div1.i, i32 1, i32 19
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  %sub = sub i32 %pin, %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #9
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %arg, align 4, !annotation !277
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cond13 = icmp eq i32 %and.i, 5
  br i1 %cond13, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %id = getelementptr %struct.oxnas_gpio_bank, ptr %1, i32 %div1.i, i32 3
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool.not, i32 172, i32 176
  %call3 = call i32 @regmap_read(ptr noundef %8, i32 noundef %cond, ptr noundef nonnull %arg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arg, align 4
  %13 = lshr i32 %12, %sub
  %14 = shl i32 %13, 8
  %shl.i = and i32 %14, 256
  %or.i = or i32 %shl.i, 5
  %15 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call3, %sw.bb.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_ox810se_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %gpio_banks.i = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %gpio_banks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_banks.i, align 4
  %div1.i = lshr i32 %pin, 5
  %base = getelementptr %struct.oxnas_gpio_bank, ptr %1, i32 %div1.i, i32 1, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %sub = sub i32 %pin, %3
  %shl = shl nuw i32 1, %sub
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxnas_ox810se_pinconf_set.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@oxnas_ox810se_pinconf_set, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !276

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxnas_ox810se_pinconf_set.__UNIQUE_ID_ddebug231, ptr noundef %5, ptr noundef nonnull @.str.67, i32 noundef %pin, i32 noundef %7, i32 noundef %shl) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp58.not = icmp eq i32 %num_configs, 0
  br i1 %cmp58.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %dev24 = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 1
  %id = getelementptr %struct.oxnas_gpio_bank, ptr %1, i32 %div1.i, i32 3
  br label %for.body

for.body:                                         ; preds = %do.end27.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end27.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.059
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cond39 = icmp eq i32 %and.i, 5
  br i1 %cond39, label %do.body9, label %do.end32

do.body9:                                         ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxnas_ox810se_pinconf_set.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@oxnas_ox810se_pinconf_set, %do.end27)) #9
          to label %if.then23 [label %do.end27], !srcloc !276

if.then23:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxnas_ox810se_pinconf_set.__UNIQUE_ID_ddebug232, ptr noundef %11, ptr noundef nonnull @.str.68) #9
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body9
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool28.not = icmp eq i32 %15, 0
  %cond = select i1 %tobool28.not, i32 172, i32 176
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %cond, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %inc = add nuw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %do.end27.cleanup_crit_edge, label %do.end27.for.body_crit_edge

do.end27.for.body_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end32:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.69, i32 noundef %and.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %do.end27.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end32 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %do.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_ox820_pinmux_enable(ptr noundef %pctldev, i32 noundef %func, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %groups = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %functions = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %arrayidx1 = getelementptr %struct.oxnas_function, ptr %3, i32 %func
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %functions3 = getelementptr %struct.oxnas_pin_group, ptr %1, i32 %group, i32 3
  %6 = ptrtoint ptr %functions3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functions3, align 4
  %bank = getelementptr %struct.oxnas_pin_group, ptr %1, i32 %group, i32 2
  %8 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %cond = select i1 %tobool.not, i32 0, i32 1048576
  %pin = getelementptr %struct.oxnas_pin_group, ptr %1, i32 %group, i32 1
  %10 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pin, align 4
  %shl = shl nuw i32 1, %11
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %tobool5.not110 = icmp eq ptr %13, null
  br i1 %tobool5.not110, label %entry.do.end59_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.do.end59_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

while.body:                                       ; preds = %if.end56.while.body_crit_edge, %entry.while.body_crit_edge
  %14 = phi ptr [ %44, %if.end56.while.body_crit_edge ], [ %13, %entry.while.body_crit_edge ]
  %functions2.0111 = phi ptr [ %incdec.ptr, %if.end56.while.body_crit_edge ], [ %7, %entry.while.body_crit_edge ]
  %call7 = tail call i32 @strcmp(ptr noundef nonnull %14, ptr noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body, label %if.end56

do.body:                                          ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxnas_ox820_pinmux_enable.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@oxnas_ox820_pinmux_enable, %do.end)) #9
          to label %if.then14 [label %do.end], !srcloc !276

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bank, align 4
  %19 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pin, align 4
  %fct = getelementptr inbounds %struct.oxnas_desc_function, ptr %functions2.0111, i32 0, i32 1
  %21 = ptrtoint ptr %fct to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fct, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxnas_ox820_pinmux_enable.__UNIQUE_ID_ddebug228, ptr noundef %16, ptr noundef nonnull @.str.62, ptr noundef %5, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %shl) #9
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call, align 4
  %add = or i32 %cond, 20
  %fct17 = getelementptr inbounds %struct.oxnas_desc_function, ptr %functions2.0111, i32 0, i32 1
  %25 = ptrtoint ptr %fct17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fct17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp = icmp eq i32 %26, 1
  %spec.select = select i1 %cmp, i32 %shl, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %add, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %27 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call, align 4
  %add21 = or i32 %cond, 140
  %29 = ptrtoint ptr %fct17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fct17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp23 = icmp eq i32 %30, 2
  %cond27 = select i1 %cmp23, i32 %shl, i32 0
  %call.i104 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %add21, i32 noundef %shl, i32 noundef %cond27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call, align 4
  %add30 = or i32 %cond, 148
  %33 = ptrtoint ptr %fct17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fct17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp32 = icmp eq i32 %34, 3
  %cond36 = select i1 %cmp32, i32 %shl, i32 0
  %call.i105 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %add30, i32 noundef %shl, i32 noundef %cond36, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %35 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call, align 4
  %add39 = or i32 %cond, 156
  %37 = ptrtoint ptr %fct17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fct17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp41 = icmp eq i32 %38, 4
  %cond45 = select i1 %cmp41, i32 %shl, i32 0
  %call.i106 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %add39, i32 noundef %shl, i32 noundef %cond45, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %39 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call, align 4
  %add48 = or i32 %cond, 164
  %41 = ptrtoint ptr %fct17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fct17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %42)
  %cmp50 = icmp eq i32 %42, 5
  %cond54 = select i1 %cmp50, i32 %shl, i32 0
  %call.i107 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef %add48, i32 noundef %shl, i32 noundef %cond54, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %cleanup

if.end56:                                         ; preds = %while.body
  %incdec.ptr = getelementptr %struct.oxnas_desc_function, ptr %functions2.0111, i32 1
  %43 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %incdec.ptr, align 4
  %tobool5.not = icmp eq ptr %44, null
  br i1 %tobool5.not, label %if.end56.do.end59_crit_edge, label %if.end56.while.body_crit_edge

if.end56.while.body_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end56.do.end59_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

do.end59:                                         ; preds = %if.end56.do.end59_crit_edge, %entry.do.end59_crit_edge
  %dev60 = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 1
  %45 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.63, i32 noundef %group, i32 noundef %func) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %do.end59 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_ox820_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readonly %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %gc = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 7
  %0 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gc, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %id = getelementptr inbounds %struct.oxnas_gpio_bank, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %base = getelementptr inbounds %struct.oxnas_gpio_bank, ptr %call1, i32 0, i32 1, i32 19
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  %sub = sub i32 %offset, %5
  %shl = shl nuw i32 1, %sub
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxnas_ox820_gpio_request_enable.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@oxnas_ox820_gpio_request_enable, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !276

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxnas_ox820_gpio_request_enable.__UNIQUE_ID_ddebug230, ptr noundef %7, ptr noundef nonnull @.str.65, i32 noundef %offset, i32 noundef %9, i32 noundef %11, i32 noundef %shl) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 0, i32 1048576
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %add = or i32 %cond, 20
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %add, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %add12 = or i32 %cond, 140
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %add12, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  %add15 = or i32 %cond, 148
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %add15, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  %add18 = or i32 %cond, 156
  %call.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %add18, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  %add21 = or i32 %cond, 164
  %call.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %add21, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_ox820_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %gpio_banks.i = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %gpio_banks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_banks.i, align 4
  %div1.i = lshr i32 %pin, 5
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config, align 4
  %and.i = and i32 %3, 255
  %id = getelementptr %struct.oxnas_gpio_bank, ptr %1, i32 %div1.i, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %base = getelementptr %struct.oxnas_gpio_bank, ptr %1, i32 %div1.i, i32 1, i32 19
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %sub = sub i32 %pin, %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #9
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %arg, align 4, !annotation !277
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cond14 = icmp eq i32 %and.i, 5
  br i1 %cond14, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %add = select i1 %tobool.not, i32 172, i32 1048748
  %call3 = call i32 @regmap_read(ptr noundef %10, i32 noundef %add, ptr noundef nonnull %arg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arg, align 4
  %13 = lshr i32 %12, %sub
  %14 = shl i32 %13, 8
  %shl.i = and i32 %14, 256
  %or.i = or i32 %shl.i, 5
  %15 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call3, %sw.bb.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_ox820_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %gpio_banks.i = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %gpio_banks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_banks.i, align 4
  %div1.i = lshr i32 %pin, 5
  %id = getelementptr %struct.oxnas_gpio_bank, ptr %1, i32 %div1.i, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %base = getelementptr %struct.oxnas_gpio_bank, ptr %1, i32 %div1.i, i32 1, i32 19
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  %sub = sub i32 %pin, %5
  %shl = shl nuw i32 1, %sub
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxnas_ox820_pinconf_set.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@oxnas_ox820_pinconf_set, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !276

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxnas_ox820_pinconf_set.__UNIQUE_ID_ddebug233, ptr noundef %7, ptr noundef nonnull @.str.67, i32 noundef %pin, i32 noundef %9, i32 noundef %shl) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp59.not = icmp eq i32 %num_configs, 0
  br i1 %cmp59.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %dev25 = getelementptr inbounds %struct.oxnas_pinctrl, ptr %call, i32 0, i32 1
  %add = select i1 %tobool.not, i32 172, i32 1048748
  br label %for.body

for.body:                                         ; preds = %do.end28.for.body_crit_edge, %for.body.lr.ph
  %i.060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end28.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.060
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %11, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cond40 = icmp eq i32 %and.i, 5
  br i1 %cond40, label %do.body10, label %do.end32

do.body10:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxnas_ox820_pinconf_set.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@oxnas_ox820_pinconf_set, %do.end28)) #9
          to label %if.then24 [label %do.end28], !srcloc !276

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxnas_ox820_pinconf_set.__UNIQUE_ID_ddebug234, ptr noundef %13, ptr noundef nonnull @.str.68) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body10
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %add, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %inc = add nuw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %do.end28.cleanup_crit_edge, label %do.end28.for.body_crit_edge

do.end28.for.body_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end32:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.69, i32 noundef %and.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %do.end28.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end32 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %do.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 210)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 210)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !155, !156, !157, !159, !160, !162, !163, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !219, !221, !222, !224, !225, !227, !229, !230, !232, !234, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253}
!llvm.module.flags = !{!255, !256, !257, !258, !259, !260, !261, !262}
!llvm.ident = !{!263}

!0 = !{ptr @__initcall__kmod_pinctrl_oxnas__235_1286_oxnas_gpio_register3, !1, !"__initcall__kmod_pinctrl_oxnas__235_1286_oxnas_gpio_register3", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1286, i32 1}
!2 = !{ptr @__initcall__kmod_pinctrl_oxnas__236_1292_oxnas_pinctrl_register3, !3, !"__initcall__kmod_pinctrl_oxnas__236_1292_oxnas_pinctrl_register3", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1292, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1275, i32 11}
!6 = !{ptr @oxnas_gpio_driver, !7, !"oxnas_gpio_driver", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1273, i32 31}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1204, i32 43}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1206, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @oxnas_gpio_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @oxnas_gpio_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1214, i32 3}
!20 = !{ptr @oxnas_gpio_probe._entry.7, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @oxnas_gpio_probe._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1219, i32 3}
!24 = !{ptr @oxnas_gpio_probe._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @oxnas_gpio_probe._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @oxnas_gpio_probe.lock_key, !27, !"lock_key", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1248, i32 8}
!28 = !{ptr @oxnas_gpio_probe.request_key, !27, !"request_key", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1250, i32 3}
!31 = !{ptr @oxnas_gpio_probe._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @oxnas_gpio_probe._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1090, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1091, i32 2}
!37 = !{ptr @oxnas_gpio_banks, !38, !"oxnas_gpio_banks", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1089, i32 31}
!39 = !{ptr @oxnas_gpio_of_match, !40, !"oxnas_gpio_of_match", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1267, i32 34}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1260, i32 11}
!43 = !{ptr @oxnas_pinctrl_driver, !44, !"oxnas_pinctrl_driver", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1258, i32 31}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1173, i32 14}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1175, i32 3}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @oxnas_pinctrl_probe._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @oxnas_pinctrl_probe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1188, i32 3}
!54 = !{ptr @oxnas_pinctrl_probe._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @oxnas_pinctrl_probe._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @oxnas_pinctrl_of_match, !57, !"oxnas_pinctrl_of_match", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1142, i32 34}
!58 = !{ptr @oxnas_ox810se_pinctrl_data, !59, !"oxnas_ox810se_pinctrl_data", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1132, i32 34}
!60 = !{ptr @oxnas_ox810se_pinctrl_desc, !61, !"oxnas_ox810se_pinctrl_desc", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1103, i32 28}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 105, i32 2}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 106, i32 2}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 107, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 108, i32 2}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 109, i32 2}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 110, i32 2}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 111, i32 2}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 112, i32 2}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 113, i32 2}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 114, i32 2}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 115, i32 2}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 116, i32 2}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 117, i32 2}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 118, i32 2}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 119, i32 2}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 120, i32 2}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 121, i32 2}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 122, i32 2}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 123, i32 2}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 124, i32 2}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 125, i32 2}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 126, i32 2}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 127, i32 2}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 128, i32 2}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 129, i32 2}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 130, i32 2}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 131, i32 2}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 132, i32 2}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 133, i32 2}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 134, i32 2}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 135, i32 2}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 136, i32 2}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 137, i32 2}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 138, i32 2}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 139, i32 2}
!132 = !{ptr @oxnas_ox810se_pins, !133, !"oxnas_ox810se_pins", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 104, i32 38}
!134 = !{ptr @oxnas_pinctrl_ops, !135, !"oxnas_pinctrl_ops", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 551, i32 33}
!136 = !{ptr @oxnas_ox810se_pinmux_ops, !137, !"oxnas_ox810se_pinmux_ops", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 822, i32 32}
!138 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 599, i32 4}
!140 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @oxnas_ox810se_pinmux_enable.__UNIQUE_ID_ddebug227, !139, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 632, i32 2}
!145 = !{ptr @oxnas_ox810se_pinmux_enable._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @oxnas_ox810se_pinmux_enable._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 700, i32 2}
!149 = !{ptr @.str.65, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @oxnas_ox810se_gpio_request_enable.__UNIQUE_ID_ddebug229, !148, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!151 = !{ptr @oxnas_ox810se_pinconf_ops, !152, !"oxnas_ox810se_pinconf_ops", i1 false, i1 false}
!152 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 972, i32 33}
!153 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 912, i32 2}
!155 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @oxnas_ox810se_pinconf_set.__UNIQUE_ID_ddebug231, !154, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!157 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 920, i32 4}
!159 = !{ptr @oxnas_ox810se_pinconf_set.__UNIQUE_ID_ddebug232, !158, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 928, i32 4}
!162 = !{ptr @oxnas_ox810se_pinconf_set._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @oxnas_ox810se_pinconf_set._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @ox810se_pinctrl, !165, !"ox810se_pinctrl", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1094, i32 29}
!166 = !{ptr @.str.70, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 260, i32 2}
!168 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 261, i32 2}
!170 = !{ptr @oxnas_ox810se_functions, !171, !"oxnas_ox810se_functions", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 259, i32 36}
!172 = !{ptr @oxnas_ox810se_fct0_group, !173, !"oxnas_ox810se_fct0_group", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 195, i32 27}
!174 = !{ptr @oxnas_ox810se_fct3_group, !175, !"oxnas_ox810se_fct3_group", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 207, i32 27}
!176 = !{ptr @oxnas_ox810se_groups, !177, !"oxnas_ox810se_groups", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 286, i32 37}
!178 = !{ptr @oxnas_ox820_pinctrl_data, !179, !"oxnas_ox820_pinctrl_data", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1137, i32 34}
!180 = !{ptr @oxnas_ox820_pinctrl_desc, !181, !"oxnas_ox820_pinctrl_desc", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1122, i32 28}
!182 = !{ptr @.str.106, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 178, i32 2}
!184 = !{ptr @.str.107, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 179, i32 2}
!186 = !{ptr @.str.108, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 180, i32 2}
!188 = !{ptr @.str.109, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 181, i32 2}
!190 = !{ptr @.str.110, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 182, i32 2}
!192 = !{ptr @.str.111, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 183, i32 2}
!194 = !{ptr @.str.112, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 184, i32 2}
!196 = !{ptr @.str.113, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 185, i32 2}
!198 = !{ptr @.str.114, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 186, i32 2}
!200 = !{ptr @.str.115, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 187, i32 2}
!202 = !{ptr @.str.116, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 188, i32 2}
!204 = !{ptr @.str.117, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 189, i32 2}
!206 = !{ptr @.str.118, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 190, i32 2}
!208 = !{ptr @.str.119, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 191, i32 2}
!210 = !{ptr @.str.120, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 192, i32 2}
!212 = !{ptr @oxnas_ox820_pins, !213, !"oxnas_ox820_pins", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 142, i32 38}
!214 = !{ptr @oxnas_ox820_pinmux_ops, !215, !"oxnas_ox820_pinmux_ops", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 831, i32 32}
!216 = !{ptr @.str.121, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 650, i32 4}
!218 = !{ptr @oxnas_ox820_pinmux_enable.__UNIQUE_ID_ddebug228, !217, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!219 = !{ptr @oxnas_ox820_pinmux_enable._entry, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 687, i32 2}
!221 = !{ptr @oxnas_ox820_pinmux_enable._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.122, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 731, i32 2}
!224 = !{ptr @oxnas_ox820_gpio_request_enable.__UNIQUE_ID_ddebug230, !223, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!225 = !{ptr @oxnas_ox820_pinconf_ops, !226, !"oxnas_ox820_pinconf_ops", i1 false, i1 false}
!226 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 978, i32 33}
!227 = !{ptr @.str.123, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 949, i32 2}
!229 = !{ptr @oxnas_ox820_pinconf_set.__UNIQUE_ID_ddebug233, !228, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!230 = !{ptr @oxnas_ox820_pinconf_set.__UNIQUE_ID_ddebug234, !231, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 957, i32 4}
!232 = !{ptr @oxnas_ox820_pinconf_set._entry, !233, !"_entry", i1 false, i1 false}
!233 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 963, i32 4}
!234 = !{ptr @oxnas_ox820_pinconf_set._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @ox820_pinctrl, !236, !"ox820_pinctrl", i1 false, i1 false}
!236 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 1113, i32 29}
!237 = !{ptr @.str.124, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 266, i32 2}
!239 = !{ptr @.str.125, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 267, i32 2}
!241 = !{ptr @.str.126, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 268, i32 2}
!243 = !{ptr @oxnas_ox820_functions, !244, !"oxnas_ox820_functions", i1 false, i1 false}
!244 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 264, i32 36}
!245 = !{ptr @oxnas_ox820_fct0_group, !246, !"oxnas_ox820_fct0_group", i1 false, i1 false}
!246 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 218, i32 27}
!247 = !{ptr @oxnas_ox820_fct1_group, !248, !"oxnas_ox820_fct1_group", i1 false, i1 false}
!248 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 234, i32 27}
!249 = !{ptr @oxnas_ox820_fct4_group, !250, !"oxnas_ox820_fct4_group", i1 false, i1 false}
!250 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 242, i32 27}
!251 = !{ptr @oxnas_ox820_fct5_group, !252, !"oxnas_ox820_fct5_group", i1 false, i1 false}
!252 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 248, i32 27}
!253 = !{ptr @oxnas_ox820_groups, !254, !"oxnas_ox820_groups", i1 false, i1 false}
!254 = !{!"../drivers/pinctrl/pinctrl-oxnas.c", i32 383, i32 37}
!255 = !{i32 1, !"wchar_size", i32 2}
!256 = !{i32 1, !"min_enum_size", i32 4}
!257 = !{i32 8, !"branch-target-enforcement", i32 0}
!258 = !{i32 8, !"sign-return-address", i32 0}
!259 = !{i32 8, !"sign-return-address-all", i32 0}
!260 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!261 = !{i32 7, !"uwtable", i32 1}
!262 = !{i32 7, !"frame-pointer", i32 2}
!263 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!264 = !{i64 4874221}
!265 = !{i64 2154172334}
!266 = !{i64 4873803}
!267 = !{i64 2154163748}
!268 = !{i64 2154165001}
!269 = !{i64 2154165928}
!270 = !{i64 2154166934}
!271 = !{i64 2154167861}
!272 = !{i64 2154168951}
!273 = !{i64 2154169876}
!274 = !{i64 2154170880}
!275 = !{i64 2154171805}
!276 = !{i64 2148335989, i64 2148335994, i64 2148336007, i64 2148336051, i64 2148336085, i64 2148336106}
!277 = !{!"auto-init"}
