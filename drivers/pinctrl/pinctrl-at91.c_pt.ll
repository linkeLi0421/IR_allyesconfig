; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-at91.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-at91.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.64, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.64 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.at91_pinctrl_mux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.atomic_t = type { i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.at91_gpio_chip = type { %struct.gpio_chip, %struct.pinctrl_gpio_range, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.at91_pinctrl = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.at91_pmx_func = type { ptr, ptr, i32 }
%struct.at91_pin_group = type { ptr, ptr, ptr, i32 }
%struct.at91_pmx_pin = type { i32, i32, i32, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }

@gpio_banks = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gpio_chips = internal global { [5 x ptr], [44 x i8] } zeroinitializer, align 32
@backups = internal global { [5 x i32], [44 x i8] } zeroinitializer, align 32
@wakeups = internal global { [5 x i32], [44 x i8] } zeroinitializer, align 32
@at91_pinctrl_gpio_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017GPIO-%c may wake for %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"at91_pinctrl_gpio_suspend\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/pinctrl/pinctrl-at91.c\00", [33 x i8] zeroinitializer }, align 32
@at91_pinctrl_gpio_suspend._entry_ptr = internal global ptr @at91_pinctrl_gpio_suspend._entry, section ".printk_index", align 4
@__initcall__kmod_pinctrl_at91__249_1954_at91_pinctrl_init3 = internal global ptr @at91_pinctrl_init, section ".initcall3.init", align 4
@drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @at91_gpio_driver, ptr @at91_pinctrl_driver], [24 x i8] zeroinitializer }, align 32
@at91_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @at91_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@at91_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @at91_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.36, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio-at91\00", [22 x i8] zeroinitializer }, align 32
@at91_gpio_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9x5_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91rm9200_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sam9x60_ops }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@at91_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1857, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get clock, ignoring.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"at91_gpio_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at91_gpio_probe._entry_ptr = internal global ptr @at91_gpio_probe._entry, section ".printk_index", align 4
@at91_gpio_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 1864, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to prepare and enable clock, ignoring.\0A\00", [49 x i8] zeroinitializer }, align 32
@at91_gpio_probe._entry_ptr.11 = internal global ptr @at91_gpio_probe._entry.9, section ".printk_index", align 4
@at91_gpio_template = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @at91_gpio_get_direction, ptr @at91_gpio_direction_input, ptr @at91_gpio_direction_output, ptr @at91_gpio_get, ptr null, ptr @at91_gpio_set, ptr @at91_gpio_set_multiple, ptr null, ptr null, ptr @at91_gpio_dbg_show, ptr null, ptr null, i32 0, i16 32, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#gpio-lines\00", [20 x i8] zeroinitializer }, align 32
@at91_gpio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 1879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013at91_gpio.%d, gpio-nb >= %d failback to %d\0A\00", [50 x i8] zeroinitializer }, align 32
@at91_gpio_probe._entry_ptr.15 = internal global ptr @at91_gpio_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pio%c%d\00", [24 x i8] zeroinitializer }, align 32
@at91_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@at91_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@at91_gpio_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.2, i32 1916, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at address %p\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@at91_gpio_probe._entry_ptr.20 = internal global ptr @at91_gpio_probe._entry.17, section ".printk_index", align 4
@at91_gpio_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.6, ptr @.str.2, i32 1924, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failure %i for GPIO %i\0A\00", [40 x i8] zeroinitializer }, align 32
@at91_gpio_probe._entry_ptr.23 = internal global ptr @at91_gpio_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[%s] GPIO%s%d: \00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[gpio] \00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[periph %c]\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPIO\00", [27 x i8] zeroinitializer }, align 32
@at91sam9x5_ops = internal constant { %struct.at91_pinctrl_mux_ops, [56 x i8] } { %struct.at91_pinctrl_mux_ops { ptr @at91_mux_pio3_get_periph, ptr @at91_mux_pio3_set_A_periph, ptr @at91_mux_pio3_set_B_periph, ptr @at91_mux_pio3_set_C_periph, ptr @at91_mux_pio3_set_D_periph, ptr @at91_mux_pio3_get_deglitch, ptr @at91_mux_pio3_set_deglitch, ptr @at91_mux_pio3_get_debounce, ptr @at91_mux_pio3_set_debounce, ptr @at91_mux_pio3_get_pulldown, ptr @at91_mux_pio3_set_pulldown, ptr @at91_mux_pio3_get_schmitt_trig, ptr @at91_mux_pio3_disable_schmitt_trig, ptr @at91_mux_sam9x5_get_drivestrength, ptr @at91_mux_sam9x5_set_drivestrength, ptr null, ptr null, ptr @alt_gpio_irq_type }, [56 x i8] zeroinitializer }, align 32
@at91rm9200_ops = internal constant { %struct.at91_pinctrl_mux_ops, [56 x i8] } { %struct.at91_pinctrl_mux_ops { ptr @at91_mux_get_periph, ptr @at91_mux_set_A_periph, ptr @at91_mux_set_B_periph, ptr null, ptr null, ptr @at91_mux_get_deglitch, ptr @at91_mux_set_deglitch, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_irq_type }, [56 x i8] zeroinitializer }, align 32
@sam9x60_ops = internal constant { %struct.at91_pinctrl_mux_ops, [56 x i8] } { %struct.at91_pinctrl_mux_ops { ptr @at91_mux_pio3_get_periph, ptr @at91_mux_pio3_set_A_periph, ptr @at91_mux_pio3_set_B_periph, ptr @at91_mux_pio3_set_C_periph, ptr @at91_mux_pio3_set_D_periph, ptr @at91_mux_pio3_get_deglitch, ptr @at91_mux_pio3_set_deglitch, ptr @at91_mux_pio3_get_debounce, ptr @at91_mux_pio3_set_debounce, ptr @at91_mux_pio3_get_pulldown, ptr @at91_mux_pio3_set_pulldown, ptr @at91_mux_pio3_get_schmitt_trig, ptr @at91_mux_pio3_disable_schmitt_trig, ptr @at91_mux_sam9x60_get_drivestrength, ptr @at91_mux_sam9x60_set_drivestrength, ptr @at91_mux_sam9x60_get_slewrate, ptr @at91_mux_sam9x60_set_slewrate, ptr @alt_gpio_irq_type }, [56 x i8] zeroinitializer }, align 32
@alt_gpio_irq_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 1603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014AT91: No type for GPIO irq offset %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alt_gpio_irq_type\00", [46 x i8] zeroinitializer }, align 32
@alt_gpio_irq_type._entry_ptr = internal global ptr @alt_gpio_irq_type._entry, section ".printk_index", align 4
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pinctrl-at91\00", [19 x i8] zeroinitializer }, align 32
@at91_pinctrl_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9x5_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91rm9200_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sam9x60_ops }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@at91_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1372, ptr @.str.39, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"All GPIO chips are not registered yet (%d/%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at91_pinctrl_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@at91_pinctrl_probe._entry_ptr = internal global ptr @at91_pinctrl_probe._entry, section ".printk_index", align 4
@at91_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr null, ptr null, i32 0, ptr @at91_pctrl_ops, ptr @at91_pmx_ops, ptr @at91_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@at91_pinctrl_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.38, ptr @.str.2, i32 1400, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"could not register AT91 pinctrl driver\0A\00", [56 x i8] zeroinitializer }, align 32
@at91_pinctrl_probe._entry_ptr.42 = internal global ptr @at91_pinctrl_probe._entry.40, section ".printk_index", align 4
@at91_pinctrl_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.38, ptr @.str.2, i32 1409, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"initialized AT91 pinctrl driver\0A\00", [63 x i8] zeroinitializer }, align 32
@at91_pinctrl_probe._entry_ptr.45 = internal global ptr @at91_pinctrl_probe._entry.43, section ".printk_index", align 4
@at91_pinctrl_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1292, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"you need to specify at least one gpio-controller\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at91_pinctrl_probe_dt\00", [42 x i8] zeroinitializer }, align 32
@at91_pinctrl_probe_dt._entry_ptr = internal global ptr @at91_pinctrl_probe_dt._entry, section ".printk_index", align 4
@at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.47, ptr @.str.2, ptr @.str.49, i8 1, i8 69, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pinctrl_at91\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nmux = %d\0A\00", [21 x i8] zeroinitializer }, align 32
@at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.47, ptr @.str.2, ptr @.str.50, i8 1, i8 69, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mux-mask\0A\00", [22 x i8] zeroinitializer }, align 32
@at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.47, ptr @.str.2, ptr @.str.51, i8 1, i8 70, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d:%d\090x%x\0A\00", [20 x i8] zeroinitializer }, align 32
@at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.47, ptr @.str.2, ptr @.str.52, i8 1, i8 71, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfunctions = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.47, ptr @.str.2, ptr @.str.53, i8 1, i8 71, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ngroups = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.47, ptr @.str.2, ptr @.str.54, i8 1, i8 75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nbanks = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.47, ptr @.str.2, ptr @.str.52, i8 1, i8 75, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.47, ptr @.str.2, ptr @.str.53, i8 1, i8 76, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@at91_pinctrl_probe_dt._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.47, ptr @.str.2, i32 1337, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to parse function\0A\00", [38 x i8] zeroinitializer }, align 32
@at91_pinctrl_probe_dt._entry_ptr.57 = internal global ptr @at91_pinctrl_probe_dt._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atmel,mux-mask\00", [17 x i8] zeroinitializer }, align 32
@at91_pinctrl_mux_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1154, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can not read the mux-mask of %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at91_pinctrl_mux_mask\00", [42 x i8] zeroinitializer }, align 32
@at91_pinctrl_mux_mask._entry_ptr = internal global ptr @at91_pinctrl_mux_mask._entry, section ".printk_index", align 4
@at91_pinctrl_mux_mask._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 1160, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"wrong mux mask array should be by %d\0A\00", [58 x i8] zeroinitializer }, align 32
@at91_pinctrl_mux_mask._entry_ptr.63 = internal global ptr @at91_pinctrl_mux_mask._entry.61, section ".printk_index", align 4
@at91_pinctrl_mux_mask._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1173, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@at91_pinctrl_mux_mask._entry_ptr.65 = internal global ptr @at91_pinctrl_mux_mask._entry.64, section ".printk_index", align 4
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel,at91rm9200-gpio\00", [42 x i8] zeroinitializer }, align 32
@at91_pinctrl_parse_functions.grp_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@at91_pinctrl_parse_functions.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 1, i8 53, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"at91_pinctrl_parse_functions\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"parse function(%d): %pOFn\0A\00", [37 x i8] zeroinitializer }, align 32
@at91_pinctrl_parse_functions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 1245, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no groups defined\0A\00", [45 x i8] zeroinitializer }, align 32
@at91_pinctrl_parse_functions._entry_ptr = internal global ptr @at91_pinctrl_parse_functions._entry, section ".printk_index", align 4
@at91_pinctrl_parse_groups.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 1, i8 40, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"at91_pinctrl_parse_groups\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"group(%d): %pOFn\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atmel,pins\00", [21 x i8] zeroinitializer }, align 32
@at91_pinctrl_parse_groups._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.70, ptr @.str.2, i32 1199, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"wrong pins number or pins and configs should be by 4\0A\00", [42 x i8] zeroinitializer }, align 32
@at91_pinctrl_parse_groups._entry_ptr = internal global ptr @at91_pinctrl_parse_groups._entry, section ".printk_index", align 4
@at91_pin_dbg.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 -66, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"at91_pin_dbg\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"pio%c%d configured as periph%c with conf = 0x%lx\0A\00", [46 x i8] zeroinitializer }, align 32
@at91_pin_dbg.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.74, ptr @.str.2, ptr @.str.76, i8 0, i8 -65, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"pio%c%d configured as gpio with conf = 0x%lx\0A\00", [50 x i8] zeroinitializer }, align 32
@at91_pctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @at91_get_groups_count, ptr @at91_get_group_name, ptr @at91_get_group_pins, ptr @at91_pin_dbg_show, ptr @at91_dt_node_to_map, ptr @at91_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@at91_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @at91_pmx_get_funcs_count, ptr @at91_pmx_get_func_name, ptr @at91_pmx_get_groups, ptr @at91_pmx_set, ptr @at91_gpio_request_enable, ptr @at91_gpio_disable_free, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@at91_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr @at91_pinconf_get, ptr @at91_pinconf_set, ptr null, ptr null, ptr @at91_pinconf_dbg_show, ptr @at91_pinconf_group_dbg_show, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@at91_dt_node_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 289, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to find group for node %pOFn\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"at91_dt_node_to_map\00", [44 x i8] zeroinitializer }, align 32
@at91_dt_node_to_map._entry_ptr = internal global ptr @at91_dt_node_to_map._entry, section ".printk_index", align 4
@at91_dt_node_to_map.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 0, i8 81, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"maps: function %s group %s num %d\0A\00", [61 x i8] zeroinitializer }, align 32
@at91_pinctrl_find_group_by_name.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 0, i8 57, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"at91_pinctrl_find_group_by_name\00", [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: %d 0:%d\0A\00", [19 x i8] zeroinitializer }, align 32
@at91_pmx_set.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 -47, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"at91_pmx_set\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enable function %s group %s\0A\00", [35 x i8] zeroinitializer }, align 32
@pin_check_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 778, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: pin conf %d bank_id %d >= nbanks %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pin_check_config\00", [47 x i8] zeroinitializer }, align 32
@pin_check_config._entry_ptr = internal global ptr @pin_check_config._entry, section ".printk_index", align 4
@pin_check_config._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 784, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: pin conf %d bank_id %d not enabled\0A\00", [56 x i8] zeroinitializer }, align 32
@pin_check_config._entry_ptr.89 = internal global ptr @pin_check_config._entry.87, section ".printk_index", align 4
@pin_check_config._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.2, i32 790, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: pin conf %d pin_bank_id %d >= %d\0A\00", [58 x i8] zeroinitializer }, align 32
@pin_check_config._entry_ptr.92 = internal global ptr @pin_check_config._entry.90, section ".printk_index", align 4
@pin_check_config._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.86, ptr @.str.2, i32 801, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: pin conf %d mux_id %d >= nmux %d\0A\00", [58 x i8] zeroinitializer }, align 32
@pin_check_config._entry_ptr.95 = internal global ptr @pin_check_config._entry.93, section ".printk_index", align 4
@pin_check_config._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.86, ptr @.str.2, i32 807, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: pin conf %d mux_id %d not supported for pio%c%d\0A\00", [43 x i8] zeroinitializer }, align 32
@pin_check_config._entry_ptr.98 = internal global ptr @pin_check_config._entry.96, section ".printk_index", align 4
@at91_gpio_request_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 923, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid range\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"at91_gpio_request_enable\00", [39 x i8] zeroinitializer }, align 32
@at91_gpio_request_enable._entry_ptr = internal global ptr @at91_gpio_request_enable._entry, section ".printk_index", align 4
@at91_gpio_request_enable._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 927, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"missing GPIO chip in range\0A\00", [36 x i8] zeroinitializer }, align 32
@at91_gpio_request_enable._entry_ptr.103 = internal global ptr @at91_gpio_request_enable._entry.101, section ".printk_index", align 4
@at91_gpio_request_enable.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.100, ptr @.str.2, ptr @.str.104, i8 0, i8 -23, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enable pin %u as GPIO\0A\00", [41 x i8] zeroinitializer }, align 32
@at91_gpio_request_enable.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.100, ptr @.str.2, ptr @.str.105, i8 0, i8 -22, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"enable pin %u as PIO%c%d 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@at91_gpio_disable_free.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.106, ptr @.str.2, ptr @.str.107, i8 0, i8 -19, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"at91_gpio_disable_free\00", [41 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"disable pin %u as GPIO\0A\00", [40 x i8] zeroinitializer }, align 32
@at91_pinconf_get.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.108, ptr @.str.2, ptr @.str.109, i8 0, i8 -13, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"at91_pinconf_get\00", [47 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s:%d, pin_id=%d\00", [47 x i8] zeroinitializer }, align 32
@at91_pinconf_set.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.110, ptr @.str.2, ptr @.str.111, i8 0, i8 -1, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"at91_pinconf_set\00", [47 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%d, pin_id=%d, config=0x%lx\00", [33 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"|\00", [30 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MULTI_DRIVE\00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PULL_UP\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PULL_DOWN\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DIS_SCHMIT\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DEGLITCH\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DRIVE_STRENGTH_LOW\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DRIVE_STRENGTH_MED\00", [45 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DRIVE_STRENGTH_HI\00", [46 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SLEWRATE\00", [23 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DEBOUNCE\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"(%d)\00", [27 x i8] zeroinitializer }, align 32
@sama5d3_ops = internal constant { %struct.at91_pinctrl_mux_ops, [56 x i8] } { %struct.at91_pinctrl_mux_ops { ptr @at91_mux_pio3_get_periph, ptr @at91_mux_pio3_set_A_periph, ptr @at91_mux_pio3_set_B_periph, ptr @at91_mux_pio3_set_C_periph, ptr @at91_mux_pio3_set_D_periph, ptr @at91_mux_pio3_get_deglitch, ptr @at91_mux_pio3_set_deglitch, ptr @at91_mux_pio3_get_debounce, ptr @at91_mux_pio3_set_debounce, ptr @at91_mux_pio3_get_pulldown, ptr @at91_mux_pio3_set_pulldown, ptr @at91_mux_pio3_get_schmitt_trig, ptr @at91_mux_pio3_disable_schmitt_trig, ptr @at91_mux_sama5d3_get_drivestrength, ptr @at91_mux_sama5d3_set_drivestrength, ptr null, ptr null, ptr @alt_gpio_irq_type }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.125 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 96]
@__sancov_gen_cov_switch_values.127 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 96]
@___asan_gen_.128 = private unnamed_addr constant [11 x i8] c"gpio_banks\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 50, i32 12 }
@___asan_gen_.131 = private unnamed_addr constant [11 x i8] c"gpio_chips\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 48, i32 31 }
@___asan_gen_.134 = private unnamed_addr constant [8 x i8] c"backups\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1621, i32 12 }
@___asan_gen_.137 = private unnamed_addr constant [8 x i8] c"wakeups\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1620, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1661, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1945, i32 39 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"at91_gpio_driver\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1929, i32 31 }
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c"at91_pinctrl_driver\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1937, i32 31 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1931, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant [19 x i8] c"at91_gpio_of_match\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1807, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1822, i32 38 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1857, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1864, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [19 x i8] c"at91_gpio_template\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1793, i32 31 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1876, i32 32 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1878, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1893, i32 36 }
@___asan_gen_.206 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1909, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1916, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1924, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1500, i32 17 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1503, i32 18 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1504, i32 18 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1506, i32 11 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1506, i32 22 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1507, i32 18 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1509, i32 11 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1509, i32 19 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1511, i32 18 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1739, i32 23 }
@___asan_gen_.257 = private unnamed_addr constant [15 x i8] c"at91sam9x5_ops\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 700, i32 42 }
@___asan_gen_.260 = private unnamed_addr constant [15 x i8] c"at91rm9200_ops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 691, i32 42 }
@___asan_gen_.263 = private unnamed_addr constant [12 x i8] c"sam9x60_ops\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 719, i32 42 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1603, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1939, i32 11 }
@___asan_gen_.278 = private unnamed_addr constant [22 x i8] c"at91_pinctrl_of_match\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1266, i32 34 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1370, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [18 x i8] c"at91_pinctrl_desc\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1120, i32 28 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1400, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1409, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1292, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1300, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1302, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1306, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1310, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1311, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1326, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1337, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1152, i32 29 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1154, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1160, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1173, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1127, i32 34 }
@___asan_gen_.368 = private unnamed_addr constant [10 x i8] c"grp_index\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1234, i32 13 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1237, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1245, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1186, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1195, i32 29 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1199, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 762, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 765, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant [15 x i8] c"at91_pctrl_ops\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 334, i32 33 }
@___asan_gen_.410 = private unnamed_addr constant [13 x i8] c"at91_pmx_ops\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 955, i32 32 }
@___asan_gen_.413 = private unnamed_addr constant [17 x i8] c"at91_pinconf_ops\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1113, i32 33 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 268, i32 16 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 288, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 323, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 228, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 836, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 777, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 783, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 789, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 800, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 806, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 923, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 927, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 933, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 937, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 951, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 974, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1021, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1087, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1088, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1089, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1090, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1091, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1092, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1094, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1096, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1098, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1099, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1102, i32 17 }
@___asan_gen_.551 = private unnamed_addr constant [12 x i8] c"sama5d3_ops\00", align 1
@___asan_gen_.552 = private constant [34 x i8] c"../drivers/pinctrl/pinctrl-at91.c\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 740, i32 42 }
@llvm.compiler.used = appending global [168 x ptr] [ptr @__initcall__kmod_pinctrl_at91__249_1954_at91_pinctrl_init3, ptr @alt_gpio_irq_type._entry, ptr @alt_gpio_irq_type._entry_ptr, ptr @at91_dt_node_to_map._entry, ptr @at91_dt_node_to_map._entry_ptr, ptr @at91_gpio_probe._entry, ptr @at91_gpio_probe._entry.13, ptr @at91_gpio_probe._entry.17, ptr @at91_gpio_probe._entry.21, ptr @at91_gpio_probe._entry.9, ptr @at91_gpio_probe._entry_ptr, ptr @at91_gpio_probe._entry_ptr.11, ptr @at91_gpio_probe._entry_ptr.15, ptr @at91_gpio_probe._entry_ptr.20, ptr @at91_gpio_probe._entry_ptr.23, ptr @at91_gpio_request_enable._entry, ptr @at91_gpio_request_enable._entry.101, ptr @at91_gpio_request_enable._entry_ptr, ptr @at91_gpio_request_enable._entry_ptr.103, ptr @at91_pinctrl_gpio_suspend._entry, ptr @at91_pinctrl_gpio_suspend._entry_ptr, ptr @at91_pinctrl_mux_mask._entry, ptr @at91_pinctrl_mux_mask._entry.61, ptr @at91_pinctrl_mux_mask._entry.64, ptr @at91_pinctrl_mux_mask._entry_ptr, ptr @at91_pinctrl_mux_mask._entry_ptr.63, ptr @at91_pinctrl_mux_mask._entry_ptr.65, ptr @at91_pinctrl_parse_functions._entry, ptr @at91_pinctrl_parse_functions._entry_ptr, ptr @at91_pinctrl_parse_groups._entry, ptr @at91_pinctrl_parse_groups._entry_ptr, ptr @at91_pinctrl_probe._entry, ptr @at91_pinctrl_probe._entry.40, ptr @at91_pinctrl_probe._entry.43, ptr @at91_pinctrl_probe._entry_ptr, ptr @at91_pinctrl_probe._entry_ptr.42, ptr @at91_pinctrl_probe._entry_ptr.45, ptr @at91_pinctrl_probe_dt._entry, ptr @at91_pinctrl_probe_dt._entry.55, ptr @at91_pinctrl_probe_dt._entry_ptr, ptr @at91_pinctrl_probe_dt._entry_ptr.57, ptr @pin_check_config._entry, ptr @pin_check_config._entry.87, ptr @pin_check_config._entry.90, ptr @pin_check_config._entry.93, ptr @pin_check_config._entry.96, ptr @pin_check_config._entry_ptr, ptr @pin_check_config._entry_ptr.89, ptr @pin_check_config._entry_ptr.92, ptr @pin_check_config._entry_ptr.95, ptr @pin_check_config._entry_ptr.98, ptr @gpio_banks, ptr @gpio_chips, ptr @backups, ptr @wakeups, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @drivers, ptr @at91_gpio_driver, ptr @at91_pinctrl_driver, ptr @.str.3, ptr @at91_gpio_of_match, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @at91_gpio_template, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @at91_gpio_probe.lock_key, ptr @at91_gpio_probe.request_key, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @at91sam9x5_ops, ptr @at91rm9200_ops, ptr @sam9x60_ops, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @at91_pinctrl_of_match, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @at91_pinctrl_desc, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.66, ptr @at91_pinctrl_parse_functions.grp_index, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @at91_pctrl_ops, ptr @at91_pmx_ops, ptr @at91_pinconf_ops, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @sama5d3_ops], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_banks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_chips to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backups to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeups to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pinctrl_gpio_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_gpio_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_gpio_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_gpio_template to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_gpio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_gpio_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_gpio_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9x5_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91rm9200_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x60_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alt_gpio_irq_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pinctrl_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pinctrl_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pinctrl_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pinctrl_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pinctrl_probe_dt._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pinctrl_mux_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pinctrl_mux_mask._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pinctrl_mux_mask._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pinctrl_parse_functions.grp_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pinctrl_parse_functions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pinctrl_parse_groups._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_dt_node_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_check_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_check_config._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_check_config._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_check_config._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_check_config._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_gpio_request_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_gpio_request_enable._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d3_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @at91_pinctrl_gpio_suspend() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gpio_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp28 = icmp sgt i32 %0, 0
  br i1 %cmp28, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %i.029
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %regbase = getelementptr inbounds %struct.at91_gpio_chip, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regbase, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 72
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %arrayidx2 = getelementptr [5 x i32], ptr @backups, i32 0, i32 %i.029
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx2, align 4
  %add.ptr4 = getelementptr i8, ptr %4, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #8, !srcloc !296
  %arrayidx5 = getelementptr [5 x i32], ptr @wakeups, i32 0, i32 %i.029
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %add.ptr6 = getelementptr i8, ptr %4, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %10) #8, !srcloc !296
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.then9, label %do.end

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %clock = getelementptr inbounds %struct.at91_gpio_chip, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clock, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  tail call void @clk_unprepare(ptr noundef %16) #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw i32 %i.029, 65
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %add, i32 noundef %12) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then9, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.029, 1
  %17 = load i32, ptr @gpio_banks, align 4
  %cmp = icmp slt i32 %inc, %17
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @at91_pinctrl_gpio_resume() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gpio_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp18 = icmp sgt i32 %0, 0
  br i1 %cmp18, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %i.019
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %regbase = getelementptr inbounds %struct.at91_gpio_chip, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regbase, align 4
  %arrayidx2 = getelementptr [5 x i32], ptr @wakeups, i32 0, i32 %i.019
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %clock = getelementptr inbounds %struct.at91_gpio_chip, ptr %2, i32 0, i32 7
  %7 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clock, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.i:                                         ; preds = %if.then4
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6_crit_edge, label %if.then3.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %8) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then3.i, %if.end.i.if.end6_crit_edge, %if.then4.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %add.ptr = getelementptr i8, ptr %4, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #8, !srcloc !296
  %arrayidx8 = getelementptr [5 x i32], ptr @backups, i32 0, i32 %i.019
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %add.ptr9 = getelementptr i8, ptr %4, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %14) #8, !srcloc !296
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %15 = load i32, ptr @gpio_banks, align 4
  %cmp = icmp slt i32 %inc, %15
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

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_pinctrl_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 2, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_gpio_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %ngpio = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ngpio) #8
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ngpio, align 4, !annotation !297
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp = icmp ugt i32 %call, 4
  br i1 %cmp, label %do.body2, label %do.end7, !prof !298

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/pinctrl-at91.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1826, 0\0A.popsection", ""() #8, !srcloc !299
  unreachable

do.end7:                                          ; preds = %entry
  %arrayidx = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %call
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %if.end10, label %do.end7.do.end110_crit_edge

do.end7.do.end110_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end110

if.end10:                                         ; preds = %do.end7
  %call11 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.do.end110_crit_edge, label %if.end14

if.end10.do.end110_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end110

if.end14:                                         ; preds = %if.end10
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 412, i32 noundef 3520) #8
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %if.end14.do.end110_crit_edge, label %if.end19

if.end14.do.end110_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end110

if.end19:                                         ; preds = %if.end14
  %call20 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regbase = getelementptr inbounds %struct.at91_gpio_chip, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %regbase to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call20, ptr %regbase, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call20 to i32
  br label %do.end110

if.end26:                                         ; preds = %if.end19
  %call28 = tail call ptr @of_match_device(ptr noundef nonnull @at91_gpio_of_match, ptr noundef %dev) #8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call28, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %ops = getelementptr inbounds %struct.at91_gpio_chip, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %ops, align 4
  %pioc_virq = getelementptr inbounds %struct.at91_gpio_chip, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %pioc_virq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call11, ptr %pioc_virq, align 4
  %pioc_idx = getelementptr inbounds %struct.at91_gpio_chip, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %pioc_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call, ptr %pioc_idx, align 4
  %call30 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clock = getelementptr inbounds %struct.at91_gpio_chip, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call30, ptr %clock, align 4
  %cmp.i193 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i193, label %do.end36, label %if.end40

do.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #11
  %13 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clock, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %do.end110

if.end40:                                         ; preds = %if.end26
  %call.i194 = tail call i32 @clk_prepare(ptr noundef %call30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool.not.i = icmp eq i32 %call.i194, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end40.do.end47_crit_edge

if.end40.do.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

if.end.i:                                         ; preds = %if.end40
  %call1.i = tail call i32 @clk_enable(ptr noundef %call30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end49, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call30) #8
  br label %do.end47

do.end47:                                         ; preds = %if.then3.i, %if.end40.do.end47_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i194, %if.end40.do.end47_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  br label %clk_enable_err

if.end49:                                         ; preds = %if.end.i
  %16 = call ptr @memcpy(ptr %call.i, ptr @at91_gpio_template, i32 348)
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i195 = icmp eq ptr %18, null
  br i1 %tobool.not.i195, label %if.end.i196, label %if.end49.dev_name.exit_crit_edge

if.end49.dev_name.exit_crit_edge:                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i196:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i196, %if.end49.dev_name.exit_crit_edge
  %retval.0.i197 = phi ptr [ %20, %if.end.i196 ], [ %18, %if.end49.dev_name.exit_crit_edge ]
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.i197, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %owner, align 4
  %mul = shl nuw nsw i32 %call, 5
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %24 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %base, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %ngpio, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool56.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool56.not, label %if.then57, label %dev_name.exit.if.end66_crit_edge

dev_name.exit.if.end66_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then57:                                        ; preds = %dev_name.exit
  %25 = ptrtoint ptr %ngpio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %26)
  %cmp58 = icmp ugt i32 %26, 31
  br i1 %cmp58, label %do.end62, label %if.else

do.end62:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call, i32 noundef 32, i32 noundef 32) #11
  br label %if.end66

if.else:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %26 to i16
  %ngpio64 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %27 = ptrtoint ptr %ngpio64 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv, ptr %ngpio64, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else, %do.end62, %dev_name.exit.if.end66_crit_edge
  %ngpio68 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %28 = ptrtoint ptr %ngpio68 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ngpio68, align 4
  %conv69 = zext i16 %29 to i32
  %30 = shl nuw nsw i32 %conv69, 2
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %30, i32 noundef 3520) #8
  %tobool71.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool71.not, label %if.end66.clk_enable_err_crit_edge, label %for.cond.preheader

if.end66.clk_enable_err_crit_edge:                ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_enable_err

for.cond.preheader:                               ; preds = %if.end66
  %31 = ptrtoint ptr %ngpio68 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ngpio68, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp76204.not = icmp eq i16 %32, 0
  br i1 %cmp76204.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add = add nuw nsw i32 %call, 65
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0205 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %call78 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.16, i32 noundef %add, i32 noundef %i.0205) #8
  %arrayidx79 = getelementptr ptr, ptr %call5.i.i, i32 %i.0205
  %33 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call78, ptr %arrayidx79, align 4
  %inc = add nuw nsw i32 %i.0205, 1
  %34 = ptrtoint ptr %ngpio68 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ngpio68, align 4
  %conv75 = zext i16 %35 to i32
  %cmp76 = icmp ult i32 %inc, %conv75
  br i1 %cmp76, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast = zext i16 %35 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.cast, %for.end.loopexit ], [ 0, %for.cond.preheader.for.end_crit_edge ]
  %names80 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 22
  %36 = ptrtoint ptr %names80 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call5.i.i, ptr %names80, align 4
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %name = getelementptr inbounds %struct.at91_gpio_chip, ptr %call.i, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %name, align 4
  %id = getelementptr inbounds %struct.at91_gpio_chip, ptr %call.i, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call, ptr %id, align 4
  %base85 = getelementptr inbounds %struct.at91_gpio_chip, ptr %call.i, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %base85 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul, ptr %base85, align 4
  %pin_base = getelementptr inbounds %struct.at91_gpio_chip, ptr %call.i, i32 0, i32 1, i32 4
  %42 = ptrtoint ptr %pin_base to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul, ptr %pin_base, align 4
  %npins = getelementptr inbounds %struct.at91_gpio_chip, ptr %call.i, i32 0, i32 1, i32 5
  %43 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.lcssa, ptr %npins, align 4
  %gc = getelementptr inbounds %struct.at91_gpio_chip, ptr %call.i, i32 0, i32 1, i32 7
  %44 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %gc, align 4
  %call88 = call fastcc i32 @at91_gpio_of_irq_setup(ptr noundef %pdev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %for.end.clk_enable_err_crit_edge

for.end.clk_enable_err_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_enable_err

if.end91:                                         ; preds = %for.end
  %call93 = call i32 @gpiochip_add_data_with_key(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @at91_gpio_probe.lock_key, ptr noundef nonnull @at91_gpio_probe.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end91.clk_enable_err_crit_edge

if.end91.clk_enable_err_crit_edge:                ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_enable_err

if.end96:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %arrayidx, align 4
  %46 = load i32, ptr @gpio_banks, align 4
  %add98 = add i32 %call, 1
  %47 = call i32 @llvm.smax.i32(i32 %46, i32 %add98)
  store i32 %47, ptr @gpio_banks, align 4
  %48 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regbase, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %49) #11
  br label %cleanup

clk_enable_err:                                   ; preds = %if.end91.clk_enable_err_crit_edge, %for.end.clk_enable_err_crit_edge, %if.end66.clk_enable_err_crit_edge, %do.end47
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end47 ], [ %call88, %for.end.clk_enable_err_crit_edge ], [ %call93, %if.end91.clk_enable_err_crit_edge ], [ -12, %if.end66.clk_enable_err_crit_edge ]
  %50 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clock, align 4
  call void @clk_disable(ptr noundef %51) #8
  call void @clk_unprepare(ptr noundef %51) #8
  br label %do.end110

do.end110:                                        ; preds = %clk_enable_err, %do.end36, %if.then23, %if.end14.do.end110_crit_edge, %if.end10.do.end110_crit_edge, %do.end7.do.end110_crit_edge
  %ret.1 = phi i32 [ %6, %if.then23 ], [ %15, %do.end36 ], [ %ret.0, %clk_enable_err ], [ -16, %do.end7.do.end110_crit_edge ], [ %call11, %if.end10.do.end110_crit_edge ], [ -12, %if.end14.do.end110_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %ret.1, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end110, %if.end96
  %retval.0 = phi i32 [ %ret.1, %do.end110 ], [ 0, %if.end96 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ngpio) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at91_gpio_of_irq_setup(ptr noundef %pdev, ptr noundef %at91_gpio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pioc_virq = getelementptr inbounds %struct.at91_gpio_chip, ptr %at91_gpio, i32 0, i32 4
  %0 = ptrtoint ptr %pioc_virq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pioc_virq, align 4
  %call = tail call ptr @irq_get_irq_data(i32 noundef %1) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 136, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %pioc_hwirq = getelementptr inbounds %struct.at91_gpio_chip, ptr %at91_gpio, i32 0, i32 3
  %4 = ptrtoint ptr %pioc_hwirq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pioc_hwirq, align 4
  %name = getelementptr inbounds %struct.irq_chip, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.33, ptr %name, align 4
  %irq_ack = getelementptr inbounds %struct.irq_chip, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @gpio_irq_ack, ptr %irq_ack, align 4
  %irq_disable = getelementptr inbounds %struct.irq_chip, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %irq_disable to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @gpio_irq_mask, ptr %irq_disable, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @gpio_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gpio_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_wake = getelementptr inbounds %struct.irq_chip, ptr %call.i, i32 0, i32 14
  %10 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @gpio_irq_set_wake, ptr %irq_set_wake, align 4
  %ops = getelementptr inbounds %struct.at91_gpio_chip, ptr %at91_gpio, i32 0, i32 8
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %irq_type = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %irq_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_type, align 4
  %irq_set_type = getelementptr inbounds %struct.irq_chip, ptr %call.i, i32 0, i32 13
  %15 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %irq_set_type, align 4
  %regbase = getelementptr inbounds %struct.at91_gpio_chip, ptr %at91_gpio, i32 0, i32 6
  %16 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regbase, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #8, !srcloc !296
  %irq = getelementptr inbounds %struct.gpio_chip, ptr %at91_gpio, i32 0, i32 37
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %irq, align 4
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %at91_gpio, i32 0, i32 37, i32 10
  %19 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %at91_gpio, i32 0, i32 37, i32 9
  %20 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @handle_edge_irq, ptr %handler, align 4
  %21 = ptrtoint ptr %pioc_virq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pioc_virq, align 4
  %call.i55 = tail call ptr @irq_get_irq_data(i32 noundef %22) #8
  %tobool.not.i = icmp eq ptr %call.i55, null
  br i1 %tobool.not.i, label %if.end.if.then7_crit_edge, label %irq_get_handler_data.exit

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

irq_get_handler_data.exit:                        ; preds = %if.end
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call.i55, i32 0, i32 3
  %23 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %common.i, align 4
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handler_data.i, align 4
  %tobool6.not = icmp eq ptr %26, null
  br i1 %tobool6.not, label %irq_get_handler_data.exit.if.then7_crit_edge, label %if.end16

irq_get_handler_data.exit.if.then7_crit_edge:     ; preds = %irq_get_handler_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.then7:                                         ; preds = %irq_get_handler_data.exit.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %parent_handler = getelementptr inbounds %struct.gpio_chip, ptr %at91_gpio, i32 0, i32 37, i32 13
  %27 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @gpio_irq_handler, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.gpio_chip, ptr %at91_gpio, i32 0, i32 37, i32 15
  %28 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %num_parents, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3520) #8
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %at91_gpio, i32 0, i32 37, i32 16
  %29 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call5.i.i, ptr %parents, align 4
  %tobool11.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool11.not, label %if.then7.cleanup_crit_edge, label %if.end13

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %pioc_virq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pioc_virq, align 4
  %32 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %call5.i.i, align 4
  br label %cleanup

if.end16:                                         ; preds = %irq_get_handler_data.exit
  %call17 = tail call ptr @gpiochip_get_data(ptr noundef nonnull %26) #8
  %next = getelementptr inbounds %struct.at91_gpio_chip, ptr %call17, i32 0, i32 2
  %33 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %next, align 4
  %tobool18.not = icmp eq ptr %34, null
  br i1 %tobool18.not, label %if.end16.if.else_crit_edge, label %for.cond

if.end16.if.else_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.cond:                                         ; preds = %if.end16
  %next.1 = getelementptr inbounds %struct.at91_gpio_chip, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %next.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %next.1, align 4
  %tobool18.not.1 = icmp eq ptr %36, null
  br i1 %tobool18.not.1, label %for.cond.if.else_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.if.else_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %for.cond.if.else_crit_edge, %if.end16.if.else_crit_edge
  %prev.058.lcssa = phi ptr [ %call17, %if.end16.if.else_crit_edge ], [ %34, %for.cond.if.else_crit_edge ]
  %next.le = getelementptr inbounds %struct.at91_gpio_chip, ptr %prev.058.lcssa, i32 0, i32 2
  %37 = ptrtoint ptr %next.le to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %at91_gpio, ptr %next.le, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %for.cond.cleanup_crit_edge, %if.end13, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ 0, %if.end13 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then7.cleanup_crit_edge ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %regbase = getelementptr inbounds %struct.at91_gpio_chip, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %3 = xor i32 %2, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = lshr i32 %4, %offset
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %regbase = getelementptr inbounds %struct.at91_gpio_chip, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase, align 4
  %shl = shl nuw i32 1, %offset
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !296
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %regbase = getelementptr inbounds %struct.at91_gpio_chip, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase, align 4
  %shl = shl nuw i32 1, %offset
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %cond = select i1 %tobool.not, i32 52, i32 48
  %add.ptr = getelementptr i8, ptr %1, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !296
  %add.ptr1 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #8, !srcloc !296
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_gpio_get(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %regbase = getelementptr inbounds %struct.at91_gpio_chip, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = lshr i32 %3, %offset
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %regbase = getelementptr inbounds %struct.at91_gpio_chip, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase, align 4
  %shl = shl nuw i32 1, %offset
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %cond = select i1 %tobool.not, i32 52, i32 48
  %add.ptr = getelementptr i8, ptr %1, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !296
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_gpio_set_multiple(ptr noundef %chip, ptr nocapture noundef readonly %mask, ptr nocapture noundef readonly %bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %regbase = getelementptr inbounds %struct.at91_gpio_chip, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase, align 4
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %7)
  %cmp = icmp eq i16 %7, 32
  %conv = zext i16 %7 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %cond = select i1 %cmp, i32 -1, i32 %sub
  %neg = xor i32 %5, -1
  %and = and i32 %cond, %3
  %and4 = and i32 %and, %5
  %and18 = and i32 %and, %neg
  %8 = tail call i32 @llvm.bswap.i32(i32 %and4)
  %add.ptr = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #8, !srcloc !296
  %9 = tail call i32 @llvm.bswap.i32(i32 %and18)
  %add.ptr19 = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %9) #8, !srcloc !296
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_gpio_dbg_show(ptr noundef %s, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %regbase = getelementptr inbounds %struct.at91_gpio_chip, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp39.not = icmp eq i16 %3, 0
  br i1 %cmp39.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ops = getelementptr inbounds %struct.at91_gpio_chip, ptr %call, i32 0, i32 8
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %add.ptr12 = getelementptr i8, ptr %1, i32 60
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call2 = tail call ptr @gpiochip_is_requested(ptr noundef %chip, i32 noundef %i.040) #8
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  %shl.i = shl nuw i32 1, %i.040
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call6 = tail call i32 %7(ptr noundef %1, i32 noundef %shl.i) #8
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef nonnull %call2, ptr noundef %9, i32 noundef %i.040) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.else18

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25) #8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %and = and i32 %11, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.28, ptr @.str.27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond) #8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !295
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %and15 = and i32 %13, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond17 = select i1 %tobool16.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond17) #8
  br label %for.inc

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %call6, 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.32, i32 noundef %sub) #8
  br label %for.inc

for.inc:                                          ; preds = %if.else18, %if.then9, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %14 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %15 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_is_requested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gpio_irq_ack(ptr nocapture noundef %d) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_irq_mask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %regbase = getelementptr inbounds %struct.at91_gpio_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %5
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !296
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_irq_unmask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %regbase = getelementptr inbounds %struct.at91_gpio_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %5
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !296
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %pioc_idx = getelementptr inbounds %struct.at91_gpio_chip, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pioc_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pioc_idx, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !298

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool2.not = icmp eq i32 %state, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [5 x i32], ptr @wakeups, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %or = or i32 %7, %shl
  store i32 %or, ptr %arrayidx, align 4
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %shl, -1
  %arrayidx4 = getelementptr [5 x i32], ptr @wakeups, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %and = and i32 %9, %neg
  store i32 %and, ptr %arrayidx4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %pioc_virq = getelementptr inbounds %struct.at91_gpio_chip, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %pioc_virq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pioc_virq, align 4
  %call6 = tail call i32 @irq_set_irq_wake(i32 noundef %11, i32 noundef %state) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_irq_handler(ptr noundef %desc) #0 align 64 {
entry:
  %isr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %call2 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %regbase = getelementptr inbounds %struct.at91_gpio_chip, ptr %call2, i32 0, i32 6
  %4 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %isr) #8
  %6 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %isr, align 4, !annotation !297
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.for.cond.outer.preheader_crit_edge

entry.for.cond.outer.preheader_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.outer.preheader

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %10(ptr noundef %irq_data.i) #8
  br label %for.cond.outer.preheader

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %12(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %14, null
  br i1 %tobool5.not.i, label %if.else.i.for.cond.outer.preheader_crit_edge, label %if.then6.i

if.else.i.for.cond.outer.preheader_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.outer.preheader

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %14(ptr noundef %irq_data4.i) #8
  br label %for.cond.outer.preheader

for.cond.outer.preheader:                         ; preds = %if.then6.i, %if.else.i.for.cond.outer.preheader_crit_edge, %if.then2.i, %entry.for.cond.outer.preheader_crit_edge
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.end, %for.cond.outer.preheader
  %pio.0.ph = phi ptr [ %28, %if.end ], [ %5, %for.cond.outer.preheader ]
  %at91_gpio.0.ph = phi ptr [ %26, %if.end ], [ %call2, %for.cond.outer.preheader ]
  %gpio_chip.0.ph = phi ptr [ %26, %if.end ], [ %3, %for.cond.outer.preheader ]
  %add.ptr = getelementptr i8, ptr %pio.0.ph, i32 76
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %add.ptr5 = getelementptr i8, ptr %pio.0.ph, i32 72
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !295
  %17 = and i32 %16, %15
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %isr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not37 = icmp eq i32 %17, 0
  br i1 %tobool.not37, label %for.cond.outer.if.then_crit_edge, label %if.end13.lr.ph

for.cond.outer.if.then_crit_edge:                 ; preds = %for.cond.outer
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end13.lr.ph:                                   ; preds = %for.cond.outer
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %gpio_chip.0.ph, i32 0, i32 37, i32 1
  br label %if.end13

for.cond.loopexit:                                ; preds = %for.body.for.cond.loopexit_crit_edge, %if.end13.for.cond.loopexit_crit_edge
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !295
  %22 = and i32 %21, %20
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %isr, align 4
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %for.cond.loopexit.if.then_crit_edge, label %for.cond.loopexit.if.end13_crit_edge

for.cond.loopexit.if.end13_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

for.cond.loopexit.if.then_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %for.cond.loopexit.if.then_crit_edge, %for.cond.outer.if.then_crit_edge
  %next = getelementptr inbounds %struct.at91_gpio_chip, ptr %at91_gpio.0.ph, i32 0, i32 2
  %25 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %next, align 4
  %tobool8.not = icmp eq ptr %26, null
  br i1 %tobool8.not, label %for.end18, label %if.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %regbase11 = getelementptr inbounds %struct.at91_gpio_chip, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %regbase11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regbase11, align 4
  br label %for.cond.outer

if.end13:                                         ; preds = %for.cond.loopexit.if.end13_crit_edge, %if.end13.lr.ph
  %call14 = call i32 @_find_next_bit_be(ptr noundef nonnull %isr, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call14)
  %cmp35 = icmp slt i32 %call14, 32
  br i1 %cmp35, label %if.end13.for.body_crit_edge, label %if.end13.for.cond.loopexit_crit_edge

if.end13.for.cond.loopexit_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end13.for.body_crit_edge
  %n.036 = phi i32 [ %call17, %for.body.for.body_crit_edge ], [ %call14, %if.end13.for.body_crit_edge ]
  %29 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %domain, align 4
  %call16 = call i32 @generic_handle_domain_irq(ptr noundef %30, i32 noundef %n.036) #8
  %add = add nsw i32 %n.036, 1
  %call17 = call i32 @_find_next_bit_be(ptr noundef nonnull %isr, i32 noundef 32, i32 noundef %add) #8
  %cmp = icmp slt i32 %call17, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond.loopexit_crit_edge

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end18:                                        ; preds = %if.then
  %31 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i32 = icmp eq ptr %32, null
  br i1 %tobool.not.i32, label %if.else.i33, label %for.end18.chained_irq_exit.exit_crit_edge

for.end18.chained_irq_exit.exit_crit_edge:        ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i33:                                      ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i33, %for.end18.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %34, %if.else.i33 ], [ %32, %for.end18.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %isr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_mux_pio3_get_periph(ptr noundef %pio, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pio, i32 8
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %and = and i32 %1, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr2 = getelementptr i8, ptr %pio, i32 112
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !295
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and5 = and i32 %3, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %add.ptr9 = getelementptr i8, ptr %pio, i32 116
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !295
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and12 = and i32 %5, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %shl = select i1 %tobool13.not, i32 0, i32 2
  %or = select i1 %tobool6.not, i32 1, i32 2
  %add = add nuw nsw i32 %or, %shl
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_mux_pio3_set_A_periph(ptr noundef %pio, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pio, i32 112
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %neg = xor i32 %mask, -1
  %and = and i32 %1, %neg
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !296
  %add.ptr3 = getelementptr i8, ptr %pio, i32 116
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !295
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and7 = and i32 %4, %neg
  %5 = tail call i32 @llvm.bswap.i32(i32 %and7)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #8, !srcloc !296
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_mux_pio3_set_B_periph(ptr noundef %pio, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pio, i32 112
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %or = or i32 %1, %mask
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !296
  %add.ptr3 = getelementptr i8, ptr %pio, i32 116
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !295
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %neg = xor i32 %mask, -1
  %and = and i32 %4, %neg
  %5 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #8, !srcloc !296
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_mux_pio3_set_C_periph(ptr noundef %pio, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pio, i32 112
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %neg = xor i32 %mask, -1
  %and = and i32 %1, %neg
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !296
  %add.ptr3 = getelementptr i8, ptr %pio, i32 116
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !295
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or = or i32 %4, %mask
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #8, !srcloc !296
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_mux_pio3_set_D_periph(ptr noundef %pio, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pio, i32 112
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %or = or i32 %1, %mask
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !296
  %add.ptr3 = getelementptr i8, ptr %pio, i32 116
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !295
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or6 = or i32 %4, %mask
  %5 = tail call i32 @llvm.bswap.i32(i32 %or6)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #8, !srcloc !296
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @at91_mux_pio3_get_deglitch(ptr noundef %pio, i32 noundef %pin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pio, i32 40
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %2 = shl nuw i32 1, %pin
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr2 = getelementptr i8, ptr %pio, i32 136
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !295
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = and i32 %5, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool7.not, %if.then ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_mux_pio3_set_deglitch(ptr noundef %pio, i32 noundef %mask, i1 noundef zeroext %is_on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_on, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = tail call i32 @llvm.bswap.i32(i32 %mask) #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %mask)
  %add.ptr = getelementptr i8, ptr %pio, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !296
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %0, %if.then ]
  %cond.i = phi i32 [ 36, %entry.if.end_crit_edge ], [ 32, %if.then ]
  %add.ptr.i = getelementptr i8, ptr %pio, i32 %cond.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %.pre-phi) #8, !srcloc !296
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @at91_mux_pio3_get_debounce(ptr noundef %pio, i32 noundef %pin, ptr nocapture noundef writeonly %div) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pio, i32 140
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %2 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %div, align 4
  %add.ptr2 = getelementptr i8, ptr %pio, i32 40
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !295
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = shl nuw i32 1, %pin
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr6 = getelementptr i8, ptr %pio, i32 136
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !295
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = and i32 %8, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11 = icmp ne i32 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %10 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool11, %land.rhs ]
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_mux_pio3_set_debounce(ptr noundef %pio, i32 noundef %mask, i1 noundef zeroext %is_on, i32 noundef %div) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %mask)
  br i1 %is_on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %pio, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !296
  %and = and i32 %div, 16383
  %1 = tail call i32 @llvm.bswap.i32(i32 %and)
  %add.ptr1 = getelementptr i8, ptr %pio, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %1) #8, !srcloc !296
  %add.ptr2 = getelementptr i8, ptr %pio, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %0) #8, !srcloc !296
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3 = getelementptr i8, ptr %pio, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %0) #8, !srcloc !296
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @at91_mux_pio3_get_pulldown(ptr noundef %pio, i32 noundef %pin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pio, i32 152
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %2 = shl nuw i32 1, %pin
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_mux_pio3_set_pulldown(ptr noundef %pio, i32 noundef %mask, i1 noundef zeroext %is_on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %mask)
  br i1 %is_on, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %pio, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !296
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cond = phi i32 [ 148, %if.then ], [ 144, %entry.if.end_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %pio, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %0) #8, !srcloc !296
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @at91_mux_pio3_get_schmitt_trig(ptr noundef %pio, i32 noundef %pin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pio, i32 256
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %2 = shl nuw i32 1, %pin
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_mux_pio3_disable_schmitt_trig(ptr noundef %pio, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pio, i32 256
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %or = or i32 %1, %mask
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !296
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_mux_sam9x5_get_drivestrength(ptr noundef %pio, i32 noundef %pin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %pin)
  %cmp.i = icmp ugt i32 %pin, 15
  %cond.i = select i1 %cmp.i, i32 280, i32 276
  %add.ptr = getelementptr i8, ptr %pio, i32 %cond.i
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #8
  %2 = shl i32 %pin, 1
  %3 = add i32 %2, -32
  %mul.i.i = select i1 %cmp.i, i32 %3, i32 %2
  %shr.i = lshr i32 %1, %mul.i.i
  %and.i = and i32 %shr.i, 3
  %sub = sub nuw nsw i32 96, %and.i
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_mux_sam9x5_set_drivestrength(ptr noundef %pio, i32 noundef %pin, i32 noundef %setting) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %setting)
  %tobool.not = icmp eq i32 %setting, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 96, %setting
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %pin)
  %cmp.i = icmp ugt i32 %pin, 15
  %cond.i = select i1 %cmp.i, i32 280, i32 276
  %add.ptr = getelementptr i8, ptr %pio, i32 %cond.i
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #8
  %2 = shl i32 %pin, 1
  %3 = add i32 %2, -32
  %mul.i.i = select i1 %cmp.i, i32 %3, i32 %2
  %shl.i = shl i32 3, %mul.i.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %1, %neg.i
  %shl3.i = shl i32 %sub, %mul.i.i
  %or.i = or i32 %and.i, %shl3.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !296
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alt_gpio_irq_type(ptr nocapture noundef readonly %d, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %regbase = getelementptr inbounds %struct.at91_gpio_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %5
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 8, label %sw.bb5
    i32 4, label %sw.bb8
    i32 3, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %7 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @handle_simple_irq, ptr %handle_irq.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr = getelementptr i8, ptr %3, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #8, !srcloc !296
  %add.ptr1 = getelementptr i8, ptr %3, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %10) #8, !srcloc !296
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i43 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %11 = ptrtoint ptr %common.i.i43 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common.i.i43, align 4
  %handle_irq.i44 = getelementptr inbounds %struct.irq_desc, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %handle_irq.i44 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @handle_simple_irq, ptr %handle_irq.i44, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr3 = getelementptr i8, ptr %3, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %14) #8, !srcloc !296
  %add.ptr4 = getelementptr i8, ptr %3, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %14) #8, !srcloc !296
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i45 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %15 = ptrtoint ptr %common.i.i45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %common.i.i45, align 4
  %handle_irq.i46 = getelementptr inbounds %struct.irq_desc, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %handle_irq.i46 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @handle_level_irq, ptr %handle_irq.i46, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr6 = getelementptr i8, ptr %3, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %18) #8, !srcloc !296
  %add.ptr7 = getelementptr i8, ptr %3, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %18) #8, !srcloc !296
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i47 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %19 = ptrtoint ptr %common.i.i47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %common.i.i47, align 4
  %handle_irq.i48 = getelementptr inbounds %struct.irq_desc, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %handle_irq.i48 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @handle_level_irq, ptr %handle_irq.i48, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr9 = getelementptr i8, ptr %3, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %22) #8, !srcloc !296
  %add.ptr10 = getelementptr i8, ptr %3, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %22) #8, !srcloc !296
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i49 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %23 = ptrtoint ptr %common.i.i49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %common.i.i49, align 4
  %handle_irq.i50 = getelementptr inbounds %struct.irq_desc, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %handle_irq.i50 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @handle_simple_irq, ptr %handle_irq.i50, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr12 = getelementptr i8, ptr %3, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %26) #8, !srcloc !296
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %28) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  %.pre-phi = phi i32 [ %22, %sw.bb8 ], [ %18, %sw.bb5 ], [ %14, %sw.bb2 ], [ %10, %sw.bb ]
  %add.ptr15 = getelementptr i8, ptr %3, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %.pre-phi) #8, !srcloc !296
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %sw.bb11
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb11 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_mux_set_deglitch(ptr noundef %pio, i32 noundef %mask, i1 noundef zeroext %is_on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %mask)
  %cond = select i1 %is_on, i32 32, i32 36
  %add.ptr = getelementptr i8, ptr %pio, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !296
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_mux_get_periph(ptr noundef %pio, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pio, i32 8
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %and = and i32 %1, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr2 = getelementptr i8, ptr %pio, i32 120
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !295
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and5 = and i32 %3, %mask
  %add = add i32 %and5, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_mux_set_A_periph(ptr noundef %pio, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %mask)
  %add.ptr = getelementptr i8, ptr %pio, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !296
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_mux_set_B_periph(ptr noundef %pio, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %mask)
  %add.ptr = getelementptr i8, ptr %pio, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !296
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @at91_mux_get_deglitch(ptr noundef %pio, i32 noundef %pin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pio, i32 40
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %2 = shl nuw i32 1, %pin
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpio_irq_type(ptr nocapture noundef readnone %d, i32 noundef %type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %switch.selectcmp.case1 = icmp eq i32 %type, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %switch.selectcmp.case2 = icmp eq i32 %type, 3
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %0 = select i1 %switch.selectcmp, i32 0, i32 -22
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_mux_sam9x60_get_drivestrength(ptr noundef %pio, i32 noundef %pin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pio, i32 280
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %shl = shl nuw i32 1, %pin
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 1, i32 3
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_mux_sam9x60_set_drivestrength(ptr noundef %pio, i32 noundef %pin, i32 noundef %setting) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %setting to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %setting, label %lor.lhs.false2 [
    i32 0, label %entry.cleanup_crit_edge
    i32 2, label %entry.cleanup_crit_edge17
  ]

entry.cleanup_crit_edge17:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %setting)
  %cmp3 = icmp ugt i32 %setting, 3
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %pio, i32 280
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %setting)
  %cmp5 = icmp eq i32 %setting, 1
  %shl = shl nuw i32 1, %pin
  %neg = xor i32 %shl, -1
  %and = and i32 %2, %neg
  %or = or i32 %2, %shl
  %tmp.0 = select i1 %cmp5, i32 %and, i32 %or
  %3 = tail call i32 @llvm.bswap.i32(i32 %tmp.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #8, !srcloc !296
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_mux_sam9x60_get_slewrate(ptr noundef %pio, i32 noundef %pin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pio, i32 272
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = xor i32 %0, -1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = lshr i32 %2, %pin
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_mux_sam9x60_set_slewrate(ptr noundef %pio, i32 noundef %pin, i32 noundef %setting) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %setting)
  %cmp1 = icmp ugt i32 %setting, 1
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %pio, i32 272
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %setting)
  %cmp3 = icmp eq i32 %setting, 1
  %shl = shl nuw i32 1, %pin
  %neg = xor i32 %shl, -1
  %and = and i32 %1, %neg
  %or = or i32 %1, %shl
  %tmp.0 = select i1 %cmp3, i32 %and, i32 %or
  %2 = tail call i32 @llvm.bswap.i32(i32 %tmp.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !296
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_pinctrl_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @at91_pinctrl_probe_dt(ptr noundef %pdev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %0 = load i32, ptr @gpio_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp109 = icmp sgt i32 %0, 0
  br i1 %cmp109, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ngpio_chips_enabled.0111 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0110 = phi i32 [ %inc8, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %i.0110
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp ne ptr %2, null
  %inc = zext i1 %tobool5.not to i32
  %spec.select = add i32 %ngpio_chips_enabled.0111, %inc
  %inc8 = add nuw nsw i32 %i.0110, 1
  %exitcond.not = icmp eq i32 %inc8, %0
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ngpio_chips_enabled.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %nactive_banks = getelementptr inbounds %struct.at91_pinctrl, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %nactive_banks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nactive_banks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ngpio_chips_enabled.0.lcssa, i32 %4)
  %cmp9 = icmp slt i32 %ngpio_chips_enabled.0.lcssa, %4
  br i1 %cmp9, label %do.end, label %if.end14

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %ngpio_chips_enabled.0.lcssa, i32 noundef %4) #11
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i) #8
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end14.dev_name.exit_crit_edge

if.end14.dev_name.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end14.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.end14.dev_name.exit_crit_edge ]
  store ptr %retval.0.i, ptr @at91_pinctrl_desc, align 4
  %mul = shl i32 %0, 5
  store i32 %mul, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @at91_pinctrl_desc, i32 0, i32 2), align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 12) #8
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !298

devm_kcalloc.exit.thread:                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @at91_pinctrl_desc, i32 0, i32 1), align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %dev_name.exit
  %11 = extractvalue { i32, i1 } %9, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %11, i32 noundef 3520) #8
  store ptr %call5.i.i, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @at91_pinctrl_desc, i32 0, i32 1), align 4
  %tobool19.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool19.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond22.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond22.preheader:                             ; preds = %devm_kcalloc.exit
  %12 = load i32, ptr @gpio_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp23116 = icmp sgt i32 %12, 0
  br i1 %cmp23116, label %for.cond22.preheader.for.cond25.preheader_crit_edge, label %for.cond22.preheader.for.end35_crit_edge

for.cond22.preheader.for.end35_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end35

for.cond22.preheader.for.cond25.preheader_crit_edge: ; preds = %for.cond22.preheader
  br label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.inc33.for.cond25.preheader_crit_edge, %for.cond22.preheader.for.cond25.preheader_crit_edge
  %k.0119 = phi i32 [ %inc31, %for.inc33.for.cond25.preheader_crit_edge ], [ 0, %for.cond22.preheader.for.cond25.preheader_crit_edge ]
  %i.1118 = phi i32 [ %inc34, %for.inc33.for.cond25.preheader_crit_edge ], [ 0, %for.cond22.preheader.for.cond25.preheader_crit_edge ]
  %pdesc.0117 = phi ptr [ %incdec.ptr, %for.inc33.for.cond25.preheader_crit_edge ], [ %call5.i.i, %for.cond22.preheader.for.cond25.preheader_crit_edge ]
  %add = add nuw i32 %i.1118, 65
  br label %for.body27

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.cond25.preheader
  %k.1115 = phi i32 [ %k.0119, %for.cond25.preheader ], [ %inc31, %for.body27.for.body27_crit_edge ]
  %j.0114 = phi i32 [ 0, %for.cond25.preheader ], [ %inc30, %for.body27.for.body27_crit_edge ]
  %pdesc.1113 = phi ptr [ %pdesc.0117, %for.cond25.preheader ], [ %incdec.ptr, %for.body27.for.body27_crit_edge ]
  %13 = ptrtoint ptr %pdesc.1113 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %k.1115, ptr %pdesc.1113, align 4
  %call28 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.16, i32 noundef %add, i32 noundef %j.0114) #8
  %name = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %pdesc.1113, i32 0, i32 1
  %14 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call28, ptr %name, align 4
  %incdec.ptr = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.1113, i32 1
  %inc30 = add nuw nsw i32 %j.0114, 1
  %inc31 = add i32 %k.1115, 1
  %exitcond122.not = icmp eq i32 %inc30, 32
  br i1 %exitcond122.not, label %for.inc33, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body27

for.inc33:                                        ; preds = %for.body27
  %inc34 = add nuw nsw i32 %i.1118, 1
  %15 = load i32, ptr @gpio_banks, align 4
  %cmp23 = icmp slt i32 %inc34, %15
  br i1 %cmp23, label %for.inc33.for.cond25.preheader_crit_edge, label %for.inc33.for.end35_crit_edge

for.inc33.for.end35_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end35

for.inc33.for.cond25.preheader_crit_edge:         ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond25.preheader

for.end35:                                        ; preds = %for.inc33.for.end35_crit_edge, %for.cond22.preheader.for.end35_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call37 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @at91_pinctrl_desc, ptr noundef nonnull %call.i) #8
  %pctl = getelementptr inbounds %struct.at91_pinctrl, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %pctl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call37, ptr %pctl, align 4
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end43, label %for.cond48.preheader

for.cond48.preheader:                             ; preds = %for.end35
  %18 = load i32, ptr @gpio_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp49120 = icmp sgt i32 %18, 0
  br i1 %cmp49120, label %for.cond48.preheader.for.body50_crit_edge, label %for.cond48.preheader.do.end62_crit_edge

for.cond48.preheader.do.end62_crit_edge:          ; preds = %for.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end62

for.cond48.preheader.for.body50_crit_edge:        ; preds = %for.cond48.preheader
  br label %for.body50

do.end43:                                         ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #11
  %19 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pctl, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

for.body50:                                       ; preds = %for.inc57.for.body50_crit_edge, %for.cond48.preheader.for.body50_crit_edge
  %i.2121 = phi i32 [ %inc58, %for.inc57.for.body50_crit_edge ], [ 0, %for.cond48.preheader.for.body50_crit_edge ]
  %arrayidx51 = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %i.2121
  %22 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx51, align 4
  %tobool52.not = icmp eq ptr %23, null
  br i1 %tobool52.not, label %for.body50.for.inc57_crit_edge, label %if.then53

for.body50.for.inc57_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc57

if.then53:                                        ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pctl, align 4
  %range = getelementptr inbounds %struct.at91_gpio_chip, ptr %23, i32 0, i32 1
  tail call void @pinctrl_add_gpio_range(ptr noundef %25, ptr noundef %range) #8
  br label %for.inc57

for.inc57:                                        ; preds = %if.then53, %for.body50.for.inc57_crit_edge
  %inc58 = add nuw nsw i32 %i.2121, 1
  %26 = load i32, ptr @gpio_banks, align 4
  %cmp49 = icmp slt i32 %inc58, %26
  br i1 %cmp49, label %for.inc57.for.body50_crit_edge, label %for.inc57.do.end62_crit_edge

for.inc57.do.end62_crit_edge:                     ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end62

for.inc57.for.body50_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body50

do.end62:                                         ; preds = %for.inc57.do.end62_crit_edge, %for.cond48.preheader.do.end62_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.44) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %do.end43, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -517, %do.end ], [ %21, %do.end43 ], [ 0, %do.end62 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at91_pinctrl_probe_dt(ptr noundef %pdev, ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  %size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %info, align 4
  %call = tail call ptr @of_match_device(ptr noundef nonnull @at91_pinctrl_of_match, ptr noundef %dev) #8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %ops = getelementptr inbounds %struct.at91_pinctrl, ptr %info, i32 0, i32 9
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ops, align 4
  %call.i = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #8
  %cmp.not15.i = icmp eq ptr %call.i, null
  br i1 %cmp.not15.i, label %if.end.at91_pinctrl_child_count.exit_crit_edge, label %for.body.lr.ph.i

if.end.at91_pinctrl_child_count.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_pinctrl_child_count.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %nactive_banks.i = getelementptr inbounds %struct.at91_pinctrl, ptr %info, i32 0, i32 2
  %nfunctions.i = getelementptr inbounds %struct.at91_pinctrl, ptr %info, i32 0, i32 6
  %ngroups.i = getelementptr inbounds %struct.at91_pinctrl, ptr %info, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.016.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call7.i, %for.inc.i.for.body.i_crit_edge ]
  %call1.i = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child.016.i, ptr noundef nonnull @.str.66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %call2.i = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %child.016.i) #8
  br i1 %call2.i, label %if.then.i.for.inc.sink.split.i_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i.for.inc.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split.i

if.else.i:                                        ; preds = %for.body.i
  %6 = ptrtoint ptr %nfunctions.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nfunctions.i, align 4
  %inc4.i = add i32 %7, 1
  store i32 %inc4.i, ptr %nfunctions.i, align 4
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %child.016.i, ptr noundef null) #8
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %if.else.i.for.inc.sink.split.i_crit_edge, label %if.else.i.for.body.i.i_crit_edge

if.else.i.for.body.i.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body.i.i

if.else.i.for.inc.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.else.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.else.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %child.016.i, ptr noundef nonnull %child.06.i.i) #8
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %for.body.i.i.for.inc.sink.split.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.for.inc.sink.split.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %for.body.i.i.for.inc.sink.split.i_crit_edge, %if.else.i.for.inc.sink.split.i_crit_edge, %if.then.i.for.inc.sink.split.i_crit_edge
  %ngroups.sink19.i = phi ptr [ %nactive_banks.i, %if.then.i.for.inc.sink.split.i_crit_edge ], [ %ngroups.i, %if.else.i.for.inc.sink.split.i_crit_edge ], [ %ngroups.i, %for.body.i.i.for.inc.sink.split.i_crit_edge ]
  %num.0.lcssa.i.sink.i = phi i32 [ 1, %if.then.i.for.inc.sink.split.i_crit_edge ], [ 0, %if.else.i.for.inc.sink.split.i_crit_edge ], [ %inc.i.i, %for.body.i.i.for.inc.sink.split.i_crit_edge ]
  %8 = ptrtoint ptr %ngroups.sink19.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ngroups.sink19.i, align 4
  %add.i = add i32 %9, %num.0.lcssa.i.sink.i
  store i32 %add.i, ptr %ngroups.sink19.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.then.i.for.inc.i_crit_edge
  %call7.i = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %child.016.i) #8
  %cmp.not.i = icmp eq ptr %call7.i, null
  br i1 %cmp.not.i, label %for.inc.i.at91_pinctrl_child_count.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.at91_pinctrl_child_count.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_pinctrl_child_count.exit

at91_pinctrl_child_count.exit:                    ; preds = %for.inc.i.at91_pinctrl_child_count.exit_crit_edge, %if.end.at91_pinctrl_child_count.exit_crit_edge
  %10 = load i32, ptr @gpio_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp slt i32 %10, 1
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %at91_pinctrl_child_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #11
  br label %cleanup

if.end6:                                          ; preds = %at91_pinctrl_child_count.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #8
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %size.i, align 4, !annotation !297
  %call.i274 = call ptr @of_get_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.58, ptr noundef nonnull %size.i) #8
  %tobool.not.i275 = icmp eq ptr %call.i274, null
  br i1 %tobool.not.i275, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.59, i32 noundef %15) #11
  br label %at91_pinctrl_mux_mask.exit.thread

if.end.i:                                         ; preds = %if.end6
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 4
  %div36.i = lshr i32 %17, 2
  store i32 %div36.i, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %tobool1.not.i = icmp ult i32 %17, 4
  br i1 %tobool1.not.i, label %if.end.i.do.end6.i_crit_edge, label %lor.lhs.false.i

if.end.i.do.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %18 = load i32, ptr @gpio_banks, align 4
  %div36.i.frozen = freeze i32 %div36.i
  %.frozen = freeze i32 %18
  %div9.i = sdiv i32 %div36.i.frozen, %.frozen
  %19 = mul i32 %div9.i, %.frozen
  %rem.i.decomposed = sub i32 %div36.i.frozen, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool2.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool2.not.i, label %if.end8.i, label %lor.lhs.false.i.do.end6.i_crit_edge

lor.lhs.false.i.do.end6.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6.i

do.end6.i:                                        ; preds = %lor.lhs.false.i.do.end6.i_crit_edge, %if.end.i.do.end6.i_crit_edge
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info, align 4
  %22 = load i32, ptr @gpio_banks, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.62, i32 noundef %22) #11
  br label %at91_pinctrl_mux_mask.exit.thread

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %nmux.i = getelementptr inbounds %struct.at91_pinctrl, ptr %info, i32 0, i32 4
  %23 = ptrtoint ptr %nmux.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div9.i, ptr %nmux.i, align 4
  %24 = and i32 %17, -4
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info, align 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %26, i32 noundef %24, i32 noundef 3520) #8
  %mux_mask.i = getelementptr inbounds %struct.at91_pinctrl, ptr %info, i32 0, i32 3
  %27 = ptrtoint ptr %mux_mask.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i.i.i, ptr %mux_mask.i, align 4
  %tobool13.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool13.not.i, label %if.end8.i.at91_pinctrl_mux_mask.exit.thread_crit_edge, label %if.end15.i

if.end8.i.at91_pinctrl_mux_mask.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_pinctrl_mux_mask.exit.thread

if.end15.i:                                       ; preds = %if.end8.i
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i, align 4
  %call.i.i276 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.58, ptr noundef nonnull %call5.i.i.i, i32 noundef %29, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i276)
  %tobool18.not.i = icmp sgt i32 %call.i.i276, -1
  br i1 %tobool18.not.i, label %do.body11, label %do.end22.i

do.end22.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %info, align 4
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.59, i32 noundef %33) #11
  br label %at91_pinctrl_mux_mask.exit.thread

at91_pinctrl_mux_mask.exit.thread:                ; preds = %do.end22.i, %if.end8.i.at91_pinctrl_mux_mask.exit.thread_crit_edge, %do.end6.i, %do.end.i
  %retval.0.i277.ph = phi i32 [ %call.i.i276, %do.end22.i ], [ -12, %if.end8.i.at91_pinctrl_mux_mask.exit.thread_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end6.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #8
  br label %cleanup

do.body11:                                        ; preds = %if.end15.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pinctrl_probe_dt, %do.body23)) #8
          to label %if.then18 [label %do.body23], !srcloc !300

if.then18:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %nmux.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nmux.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %35) #8
  br label %do.body23

do.body23:                                        ; preds = %if.then18, %do.body11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pinctrl_probe_dt, %do.end41)) #8
          to label %if.then37 [label %do.end41], !srcloc !300

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.50) #8
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body23
  %36 = load i32, ptr @gpio_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp42304 = icmp sgt i32 %36, 0
  br i1 %cmp42304, label %for.cond43.preheader.lr.ph, label %do.end41.do.body69_crit_edge

do.end41.do.body69_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body69

for.cond43.preheader.lr.ph:                       ; preds = %do.end41
  %37 = ptrtoint ptr %mux_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mux_mask.i, align 4
  br label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %for.inc66.for.cond43.preheader_crit_edge, %for.cond43.preheader.lr.ph
  %i.0306 = phi i32 [ 0, %for.cond43.preheader.lr.ph ], [ %inc67, %for.inc66.for.cond43.preheader_crit_edge ]
  %tmp.0305 = phi ptr [ %38, %for.cond43.preheader.lr.ph ], [ %tmp.1.lcssa, %for.inc66.for.cond43.preheader_crit_edge ]
  %39 = ptrtoint ptr %nmux.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nmux.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp45299 = icmp sgt i32 %40, 0
  br i1 %cmp45299, label %for.cond43.preheader.do.body47_crit_edge, label %for.cond43.preheader.for.inc66_crit_edge

for.cond43.preheader.for.inc66_crit_edge:         ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc66

for.cond43.preheader.do.body47_crit_edge:         ; preds = %for.cond43.preheader
  br label %do.body47

do.body47:                                        ; preds = %for.inc.do.body47_crit_edge, %for.cond43.preheader.do.body47_crit_edge
  %j.0302 = phi i32 [ %inc, %for.inc.do.body47_crit_edge ], [ 0, %for.cond43.preheader.do.body47_crit_edge ]
  %tmp.1300 = phi ptr [ %incdec.ptr, %for.inc.do.body47_crit_edge ], [ %tmp.0305, %for.cond43.preheader.do.body47_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pinctrl_probe_dt, %for.inc)) #8
          to label %if.then61 [label %for.inc], !srcloc !300

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %tmp.1300 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tmp.1300, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %i.0306, i32 noundef %j.0302, i32 noundef %42) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then61, %do.body47
  %inc = add nuw nsw i32 %j.0302, 1
  %incdec.ptr = getelementptr i32, ptr %tmp.1300, i32 1
  %43 = ptrtoint ptr %nmux.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nmux.i, align 4
  %cmp45 = icmp slt i32 %inc, %44
  br i1 %cmp45, label %for.inc.do.body47_crit_edge, label %for.inc.for.inc66_crit_edge

for.inc.for.inc66_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc66

for.inc.do.body47_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

for.inc66:                                        ; preds = %for.inc.for.inc66_crit_edge, %for.cond43.preheader.for.inc66_crit_edge
  %tmp.1.lcssa = phi ptr [ %tmp.0305, %for.cond43.preheader.for.inc66_crit_edge ], [ %incdec.ptr, %for.inc.for.inc66_crit_edge ]
  %inc67 = add nuw nsw i32 %i.0306, 1
  %45 = load i32, ptr @gpio_banks, align 4
  %cmp42 = icmp slt i32 %inc67, %45
  br i1 %cmp42, label %for.inc66.for.cond43.preheader_crit_edge, label %for.inc66.do.body69_crit_edge

for.inc66.do.body69_crit_edge:                    ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body69

for.inc66.for.cond43.preheader_crit_edge:         ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond43.preheader

do.body69:                                        ; preds = %for.inc66.do.body69_crit_edge, %do.end41.do.body69_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pinctrl_probe_dt, %do.body88)) #8
          to label %if.then83 [label %do.body88], !srcloc !300

if.then83:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #10
  %nfunctions = getelementptr inbounds %struct.at91_pinctrl, ptr %info, i32 0, i32 6
  %46 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nfunctions, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %47) #8
  br label %do.body88

do.body88:                                        ; preds = %if.then83, %do.body69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pinctrl_probe_dt, %do.end106)) #8
          to label %if.then102 [label %do.end106], !srcloc !300

if.then102:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #10
  %ngroups = getelementptr inbounds %struct.at91_pinctrl, ptr %info, i32 0, i32 8
  %48 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ngroups, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %49) #8
  br label %do.end106

do.end106:                                        ; preds = %if.then102, %do.body88
  %nfunctions108 = getelementptr inbounds %struct.at91_pinctrl, ptr %info, i32 0, i32 6
  %50 = ptrtoint ptr %nfunctions108 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nfunctions108, align 4
  %52 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %51, i32 12) #8
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !298

devm_kcalloc.exit.thread:                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #10
  %functions290 = getelementptr inbounds %struct.at91_pinctrl, ptr %info, i32 0, i32 5
  %54 = ptrtoint ptr %functions290 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %functions290, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %do.end106
  %55 = extractvalue { i32, i1 } %52, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %55, i32 noundef 3520) #8
  %functions = getelementptr inbounds %struct.at91_pinctrl, ptr %info, i32 0, i32 5
  %56 = ptrtoint ptr %functions to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call5.i.i, ptr %functions, align 4
  %tobool111.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool111.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end113

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end113:                                        ; preds = %devm_kcalloc.exit
  %ngroups115 = getelementptr inbounds %struct.at91_pinctrl, ptr %info, i32 0, i32 8
  %57 = ptrtoint ptr %ngroups115 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ngroups115, align 4
  %59 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %58, i32 16) #8
  %60 = extractvalue { i32, i1 } %59, 1
  br i1 %60, label %devm_kcalloc.exit281.thread, label %devm_kcalloc.exit281, !prof !298

devm_kcalloc.exit281.thread:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  %groups293 = getelementptr inbounds %struct.at91_pinctrl, ptr %info, i32 0, i32 7
  %61 = ptrtoint ptr %groups293 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %groups293, align 4
  br label %cleanup

devm_kcalloc.exit281:                             ; preds = %if.end113
  %62 = extractvalue { i32, i1 } %59, 0
  %call5.i.i278 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %62, i32 noundef 3520) #8
  %groups = getelementptr inbounds %struct.at91_pinctrl, ptr %info, i32 0, i32 7
  %63 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call5.i.i278, ptr %groups, align 4
  %tobool118.not = icmp eq ptr %call5.i.i278, null
  br i1 %tobool118.not, label %devm_kcalloc.exit281.cleanup_crit_edge, label %do.body121

devm_kcalloc.exit281.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit281
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body121:                                       ; preds = %devm_kcalloc.exit281
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pinctrl_probe_dt, %do.body140)) #8
          to label %if.then135 [label %do.body140], !srcloc !300

if.then135:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #10
  %64 = load i32, ptr @gpio_banks, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %64) #8
  br label %do.body140

do.body140:                                       ; preds = %if.then135, %do.body121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pinctrl_probe_dt, %do.body160)) #8
          to label %if.then154 [label %do.body160], !srcloc !300

if.then154:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %nfunctions108 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nfunctions108, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %66) #8
  br label %do.body160

do.body160:                                       ; preds = %if.then154, %do.body140
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pinctrl_probe_dt, %do.end179)) #8
          to label %if.then174 [label %do.end179], !srcloc !300

if.then174:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %ngroups115 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ngroups115, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %68) #8
  br label %do.end179

do.end179:                                        ; preds = %if.then174, %do.body160
  %call180 = call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #8
  %cmp182.not308 = icmp eq ptr %call180, null
  br i1 %cmp182.not308, label %do.end179.cleanup_crit_edge, label %do.end179.for.body183_crit_edge

do.end179.for.body183_crit_edge:                  ; preds = %do.end179
  br label %for.body183

do.end179.cleanup_crit_edge:                      ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body183:                                      ; preds = %for.inc197.for.body183_crit_edge, %do.end179.for.body183_crit_edge
  %i.1311 = phi i32 [ %i.2, %for.inc197.for.body183_crit_edge ], [ 0, %do.end179.for.body183_crit_edge ]
  %child.0309 = phi ptr [ %call198, %for.inc197.for.body183_crit_edge ], [ %call180, %do.end179.for.body183_crit_edge ]
  %call184 = call i32 @of_device_is_compatible(ptr noundef nonnull %child.0309, ptr noundef nonnull @.str.66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end187, label %for.body183.for.inc197_crit_edge

for.body183.for.inc197_crit_edge:                 ; preds = %for.body183
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc197

if.end187:                                        ; preds = %for.body183
  %inc188 = add i32 %i.1311, 1
  %call189 = call fastcc i32 @at91_pinctrl_parse_functions(ptr noundef nonnull %child.0309, ptr noundef %info, i32 noundef %i.1311)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end187.for.inc197_crit_edge, label %do.end194

if.end187.for.inc197_crit_edge:                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc197

do.end194:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56) #11
  call void @of_node_put(ptr noundef nonnull %child.0309) #8
  br label %cleanup

for.inc197:                                       ; preds = %if.end187.for.inc197_crit_edge, %for.body183.for.inc197_crit_edge
  %i.2 = phi i32 [ %i.1311, %for.body183.for.inc197_crit_edge ], [ %inc188, %if.end187.for.inc197_crit_edge ]
  %call198 = call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %child.0309) #8
  %cmp182.not = icmp eq ptr %call198, null
  br i1 %cmp182.not, label %for.inc197.cleanup_crit_edge, label %for.inc197.for.body183_crit_edge

for.inc197.for.body183_crit_edge:                 ; preds = %for.inc197
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body183

for.inc197.cleanup_crit_edge:                     ; preds = %for.inc197
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc197.cleanup_crit_edge, %do.end194, %do.end179.cleanup_crit_edge, %devm_kcalloc.exit281.cleanup_crit_edge, %devm_kcalloc.exit281.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %at91_pinctrl_mux_mask.exit.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call189, %do.end194 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit281.cleanup_crit_edge ], [ %retval.0.i277.ph, %at91_pinctrl_mux_mask.exit.thread ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit281.thread ], [ 0, %do.end179.cleanup_crit_edge ], [ 0, %for.inc197.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at91_pinctrl_parse_functions(ptr noundef %np, ptr nocapture noundef readonly %info, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pinctrl_parse_functions.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pinctrl_parse_functions, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pinctrl_parse_functions.__UNIQUE_ID_ddebug238, ptr noundef %1, ptr noundef nonnull @.str.68, i32 noundef %index, ptr noundef %np) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %functions = getelementptr inbounds %struct.at91_pinctrl, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.at91_pmx_func, ptr %3, i32 %index
  %4 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %np, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %arrayidx, align 4
  %call.i = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #8
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %of_get_child_count.exit.thread, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

of_get_child_count.exit.thread:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %ngroups61 = getelementptr %struct.at91_pmx_func, ptr %3, i32 %index, i32 2
  %7 = ptrtoint ptr %ngroups61 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ngroups61, align 4
  br label %do.end10

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %do.end.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.06.i) #8
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  %ngroups = getelementptr %struct.at91_pmx_func, ptr %3, i32 %index, i32 2
  %8 = ptrtoint ptr %ngroups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc.i, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp = icmp eq i32 %inc.i, 0
  br i1 %cmp, label %of_get_child_count.exit.do.end10_crit_edge, label %if.end12

of_get_child_count.exit.do.end10_crit_edge:       ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end10:                                         ; preds = %of_get_child_count.exit.do.end10_crit_edge, %of_get_child_count.exit.thread
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.69) #11
  br label %cleanup

if.end12:                                         ; preds = %of_get_child_count.exit
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i, i32 4) #8
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !298

devm_kcalloc.exit.thread:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %groups64 = getelementptr %struct.at91_pmx_func, ptr %3, i32 %index, i32 1
  %13 = ptrtoint ptr %groups64 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %groups64, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end12
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 4
  %16 = extractvalue { i32, i1 } %11, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef %16, i32 noundef 3520) #8
  %groups = getelementptr %struct.at91_pmx_func, ptr %3, i32 %index, i32 1
  %17 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i, ptr %groups, align 4
  %tobool17.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool17.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end19

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %devm_kcalloc.exit
  %call20 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #8
  %cmp21.not67 = icmp eq ptr %call20, null
  br i1 %cmp21.not67, label %if.end19.cleanup_crit_edge, label %for.body.lr.ph

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end19
  %groups25 = getelementptr inbounds %struct.at91_pinctrl, ptr %info, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child.069 = phi ptr [ %call20, %for.body.lr.ph ], [ %call32, %for.inc.for.body_crit_edge ]
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc27, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %child.069 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %child.069, align 4
  %20 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %groups, align 4
  %arrayidx24 = getelementptr ptr, ptr %21, i32 %i.068
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %arrayidx24, align 4
  %23 = ptrtoint ptr %groups25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %groups25, align 4
  %25 = load i32, ptr @at91_pinctrl_parse_functions.grp_index, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr @at91_pinctrl_parse_functions.grp_index, align 4
  %arrayidx26 = getelementptr %struct.at91_pin_group, ptr %24, i32 %25
  %call28 = tail call fastcc i32 @at91_pinctrl_parse_groups(ptr noundef nonnull %child.069, ptr noundef %arrayidx26, ptr noundef %info, i32 noundef %i.068)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %for.inc, label %if.then30

if.then30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @of_node_put(ptr noundef nonnull %child.069) #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc27 = add i32 %i.068, 1
  %call32 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.069) #8
  %cmp21.not = icmp eq ptr %call32, null
  br i1 %cmp21.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then30, %if.end19.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end10
  %retval.0 = phi i32 [ -22, %do.end10 ], [ %call28, %if.then30 ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at91_pinctrl_parse_groups(ptr noundef %np, ptr nocapture noundef %grp, ptr nocapture noundef readonly %info, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #8
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size, align 4, !annotation !297
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pinctrl_parse_groups.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pinctrl_parse_groups, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pinctrl_parse_groups.__UNIQUE_ID_ddebug237, ptr noundef %2, ptr noundef nonnull @.str.71, i32 noundef %index, ptr noundef %np) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %np, align 4
  %5 = ptrtoint ptr %grp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %grp, align 4
  %call5 = call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull @.str.72, ptr noundef nonnull %size) #8
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %div68 = lshr i32 %7, 2
  store i32 %div68, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %tobool6.not = icmp ugt i32 %7, 3
  %8 = and i32 %7, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  %or.cond = and i1 %tobool6.not, %tobool7.not
  br i1 %or.cond, label %if.end13, label %do.end11

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.73) #11
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %div1469 = lshr i32 %7, 4
  %npins = getelementptr inbounds %struct.at91_pin_group, ptr %grp, i32 0, i32 3
  %11 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div1469, ptr %npins, align 4
  %12 = and i32 %7, -16
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info, align 4
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef %12, i32 noundef 3520) #8
  %pins_conf = getelementptr inbounds %struct.at91_pin_group, ptr %grp, i32 0, i32 1
  %15 = ptrtoint ptr %pins_conf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i, ptr %pins_conf, align 4
  %16 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %npins, align 4
  %18 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4) #8
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %devm_kcalloc.exit74.thread, label %devm_kcalloc.exit74, !prof !298

devm_kcalloc.exit74.thread:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %pins77 = getelementptr inbounds %struct.at91_pin_group, ptr %grp, i32 0, i32 2
  %20 = ptrtoint ptr %pins77 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pins77, align 4
  br label %cleanup

devm_kcalloc.exit74:                              ; preds = %if.end13
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 4
  %23 = extractvalue { i32, i1 } %18, 0
  %call5.i.i71 = call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef %23, i32 noundef 3520) #8
  %pins = getelementptr inbounds %struct.at91_pin_group, ptr %grp, i32 0, i32 2
  %24 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i71, ptr %pins, align 4
  %25 = ptrtoint ptr %pins_conf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pins_conf, align 4
  %tobool22.not = icmp eq ptr %26, null
  %tobool25.not = icmp eq ptr %call5.i.i71, null
  %or.cond70 = select i1 %tobool22.not, i1 true, i1 %tobool25.not
  br i1 %or.cond70, label %devm_kcalloc.exit74.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit74.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit74
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp81 = icmp sgt i32 %28, 0
  br i1 %cmp81, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %at91_pin_dbg.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %pin.085 = phi ptr [ %incdec.ptr36, %at91_pin_dbg.exit.for.body_crit_edge ], [ %call5.i.i, %for.cond.preheader.for.body_crit_edge ]
  %j.084 = phi i32 [ %inc, %at91_pin_dbg.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.083 = phi i32 [ %add37, %at91_pin_dbg.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %list.082 = phi ptr [ %incdec.ptr34, %at91_pin_dbg.exit.for.body_crit_edge ], [ %call5, %for.cond.preheader.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %list.082, i32 1
  %29 = ptrtoint ptr %list.082 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %list.082, align 4
  %31 = ptrtoint ptr %pin.085 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %pin.085, align 4
  %incdec.ptr28 = getelementptr i32, ptr %list.082, i32 2
  %32 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %incdec.ptr, align 4
  %pin29 = getelementptr inbounds %struct.at91_pmx_pin, ptr %pin.085, i32 0, i32 1
  %34 = ptrtoint ptr %pin29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %pin29, align 4
  %mul = shl i32 %30, 5
  %add = add i32 %33, %mul
  %35 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr i32, ptr %36, i32 %j.084
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %arrayidx, align 4
  %incdec.ptr33 = getelementptr i32, ptr %list.082, i32 3
  %38 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %incdec.ptr28, align 4
  %mux = getelementptr inbounds %struct.at91_pmx_pin, ptr %pin.085, i32 0, i32 2
  %40 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %mux, align 4
  %incdec.ptr34 = getelementptr i32, ptr %list.082, i32 4
  %41 = ptrtoint ptr %incdec.ptr33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %incdec.ptr33, align 4
  %conf = getelementptr inbounds %struct.at91_pmx_pin, ptr %pin.085, i32 0, i32 3
  %43 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %conf, align 4
  %44 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %do.body9.i, label %do.body.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pin_dbg.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pinctrl_parse_groups, %at91_pin_dbg.exit)) #8
          to label %if.then5.i [label %at91_pin_dbg.exit], !srcloc !300

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %pin.085 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pin.085, align 4
  %add.i = add i32 %47, 65
  %48 = ptrtoint ptr %pin29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pin29, align 4
  %50 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mux, align 4
  %add8.i = add i32 %51, 64
  %52 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %conf, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pin_dbg.__UNIQUE_ID_ddebug229, ptr noundef %45, ptr noundef nonnull @.str.75, i32 noundef %add.i, i32 noundef %49, i32 noundef %add8.i, i32 noundef %53) #8
  br label %at91_pin_dbg.exit

do.body9.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pin_dbg.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pinctrl_parse_groups, %at91_pin_dbg.exit)) #8
          to label %if.then23.i [label %at91_pin_dbg.exit], !srcloc !300

if.then23.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %pin.085 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pin.085, align 4
  %add25.i = add i32 %55, 65
  %56 = ptrtoint ptr %pin29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pin29, align 4
  %58 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %conf, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pin_dbg.__UNIQUE_ID_ddebug230, ptr noundef %45, ptr noundef nonnull @.str.76, i32 noundef %add25.i, i32 noundef %57, i32 noundef %59) #8
  br label %at91_pin_dbg.exit

at91_pin_dbg.exit:                                ; preds = %if.then23.i, %do.body9.i, %if.then5.i, %do.body.i
  %incdec.ptr36 = getelementptr %struct.at91_pmx_pin, ptr %pin.085, i32 1
  %add37 = add i32 %i.083, 4
  %inc = add i32 %j.084, 1
  %60 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size, align 4
  %cmp = icmp slt i32 %add37, %61
  br i1 %cmp, label %at91_pin_dbg.exit.for.body_crit_edge, label %at91_pin_dbg.exit.cleanup_crit_edge

at91_pin_dbg.exit.cleanup_crit_edge:              ; preds = %at91_pin_dbg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

at91_pin_dbg.exit.for.body_crit_edge:             ; preds = %at91_pin_dbg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %at91_pin_dbg.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %devm_kcalloc.exit74.cleanup_crit_edge, %devm_kcalloc.exit74.thread, %do.end11
  %retval.0 = phi i32 [ -22, %do.end11 ], [ -12, %devm_kcalloc.exit74.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit74.thread ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %at91_pin_dbg.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_get_groups_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %ngroups = getelementptr inbounds %struct.at91_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @at91_get_group_name(ptr noundef %pctldev, i32 noundef %selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.at91_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.at91_pin_group, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_get_group_pins(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %npins) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %ngroups = getelementptr inbounds %struct.at91_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %selector)
  %cmp.not = icmp ugt i32 %1, %selector
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %groups = getelementptr inbounds %struct.at91_pinctrl, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.at91_pin_group, ptr %3, i32 %selector, i32 2
  %4 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins1, align 4
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pins, align 4
  %7 = load ptr, ptr %groups, align 4
  %npins4 = getelementptr %struct.at91_pin_group, ptr %7, i32 %selector, i32 3
  %8 = ptrtoint ptr %npins4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npins4, align 4
  %10 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %npins, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_pin_dbg_show(ptr nocapture noundef readonly %pctldev, ptr noundef %s, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.77, ptr noundef %retval.0.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np, ptr nocapture noundef %map, ptr nocapture noundef writeonly %num_maps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %ngroups.i = getelementptr inbounds %struct.at91_pinctrl, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23.i = icmp sgt i32 %3, 0
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %groups.i = getelementptr inbounds %struct.at91_pinctrl, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.at91_pin_group, ptr %5, i32 %i.024.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pinctrl_find_group_by_name.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_dt_node_to_map, %at91_pinctrl_find_group_by_name.exit)) #8
          to label %if.then9.i [label %at91_pinctrl_find_group_by_name.exit], !srcloc !300

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %npins.i = getelementptr %struct.at91_pin_group, ptr %5, i32 %i.024.i, i32 3
  %10 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npins.i, align 4
  %pins.i = getelementptr %struct.at91_pin_group, ptr %5, i32 %i.024.i, i32 2
  %12 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pins.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pinctrl_find_group_by_name.__UNIQUE_ID_ddebug227, ptr noundef %9, ptr noundef nonnull @.str.82, ptr noundef %1, i32 noundef %11, i32 noundef %15) #8
  br label %at91_pinctrl_find_group_by_name.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

at91_pinctrl_find_group_by_name.exit:             ; preds = %if.then9.i, %if.end.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %at91_pinctrl_find_group_by_name.exit.do.end_crit_edge, label %if.end

at91_pinctrl_find_group_by_name.exit.do.end_crit_edge: ; preds = %at91_pinctrl_find_group_by_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %at91_pinctrl_find_group_by_name.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.78, ptr noundef %np) #11
  br label %cleanup

if.end:                                           ; preds = %at91_pinctrl_find_group_by_name.exit
  %npins = getelementptr %struct.at91_pin_group, ptr %5, i32 %i.024.i, i32 3
  %18 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %npins, align 4
  %add = add i32 %19, 1
  %dev2 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 28) #8
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %if.end.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !298

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %22 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev2, align 4
  %24 = extractvalue { i32, i1 } %20, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %23, i32 noundef %24, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool4.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end6

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %devm_kcalloc.exit
  %25 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call5.i.i, ptr %map, align 4
  %26 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %num_maps, align 4
  %call7 = tail call ptr @of_get_parent(ptr noundef %np) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev2, align 4
  tail call void @devm_kfree(ptr noundef %28, ptr noundef nonnull %call5.i.i) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %type = getelementptr inbounds %struct.pinctrl_map, ptr %call5.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %type, align 4
  %30 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7, align 4
  %data = getelementptr inbounds %struct.pinctrl_map, ptr %call5.i.i, i32 0, i32 4
  %function = getelementptr inbounds %struct.pinctrl_map, ptr %call5.i.i, i32 0, i32 4, i32 0, i32 1
  %32 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %function, align 4
  %33 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %np, align 4
  %35 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %data, align 4
  tail call void @of_node_put(ptr noundef nonnull %call7) #8
  %incdec.ptr = getelementptr %struct.pinctrl_map, ptr %call5.i.i, i32 1
  %36 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp92.not = icmp eq i32 %37, 0
  br i1 %cmp92.not, label %if.end11.do.body29_crit_edge, label %for.body.lr.ph

if.end11.do.body29_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

for.body.lr.ph:                                   ; preds = %if.end11
  %pins = getelementptr %struct.at91_pin_group, ptr %5, i32 %i.024.i, i32 2
  %pins_conf = getelementptr %struct.at91_pin_group, ptr %5, i32 %i.024.i, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx18 = getelementptr %struct.pinctrl_map, ptr %incdec.ptr, i32 %i.093
  %type19 = getelementptr inbounds %struct.pinctrl_map, ptr %arrayidx18, i32 0, i32 2
  %38 = ptrtoint ptr %type19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %type19, align 4
  %39 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pins, align 4
  %arrayidx20 = getelementptr i32, ptr %40, i32 %i.093
  %41 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx20, align 4
  %call21 = tail call ptr @pin_get_name(ptr noundef %pctldev, i32 noundef %42) #8
  %data23 = getelementptr inbounds %struct.pinctrl_map, ptr %arrayidx18, i32 0, i32 4
  %43 = ptrtoint ptr %data23 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call21, ptr %data23, align 4
  %44 = ptrtoint ptr %pins_conf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pins_conf, align 4
  %conf = getelementptr %struct.at91_pmx_pin, ptr %45, i32 %i.093, i32 3
  %configs = getelementptr inbounds %struct.pinctrl_map_configs, ptr %data23, i32 0, i32 1
  %46 = ptrtoint ptr %configs to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %conf, ptr %configs, align 4
  %num_configs = getelementptr inbounds %struct.pinctrl_map_configs, ptr %data23, i32 0, i32 2
  %47 = ptrtoint ptr %num_configs to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %num_configs, align 4
  %inc = add nuw i32 %i.093, 1
  %48 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %49
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body29_crit_edge

for.body.do.body29_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body29:                                        ; preds = %for.body.do.body29_crit_edge, %if.end11.do.body29_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_dt_node_to_map.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_dt_node_to_map, %cleanup)) #8
          to label %if.then35 [label %cleanup], !srcloc !300

if.then35:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev2, align 4
  %52 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map, align 4
  %data37 = getelementptr inbounds %struct.pinctrl_map, ptr %53, i32 0, i32 4
  %function38 = getelementptr inbounds %struct.pinctrl_map, ptr %53, i32 0, i32 4, i32 0, i32 1
  %54 = ptrtoint ptr %function38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %function38, align 4
  %56 = ptrtoint ptr %data37 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_dt_node_to_map.__UNIQUE_ID_ddebug228, ptr noundef %51, ptr noundef nonnull @.str.80, ptr noundef %55, ptr noundef %57, i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %do.body29, %if.then9, %devm_kcalloc.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %if.then9 ], [ -22, %do.end ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %if.then35 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %do.body29 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @at91_dt_free_map(ptr nocapture noundef %pctldev, ptr nocapture noundef %map, i32 noundef %num_maps) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pin_get_name(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_pmx_get_funcs_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %nfunctions = getelementptr inbounds %struct.at91_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfunctions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @at91_pmx_get_func_name(ptr noundef %pctldev, i32 noundef %selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %functions = getelementptr inbounds %struct.at91_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.at91_pmx_func, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_pmx_get_groups(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %functions = getelementptr inbounds %struct.at91_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.at91_pmx_func, ptr %1, i32 %selector, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %functions, align 4
  %ngroups = getelementptr %struct.at91_pmx_func, ptr %5, i32 %selector, i32 2
  %6 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ngroups, align 4
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_pmx_set(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.at91_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pins_conf1 = getelementptr %struct.at91_pin_group, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pins_conf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins_conf1, align 4
  %npins4 = getelementptr %struct.at91_pin_group, ptr %1, i32 %group, i32 3
  %4 = ptrtoint ptr %npins4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pmx_set.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pmx_set, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %functions = getelementptr inbounds %struct.at91_pinctrl, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functions, align 4
  %arrayidx9 = getelementptr %struct.at91_pmx_func, ptr %9, i32 %selector
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9, align 4
  %12 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %groups, align 4
  %arrayidx11 = getelementptr %struct.at91_pin_group, ptr %13, i32 %group
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pmx_set.__UNIQUE_ID_ddebug231, ptr noundef %7, ptr noundef nonnull @.str.84, ptr noundef %11, ptr noundef %15) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp165.not = icmp eq i32 %5, 0
  br i1 %cmp165.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %16 = load i32, ptr @gpio_banks, align 4
  %nmux.i = getelementptr inbounds %struct.at91_pinctrl, ptr %call, i32 0, i32 4
  %mux_mask.i = getelementptr inbounds %struct.at91_pinctrl, ptr %call, i32 0, i32 3
  br label %for.body

for.cond21.preheader:                             ; preds = %for.inc
  %ops43 = getelementptr inbounds %struct.at91_pinctrl, ptr %call, i32 0, i32 9
  br i1 %cmp165.not, label %for.cond21.preheader.cleanup_crit_edge, label %for.cond21.preheader.for.body23_crit_edge

for.cond21.preheader.for.body23_crit_edge:        ; preds = %for.cond21.preheader
  br label %for.body23

for.cond21.preheader.cleanup_crit_edge:           ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0166 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx13 = getelementptr %struct.at91_pmx_pin, ptr %3, i32 %i.0166
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp.not.i = icmp ult i32 %18, %16
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %groups, align 4
  %arrayidx15.le = getelementptr %struct.at91_pin_group, ptr %20, i32 %group
  %21 = ptrtoint ptr %arrayidx15.le to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx15.le, align 4
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.85, ptr noundef %22, i32 noundef %i.0166, i32 noundef %18, i32 noundef %16) #11
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %arrayidx.i = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %18
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %do.end6.i, label %if.end9.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %groups, align 4
  %arrayidx15.le157 = getelementptr %struct.at91_pin_group, ptr %28, i32 %group
  %29 = ptrtoint ptr %arrayidx15.le157 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx15.le157, align 4
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.88, ptr noundef %30, i32 noundef %i.0166, i32 noundef %18) #11
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %pin10.i = getelementptr %struct.at91_pmx_pin, ptr %3, i32 %i.0166, i32 1
  %33 = ptrtoint ptr %pin10.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pin10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %34)
  %cmp11.i = icmp ugt i32 %34, 31
  br i1 %cmp11.i, label %do.end15.i, label %if.end18.i

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %groups, align 4
  %arrayidx15.le159 = getelementptr %struct.at91_pin_group, ptr %36, i32 %group
  %37 = ptrtoint ptr %arrayidx15.le159 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx15.le159, align 4
  %39 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.91, ptr noundef %38, i32 noundef %i.0166, i32 noundef %34, i32 noundef 32) #11
  br label %cleanup

if.end18.i:                                       ; preds = %if.end9.i
  %mux19.i = getelementptr %struct.at91_pmx_pin, ptr %3, i32 %i.0166, i32 2
  %41 = ptrtoint ptr %mux19.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mux19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool20.not.i = icmp eq i32 %42, 0
  br i1 %tobool20.not.i, label %if.end18.i.for.inc_crit_edge, label %if.end22.i

if.end18.i.for.inc_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end22.i:                                       ; preds = %if.end18.i
  %sub.i = add i32 %42, -1
  %43 = ptrtoint ptr %nmux.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nmux.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %44)
  %cmp24.not.i = icmp slt i32 %sub.i, %44
  br i1 %cmp24.not.i, label %if.end31.i, label %do.end28.i

do.end28.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %groups, align 4
  %arrayidx15.le161 = getelementptr %struct.at91_pin_group, ptr %46, i32 %group
  %47 = ptrtoint ptr %arrayidx15.le161 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx15.le161, align 4
  %49 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.94, ptr noundef %48, i32 noundef %i.0166, i32 noundef %sub.i, i32 noundef %44) #11
  br label %cleanup

if.end31.i:                                       ; preds = %if.end22.i
  %51 = ptrtoint ptr %mux_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mux_mask.i, align 4
  %mul.i = mul i32 %44, %18
  %add.i = add i32 %mul.i, %sub.i
  %arrayidx34.i = getelementptr i32, ptr %52, i32 %add.i
  %53 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx34.i, align 4
  %shl.i = shl nuw i32 1, %34
  %and.i = and i32 %54, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool36.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool36.not.i, label %do.end40.i, label %if.end31.i.for.inc_crit_edge

if.end31.i.for.inc_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end40.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %groups, align 4
  %arrayidx15.le163 = getelementptr %struct.at91_pin_group, ptr %56, i32 %group
  %57 = ptrtoint ptr %arrayidx15.le163 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx15.le163, align 4
  %59 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call, align 4
  %add43.i = add i32 %18, 65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.97, ptr noundef %58, i32 noundef %i.0166, i32 noundef %sub.i, i32 noundef %add43.i, i32 noundef %34) #11
  br label %cleanup

for.inc:                                          ; preds = %if.end31.i.for.inc_crit_edge, %if.end18.i.for.inc_crit_edge
  %inc = add nuw i32 %i.0166, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond21.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body23:                                       ; preds = %for.inc53.for.body23_crit_edge, %for.cond21.preheader.for.body23_crit_edge
  %i.1169 = phi i32 [ %inc54, %for.inc53.for.body23_crit_edge ], [ 0, %for.cond21.preheader.for.body23_crit_edge ]
  %arrayidx24 = getelementptr %struct.at91_pmx_pin, ptr %3, i32 %i.1169
  %61 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call, align 4
  %mux.i = getelementptr %struct.at91_pmx_pin, ptr %3, i32 %i.1169, i32 2
  %63 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mux.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i110 = icmp eq i32 %64, 0
  br i1 %tobool.not.i110, label %do.body9.i, label %do.body.i

do.body.i:                                        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pin_dbg.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pmx_set, %at91_pin_dbg.exit)) #8
          to label %if.then5.i [label %at91_pin_dbg.exit], !srcloc !300

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx24, align 4
  %add.i111 = add i32 %66, 65
  %pin6.i = getelementptr %struct.at91_pmx_pin, ptr %3, i32 %i.1169, i32 1
  %67 = ptrtoint ptr %pin6.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pin6.i, align 4
  %69 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mux.i, align 4
  %add8.i = add i32 %70, 64
  %conf.i = getelementptr %struct.at91_pmx_pin, ptr %3, i32 %i.1169, i32 3
  %71 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %conf.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pin_dbg.__UNIQUE_ID_ddebug229, ptr noundef %62, ptr noundef nonnull @.str.75, i32 noundef %add.i111, i32 noundef %68, i32 noundef %add8.i, i32 noundef %72) #8
  br label %at91_pin_dbg.exit

do.body9.i:                                       ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pin_dbg.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pmx_set, %at91_pin_dbg.exit)) #8
          to label %if.then23.i [label %at91_pin_dbg.exit], !srcloc !300

if.then23.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx24, align 4
  %add25.i = add i32 %74, 65
  %pin26.i = getelementptr %struct.at91_pmx_pin, ptr %3, i32 %i.1169, i32 1
  %75 = ptrtoint ptr %pin26.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pin26.i, align 4
  %conf27.i = getelementptr %struct.at91_pmx_pin, ptr %3, i32 %i.1169, i32 3
  %77 = ptrtoint ptr %conf27.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %conf27.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pin_dbg.__UNIQUE_ID_ddebug230, ptr noundef %62, ptr noundef nonnull @.str.76, i32 noundef %add25.i, i32 noundef %76, i32 noundef %78) #8
  br label %at91_pin_dbg.exit

at91_pin_dbg.exit:                                ; preds = %if.then23.i, %do.body9.i, %if.then5.i, %do.body.i
  %79 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx24, align 4
  %arrayidx.i112 = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i112, align 4
  %tobool.not.i113 = icmp eq ptr %82, null
  br i1 %tobool.not.i113, label %at91_pin_dbg.exit.for.inc53_crit_edge, label %pin_to_controller.exit

at91_pin_dbg.exit.for.inc53_crit_edge:            ; preds = %at91_pin_dbg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc53

pin_to_controller.exit:                           ; preds = %at91_pin_dbg.exit
  %regbase.i = getelementptr inbounds %struct.at91_gpio_chip, ptr %82, i32 0, i32 6
  %83 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regbase.i, align 4
  %tobool27.not = icmp eq ptr %84, null
  br i1 %tobool27.not, label %pin_to_controller.exit.for.inc53_crit_edge, label %if.end29

pin_to_controller.exit.for.inc53_crit_edge:       ; preds = %pin_to_controller.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc53

if.end29:                                         ; preds = %pin_to_controller.exit
  %pin30 = getelementptr %struct.at91_pmx_pin, ptr %3, i32 %i.1169, i32 1
  %85 = ptrtoint ptr %pin30 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pin30, align 4
  %shl.i116 = shl nuw i32 1, %86
  %87 = tail call i32 @llvm.bswap.i32(i32 %shl.i116) #8
  %add.ptr.i = getelementptr i8, ptr %84, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %87) #8, !srcloc !296
  %88 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mux.i, align 4
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %89, label %if.end29.if.then51_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb32
    i32 2, label %sw.bb33
    i32 3, label %sw.bb35
    i32 4, label %sw.bb42
  ]

if.end29.if.then51_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

sw.bb:                                            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %84, i32 %87) #8, !srcloc !296
  %add.ptr1.i = getelementptr i8, ptr %84, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %87) #8, !srcloc !296
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %ops43 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops43, align 4
  %mux_A_periph = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %mux_A_periph to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mux_A_periph, align 4
  tail call void %94(ptr noundef nonnull %84, i32 noundef %shl.i116) #8
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %ops43 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops43, align 4
  %mux_B_periph = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %mux_B_periph to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mux_B_periph, align 4
  tail call void %98(ptr noundef nonnull %84, i32 noundef %shl.i116) #8
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end29
  %99 = ptrtoint ptr %ops43 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops43, align 4
  %mux_C_periph = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %mux_C_periph to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mux_C_periph, align 4
  %tobool37.not = icmp eq ptr %102, null
  br i1 %tobool37.not, label %sw.bb35.cleanup_crit_edge, label %if.end39

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %102(ptr noundef nonnull %84, i32 noundef %shl.i116) #8
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end29
  %103 = ptrtoint ptr %ops43 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops43, align 4
  %mux_D_periph = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %mux_D_periph to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mux_D_periph, align 4
  %tobool44.not = icmp eq ptr %106, null
  br i1 %tobool44.not, label %sw.bb42.cleanup_crit_edge, label %if.end46

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %106(ptr noundef nonnull %84, i32 noundef %shl.i116) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end46, %if.end39, %sw.bb33, %sw.bb32, %sw.bb
  %107 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr = load i32, ptr %mux.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool50.not = icmp eq i32 %.pr, 0
  br i1 %tobool50.not, label %sw.epilog.for.inc53_crit_edge, label %sw.epilog.if.then51_crit_edge

sw.epilog.if.then51_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

sw.epilog.for.inc53_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc53

if.then51:                                        ; preds = %sw.epilog.if.then51_crit_edge, %if.end29.if.then51_crit_edge
  %add.ptr.i117 = getelementptr i8, ptr %84, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %87) #8, !srcloc !296
  br label %for.inc53

for.inc53:                                        ; preds = %if.then51, %sw.epilog.for.inc53_crit_edge, %pin_to_controller.exit.for.inc53_crit_edge, %at91_pin_dbg.exit.for.inc53_crit_edge
  %inc54 = add nuw i32 %i.1169, 1
  %exitcond191.not = icmp eq i32 %inc54, %5
  br i1 %exitcond191.not, label %for.inc53.cleanup_crit_edge, label %for.inc53.for.body23_crit_edge

for.inc53.for.body23_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

for.inc53.cleanup_crit_edge:                      ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc53.cleanup_crit_edge, %sw.bb42.cleanup_crit_edge, %sw.bb35.cleanup_crit_edge, %do.end40.i, %do.end28.i, %do.end15.i, %do.end6.i, %do.end.i, %for.cond21.preheader.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end6.i ], [ -22, %do.end40.i ], [ -22, %do.end28.i ], [ -22, %do.end15.i ], [ -22, %do.end.i ], [ 0, %for.cond21.preheader.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ -22, %sw.bb35.cleanup_crit_edge ], [ -22, %sw.bb42.cleanup_crit_edge ], [ 0, %for.inc53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_gpio_request_enable(ptr noundef %pctldev, ptr noundef readonly %range, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %tobool.not = icmp eq ptr %range, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.99) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %gc = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 7
  %2 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gc, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.102) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @gpiochip_get_data(ptr noundef nonnull %3) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_gpio_request_enable.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_gpio_request_enable, %do.end20)) #8
          to label %if.then16 [label %do.end20], !srcloc !300

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_gpio_request_enable.__UNIQUE_ID_ddebug232, ptr noundef %7, ptr noundef nonnull @.str.104, i32 noundef %offset) #8
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %if.end7
  %base = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 19
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  %sub = sub i32 %offset, %9
  %shl = shl nuw i32 1, %sub
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_gpio_request_enable.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_gpio_request_enable, %do.end41)) #8
          to label %if.then35 [label %do.end41], !srcloc !300

if.then35:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %id = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 2
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %add = add i32 %13, 65
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base, align 4
  %sub38 = sub i32 %offset, %15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_gpio_request_enable.__UNIQUE_ID_ddebug233, ptr noundef %11, ptr noundef nonnull @.str.105, i32 noundef %offset, i32 noundef %add, i32 noundef %sub38, i32 noundef %shl) #8
  br label %do.end41

do.end41:                                         ; preds = %if.then35, %do.end20
  %16 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %regbase = getelementptr inbounds %struct.at91_gpio_chip, ptr %call9, i32 0, i32 6
  %17 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #8, !srcloc !296
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %do.end5, %do.end
  %retval.0 = phi i32 [ 0, %do.end41 ], [ -22, %do.end5 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_gpio_disable_free(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_gpio_disable_free.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_gpio_disable_free, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_gpio_disable_free.__UNIQUE_ID_ddebug234, ptr noundef %1, ptr noundef nonnull @.str.107, i32 noundef %offset) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_pinconf_get(ptr noundef %pctldev, i32 noundef %pin_id, ptr nocapture noundef %config) #0 align 64 {
entry:
  %div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div) #8
  %0 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %div, align 4, !annotation !297
  %1 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %config, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pinconf_get.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pinconf_get, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pinconf_get.__UNIQUE_ID_ddebug235, ptr noundef %3, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.108, i32 noundef 974, i32 noundef %pin_id) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %div1.i = lshr i32 %pin_id, 5
  %arrayidx.i = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %div1.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %pin_to_controller.exit

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pin_to_controller.exit:                           ; preds = %do.end
  %regbase.i = getelementptr inbounds %struct.at91_gpio_chip, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regbase.i, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %pin_to_controller.exit.cleanup_crit_edge, label %if.end9

pin_to_controller.exit.cleanup_crit_edge:         ; preds = %pin_to_controller.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %pin_to_controller.exit
  %rem = and i32 %pin_id, 31
  %add.ptr.i = getelementptr i8, ptr %7, i32 88
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !295
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %10 = shl nuw i32 1, %rem
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %if.then12

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %config, align 4
  %or = or i32 %13, 2
  store i32 %or, ptr %config, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  %add.ptr.i130 = getelementptr i8, ptr %7, i32 104
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #8, !srcloc !295
  %15 = xor i32 %14, -1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  %17 = and i32 %16, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %if.end13.if.end18_crit_edge, label %if.then16

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %config, align 4
  %or17 = or i32 %19, 1
  store i32 %or17, ptr %config, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  %ops = getelementptr inbounds %struct.at91_pinctrl, ptr %call, i32 0, i32 9
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %get_deglitch = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %get_deglitch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_deglitch, align 4
  %tobool19.not = icmp eq ptr %23, null
  br i1 %tobool19.not, label %if.end18.if.end25_crit_edge, label %land.lhs.true

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end18
  %call22 = tail call zeroext i1 %23(ptr noundef nonnull %7, i32 noundef %rem) #8
  br i1 %call22, label %if.then23, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %config, align 4
  %or24 = or i32 %25, 4
  store i32 %or24, ptr %config, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true.if.end25_crit_edge, %if.end18.if.end25_crit_edge
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %get_debounce = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %get_debounce to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_debounce, align 4
  %tobool27.not = icmp eq ptr %29, null
  br i1 %tobool27.not, label %if.end25.if.end35_crit_edge, label %land.lhs.true28

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true28:                                  ; preds = %if.end25
  %call31 = call zeroext i1 %29(ptr noundef nonnull %7, i32 noundef %rem, ptr noundef nonnull %div) #8
  br i1 %call31, label %if.then32, label %land.lhs.true28.if.end35_crit_edge

land.lhs.true28.if.end35_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then32:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %div, align 4
  %shl = shl i32 %31, 17
  %32 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %config, align 4
  %or33 = or i32 %shl, %33
  %or34 = or i32 %or33, 65536
  store i32 %or34, ptr %config, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %land.lhs.true28.if.end35_crit_edge, %if.end25.if.end35_crit_edge
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %get_pulldown = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %get_pulldown to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_pulldown, align 4
  %tobool37.not = icmp eq ptr %37, null
  br i1 %tobool37.not, label %if.end35.if.end44_crit_edge, label %land.lhs.true38

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.lhs.true38:                                  ; preds = %if.end35
  %call41 = call zeroext i1 %37(ptr noundef nonnull %7, i32 noundef %rem) #8
  br i1 %call41, label %if.then42, label %land.lhs.true38.if.end44_crit_edge

land.lhs.true38.if.end44_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then42:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %config, align 4
  %or43 = or i32 %39, 8
  store i32 %or43, ptr %config, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %land.lhs.true38.if.end44_crit_edge, %if.end35.if.end44_crit_edge
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %get_schmitt_trig = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %get_schmitt_trig to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_schmitt_trig, align 4
  %tobool46.not = icmp eq ptr %43, null
  br i1 %tobool46.not, label %if.end44.if.end53_crit_edge, label %land.lhs.true47

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true47:                                  ; preds = %if.end44
  %call50 = call zeroext i1 %43(ptr noundef nonnull %7, i32 noundef %rem) #8
  br i1 %call50, label %if.then51, label %land.lhs.true47.if.end53_crit_edge

land.lhs.true47.if.end53_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then51:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %config, align 4
  %or52 = or i32 %45, 16
  store i32 %or52, ptr %config, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %land.lhs.true47.if.end53_crit_edge, %if.end44.if.end53_crit_edge
  %46 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops, align 4
  %get_drivestrength = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %get_drivestrength to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_drivestrength, align 4
  %tobool55.not = icmp eq ptr %49, null
  br i1 %tobool55.not, label %if.end53.if.end62_crit_edge, label %if.then56

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %call59 = call i32 %49(ptr noundef nonnull %7, i32 noundef %rem) #8
  %shl60 = shl i32 %call59, 5
  %50 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %config, align 4
  %or61 = or i32 %51, %shl60
  store i32 %or61, ptr %config, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then56, %if.end53.if.end62_crit_edge
  %52 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops, align 4
  %get_slewrate = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %53, i32 0, i32 15
  %54 = ptrtoint ptr %get_slewrate to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_slewrate, align 4
  %tobool64.not = icmp eq ptr %55, null
  br i1 %tobool64.not, label %if.end62.if.end71_crit_edge, label %if.then65

if.end62.if.end71_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %call68 = call i32 %55(ptr noundef nonnull %7, i32 noundef %rem) #8
  %shl69 = shl i32 %call68, 9
  %56 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %config, align 4
  %or70 = or i32 %57, %shl69
  store i32 %or70, ptr %config, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %if.end62.if.end71_crit_edge
  %add.ptr.i131 = getelementptr i8, ptr %7, i32 56
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131) #8, !srcloc !295
  %add.ptr2.i = getelementptr i8, ptr %7, i32 24
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !295
  %60 = call i32 @llvm.bswap.i32(i32 %59) #8
  %61 = and i32 %60, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool7.i.not = icmp eq i32 %61, 0
  br i1 %tobool7.i.not, label %if.end71.cleanup_crit_edge, label %if.then73

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %62 = call i32 @llvm.bswap.i32(i32 %58) #8
  %63 = lshr i32 %62, %rem
  %64 = shl i32 %63, 8
  %shl75 = and i32 %64, 256
  %65 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %config, align 4
  %or76 = or i32 %shl75, %66
  %or77 = or i32 %or76, 128
  store i32 %or77, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.end71.cleanup_crit_edge, %pin_to_controller.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %pin_to_controller.exit.cleanup_crit_edge ], [ 0, %if.then73 ], [ 0, %if.end71.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_pinconf_set(ptr noundef %pctldev, i32 noundef %pin_id, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %rem = and i32 %pin_id, 31
  %shl.i = shl nuw i32 1, %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp142.not = icmp eq i32 %num_configs, 0
  br i1 %cmp142.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %div1.i = lshr i32 %pin_id, 5
  %arrayidx.i = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %div1.i
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %ops = getelementptr inbounds %struct.at91_pinctrl, ptr %call, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0143
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_pinconf_set.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_pinconf_set, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !300

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_pinconf_set.__UNIQUE_ID_ddebug236, ptr noundef %4, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.110, i32 noundef 1023, i32 noundef %pin_id, i32 noundef %2) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %pin_to_controller.exit

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pin_to_controller.exit:                           ; preds = %do.end
  %regbase.i = getelementptr inbounds %struct.at91_gpio_chip, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regbase.i, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %pin_to_controller.exit.cleanup_crit_edge, label %if.end9

pin_to_controller.exit.cleanup_crit_edge:         ; preds = %pin_to_controller.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %pin_to_controller.exit
  %and12 = and i32 %2, 8
  %9 = and i32 %2, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9)
  %.not = icmp eq i32 %9, 9
  br i1 %.not, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not141 = icmp eq i32 %and, 0
  %and16 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %10 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool19.not = icmp eq i32 %10, 0
  %cond.i = select i1 %tobool19.not, i32 52, i32 48
  %add.ptr.i = getelementptr i8, ptr %8, i32 %cond.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #8, !srcloc !296
  %cond3.i = select i1 %tobool17.not, i32 20, i32 16
  %add.ptr4.i = getelementptr i8, ptr %8, i32 %cond3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %0) #8, !srcloc !296
  br i1 %tobool11.not141, label %if.end15.at91_mux_set_pullup.exit_crit_edge, label %if.then.i

if.end15.at91_mux_set_pullup.exit_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %at91_mux_set_pullup.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i133 = getelementptr i8, ptr %8, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 %0) #8, !srcloc !296
  br label %at91_mux_set_pullup.exit

at91_mux_set_pullup.exit:                         ; preds = %if.then.i, %if.end15.at91_mux_set_pullup.exit_crit_edge
  %cond.i134 = phi i32 [ 100, %if.then.i ], [ 96, %if.end15.at91_mux_set_pullup.exit_crit_edge ]
  %add.ptr2.i = getelementptr i8, ptr %8, i32 %cond.i134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %0) #8, !srcloc !296
  %and22 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %cond.i136 = select i1 %tobool23.not, i32 84, i32 80
  %add.ptr.i137 = getelementptr i8, ptr %8, i32 %cond.i136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 %0) #8, !srcloc !296
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %set_deglitch = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %set_deglitch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_deglitch, align 4
  %tobool24.not = icmp eq ptr %14, null
  br i1 %tobool24.not, label %at91_mux_set_pullup.exit.if.end30_crit_edge, label %if.then25

at91_mux_set_pullup.exit.if.end30_crit_edge:      ; preds = %at91_mux_set_pullup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then25:                                        ; preds = %at91_mux_set_pullup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and28 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29 = icmp ne i32 %and28, 0
  tail call void %14(ptr noundef nonnull %8, i32 noundef %shl.i, i1 noundef zeroext %tobool29) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %at91_mux_set_pullup.exit.if.end30_crit_edge
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %set_debounce = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %set_debounce to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_debounce, align 4
  %tobool32.not = icmp eq ptr %18, null
  br i1 %tobool32.not, label %if.end30.if.end40_crit_edge, label %if.then33

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %and36 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37 = icmp ne i32 %and36, 0
  %and38 = lshr i32 %2, 17
  %shr39 = and i32 %and38, 16383
  tail call void %18(ptr noundef nonnull %8, i32 noundef %shl.i, i1 noundef zeroext %tobool37, i32 noundef %shr39) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %if.end30.if.end40_crit_edge
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %set_pulldown = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %set_pulldown to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_pulldown, align 4
  %tobool42.not = icmp eq ptr %22, null
  br i1 %tobool42.not, label %if.end40.if.end48_crit_edge, label %if.then43

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool47 = icmp ne i32 %and12, 0
  tail call void %22(ptr noundef nonnull %8, i32 noundef %shl.i, i1 noundef zeroext %tobool47) #8
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end40.if.end48_crit_edge
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %disable_schmitt_trig = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %disable_schmitt_trig to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %disable_schmitt_trig, align 4
  %tobool50.not = icmp eq ptr %26, null
  %and52 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %or.cond131 = select i1 %tobool50.not, i1 true, i1 %tobool53.not
  br i1 %or.cond131, label %if.end48.if.end57_crit_edge, label %if.then54

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %26(ptr noundef nonnull %8, i32 noundef %shl.i) #8
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end48.if.end57_crit_edge
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops, align 4
  %set_drivestrength = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %set_drivestrength to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_drivestrength, align 4
  %tobool59.not = icmp eq ptr %30, null
  br i1 %tobool59.not, label %if.end57.if.end65_crit_edge, label %if.then60

if.end57.if.end65_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %and63 = lshr i32 %2, 5
  %shr64 = and i32 %and63, 3
  tail call void %30(ptr noundef nonnull %8, i32 noundef %rem, i32 noundef %shr64) #8
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.end57.if.end65_crit_edge
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %set_slewrate = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %set_slewrate to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_slewrate, align 4
  %tobool67.not = icmp eq ptr %34, null
  br i1 %tobool67.not, label %if.end65.for.inc_crit_edge, label %if.then68

if.end65.for.inc_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %and71 = lshr i32 %2, 9
  %shr72 = and i32 %and71, 1
  tail call void %34(ptr noundef nonnull %8, i32 noundef %rem, i32 noundef %shr72) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then68, %if.end65.for.inc_crit_edge
  %inc = add nuw i32 %i.0143, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %pin_to_controller.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %pin_to_controller.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_pinconf_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %pin_id) #0 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !297
  %call = call i32 @at91_pinconf_get(ptr noundef %pctldev, i32 noundef %pin_id, ptr noundef nonnull %config)
  %1 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %config, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4, label %do.body4.thread

do.body4:                                         ; preds = %entry
  %and5 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body15.thread238, label %do.body4.do.body15_crit_edge

do.body4.do.body15_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

do.body4.thread:                                  ; preds = %entry
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.113) #8
  %and5146 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5146)
  %tobool6.not147 = icmp eq i32 %and5146, 0
  br i1 %tobool6.not147, label %do.body15.thread, label %if.then9

if.then9:                                         ; preds = %do.body4.thread
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.112) #8
  br label %do.body15

do.body15:                                        ; preds = %if.then9, %do.body4.do.body15_crit_edge
  %num_conf.0148151 = phi i32 [ 2, %if.then9 ], [ 1, %do.body4.do.body15_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.114) #8
  %and16 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.do.body26_crit_edge, label %do.body15.if.then20_crit_edge

do.body15.if.then20_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

do.body15.do.body26_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26

do.body15.thread238:                              ; preds = %do.body4
  %and16240 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16240)
  %tobool17.not241 = icmp eq i32 %and16240, 0
  br i1 %tobool17.not241, label %do.body26.thread245, label %do.body15.thread238.if.end21_crit_edge

do.body15.thread238.if.end21_crit_edge:           ; preds = %do.body15.thread238
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.body15.thread:                                 ; preds = %do.body4.thread
  %and16153 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16153)
  %tobool17.not154 = icmp eq i32 %and16153, 0
  br i1 %tobool17.not154, label %do.body26.thread, label %do.body15.thread.if.then20_crit_edge

do.body15.thread.if.then20_crit_edge:             ; preds = %do.body15.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.then20:                                        ; preds = %do.body15.thread.if.then20_crit_edge, %do.body15.if.then20_crit_edge
  %num_conf.1155158 = phi i32 [ 1, %do.body15.thread.if.then20_crit_edge ], [ %num_conf.0148151, %do.body15.if.then20_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.112) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %do.body15.thread238.if.end21_crit_edge
  %num_conf.1155159 = phi i32 [ %num_conf.1155158, %if.then20 ], [ 0, %do.body15.thread238.if.end21_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.115) #8
  %inc22 = add nuw nsw i32 %num_conf.1155159, 1
  br label %do.body26

do.body26:                                        ; preds = %if.end21, %do.body15.do.body26_crit_edge
  %num_conf.2 = phi i32 [ %inc22, %if.end21 ], [ %num_conf.0148151, %do.body15.do.body26_crit_edge ]
  %and27 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.do.body37_crit_edge, label %do.body26.if.then31_crit_edge

do.body26.if.then31_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

do.body26.do.body37_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body37

do.body26.thread245:                              ; preds = %do.body15.thread238
  %and27247 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27247)
  %tobool28.not248 = icmp eq i32 %and27247, 0
  br i1 %tobool28.not248, label %do.body37.thread252, label %do.body26.thread245.if.end32_crit_edge

do.body26.thread245.if.end32_crit_edge:           ; preds = %do.body26.thread245
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.body26.thread:                                 ; preds = %do.body15.thread
  %and27161 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27161)
  %tobool28.not162 = icmp eq i32 %and27161, 0
  br i1 %tobool28.not162, label %do.body37.thread, label %do.body26.thread.if.then31_crit_edge

do.body26.thread.if.then31_crit_edge:             ; preds = %do.body26.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then31:                                        ; preds = %do.body26.thread.if.then31_crit_edge, %do.body26.if.then31_crit_edge
  %num_conf.2163166 = phi i32 [ 1, %do.body26.thread.if.then31_crit_edge ], [ %num_conf.2, %do.body26.if.then31_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.112) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %do.body26.thread245.if.end32_crit_edge
  %num_conf.2163167 = phi i32 [ %num_conf.2163166, %if.then31 ], [ 0, %do.body26.thread245.if.end32_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.116) #8
  %inc33 = add nuw nsw i32 %num_conf.2163167, 1
  br label %do.body37

do.body37:                                        ; preds = %if.end32, %do.body26.do.body37_crit_edge
  %num_conf.3 = phi i32 [ %inc33, %if.end32 ], [ %num_conf.2, %do.body26.do.body37_crit_edge ]
  %and38 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.do.body48_crit_edge, label %do.body37.if.then42_crit_edge

do.body37.if.then42_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

do.body37.do.body48_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

do.body37.thread252:                              ; preds = %do.body26.thread245
  %and38254 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38254)
  %tobool39.not255 = icmp eq i32 %and38254, 0
  br i1 %tobool39.not255, label %do.body37.thread252.do.body48_crit_edge, label %do.body37.thread252.if.end43_crit_edge

do.body37.thread252.if.end43_crit_edge:           ; preds = %do.body37.thread252
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

do.body37.thread252.do.body48_crit_edge:          ; preds = %do.body37.thread252
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

do.body37.thread:                                 ; preds = %do.body26.thread
  %and38169 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38169)
  %tobool39.not170 = icmp eq i32 %and38169, 0
  br i1 %tobool39.not170, label %do.body48.thread, label %do.body37.thread.if.then42_crit_edge

do.body37.thread.if.then42_crit_edge:             ; preds = %do.body37.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.then42:                                        ; preds = %do.body37.thread.if.then42_crit_edge, %do.body37.if.then42_crit_edge
  %num_conf.3171174 = phi i32 [ 1, %do.body37.thread.if.then42_crit_edge ], [ %num_conf.3, %do.body37.if.then42_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.112) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %do.body37.thread252.if.end43_crit_edge
  %num_conf.3171175 = phi i32 [ %num_conf.3171174, %if.then42 ], [ 0, %do.body37.thread252.if.end43_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.117) #8
  %inc44 = add nuw nsw i32 %num_conf.3171175, 1
  br label %do.body48

do.body48:                                        ; preds = %if.end43, %do.body37.thread252.do.body48_crit_edge, %do.body37.do.body48_crit_edge
  %num_conf.4 = phi i32 [ %inc44, %if.end43 ], [ %num_conf.3, %do.body37.do.body48_crit_edge ], [ 0, %do.body37.thread252.do.body48_crit_edge ]
  %and49 = and i32 %2, 96
  %3 = zext i32 %and49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %and49, label %do.body48.do.body80_crit_edge [
    i32 32, label %if.then50
    i32 64, label %if.then61
    i32 96, label %if.then72
  ]

do.body48.do.body80_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body80

do.body48.thread:                                 ; preds = %do.body37.thread
  %and49177 = and i32 %2, 96
  %4 = zext i32 %and49177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %and49177, label %do.body80.thread [
    i32 32, label %do.body48.thread.do.body80.sink.split.sink.split_crit_edge
    i32 64, label %do.body48.thread.if.then63_crit_edge
    i32 96, label %do.body48.thread.if.then74_crit_edge
  ]

do.body48.thread.if.then74_crit_edge:             ; preds = %do.body48.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

do.body48.thread.if.then63_crit_edge:             ; preds = %do.body48.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then63

do.body48.thread.do.body80.sink.split.sink.split_crit_edge: ; preds = %do.body48.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body80.sink.split.sink.split

if.then50:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_conf.4)
  %tobool51.not = icmp eq i32 %num_conf.4, 0
  br i1 %tobool51.not, label %if.then50.do.body80.sink.split_crit_edge, label %if.then50.do.body80.sink.split.sink.split_crit_edge

if.then50.do.body80.sink.split.sink.split_crit_edge: ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body80.sink.split.sink.split

if.then50.do.body80.sink.split_crit_edge:         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body80.sink.split

if.then61:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_conf.4)
  %tobool62.not = icmp eq i32 %num_conf.4, 0
  br i1 %tobool62.not, label %if.then61.do.body80.sink.split_crit_edge, label %if.then61.if.then63_crit_edge

if.then61.if.then63_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then63

if.then61.do.body80.sink.split_crit_edge:         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body80.sink.split

if.then63:                                        ; preds = %if.then61.if.then63_crit_edge, %do.body48.thread.if.then63_crit_edge
  %num_conf.5198202 = phi i32 [ %num_conf.4, %if.then61.if.then63_crit_edge ], [ 1, %do.body48.thread.if.then63_crit_edge ]
  br label %do.body80.sink.split.sink.split

if.then72:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_conf.4)
  %tobool73.not = icmp eq i32 %num_conf.4, 0
  br i1 %tobool73.not, label %if.then72.do.body80.sink.split_crit_edge, label %if.then72.if.then74_crit_edge

if.then72.if.then74_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

if.then72.do.body80.sink.split_crit_edge:         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body80.sink.split

if.then74:                                        ; preds = %if.then72.if.then74_crit_edge, %do.body48.thread.if.then74_crit_edge
  %num_conf.6213216 = phi i32 [ %num_conf.4, %if.then72.if.then74_crit_edge ], [ 1, %do.body48.thread.if.then74_crit_edge ]
  br label %do.body80.sink.split.sink.split

do.body80.sink.split.sink.split:                  ; preds = %if.then74, %if.then63, %if.then50.do.body80.sink.split.sink.split_crit_edge, %do.body48.thread.do.body80.sink.split.sink.split_crit_edge
  %.str.118.sink.ph = phi ptr [ @.str.120, %if.then74 ], [ @.str.119, %if.then63 ], [ @.str.118, %do.body48.thread.do.body80.sink.split.sink.split_crit_edge ], [ @.str.118, %if.then50.do.body80.sink.split.sink.split_crit_edge ]
  %num_conf.4179188.sink.ph = phi i32 [ %num_conf.6213216, %if.then74 ], [ %num_conf.5198202, %if.then63 ], [ 1, %do.body48.thread.do.body80.sink.split.sink.split_crit_edge ], [ %num_conf.4, %if.then50.do.body80.sink.split.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.112) #8
  br label %do.body80.sink.split

do.body80.sink.split:                             ; preds = %do.body80.sink.split.sink.split, %if.then72.do.body80.sink.split_crit_edge, %if.then61.do.body80.sink.split_crit_edge, %if.then50.do.body80.sink.split_crit_edge
  %.str.118.sink = phi ptr [ @.str.118, %if.then50.do.body80.sink.split_crit_edge ], [ @.str.119, %if.then61.do.body80.sink.split_crit_edge ], [ @.str.120, %if.then72.do.body80.sink.split_crit_edge ], [ %.str.118.sink.ph, %do.body80.sink.split.sink.split ]
  %num_conf.4179188.sink = phi i32 [ 0, %if.then50.do.body80.sink.split_crit_edge ], [ 0, %if.then61.do.body80.sink.split_crit_edge ], [ 0, %if.then72.do.body80.sink.split_crit_edge ], [ %num_conf.4179188.sink.ph, %do.body80.sink.split.sink.split ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.118.sink) #8
  %inc54 = add nuw nsw i32 %num_conf.4179188.sink, 1
  br label %do.body80

do.body80:                                        ; preds = %do.body80.sink.split, %do.body48.do.body80_crit_edge
  %num_conf.7 = phi i32 [ %num_conf.4, %do.body48.do.body80_crit_edge ], [ %inc54, %do.body80.sink.split ]
  %and81 = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body80.do.body91_crit_edge, label %if.then83

do.body80.do.body91_crit_edge:                    ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body91

do.body80.thread:                                 ; preds = %do.body48.thread
  %and81219 = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81219)
  %tobool82.not220 = icmp eq i32 %and81219, 0
  br i1 %tobool82.not220, label %do.body91.thread, label %do.body80.thread.if.then85_crit_edge

do.body80.thread.if.then85_crit_edge:             ; preds = %do.body80.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85

if.then83:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_conf.7)
  %tobool84.not = icmp eq i32 %num_conf.7, 0
  br i1 %tobool84.not, label %if.then83.if.end86_crit_edge, label %if.then83.if.then85_crit_edge

if.then83.if.then85_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85

if.then83.if.end86_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then85:                                        ; preds = %if.then83.if.then85_crit_edge, %do.body80.thread.if.then85_crit_edge
  %num_conf.7221224 = phi i32 [ %num_conf.7, %if.then83.if.then85_crit_edge ], [ 1, %do.body80.thread.if.then85_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.112) #8
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.then83.if.end86_crit_edge
  %num_conf.7221225 = phi i32 [ %num_conf.7221224, %if.then85 ], [ 0, %if.then83.if.end86_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.121) #8
  %inc87 = add nuw nsw i32 %num_conf.7221225, 1
  br label %do.body91

do.body91:                                        ; preds = %if.end86, %do.body80.do.body91_crit_edge
  %num_conf.8 = phi i32 [ %inc87, %if.end86 ], [ %num_conf.7, %do.body80.do.body91_crit_edge ]
  %and92 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %do.body91.if.end105_crit_edge, label %if.then94

do.body91.if.end105_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

do.body91.thread:                                 ; preds = %do.body80.thread
  %and92227 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92227)
  %tobool93.not228 = icmp eq i32 %and92227, 0
  br i1 %tobool93.not228, label %do.body91.thread.if.end105_crit_edge, label %do.body91.thread.if.then96_crit_edge

do.body91.thread.if.then96_crit_edge:             ; preds = %do.body91.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

do.body91.thread.if.end105_crit_edge:             ; preds = %do.body91.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then94:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_conf.8)
  %tobool95.not = icmp eq i32 %num_conf.8, 0
  br i1 %tobool95.not, label %if.then94.if.then104_crit_edge, label %if.then94.if.then96_crit_edge

if.then94.if.then96_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

if.then94.if.then104_crit_edge:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then104

if.then96:                                        ; preds = %if.then94.if.then96_crit_edge, %do.body91.thread.if.then96_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.112) #8
  br label %if.then104

if.then104:                                       ; preds = %if.then96, %if.then94.if.then104_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.122) #8
  %shr = lshr i32 %2, 17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.123, i32 noundef %shr) #8
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %do.body91.thread.if.end105_crit_edge, %do.body91.if.end105_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @at91_pinconf_group_dbg_show(ptr nocapture noundef %pctldev, ptr nocapture noundef %s, i32 noundef %group) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_mux_sama5d3_get_drivestrength(ptr noundef %pio, i32 noundef %pin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %pin)
  %cmp.i = icmp ugt i32 %pin, 15
  %cond.i = select i1 %cmp.i, i32 284, i32 280
  %add.ptr = getelementptr i8, ptr %pio, i32 %cond.i
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #8
  %2 = shl i32 %pin, 1
  %3 = add i32 %2, -32
  %mul.i.i = select i1 %cmp.i, i32 %3, i32 %2
  %shr.i = lshr i32 %1, %mul.i.i
  %and.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %spec.store.select = select i1 %tobool.not, i32 32, i32 %and.i
  ret i32 %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_mux_sama5d3_set_drivestrength(ptr noundef %pio, i32 noundef %pin, i32 noundef %setting) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %setting)
  %tobool.not = icmp eq i32 %setting, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %pin)
  %cmp.i = icmp ugt i32 %pin, 15
  %cond.i = select i1 %cmp.i, i32 284, i32 280
  %add.ptr = getelementptr i8, ptr %pio, i32 %cond.i
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !295
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #8
  %2 = shl i32 %pin, 1
  %3 = add i32 %2, -32
  %mul.i.i = select i1 %cmp.i, i32 %3, i32 %2
  %shl.i = shl i32 3, %mul.i.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %1, %neg.i
  %shl3.i = shl i32 %setting, %mul.i.i
  %or.i = or i32 %and.i, %shl3.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !296
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !90, !92, !94, !96, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !136, !138, !139, !140, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !156, !158, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !176, !177, !178, !180, !181, !182, !184, !185, !187, !189, !191, !193, !194, !195, !196, !198, !199, !201, !202, !203, !205, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !241, !242, !244, !245, !247, !248, !249, !251, !253, !254, !255, !257, !258, !259, !261, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284}
!llvm.module.flags = !{!286, !287, !288, !289, !290, !291, !292, !293}
!llvm.ident = !{!294}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1661, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @at91_pinctrl_gpio_suspend._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @at91_pinctrl_gpio_suspend._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_pinctrl_at91__249_1954_at91_pinctrl_init3, !7, !"__initcall__kmod_pinctrl_at91__249_1954_at91_pinctrl_init3", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1954, i32 1}
!8 = !{ptr @gpio_chips, !9, !"gpio_chips", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 48, i32 31}
!10 = !{ptr @gpio_banks, !11, !"gpio_banks", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 50, i32 12}
!12 = !{ptr @wakeups, !13, !"wakeups", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1620, i32 12}
!14 = !{ptr @backups, !15, !"backups", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1621, i32 12}
!16 = !{ptr @drivers, !17, !"drivers", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1945, i32 39}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1931, i32 11}
!20 = !{ptr @at91_gpio_driver, !21, !"at91_gpio_driver", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1929, i32 31}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1822, i32 38}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1857, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @at91_gpio_probe._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @at91_gpio_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1864, i32 3}
!33 = !{ptr @at91_gpio_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @at91_gpio_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1876, i32 32}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1878, i32 4}
!39 = !{ptr @at91_gpio_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @at91_gpio_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1893, i32 36}
!43 = !{ptr @at91_gpio_probe.lock_key, !44, !"lock_key", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1909, i32 8}
!45 = !{ptr @at91_gpio_probe.request_key, !44, !"request_key", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1916, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @at91_gpio_probe._entry.17, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @at91_gpio_probe._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1924, i32 2}
!53 = !{ptr @at91_gpio_probe._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @at91_gpio_probe._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @at91_gpio_template, !56, !"at91_gpio_template", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1793, i32 31}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1500, i32 17}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1503, i32 18}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1504, i32 18}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1506, i32 11}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1506, i32 22}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1507, i32 18}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1509, i32 11}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1509, i32 19}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1511, i32 18}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1739, i32 23}
!77 = !{ptr @at91_gpio_of_match, !78, !"at91_gpio_of_match", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1807, i32 34}
!79 = !{ptr @at91sam9x5_ops, !80, !"at91sam9x5_ops", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 700, i32 42}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1603, i32 3}
!83 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @alt_gpio_irq_type._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @alt_gpio_irq_type._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @at91rm9200_ops, !87, !"at91rm9200_ops", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 691, i32 42}
!88 = !{ptr @sam9x60_ops, !89, !"sam9x60_ops", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 719, i32 42}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1939, i32 11}
!92 = !{ptr @at91_pinctrl_driver, !93, !"at91_pinctrl_driver", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1937, i32 31}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1370, i32 3}
!96 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @at91_pinctrl_probe._entry, !95, !"_entry", i1 false, i1 false}
!99 = !{ptr @at91_pinctrl_probe._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1400, i32 3}
!102 = !{ptr @at91_pinctrl_probe._entry.40, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @at91_pinctrl_probe._entry_ptr.42, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1409, i32 2}
!106 = !{ptr @at91_pinctrl_probe._entry.43, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @at91_pinctrl_probe._entry_ptr.45, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1292, i32 3}
!110 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @at91_pinctrl_probe_dt._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @at91_pinctrl_probe_dt._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1300, i32 2}
!115 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug239, !114, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1302, i32 2}
!119 = !{ptr @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug240, !118, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1306, i32 4}
!122 = !{ptr @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug241, !121, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1310, i32 2}
!125 = !{ptr @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug242, !124, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1311, i32 2}
!128 = !{ptr @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug243, !127, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1326, i32 2}
!131 = !{ptr @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug244, !130, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!132 = !{ptr @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug245, !133, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1327, i32 2}
!134 = !{ptr @at91_pinctrl_probe_dt.__UNIQUE_ID_ddebug246, !135, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1328, i32 2}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1337, i32 4}
!138 = !{ptr @at91_pinctrl_probe_dt._entry.55, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @at91_pinctrl_probe_dt._entry_ptr.57, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1152, i32 29}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1154, i32 3}
!144 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @at91_pinctrl_mux_mask._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @at91_pinctrl_mux_mask._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1160, i32 3}
!149 = !{ptr @at91_pinctrl_mux_mask._entry.61, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @at91_pinctrl_mux_mask._entry_ptr.63, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @at91_pinctrl_mux_mask._entry.64, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1173, i32 3}
!153 = !{ptr @at91_pinctrl_mux_mask._entry_ptr.65, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1127, i32 34}
!156 = distinct !{null, !157, !"gpio_compat", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1127, i32 20}
!158 = !{ptr @at91_pinctrl_parse_functions.grp_index, !159, !"grp_index", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1234, i32 13}
!160 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1237, i32 2}
!162 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @at91_pinctrl_parse_functions.__UNIQUE_ID_ddebug238, !161, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1245, i32 3}
!166 = !{ptr @at91_pinctrl_parse_functions._entry, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @at91_pinctrl_parse_functions._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.70, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1186, i32 2}
!170 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @at91_pinctrl_parse_groups.__UNIQUE_ID_ddebug237, !169, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!172 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1195, i32 29}
!174 = !{ptr @.str.73, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1199, i32 3}
!176 = !{ptr @at91_pinctrl_parse_groups._entry, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @at91_pinctrl_parse_groups._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 762, i32 3}
!180 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @at91_pin_dbg.__UNIQUE_ID_ddebug229, !179, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!182 = !{ptr @.str.76, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 765, i32 3}
!184 = !{ptr @at91_pin_dbg.__UNIQUE_ID_ddebug230, !183, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!185 = !{ptr @at91_pinctrl_desc, !186, !"at91_pinctrl_desc", i1 false, i1 false}
!186 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1120, i32 28}
!187 = !{ptr @at91_pctrl_ops, !188, !"at91_pctrl_ops", i1 false, i1 false}
!188 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 334, i32 33}
!189 = !{ptr @.str.77, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 268, i32 16}
!191 = !{ptr @.str.78, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 288, i32 3}
!193 = !{ptr @.str.79, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @at91_dt_node_to_map._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @at91_dt_node_to_map._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.80, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 323, i32 2}
!198 = !{ptr @at91_dt_node_to_map.__UNIQUE_ID_ddebug228, !197, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!199 = !{ptr @.str.81, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 228, i32 3}
!201 = !{ptr @.str.82, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @at91_pinctrl_find_group_by_name.__UNIQUE_ID_ddebug227, !200, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!203 = !{ptr @at91_pmx_ops, !204, !"at91_pmx_ops", i1 false, i1 false}
!204 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 955, i32 32}
!205 = !{ptr @.str.83, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 836, i32 2}
!207 = !{ptr @.str.84, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @at91_pmx_set.__UNIQUE_ID_ddebug231, !206, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!209 = !{ptr @.str.85, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 777, i32 3}
!211 = !{ptr @.str.86, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @pin_check_config._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @pin_check_config._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.88, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 783, i32 3}
!216 = !{ptr @pin_check_config._entry.87, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @pin_check_config._entry_ptr.89, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.91, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 789, i32 3}
!220 = !{ptr @pin_check_config._entry.90, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @pin_check_config._entry_ptr.92, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.94, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 800, i32 3}
!224 = !{ptr @pin_check_config._entry.93, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @pin_check_config._entry_ptr.95, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.97, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 806, i32 3}
!228 = !{ptr @pin_check_config._entry.96, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @pin_check_config._entry_ptr.98, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.99, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 923, i32 3}
!232 = !{ptr @.str.100, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @at91_gpio_request_enable._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @at91_gpio_request_enable._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.102, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 927, i32 3}
!237 = !{ptr @at91_gpio_request_enable._entry.101, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @at91_gpio_request_enable._entry_ptr.103, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.104, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 933, i32 2}
!241 = !{ptr @at91_gpio_request_enable.__UNIQUE_ID_ddebug232, !240, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!242 = !{ptr @.str.105, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 937, i32 2}
!244 = !{ptr @at91_gpio_request_enable.__UNIQUE_ID_ddebug233, !243, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!245 = !{ptr @.str.106, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 951, i32 2}
!247 = !{ptr @.str.107, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @at91_gpio_disable_free.__UNIQUE_ID_ddebug234, !246, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!249 = !{ptr @at91_pinconf_ops, !250, !"at91_pinconf_ops", i1 false, i1 false}
!250 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1113, i32 33}
!251 = !{ptr @.str.108, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 974, i32 2}
!253 = !{ptr @.str.109, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @at91_pinconf_get.__UNIQUE_ID_ddebug235, !252, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!255 = !{ptr @.str.110, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1021, i32 3}
!257 = !{ptr @.str.111, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @at91_pinconf_set.__UNIQUE_ID_ddebug236, !256, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!259 = !{ptr @.str.112, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1087, i32 2}
!261 = !{ptr @.str.113, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.114, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1088, i32 2}
!264 = !{ptr @.str.115, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1089, i32 2}
!266 = !{ptr @.str.116, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1090, i32 2}
!268 = !{ptr @.str.117, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1091, i32 2}
!270 = !{ptr @.str.118, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1092, i32 2}
!272 = !{ptr @.str.119, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1094, i32 2}
!274 = !{ptr @.str.120, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1096, i32 2}
!276 = !{ptr @.str.121, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1098, i32 2}
!278 = !{ptr @.str.122, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1099, i32 2}
!280 = !{ptr @.str.123, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1102, i32 17}
!282 = !{ptr @at91_pinctrl_of_match, !283, !"at91_pinctrl_of_match", i1 false, i1 false}
!283 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 1266, i32 34}
!284 = !{ptr @sama5d3_ops, !285, !"sama5d3_ops", i1 false, i1 false}
!285 = !{!"../drivers/pinctrl/pinctrl-at91.c", i32 740, i32 42}
!286 = !{i32 1, !"wchar_size", i32 2}
!287 = !{i32 1, !"min_enum_size", i32 4}
!288 = !{i32 8, !"branch-target-enforcement", i32 0}
!289 = !{i32 8, !"sign-return-address", i32 0}
!290 = !{i32 8, !"sign-return-address-all", i32 0}
!291 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!292 = !{i32 7, !"uwtable", i32 1}
!293 = !{i32 7, !"frame-pointer", i32 2}
!294 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!295 = !{i64 5031890}
!296 = !{i64 5031472}
!297 = !{!"auto-init"}
!298 = !{!"branch_weights", i32 1, i32 2000}
!299 = !{i64 2154191126, i64 2154191622, i64 2154191163, i64 2154191219, i64 2154191253, i64 2154191277, i64 2154191318, i64 2154191339, i64 2154191367, i64 2154191401}
!300 = !{i64 2148772873, i64 2148772878, i64 2148772891, i64 2148772935, i64 2148772969, i64 2148772990}
