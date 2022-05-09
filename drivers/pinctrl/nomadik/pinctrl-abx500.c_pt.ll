; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/nomadik/pinctrl-abx500.c_pt.bc'
source_filename = "../drivers/pinctrl/nomadik/pinctrl-abx500.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.abx500_pinctrl = type { ptr, ptr, ptr, %struct.gpio_chip, ptr, ptr, i32 }
%struct.abx500_pinctrl_soc_data = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.abx500_pinrange = type { i32, i32, i32 }
%struct.abx500_gpio_irq_cluster = type { i32, i32, i32 }
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }
%struct.alternate_functions = type { i32, i8, i8, i8, i8, i8, i8 }
%struct.abx500_pingroup = type { ptr, ptr, i32, i32 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.84 }
%union.anon.84 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.abx500_function = type { ptr, ptr, i32 }

@__initcall__kmod_pinctrl_abx500__294_1101_abx500_gpio_init1 = internal global ptr @abx500_gpio_init, section ".initcall1.init", align 4
@abx500_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @abx500_gpio_probe, ptr @abx500_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @abx500_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"abx500-gpio\00", [20 x i8] zeroinitializer }, align 32
@abx500_gpio_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,ab8500-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,ab8505-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@abx500_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 993, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gpio dt node missing\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"abx500_gpio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/pinctrl/nomadik/pinctrl-abx500.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@abx500_gpio_probe._entry_ptr = internal global ptr @abx500_gpio_probe._entry, section ".printk_index", align 4
@abx500gpio_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr null, ptr @abx500_gpio_direction_input, ptr @abx500_gpio_direction_output, ptr @abx500_gpio_get, ptr null, ptr @abx500_gpio_set, ptr null, ptr null, ptr @abx500_gpio_to_irq, ptr @abx500_gpio_dbg_show, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@abx500_gpio_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1009, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gpio dt not matching\0A\00", [42 x i8] zeroinitializer }, align 32
@abx500_gpio_probe._entry_ptr.8 = internal global ptr @abx500_gpio_probe._entry.6, section ".printk_index", align 4
@abx500_gpio_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1023, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unsupported pinctrl sub driver (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@abx500_gpio_probe._entry_ptr.11 = internal global ptr @abx500_gpio_probe._entry.9, section ".printk_index", align 4
@abx500_gpio_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1028, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid SOC data\0A\00", [46 x i8] zeroinitializer }, align 32
@abx500_gpio_probe._entry_ptr.14 = internal global ptr @abx500_gpio_probe._entry.12, section ".printk_index", align 4
@abx500_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@abx500_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@abx500_gpio_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1038, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to add gpiochip: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@abx500_gpio_probe._entry_ptr.17 = internal global ptr @abx500_gpio_probe._entry.15, section ".printk_index", align 4
@abx500_gpio_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1041, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"added gpiochip\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@abx500_gpio_probe._entry_ptr.21 = internal global ptr @abx500_gpio_probe._entry.18, section ".printk_index", align 4
@abx500_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.64, ptr null, i32 0, ptr @abx500_pinctrl_ops, ptr @abx500_pinmux_ops, ptr @abx500_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@abx500_gpio_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1049, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"could not register abx500 pinctrl driver\0A\00", [54 x i8] zeroinitializer }, align 32
@abx500_gpio_probe._entry_ptr.24 = internal global ptr @abx500_gpio_probe._entry.22, section ".printk_index", align 4
@abx500_gpio_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1053, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"registered pin controller\0A\00", [37 x i8] zeroinitializer }, align 32
@abx500_gpio_probe._entry_ptr.27 = internal global ptr @abx500_gpio_probe._entry.25, section ".printk_index", align 4
@abx500_gpio_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1067, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"initialized abx500 pinctrl driver\0A\00", [61 x i8] zeroinitializer }, align 32
@abx500_gpio_probe._entry_ptr.30 = internal global ptr @abx500_gpio_probe._entry.28, section ".printk_index", align 4
@abx500_gpio_set_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 124, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s write reg, %x offset %x failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"abx500_gpio_set_bits\00", [43 x i8] zeroinitializer }, align 32
@abx500_gpio_set_bits._entry_ptr = internal global ptr @abx500_gpio_set_bits._entry, section ".printk_index", align 4
@abx500_gpio_direction_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s failed (%d)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"abx500_gpio_direction_output\00", [35 x i8] zeroinitializer }, align 32
@abx500_gpio_direction_output._entry_ptr = internal global ptr @abx500_gpio_direction_output._entry, section ".printk_index", align 4
@abx500_gpio_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.35, ptr @.str.3, i32 155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"abx500_gpio_get\00", [16 x i8] zeroinitializer }, align 32
@abx500_gpio_get._entry_ptr = internal global ptr @abx500_gpio_get._entry, section ".printk_index", align 4
@abx500_gpio_get_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s read reg =%x, offset=%x failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"abx500_gpio_get_bit\00", [44 x i8] zeroinitializer }, align 32
@abx500_gpio_get_bit._entry_ptr = internal global ptr @abx500_gpio_get_bit._entry, section ".printk_index", align 4
@abx500_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s write failed (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"abx500_gpio_set\00", [16 x i8] zeroinitializer }, align 32
@abx500_gpio_set._entry_ptr = internal global ptr @abx500_gpio_set._entry, section ".printk_index", align 4
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"altA\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"altB\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"altC\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pull down\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pull none\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pull up\00", [24 x i8] zeroinitializer }, align 32
@__const.abx500_gpio_dbg_show_one.pull_up_down = private unnamed_addr constant [4 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.45, ptr @.str.46], align 4
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" gpio-%-3d (%-20.20s) %-3s\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"in \00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %-9s\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hi\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"lo\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@abx500_gpio_dbg_show_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.56, ptr @.str.3, i32 499, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"abx500_gpio_dbg_show_one\00", [39 x i8] zeroinitializer }, align 32
@abx500_gpio_dbg_show_one._entry_ptr = internal global ptr @abx500_gpio_dbg_show_one._entry, section ".printk_index", align 4
@abx500_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 392, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"alt_bitX value not in correct range (-1 to 7)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"abx500_get_mode\00", [16 x i8] zeroinitializer }, align 32
@abx500_get_mode._entry_ptr = internal global ptr @abx500_get_mode._entry, section ".printk_index", align 4
@abx500_get_mode._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.3, i32 399, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"if alt_bit2 is used, alt_bit1 can't be unused\0A\00", [49 x i8] zeroinitializer }, align 32
@abx500_get_mode._entry_ptr.61 = internal global ptr @abx500_get_mode._entry.59, section ".printk_index", align 4
@abx500_get_mode._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.58, ptr @.str.3, i32 441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@abx500_get_mode._entry_ptr.63 = internal global ptr @abx500_get_mode._entry.62, section ".printk_index", align 4
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinctrl-abx500\00", [17 x i8] zeroinitializer }, align 32
@abx500_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @abx500_get_groups_cnt, ptr @abx500_get_group_name, ptr @abx500_get_group_pins, ptr @abx500_pin_dbg_show, ptr @abx500_dt_node_to_map, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@abx500_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @abx500_pmx_get_funcs_cnt, ptr @abx500_pmx_get_func_name, ptr @abx500_pmx_get_func_groups, ptr @abx500_pmx_set, ptr @abx500_gpio_request_enable, ptr @abx500_gpio_disable_free, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@abx500_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @abx500_pin_config_get, ptr @abx500_pin_config_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"function\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"groups\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pins\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO%d\00", [25 x i8] zeroinitializer }, align 32
@abx500_pmx_set.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.69, ptr @.str.70, ptr @.str.3, ptr @.str.71, i8 0, i8 -111, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinctrl_abx500\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abx500_pmx_set\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"enable group %s, %u pins\0A\00", [38 x i8] zeroinitializer }, align 32
@abx500_pmx_set.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.69, ptr @.str.70, ptr @.str.3, ptr @.str.72, i8 0, i8 -110, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"setting pin %d to altsetting %d\0A\00", [63 x i8] zeroinitializer }, align 32
@abx500_pmx_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.70, ptr @.str.3, i32 590, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@abx500_pmx_set._entry_ptr = internal global ptr @abx500_pmx_set._entry, section ".printk_index", align 4
@__const.abx500_set_mode.modes = private unnamed_addr constant [4 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], align 4
@abx500_set_mode.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.69, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 0, i8 65, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"abx500_set_mode\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pin %d doesn't support %s mode\0A\00", [32 x i8] zeroinitializer }, align 32
@abx500_set_mode.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.69, ptr @.str.73, ptr @.str.3, ptr @.str.75, i8 0, i8 87, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unknown alt_setting %d\0A\00", [40 x i8] zeroinitializer }, align 32
@abx500_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.73, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@abx500_set_mode._entry_ptr = internal global ptr @abx500_set_mode._entry, section ".printk_index", align 4
@abx500_gpio_request_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 617, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s failed to locate range\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"abx500_gpio_request_enable\00", [37 x i8] zeroinitializer }, align 32
@abx500_gpio_request_enable._entry_ptr = internal global ptr @abx500_gpio_request_enable._entry, section ".printk_index", align 4
@abx500_gpio_request_enable.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.69, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 0, i8 -101, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"enable GPIO by altfunc %d at gpio %d\0A\00", [58 x i8] zeroinitializer }, align 32
@abx500_gpio_request_enable._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.77, ptr @.str.3, i32 627, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s setting altfunc failed\0A\00", [37 x i8] zeroinitializer }, align 32
@abx500_gpio_request_enable._entry_ptr.81 = internal global ptr @abx500_gpio_request_enable._entry.79, section ".printk_index", align 4
@abx500_pin_config_set.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.69, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 0, i8 -40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"abx500_pin_config_set\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pin %d [%#lx]: %s %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"output \00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@abx500_pin_config_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.82, ptr @.str.3, i32 915, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"illegal configuration requested\0A\00", [63 x i8] zeroinitializer }, align 32
@abx500_pin_config_set._entry_ptr = internal global ptr @abx500_pin_config_set._entry, section ".printk_index", align 4
@abx500_pin_config_set._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.82, ptr @.str.3, i32 920, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@abx500_pin_config_set._entry_ptr.90 = internal global ptr @abx500_pin_config_set._entry.89, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 8]
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"abx500_gpio_driver\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1088, i32 31 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1090, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"abx500_gpio_match\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 977, i32 34 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 993, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"abx500gpio_chip\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 526, i32 31 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1009, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1023, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1028, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1036, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1038, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1041, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [20 x i8] c"abx500_pinctrl_desc\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 931, i32 28 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1048, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1053, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1067, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 123, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 195, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 155, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 101, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 169, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 461, i32 22 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 462, i32 21 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 463, i32 21 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 464, i32 21 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 468, i32 30 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 469, i32 30 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 471, i32 28 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 479, i32 16 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 480, i32 21 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 481, i32 15 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 481, i32 23 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 489, i32 17 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 491, i32 52 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 491, i32 59 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 495, i32 16 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 495, i32 36 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 499, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 391, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 398, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 441, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 932, i32 10 }
@___asan_gen_.300 = private unnamed_addr constant [19 x i8] c"abx500_pinctrl_ops\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 826, i32 33 }
@___asan_gen_.303 = private unnamed_addr constant [18 x i8] c"abx500_pinmux_ops\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 638, i32 32 }
@___asan_gen_.306 = private unnamed_addr constant [19 x i8] c"abx500_pinconf_ops\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 925, i32 33 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 751, i32 36 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 755, i32 39 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 777, i32 39 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 732, i32 31 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 580, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 583, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 590, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 259, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 348, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 354, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 617, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 621, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 627, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 859, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 914, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.391 = private constant [44 x i8] c"../drivers/pinctrl/nomadik/pinctrl-abx500.c\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 920, i32 3 }
@llvm.compiler.used = appending global [125 x ptr] [ptr @__initcall__kmod_pinctrl_abx500__294_1101_abx500_gpio_init1, ptr @abx500_get_mode._entry, ptr @abx500_get_mode._entry.59, ptr @abx500_get_mode._entry.62, ptr @abx500_get_mode._entry_ptr, ptr @abx500_get_mode._entry_ptr.61, ptr @abx500_get_mode._entry_ptr.63, ptr @abx500_gpio_dbg_show_one._entry, ptr @abx500_gpio_dbg_show_one._entry_ptr, ptr @abx500_gpio_direction_output._entry, ptr @abx500_gpio_direction_output._entry_ptr, ptr @abx500_gpio_get._entry, ptr @abx500_gpio_get._entry_ptr, ptr @abx500_gpio_get_bit._entry, ptr @abx500_gpio_get_bit._entry_ptr, ptr @abx500_gpio_probe._entry, ptr @abx500_gpio_probe._entry.12, ptr @abx500_gpio_probe._entry.15, ptr @abx500_gpio_probe._entry.18, ptr @abx500_gpio_probe._entry.22, ptr @abx500_gpio_probe._entry.25, ptr @abx500_gpio_probe._entry.28, ptr @abx500_gpio_probe._entry.6, ptr @abx500_gpio_probe._entry.9, ptr @abx500_gpio_probe._entry_ptr, ptr @abx500_gpio_probe._entry_ptr.11, ptr @abx500_gpio_probe._entry_ptr.14, ptr @abx500_gpio_probe._entry_ptr.17, ptr @abx500_gpio_probe._entry_ptr.21, ptr @abx500_gpio_probe._entry_ptr.24, ptr @abx500_gpio_probe._entry_ptr.27, ptr @abx500_gpio_probe._entry_ptr.30, ptr @abx500_gpio_probe._entry_ptr.8, ptr @abx500_gpio_request_enable._entry, ptr @abx500_gpio_request_enable._entry.79, ptr @abx500_gpio_request_enable._entry_ptr, ptr @abx500_gpio_request_enable._entry_ptr.81, ptr @abx500_gpio_set._entry, ptr @abx500_gpio_set._entry_ptr, ptr @abx500_gpio_set_bits._entry, ptr @abx500_gpio_set_bits._entry_ptr, ptr @abx500_pin_config_set._entry, ptr @abx500_pin_config_set._entry.89, ptr @abx500_pin_config_set._entry_ptr, ptr @abx500_pin_config_set._entry_ptr.90, ptr @abx500_pmx_set._entry, ptr @abx500_pmx_set._entry_ptr, ptr @abx500_set_mode._entry, ptr @abx500_set_mode._entry_ptr, ptr @abx500_gpio_driver, ptr @.str, ptr @abx500_gpio_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @abx500gpio_chip, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @abx500_gpio_probe.lock_key, ptr @abx500_gpio_probe.request_key, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @abx500_pinctrl_desc, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.64, ptr @abx500_pinctrl_ops, ptr @abx500_pinmux_ops, ptr @abx500_pinconf_ops, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500gpio_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_set_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_direction_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_get_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_dbg_show_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_get_mode._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_get_mode._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_pmx_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_request_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_gpio_request_enable._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_pin_config_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_pin_config_set._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @abx500_gpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @abx500_gpio_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx500_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup92

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 372, i32 noundef 3520) #9
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup92_crit_edge, label %if.end5

if.end.cleanup92_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup92

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %parent10 = getelementptr inbounds %struct.abx500_pinctrl, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %parent10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %parent10, align 4
  %chip = getelementptr inbounds %struct.abx500_pinctrl, ptr %call.i, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %chip, ptr @abx500gpio_chip, i32 348)
  %parent13 = getelementptr inbounds %struct.abx500_pinctrl, ptr %call.i, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %parent13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %parent13, align 4
  %base = getelementptr inbounds %struct.abx500_pinctrl, ptr %call.i, i32 0, i32 3, i32 19
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %base, align 4
  %call16 = tail call ptr @of_match_device(ptr noundef nonnull @abx500_gpio_match, ptr noundef %dev) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %cleanup92

if.end23:                                         ; preds = %if.end5
  %data = getelementptr inbounds %struct.of_device_id, ptr %call16, i32 0, i32 3
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end28 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %soc = getelementptr inbounds %struct.abx500_pinctrl, ptr %call.i, i32 0, i32 2
  tail call void @abx500_pinctrl_ab8500_init(ptr noundef %soc) #9
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %soc25 = getelementptr inbounds %struct.abx500_pinctrl, ptr %call.i, i32 0, i32 2
  tail call void @abx500_pinctrl_ab8505_init(ptr noundef %soc25) #9
  br label %sw.epilog

do.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %13) #12
  br label %cleanup92

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb
  %soc30 = getelementptr inbounds %struct.abx500_pinctrl, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %soc30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %soc30, align 4
  %tobool31.not = icmp eq ptr %16, null
  br i1 %tobool31.not, label %do.end35, label %if.end37

do.end35:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #12
  br label %cleanup92

if.end37:                                         ; preds = %sw.epilog
  %call39 = tail call fastcc i32 @abx500_get_gpio_num(ptr noundef nonnull %16)
  %conv = trunc i32 %call39 to i16
  %ngpio = getelementptr inbounds %struct.abx500_pinctrl, ptr %call.i, i32 0, i32 3, i32 20
  %17 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %ngpio, align 4
  %gpio_irq_cluster = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %16, i32 0, i32 9
  %18 = ptrtoint ptr %gpio_irq_cluster to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpio_irq_cluster, align 4
  %irq_cluster = getelementptr inbounds %struct.abx500_pinctrl, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %irq_cluster to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %irq_cluster, align 4
  %ngpio_irq_cluster = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %16, i32 0, i32 10
  %21 = ptrtoint ptr %ngpio_irq_cluster to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ngpio_irq_cluster, align 4
  %irq_cluster_size = getelementptr inbounds %struct.abx500_pinctrl, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %irq_cluster_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %irq_cluster_size, align 4
  %call44 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %chip, ptr noundef nonnull %call.i, ptr noundef nonnull @abx500_gpio_probe.lock_key, ptr noundef nonnull @abx500_gpio_probe.request_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.end54, label %do.end49

do.end49:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call44) #12
  br label %cleanup92

do.end54:                                         ; preds = %if.end37
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19) #12
  %24 = ptrtoint ptr %soc30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %soc30, align 4
  %pins = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pins, align 4
  store ptr %27, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @abx500_pinctrl_desc, i32 0, i32 1), align 4
  %npins = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %npins, align 4
  store i32 %29, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @abx500_pinctrl_desc, i32 0, i32 2), align 4
  %call59 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @abx500_pinctrl_desc, ptr noundef nonnull %call.i) #9
  %pctldev = getelementptr inbounds %struct.abx500_pinctrl, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %pctldev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call59, ptr %pctldev, align 4
  %cmp.i = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end65, label %do.end72

do.end65:                                         ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #12
  %31 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pctldev, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %out_rem_chip

do.end72:                                         ; preds = %do.end54
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.26) #12
  %34 = ptrtoint ptr %soc30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %soc30, align 4
  %gpio_num_ranges152 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %gpio_num_ranges152 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gpio_num_ranges152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp153.not = icmp eq i32 %37, 0
  br i1 %cmp153.not, label %do.end72.for.end_crit_edge, label %for.body.lr.ph

do.end72.for.end_crit_edge:                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end72
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  br label %for.body

for.cond:                                         ; preds = %dev_name.exit
  %inc = add nuw i32 %i.0154, 1
  %38 = ptrtoint ptr %soc30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %soc30, align 4
  %gpio_num_ranges = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %gpio_num_ranges to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %gpio_num_ranges, align 4
  %cmp = icmp ult i32 %inc, %41
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %42 = phi ptr [ %35, %for.body.lr.ph ], [ %39, %for.cond.for.body_crit_edge ]
  %i.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %arrayidx = getelementptr %struct.abx500_pinrange, ptr %44, i32 %i.0154
  %45 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body.dev_name.exit_crit_edge

for.body.dev_name.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %for.body.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %48, %if.end.i ], [ %46, %for.body.dev_name.exit_crit_edge ]
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  %sub = add i32 %50, -1
  %npins81 = getelementptr %struct.abx500_pinrange, ptr %44, i32 %i.0154, i32 1
  %51 = ptrtoint ptr %npins81 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %npins81, align 4
  %call82 = tail call i32 @gpiochip_add_pin_range(ptr noundef %chip, ptr noundef %retval.0.i, i32 noundef %sub, i32 noundef %50, i32 noundef %52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %dev_name.exit.out_rem_chip_crit_edge, label %for.cond

dev_name.exit.out_rem_chip_crit_edge:             ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rem_chip

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %do.end72.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.29) #12
  br label %cleanup92

out_rem_chip:                                     ; preds = %dev_name.exit.out_rem_chip_crit_edge, %do.end65
  %ret.0 = phi i32 [ %33, %do.end65 ], [ %call82, %dev_name.exit.out_rem_chip_crit_edge ]
  tail call void @gpiochip_remove(ptr noundef %chip) #9
  br label %cleanup92

cleanup92:                                        ; preds = %out_rem_chip, %for.end, %do.end49, %do.end35, %do.end28, %do.end21, %if.end.cleanup92_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end28 ], [ %call44, %do.end49 ], [ %ret.0, %out_rem_chip ], [ 0, %for.end ], [ -22, %do.end35 ], [ -19, %do.end21 ], [ -19, %do.end ], [ -12, %if.end.cleanup92_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx500_gpio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.abx500_pinctrl, ptr %1, i32 0, i32 3
  tail call void @gpiochip_remove(ptr noundef %chip) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @abx500_pinctrl_ab8500_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @abx500_pinctrl_ab8505_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @abx500_get_gpio_num(ptr nocapture noundef readonly %soc) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_num_ranges = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %soc, i32 0, i32 1
  %0 = ptrtoint ptr %gpio_num_ranges to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_num_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25.not = icmp eq i32 %1, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %lowest.028 = phi i32 [ 0, %for.body.lr.ph ], [ %lowest.2, %for.body.for.body_crit_edge ]
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %highest.026 = phi i32 [ 0, %for.body.lr.ph ], [ %highest.1, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.abx500_pinrange, ptr %3, i32 %i.027
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %npins2 = getelementptr %struct.abx500_pinrange, ptr %3, i32 %i.027, i32 1
  %6 = ptrtoint ptr %npins2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins2, align 4
  %add = add i32 %5, -1
  %sub = add i32 %add, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.027)
  %cmp3 = icmp eq i32 %i.027, 0
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %lowest.028)
  %9 = tail call i32 @llvm.umax.i32(i32 %sub, i32 %highest.026)
  %highest.1 = select i1 %cmp3, i32 %sub, i32 %9
  %lowest.2 = select i1 %cmp3, i32 %5, i32 %8
  %inc = add nuw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = add i32 %highest.1, 1
  %10 = sub i32 %phi.bo, %lowest.2
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %add11 = phi i32 [ %10, %for.end.loopexit ], [ 1, %entry.for.end_crit_edge ]
  ret i32 %add11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx500_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %conv.i = and i32 %offset, 7
  %div20.i = lshr i32 %offset, 3
  %0 = trunc i32 %div20.i to i8
  %conv2.i = add i8 %0, 16
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  %shl.i = shl nuw nsw i32 1, %conv.i
  %conv4.i = trunc i32 %shl.i to i8
  %call8.i = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %2, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i, i8 noundef zeroext %conv4.i, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.abx500_gpio_set_bits.exit_crit_edge

entry.abx500_gpio_set_bits.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %abx500_gpio_set_bits.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %conv11.i = zext i8 %conv2.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i, i32 noundef %offset, i32 noundef %call8.i) #12
  br label %abx500_gpio_set_bits.exit

abx500_gpio_set_bits.exit:                        ; preds = %do.end.i, %entry.abx500_gpio_set_bits.exit_crit_edge
  ret i32 %call8.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx500_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %conv.i = and i32 %offset, 7
  %div20.i = lshr i32 %offset, 3
  %0 = trunc i32 %div20.i to i8
  %conv2.i = add i8 %0, 16
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  %shl.i = shl nuw nsw i32 1, %conv.i
  %conv4.i = trunc i32 %shl.i to i8
  %call8.i = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %2, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i, i8 noundef zeroext %conv4.i, i8 noundef zeroext %conv4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %entry
  %call.i16 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %conv2.i19 = add i8 %0, 48
  %3 = ptrtoint ptr %call.i16 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i16, align 4
  %call8.i24 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %4, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i19, i8 noundef zeroext %conv4.i, i8 noundef zeroext %conv4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i24)
  %cmp.i25 = icmp slt i32 %call8.i24, 0
  br i1 %cmp.i25, label %if.end.do.end_crit_edge, label %if.end5

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %call.i.sink = phi ptr [ %call.i, %entry.do.end_crit_edge ], [ %call.i16, %if.end.do.end_crit_edge ]
  %conv2.i.sink = phi i8 [ %conv2.i, %entry.do.end_crit_edge ], [ %conv2.i19, %if.end.do.end_crit_edge ]
  %call8.i.sink = phi i32 [ %call8.i, %entry.do.end_crit_edge ], [ %call8.i24, %if.end.do.end_crit_edge ]
  %5 = ptrtoint ptr %call.i.sink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i.sink, align 4
  %conv11.i = zext i8 %conv2.i.sink to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i, i32 noundef %offset, i32 noundef %call8.i.sink) #12
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %call8.i.sink) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i29 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %conv2.i32 = add i8 %0, 32
  %9 = ptrtoint ptr %call.i29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i29, align 4
  %shl6.i35 = shl i32 %val, %conv.i
  %conv7.i36 = trunc i32 %shl6.i35 to i8
  %call8.i37 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %10, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i32, i8 noundef zeroext %conv4.i, i8 noundef zeroext %conv7.i36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i37)
  %cmp.i38 = icmp slt i32 %call8.i37, 0
  br i1 %cmp.i38, label %do.end.i40, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i40:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call.i29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i29, align 4
  %conv11.i39 = zext i8 %conv2.i32 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i39, i32 noundef %offset, i32 noundef %call8.i37) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i40, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call8.i.sink, %do.end ], [ %call8.i37, %if.end5.cleanup_crit_edge ], [ %call8.i37, %do.end.i40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx500_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val.i45 = alloca i8, align 1
  %val.i28 = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %conv = add i32 %offset, 255
  %conv1 = and i32 %conv, 255
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #9
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val.i, align 1, !annotation !201
  %div20.i = lshr i32 %conv1, 3
  %1 = trunc i32 %div20.i to i8
  %conv2.i = add nuw nsw i8 %1, 16
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %call3.i = call i32 @abx500_get_register_interruptible(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %out.thread, label %if.end

out.thread:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %conv6.i = zext i8 %conv2.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %conv6.i, i32 noundef %conv1, i32 noundef %call3.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #9
  br label %do.end

if.end:                                           ; preds = %entry
  %conv.i = and i32 %conv, 7
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val.i, align 1
  %conv7.i = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 1, %conv.i
  %and.i = and i32 %shl.i, %conv7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #9
  %call.i46 = call ptr @gpiochip_get_data(ptr noundef %chip) #9
  br i1 %tobool.i.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i28) #9
  %8 = ptrtoint ptr %val.i28 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val.i28, align 1, !annotation !201
  %conv2.i31 = or i8 %1, 32
  %9 = ptrtoint ptr %call.i46 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i46, align 4
  %call3.i32 = call i32 @abx500_get_register_interruptible(ptr noundef %10, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i31, ptr noundef nonnull %val.i28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i32)
  %cmp.i33 = icmp slt i32 %call3.i32, 0
  br i1 %cmp.i33, label %do.end.i35, label %if.end.i42

do.end.i35:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call.i46 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i46, align 4
  %conv6.i34 = zext i8 %conv2.i31 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %conv6.i34, i32 noundef %conv1, i32 noundef %call3.i32) #12
  br label %abx500_gpio_get_bit.exit44

if.end.i42:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %val.i28 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val.i28, align 1
  %conv7.i37 = zext i8 %14 to i32
  %15 = lshr i32 %conv7.i37, %conv.i
  %16 = and i32 %15, 1
  br label %abx500_gpio_get_bit.exit44

abx500_gpio_get_bit.exit44:                       ; preds = %if.end.i42, %do.end.i35
  %bit.0 = phi i32 [ 255, %do.end.i35 ], [ %16, %if.end.i42 ]
  %retval.0.i43 = phi i32 [ %call3.i32, %do.end.i35 ], [ 0, %if.end.i42 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i28) #9
  br label %out

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i45) #9
  %17 = ptrtoint ptr %val.i45 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %val.i45, align 1, !annotation !201
  %conv2.i48 = or i8 %1, 64
  %18 = ptrtoint ptr %call.i46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i46, align 4
  %call3.i49 = call i32 @abx500_get_register_interruptible(ptr noundef %19, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i48, ptr noundef nonnull %val.i45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i49)
  %cmp.i50 = icmp slt i32 %call3.i49, 0
  br i1 %cmp.i50, label %do.end.i52, label %if.end.i59

do.end.i52:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call.i46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i46, align 4
  %conv6.i51 = zext i8 %conv2.i48 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %conv6.i51, i32 noundef %conv1, i32 noundef %call3.i49) #12
  br label %abx500_gpio_get_bit.exit61

if.end.i59:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %val.i45 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %val.i45, align 1
  %conv7.i54 = zext i8 %23 to i32
  %24 = lshr i32 %conv7.i54, %conv.i
  %25 = and i32 %24, 1
  br label %abx500_gpio_get_bit.exit61

abx500_gpio_get_bit.exit61:                       ; preds = %if.end.i59, %do.end.i52
  %bit.1 = phi i32 [ 255, %do.end.i52 ], [ %25, %if.end.i59 ]
  %retval.0.i60 = phi i32 [ %call3.i49, %do.end.i52 ], [ 0, %if.end.i59 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i45) #9
  br label %out

out:                                              ; preds = %abx500_gpio_get_bit.exit61, %abx500_gpio_get_bit.exit44
  %bit.2 = phi i32 [ %bit.1, %abx500_gpio_get_bit.exit61 ], [ %bit.0, %abx500_gpio_get_bit.exit44 ]
  %ret.0 = phi i32 [ %retval.0.i60, %abx500_gpio_get_bit.exit61 ], [ %retval.0.i43, %abx500_gpio_get_bit.exit44 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp10 = icmp slt i32 %ret.0, 0
  br i1 %cmp10, label %out.do.end_crit_edge, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out.do.end_crit_edge:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %out.do.end_crit_edge, %out.thread
  %ret.068 = phi i32 [ %call3.i, %out.thread ], [ %ret.0, %out.do.end_crit_edge ]
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.35, i32 noundef %ret.068) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %out.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.068, %do.end ], [ %bit.2, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @abx500_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %conv.i = and i32 %offset, 7
  %div20.i = lshr i32 %offset, 3
  %0 = trunc i32 %div20.i to i8
  %conv2.i = add i8 %0, 32
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  %shl.i = shl nuw nsw i32 1, %conv.i
  %conv4.i = trunc i32 %shl.i to i8
  %shl6.i = shl i32 %val, %conv.i
  %conv7.i = trunc i32 %shl6.i to i8
  %call8.i = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %2, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i, i8 noundef zeroext %conv4.i, i8 noundef zeroext %conv7.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %conv11.i = zext i8 %conv2.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i, i32 noundef %offset, i32 noundef %call8.i) #12
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %call8.i) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx500_gpio_to_irq(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %add = add i32 %offset, 1
  %irq_cluster_size = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %irq_cluster_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_cluster_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp24 = icmp sgt i32 %1, 0
  br i1 %cmp24, label %for.body.lr.ph, label %entry.cleanup6_crit_edge

entry.cleanup6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup6

for.body.lr.ph:                                   ; preds = %entry
  %irq_cluster = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %irq_cluster to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_cluster, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.abx500_gpio_irq_cluster, ptr %3, i32 %i.025
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp1.not = icmp slt i32 %add, %5
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %end = getelementptr %struct.abx500_gpio_irq_cluster, ptr %3, i32 %i.025, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp2.not = icmp sgt i32 %add, %7
  br i1 %cmp2.not, label %land.lhs.true.for.inc_crit_edge, label %cleanup

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %add, %5
  %to_irq = getelementptr %struct.abx500_gpio_irq_cluster, ptr %3, i32 %i.025, i32 2
  %8 = ptrtoint ptr %to_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %to_irq, align 4
  %add4 = add i32 %sub, %9
  %parent = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 4
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 4
  %domain = getelementptr inbounds %struct.ab8500, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %domain, align 4
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %13, i32 noundef %add4, ptr noundef null) #9
  br label %cleanup6

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup6_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup6

cleanup6:                                         ; preds = %for.inc.cleanup6_crit_edge, %cleanup, %entry.cleanup6_crit_edge
  %retval.2 = phi i32 [ %call.i, %cleanup ], [ -22, %entry.cleanup6_crit_edge ], [ -22, %for.inc.cleanup6_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @abx500_gpio_dbg_show(ptr noundef %s, ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %pctldev1 = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %pctldev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctldev1, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %4 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp12.not = icmp eq i16 %5, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %gpio.013 = phi i32 [ %inc3, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.014, 1
  tail call fastcc void @abx500_gpio_dbg_show_one(ptr noundef %s, ptr noundef %3, ptr noundef %chip, i32 noundef %add, i32 noundef %gpio.013)
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #9
  %inc3 = add i32 %gpio.013, 1
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %7 to i32
  %cmp = icmp ult i32 %add, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @abx500_gpio_dbg_show_one(ptr noundef %s, ptr noundef %pctldev, ptr noundef %chip, i32 noundef %offset, i32 noundef %gpio) unnamed_addr #2 align 64 {
entry:
  %val.i160.i = alloca i8, align 1
  %val.i143.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %val.i51 = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %sub = add i32 %offset, -1
  %call1 = tail call ptr @gpiochip_is_requested(ptr noundef %chip, i32 noundef %sub) #9
  %conv3 = and i32 %sub, 255
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #9
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val.i, align 1, !annotation !201
  %div20.i = lshr i32 %conv3, 3
  %1 = trunc i32 %div20.i to i8
  %conv2.i = add nuw nsw i8 %1, 16
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %call3.i = call i32 @abx500_get_register_interruptible(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %abx500_gpio_get_bit.exit.thread, label %if.end

abx500_gpio_get_bit.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %conv6.i = zext i8 %conv2.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %conv6.i, i32 noundef %conv3, i32 noundef %call3.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #9
  br label %do.end

if.end:                                           ; preds = %entry
  %conv.i = and i32 %sub, 7
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val.i, align 1
  %conv7.i = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 1, %conv.i
  %and.i = and i32 %shl.i, %conv7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #9
  %tobool.not = icmp eq ptr %call1, null
  %..str.48 = select i1 %tobool.not, ptr @.str.48, ptr %call1
  %cond8 = select i1 %tobool.i.not, ptr @.str.50, ptr @.str.49
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.47, i32 noundef %gpio, ptr noundef %..str.48, ptr noundef nonnull %cond8) #9
  br i1 %tobool.i.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %call.i52 = call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i51) #9
  %8 = ptrtoint ptr %val.i51 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val.i51, align 1, !annotation !201
  %conv2.i54 = add nuw nsw i8 %1, 48
  %9 = ptrtoint ptr %call.i52 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i52, align 4
  %call3.i55 = call i32 @abx500_get_register_interruptible(ptr noundef %10, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i54, ptr noundef nonnull %val.i51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i55)
  %cmp.i56 = icmp slt i32 %call3.i55, 0
  br i1 %cmp.i56, label %abx500_gpio_get_bit.exit67.thread, label %if.end16

abx500_gpio_get_bit.exit67.thread:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call.i52 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i52, align 4
  %conv6.i57 = zext i8 %conv2.i54 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %conv6.i57, i32 noundef %conv3, i32 noundef %call3.i55) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i51) #9
  br label %do.end

if.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %val.i51 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val.i51, align 1
  %conv7.i60 = zext i8 %14 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i51) #9
  %15 = lshr i32 %conv7.i60, %conv.i
  %16 = and i32 %15, 1
  %arrayidx = getelementptr [4 x ptr], ptr @__const.abx500_gpio_dbg_show_one.pull_up_down, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef %18) #9
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %get = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 10
  %19 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get, align 4
  %call18 = call i32 %20(ptr noundef %chip, i32 noundef %offset) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  %cond20 = select i1 %tobool19.not, ptr @.str.53, ptr @.str.52
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull %cond20) #9
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end16
  %call.i68 = call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %soc.i = getelementptr inbounds %struct.abx500_pinctrl, ptr %call.i68, i32 0, i32 2
  %21 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %soc.i, align 4
  %alternate_functions.i = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %alternate_functions.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %alternate_functions.i, align 4
  %arrayidx.i = getelementptr %struct.alternate_functions, ptr %24, i32 %offset
  %af.sroa.4.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %25 = ptrtoint ptr %af.sroa.4.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %af.sroa.4.0.copyload114.i = load i8, ptr %af.sroa.4.0.arrayidx.sroa_idx.i, align 4
  %af.sroa.6.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 5
  %26 = ptrtoint ptr %af.sroa.6.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %af.sroa.6.0.copyload116.i = load i8, ptr %af.sroa.6.0.arrayidx.sroa_idx.i, align 1
  %af.sroa.11.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 6
  %27 = ptrtoint ptr %af.sroa.11.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %af.sroa.11.0.copyload121.i = load i8, ptr %af.sroa.11.0.arrayidx.sroa_idx.i, align 2
  %af.sroa.17.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 7
  %28 = ptrtoint ptr %af.sroa.17.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %af.sroa.17.0.copyload127.i = load i8, ptr %af.sroa.17.0.arrayidx.sroa_idx.i, align 1
  %af.sroa.18.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %29 = ptrtoint ptr %af.sroa.18.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %af.sroa.18.0.copyload128.i = load i8, ptr %af.sroa.18.0.arrayidx.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %af.sroa.4.0.copyload114.i)
  %cmp.i69 = icmp eq i8 %af.sroa.4.0.copyload114.i, -1
  br i1 %cmp.i69, label %if.end21.cond.false26_crit_edge, label %if.end.i72

if.end21.cond.false26_crit_edge:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false26

if.end.i72:                                       ; preds = %if.end21
  %conv.i70 = sext i8 %af.sroa.4.0.copyload114.i to i32
  %sub.i = add i32 %offset, 2047
  %div138.i = lshr i32 %sub.i, 3
  %conv2.i71 = trunc i32 %div138.i to i8
  %call.i.i = call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #9
  %30 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %val.i.i, align 1, !annotation !201
  %31 = ashr i8 %af.sroa.4.0.copyload114.i, 3
  %conv2.i.i = add i8 %31, %conv2.i71
  %32 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i.i, align 4
  %call3.i.i = call i32 @abx500_get_register_interruptible(ptr noundef %33, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i.i, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %abx500_gpio_get_bit.exit.thread.i, label %if.end9.i

abx500_gpio_get_bit.exit.thread.i:                ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i.i, align 4
  %conv6.i.i = zext i8 %conv2.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %conv6.i.i, i32 noundef %conv.i70, i32 noundef %call3.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #9
  br label %do.end100.i

if.end9.i:                                        ; preds = %if.end.i72
  %conv.i.i = and i32 %conv.i70, 7
  %36 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %val.i.i, align 1
  %conv7.i.i = zext i8 %37 to i32
  %shl.i.i = shl nuw nsw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, %conv7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #9
  %conv12.i = sext i8 %af.sroa.6.0.copyload116.i to i32
  %38 = add i8 %af.sroa.6.0.copyload116.i, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %38)
  %39 = icmp ult i8 %38, -9
  br i1 %39, label %if.end9.i.do.end.i73_crit_edge, label %lor.lhs.false19.i

if.end9.i.do.end.i73_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i73

lor.lhs.false19.i:                                ; preds = %if.end9.i
  %conv21.i = sext i8 %af.sroa.11.0.copyload121.i to i32
  %40 = add i8 %af.sroa.11.0.copyload121.i, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %40)
  %41 = icmp ult i8 %40, -9
  br i1 %41, label %lor.lhs.false19.i.do.end.i73_crit_edge, label %if.end30.i

lor.lhs.false19.i.do.end.i73_crit_edge:           ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i73

do.end.i73:                                       ; preds = %lor.lhs.false19.i.do.end.i73_crit_edge, %if.end9.i.do.end.i73_crit_edge
  %42 = ptrtoint ptr %call.i68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i68, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.57) #12
  br label %out

if.end30.i:                                       ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %af.sroa.11.0.copyload121.i)
  %cmp33.not.i = icmp eq i8 %af.sroa.11.0.copyload121.i, -1
  %cmp33.not.not.i = xor i1 %cmp33.not.i, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %af.sroa.6.0.copyload116.i)
  %cmp37.i = icmp eq i8 %af.sroa.6.0.copyload116.i, -1
  %or.cond141.i = select i1 %cmp33.not.not.i, i1 %cmp37.i, i1 false
  br i1 %or.cond141.i, label %do.end42.i, label %if.end44.i

do.end42.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %call.i68 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i68, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.60) #12
  br label %out

if.end44.i:                                       ; preds = %if.end30.i
  %or.cond142.i = select i1 %cmp37.i, i1 %cmp33.not.i, i1 false
  br i1 %or.cond142.i, label %if.then54.i, label %if.end56.i

if.then54.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv55.i = zext i1 %tobool.i.i to i32
  br label %cond.false26

if.end56.i:                                       ; preds = %if.end44.i
  br i1 %tobool.i.i, label %if.end56.i.cond.false26_crit_edge, label %if.end59.i

if.end56.i.cond.false26_crit_edge:                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false26

if.end59.i:                                       ; preds = %if.end56.i
  %call.i144.i = call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i143.i) #9
  %46 = ptrtoint ptr %val.i143.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %val.i143.i, align 1, !annotation !201
  %47 = ashr i8 %af.sroa.6.0.copyload116.i, 3
  %conv2.i146.i = add nsw i8 %47, 80
  %48 = ptrtoint ptr %call.i144.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i144.i, align 4
  %call3.i147.i = call i32 @abx500_get_register_interruptible(ptr noundef %49, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i146.i, ptr noundef nonnull %val.i143.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i147.i)
  %cmp.i148.i = icmp slt i32 %call3.i147.i, 0
  br i1 %cmp.i148.i, label %abx500_gpio_get_bit.exit159.thread.i, label %if.end66.i

abx500_gpio_get_bit.exit159.thread.i:             ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %call.i144.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i144.i, align 4
  %conv6.i149.i = zext i8 %conv2.i146.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %conv6.i149.i, i32 noundef %conv12.i, i32 noundef %call3.i147.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i143.i) #9
  br label %do.end100.i

if.end66.i:                                       ; preds = %if.end59.i
  %conv.i151.i = and i32 %conv12.i, 7
  %52 = ptrtoint ptr %val.i143.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %val.i143.i, align 1
  %conv7.i152.i = zext i8 %53 to i32
  %shl.i153.i = shl nuw nsw i32 1, %conv.i151.i
  %and.i154.i = and i32 %shl.i153.i, %conv7.i152.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i154.i)
  %tobool.i155.i = icmp ne i32 %and.i154.i, 0
  %frombool.i156.i = zext i1 %tobool.i155.i to i8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i143.i) #9
  br i1 %cmp33.not.i, label %if.end66.i.if.end79.i_crit_edge, label %if.then71.i

if.end66.i.if.end79.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

if.then71.i:                                      ; preds = %if.end66.i
  %call.i161.i = call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i160.i) #9
  %54 = ptrtoint ptr %val.i160.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %val.i160.i, align 1, !annotation !201
  %55 = lshr i8 %af.sroa.11.0.copyload121.i, 3
  %conv2.i163.i = add nuw nsw i8 %55, 80
  %56 = ptrtoint ptr %call.i161.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i161.i, align 4
  %call3.i164.i = call i32 @abx500_get_register_interruptible(ptr noundef %57, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i163.i, ptr noundef nonnull %val.i160.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i164.i)
  %cmp.i165.i = icmp slt i32 %call3.i164.i, 0
  br i1 %cmp.i165.i, label %abx500_gpio_get_bit.exit176.thread.i, label %abx500_gpio_get_bit.exit176.i

abx500_gpio_get_bit.exit176.thread.i:             ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %call.i161.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i161.i, align 4
  %conv6.i166.i = zext i8 %conv2.i163.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %conv6.i166.i, i32 noundef %conv21.i, i32 noundef %call3.i164.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i160.i) #9
  br label %do.end100.i

abx500_gpio_get_bit.exit176.i:                    ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i168.i = and i32 %conv21.i, 7
  %60 = ptrtoint ptr %val.i160.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %val.i160.i, align 1
  %conv7.i169.i = zext i8 %61 to i32
  %shl.i170.i = shl nuw nsw i32 1, %conv.i168.i
  %and.i171.i = and i32 %shl.i170.i, %conv7.i169.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i171.i)
  %tobool.i172.not.i = icmp eq i32 %and.i171.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i160.i) #9
  %phi.bo.i = select i1 %tobool.i172.not.i, i8 0, i8 2
  br label %if.end79.i

if.end79.i:                                       ; preds = %abx500_gpio_get_bit.exit176.i, %if.end66.i.if.end79.i_crit_edge
  %alt_bit2.1.i = phi i8 [ %phi.bo.i, %abx500_gpio_get_bit.exit176.i ], [ 0, %if.end66.i.if.end79.i_crit_edge ]
  %add84139.i = or i8 %alt_bit2.1.i, %frombool.i156.i
  call void @__sanitizer_cov_trace_cmp1(i8 %add84139.i, i8 %af.sroa.17.0.copyload127.i)
  %cmp88.i = icmp eq i8 %add84139.i, %af.sroa.17.0.copyload127.i
  br i1 %cmp88.i, label %if.end79.i.cond.false26_crit_edge, label %if.else91.i

if.end79.i.cond.false26_crit_edge:                ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false26

if.else91.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp1(i8 %add84139.i, i8 %af.sroa.18.0.copyload128.i)
  %cmp94.i = icmp eq i8 %add84139.i, %af.sroa.18.0.copyload128.i
  %..i = select i1 %cmp94.i, i32 2, i32 3
  br label %cond.false26

do.end100.i:                                      ; preds = %abx500_gpio_get_bit.exit176.thread.i, %abx500_gpio_get_bit.exit159.thread.i, %abx500_gpio_get_bit.exit.thread.i
  %ret.0.i = phi i32 [ %call3.i.i, %abx500_gpio_get_bit.exit.thread.i ], [ %call3.i147.i, %abx500_gpio_get_bit.exit159.thread.i ], [ %call3.i164.i, %abx500_gpio_get_bit.exit176.thread.i ]
  %62 = ptrtoint ptr %call.i68 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i68, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.58, i32 noundef %ret.0.i) #12
  br label %out

cond.false26:                                     ; preds = %if.else91.i, %if.end79.i.cond.false26_crit_edge, %if.end56.i.cond.false26_crit_edge, %if.then54.i, %if.end21.cond.false26_crit_edge
  %retval.0.i74.ph = phi i32 [ %..i, %if.else91.i ], [ 1, %if.end79.i.cond.false26_crit_edge ], [ 0, %if.end56.i.cond.false26_crit_edge ], [ 0, %if.end21.cond.false26_crit_edge ], [ %conv55.i, %if.then54.i ]
  %arrayidx27 = getelementptr [4 x ptr], ptr @__const.abx500_set_mode.modes, i32 0, i32 %retval.0.i74.ph
  %64 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx27, align 4
  br label %out

out:                                              ; preds = %cond.false26, %do.end100.i, %do.end42.i, %do.end.i73
  %cond29 = phi ptr [ %65, %cond.false26 ], [ @.str.55, %do.end.i73 ], [ @.str.55, %do.end42.i ], [ @.str.55, %do.end100.i ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef %cond29) #9
  br label %if.end33

do.end:                                           ; preds = %abx500_gpio_get_bit.exit67.thread, %abx500_gpio_get_bit.exit.thread
  %ret.1.ph = phi i32 [ %call3.i55, %abx500_gpio_get_bit.exit67.thread ], [ %call3.i, %abx500_gpio_get_bit.exit.thread ]
  %66 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.56, i32 noundef %ret.1.ph) #12
  br label %if.end33

if.end33:                                         ; preds = %do.end, %out
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_is_requested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx500_get_groups_cnt(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %soc = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %ngroups = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngroups, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @abx500_get_group_name(ptr noundef %pctldev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %soc = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.abx500_pingroup, ptr %3, i32 %selector
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx500_get_group_pins(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %soc = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.abx500_pingroup, ptr %3, i32 %selector, i32 1
  %4 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins1, align 4
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pins, align 4
  %7 = load ptr, ptr %soc, align 4
  %groups3 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %groups3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %groups3, align 4
  %npins = getelementptr %struct.abx500_pingroup, ptr %9, i32 %selector, i32 2
  %10 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npins, align 4
  %12 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @abx500_pin_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %chip1 = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 3
  %base = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 3, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %offset, -1
  %sub = add i32 %add, %1
  tail call fastcc void @abx500_gpio_dbg_show_one(ptr noundef %s, ptr noundef %pctldev, ptr noundef %chip1, i32 noundef %offset, i32 noundef %sub)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx500_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #2 align 64 {
entry:
  %pin_number.i.i = alloca i32, align 4
  %function.i = alloca ptr, align 4
  %configs.i = alloca ptr, align 4
  %nconfigs.i = alloca i32, align 4
  %reserved_maps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved_maps) #9
  %0 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reserved_maps, align 4
  %1 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %map, align 4
  %2 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_maps, align 4
  %call = tail call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef null) #9
  %cmp.not35 = icmp eq ptr %call, null
  br i1 %cmp.not35, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.036 = phi ptr [ %call3, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %function.i) #9
  %3 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %function.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %configs.i) #9
  %4 = ptrtoint ptr %configs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %configs.i, align 4, !annotation !201
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nconfigs.i) #9
  %5 = ptrtoint ptr %nconfigs.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %nconfigs.i, align 4
  %call.i = call i32 @of_property_read_string(ptr noundef nonnull %np.036, ptr noundef nonnull @.str.65, ptr noundef nonnull %function.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %for.body.if.end15.i_crit_edge

for.body.if.end15.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then.i:                                        ; preds = %for.body
  %call.i.i = call i32 @of_property_read_string_helper(ptr noundef nonnull %np.036, ptr noundef nonnull @.str.66, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.then.i.abx500_dt_subnode_to_map.exit.thread_crit_edge, label %if.end.i

if.then.i.abx500_dt_subnode_to_map.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abx500_dt_subnode_to_map.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %call4.i = call i32 @pinctrl_utils_reserve_map(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, i32 noundef %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.abx500_dt_subnode_to_map.exit.thread_crit_edge, label %if.end7.i

if.end.i.abx500_dt_subnode_to_map.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abx500_dt_subnode_to_map.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = call ptr @of_find_property(ptr noundef nonnull %np.036, ptr noundef nonnull @.str.66, ptr noundef null) #9
  %call9.i = call ptr @of_prop_next_string(ptr noundef %call8.i, ptr noundef null) #9
  %tobool.not106.i = icmp eq ptr %call9.i, null
  br i1 %tobool.not106.i, label %if.end7.i.if.end15.i_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

if.end7.i.if.end15.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %group.0107.i = phi ptr [ %call14.i, %for.inc.i.for.body.i_crit_edge ], [ %call9.i, %if.end7.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_maps, align 4
  %8 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reserved_maps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i.i = icmp eq i32 %7, %9
  br i1 %cmp.i.i, label %for.body.i.abx500_dt_subnode_to_map.exit.thread_crit_edge, label %for.inc.i

for.body.i.abx500_dt_subnode_to_map.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abx500_dt_subnode_to_map.exit.thread

for.inc.i:                                        ; preds = %for.body.i
  %10 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %function.i, align 4
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 4
  %type.i.i = getelementptr %struct.pinctrl_map, ptr %13, i32 %7, i32 2
  %14 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %type.i.i, align 4
  %15 = load ptr, ptr %map, align 4
  %16 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_maps, align 4
  %data.i.i = getelementptr %struct.pinctrl_map, ptr %15, i32 %17, i32 4
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %group.0107.i, ptr %data.i.i, align 4
  %19 = load ptr, ptr %map, align 4
  %20 = load i32, ptr %num_maps, align 4
  %function5.i.i = getelementptr %struct.pinctrl_map, ptr %19, i32 %20, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %function5.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %11, ptr %function5.i.i, align 4
  %22 = load i32, ptr %num_maps, align 4
  %inc.i.i = add i32 %22, 1
  store i32 %inc.i.i, ptr %num_maps, align 4
  %call14.i = call ptr @of_prop_next_string(ptr noundef %call8.i, ptr noundef nonnull %group.0107.i) #9
  %tobool.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.end15.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end15.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.end15.i:                                       ; preds = %for.inc.i.if.end15.i_crit_edge, %if.end7.i.if.end15.i_crit_edge, %for.body.if.end15.i_crit_edge
  %call16.i = call i32 @pinconf_generic_parse_dt_config(ptr noundef nonnull %np.036, ptr noundef %pctldev, ptr noundef nonnull %configs.i, ptr noundef nonnull %nconfigs.i) #9
  %23 = ptrtoint ptr %nconfigs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nconfigs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool17.not.i = icmp eq i32 %24, 0
  br i1 %tobool17.not.i, label %abx500_dt_subnode_to_map.exit, label %if.then18.i

if.then18.i:                                      ; preds = %if.end15.i
  %call.i85.i = call i32 @of_property_read_string_helper(ptr noundef nonnull %np.036, ptr noundef nonnull @.str.67, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %cmp20.i = icmp slt i32 %call.i85.i, 0
  br i1 %cmp20.i, label %if.then18.i.abx500_dt_subnode_to_map.exit.thread_crit_edge, label %if.end22.i

if.then18.i.abx500_dt_subnode_to_map.exit.thread_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abx500_dt_subnode_to_map.exit.thread

if.end22.i:                                       ; preds = %if.then18.i
  %call23.i = call i32 @pinctrl_utils_reserve_map(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, i32 noundef %call.i85.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %if.end22.i.abx500_dt_subnode_to_map.exit.thread_crit_edge, label %if.end26.i

if.end22.i.abx500_dt_subnode_to_map.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abx500_dt_subnode_to_map.exit.thread

if.end26.i:                                       ; preds = %if.end22.i
  %call27.i = call ptr @of_find_property(ptr noundef nonnull %np.036, ptr noundef nonnull @.str.67, ptr noundef null) #9
  %call28.i = call ptr @of_prop_next_string(ptr noundef %call27.i, ptr noundef null) #9
  %tobool30.not108.i = icmp eq ptr %call28.i, null
  br i1 %tobool30.not108.i, label %if.end26.i.abx500_dt_subnode_to_map.exit.thread21_crit_edge, label %if.end26.i.for.body31.i_crit_edge

if.end26.i.for.body31.i_crit_edge:                ; preds = %if.end26.i
  br label %for.body31.i

if.end26.i.abx500_dt_subnode_to_map.exit.thread21_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abx500_dt_subnode_to_map.exit.thread21

for.body31.i:                                     ; preds = %for.inc37.i.for.body31.i_crit_edge, %if.end26.i.for.body31.i_crit_edge
  %pin.0109.i = phi ptr [ %call38.i, %for.inc37.i.for.body31.i_crit_edge ], [ %call28.i, %if.end26.i.for.body31.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pin_number.i.i) #9
  %25 = ptrtoint ptr %pin_number.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %pin_number.i.i, align 4, !annotation !201
  %call.i86.i = call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %call1.i.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %pin.0109.i, ptr noundef nonnull @.str.68, ptr noundef nonnull %pin_number.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i.i)
  %cmp.i87.i = icmp eq i32 %call1.i.i, 1
  br i1 %cmp.i87.i, label %for.cond.preheader.i.i, label %for.body31.i.abx500_find_pin_name.exit.i_crit_edge

for.body31.i.abx500_find_pin_name.exit.i_crit_edge: ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abx500_find_pin_name.exit.i

for.cond.preheader.i.i:                           ; preds = %for.body31.i
  %soc.i.i = getelementptr inbounds %struct.abx500_pinctrl, ptr %call.i86.i, i32 0, i32 2
  %26 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %soc.i.i, align 4
  %npins.i.i = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %npins.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %npins.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp218.not.i.i = icmp eq i32 %29, 0
  br i1 %cmp218.not.i.i, label %for.cond.preheader.i.i.abx500_find_pin_name.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.abx500_find_pin_name.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abx500_find_pin_name.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %pins.i.i = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pins.i.i, align 4
  %32 = ptrtoint ptr %pin_number.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pin_number.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.019.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i88.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.pinctrl_pin_desc, ptr %31, i32 %i.019.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %33)
  %cmp4.i.i = icmp eq i32 %35, %33
  br i1 %cmp4.i.i, label %if.then5.i.i, label %for.inc.i.i

if.then5.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i.i = getelementptr %struct.pinctrl_pin_desc, ptr %31, i32 %i.019.i.i, i32 1
  %36 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name.i.i, align 4
  br label %abx500_find_pin_name.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i88.i = add nuw i32 %i.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i88.i, %29
  br i1 %exitcond.not.i.i, label %for.inc.i.i.abx500_find_pin_name.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.abx500_find_pin_name.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abx500_find_pin_name.exit.i

abx500_find_pin_name.exit.i:                      ; preds = %for.inc.i.i.abx500_find_pin_name.exit.i_crit_edge, %if.then5.i.i, %for.cond.preheader.i.i.abx500_find_pin_name.exit.i_crit_edge, %for.body31.i.abx500_find_pin_name.exit.i_crit_edge
  %retval.0.i89.i = phi ptr [ %37, %if.then5.i.i ], [ null, %for.body31.i.abx500_find_pin_name.exit.i_crit_edge ], [ null, %for.cond.preheader.i.i.abx500_find_pin_name.exit.i_crit_edge ], [ null, %for.inc.i.i.abx500_find_pin_name.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pin_number.i.i) #9
  %38 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_maps, align 4
  %40 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reserved_maps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp.i90.i = icmp eq i32 %39, %41
  br i1 %cmp.i90.i, label %abx500_find_pin_name.exit.i.abx500_dt_subnode_to_map.exit.thread_crit_edge, label %if.end.i92.i

abx500_find_pin_name.exit.i.abx500_dt_subnode_to_map.exit.thread_crit_edge: ; preds = %abx500_find_pin_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abx500_dt_subnode_to_map.exit.thread

if.end.i92.i:                                     ; preds = %abx500_find_pin_name.exit.i
  %42 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %configs.i, align 4
  %call.i91.i = call ptr @kmemdup(ptr noundef %43, i32 noundef 4, i32 noundef 3264) #9
  %tobool.not.i.i = icmp eq ptr %call.i91.i, null
  br i1 %tobool.not.i.i, label %if.end.i92.i.abx500_dt_subnode_to_map.exit.thread_crit_edge, label %for.inc37.i

if.end.i92.i.abx500_dt_subnode_to_map.exit.thread_crit_edge: ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abx500_dt_subnode_to_map.exit.thread

for.inc37.i:                                      ; preds = %if.end.i92.i
  %44 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map, align 4
  %46 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_maps, align 4
  %type.i93.i = getelementptr %struct.pinctrl_map, ptr %45, i32 %47, i32 2
  %48 = ptrtoint ptr %type.i93.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %type.i93.i, align 4
  %49 = load ptr, ptr %map, align 4
  %50 = load i32, ptr %num_maps, align 4
  %data.i94.i = getelementptr %struct.pinctrl_map, ptr %49, i32 %50, i32 4
  %51 = ptrtoint ptr %data.i94.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %retval.0.i89.i, ptr %data.i94.i, align 4
  %52 = load ptr, ptr %map, align 4
  %53 = load i32, ptr %num_maps, align 4
  %configs6.i.i = getelementptr %struct.pinctrl_map, ptr %52, i32 %53, i32 4, i32 0, i32 1
  %54 = ptrtoint ptr %configs6.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i91.i, ptr %configs6.i.i, align 4
  %55 = load ptr, ptr %map, align 4
  %56 = load i32, ptr %num_maps, align 4
  %num_configs9.i.i = getelementptr %struct.pinctrl_map, ptr %55, i32 %56, i32 4, i32 0, i32 2
  %57 = ptrtoint ptr %num_configs9.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %num_configs9.i.i, align 4
  %58 = load i32, ptr %num_maps, align 4
  %inc.i95.i = add i32 %58, 1
  store i32 %inc.i95.i, ptr %num_maps, align 4
  %call38.i = call ptr @of_prop_next_string(ptr noundef %call27.i, ptr noundef nonnull %pin.0109.i) #9
  %tobool30.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool30.not.i, label %for.inc37.i.abx500_dt_subnode_to_map.exit.thread21_crit_edge, label %for.inc37.i.for.body31.i_crit_edge

for.inc37.i.for.body31.i_crit_edge:               ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body31.i

for.inc37.i.abx500_dt_subnode_to_map.exit.thread21_crit_edge: ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abx500_dt_subnode_to_map.exit.thread21

abx500_dt_subnode_to_map.exit.thread:             ; preds = %if.end.i92.i.abx500_dt_subnode_to_map.exit.thread_crit_edge, %abx500_find_pin_name.exit.i.abx500_dt_subnode_to_map.exit.thread_crit_edge, %if.end22.i.abx500_dt_subnode_to_map.exit.thread_crit_edge, %if.then18.i.abx500_dt_subnode_to_map.exit.thread_crit_edge, %for.body.i.abx500_dt_subnode_to_map.exit.thread_crit_edge, %if.end.i.abx500_dt_subnode_to_map.exit.thread_crit_edge, %if.then.i.abx500_dt_subnode_to_map.exit.thread_crit_edge
  %ret.4.i.ph = phi i32 [ -28, %abx500_find_pin_name.exit.i.abx500_dt_subnode_to_map.exit.thread_crit_edge ], [ -12, %if.end.i92.i.abx500_dt_subnode_to_map.exit.thread_crit_edge ], [ -28, %for.body.i.abx500_dt_subnode_to_map.exit.thread_crit_edge ], [ %call.i85.i, %if.then18.i.abx500_dt_subnode_to_map.exit.thread_crit_edge ], [ %call23.i, %if.end22.i.abx500_dt_subnode_to_map.exit.thread_crit_edge ], [ %call4.i, %if.end.i.abx500_dt_subnode_to_map.exit.thread_crit_edge ], [ %call.i.i, %if.then.i.abx500_dt_subnode_to_map.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nconfigs.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function.i) #9
  br label %if.then

abx500_dt_subnode_to_map.exit.thread21:           ; preds = %for.inc37.i.abx500_dt_subnode_to_map.exit.thread21_crit_edge, %if.end26.i.abx500_dt_subnode_to_map.exit.thread21_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nconfigs.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function.i) #9
  br label %for.inc

abx500_dt_subnode_to_map.exit:                    ; preds = %if.end15.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nconfigs.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp2 = icmp slt i32 %call16.i, 0
  br i1 %cmp2, label %abx500_dt_subnode_to_map.exit.if.then_crit_edge, label %abx500_dt_subnode_to_map.exit.for.inc_crit_edge

abx500_dt_subnode_to_map.exit.for.inc_crit_edge:  ; preds = %abx500_dt_subnode_to_map.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

abx500_dt_subnode_to_map.exit.if.then_crit_edge:  ; preds = %abx500_dt_subnode_to_map.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %abx500_dt_subnode_to_map.exit.if.then_crit_edge, %abx500_dt_subnode_to_map.exit.thread
  %ret.4.i18 = phi i32 [ %ret.4.i.ph, %abx500_dt_subnode_to_map.exit.thread ], [ %call16.i, %abx500_dt_subnode_to_map.exit.if.then_crit_edge ]
  %59 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map, align 4
  %61 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_maps, align 4
  call void @pinctrl_utils_free_map(ptr noundef %pctldev, ptr noundef %60, i32 noundef %62) #9
  call void @of_node_put(ptr noundef nonnull %np.036) #9
  br label %cleanup

for.inc:                                          ; preds = %abx500_dt_subnode_to_map.exit.for.inc_crit_edge, %abx500_dt_subnode_to_map.exit.thread21
  %call3 = call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef nonnull %np.036) #9
  %cmp.not = icmp eq ptr %call3, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4.i18, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved_maps) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx500_pmx_get_funcs_cnt(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %soc = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %nfunctions = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nfunctions, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @abx500_pmx_get_func_name(ptr noundef %pctldev, i32 noundef %function) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %soc = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %functions = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.abx500_function, ptr %3, i32 %function
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx500_pmx_get_func_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %soc = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %functions = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.abx500_function, ptr %3, i32 %function, i32 1
  %4 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups1, align 4
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %groups, align 4
  %7 = load ptr, ptr %soc, align 4
  %functions3 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %functions3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functions3, align 4
  %ngroups = getelementptr %struct.abx500_function, ptr %9, i32 %function, i32 2
  %10 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ngroups, align 4
  %12 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx500_pmx_set(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %chip1 = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 3
  %soc = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.abx500_pingroup, ptr %3, i32 %group
  %altsetting = getelementptr %struct.abx500_pingroup, ptr %3, i32 %group, i32 3
  %4 = ptrtoint ptr %altsetting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %altsetting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @abx500_pmx_set.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@abx500_pmx_set, %do.end)) #9
          to label %if.then6 [label %do.end], !srcloc !202

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %npins = getelementptr %struct.abx500_pingroup, ptr %3, i32 %group, i32 2
  %10 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npins, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @abx500_pmx_set.__UNIQUE_ID_ddebug290, ptr noundef %7, ptr noundef nonnull @.str.71, ptr noundef %9, i32 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %npins8 = getelementptr %struct.abx500_pingroup, ptr %3, i32 %group, i32 2
  %12 = ptrtoint ptr %npins8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %npins8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp968.not = icmp eq i32 %13, 0
  br i1 %cmp968.not, label %do.end.cleanup_crit_edge, label %do.body10.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body10.lr.ph:                                  ; preds = %do.end
  %pins = getelementptr %struct.abx500_pingroup, ptr %3, i32 %group, i32 1
  br label %do.body10

do.body10:                                        ; preds = %do.end30.do.body10_crit_edge, %do.body10.lr.ph
  %i.069 = phi i32 [ 0, %do.body10.lr.ph ], [ %inc, %do.end30.do.body10_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @abx500_pmx_set.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@abx500_pmx_set, %do.end30)) #9
          to label %if.then24 [label %do.end30], !srcloc !202

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %16 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pins, align 4
  %arrayidx26 = getelementptr i32, ptr %17, i32 %i.069
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx26, align 4
  %20 = ptrtoint ptr %altsetting to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %altsetting, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @abx500_pmx_set.__UNIQUE_ID_ddebug291, ptr noundef %15, ptr noundef nonnull @.str.72, i32 noundef %19, i32 noundef %21) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %do.body10
  %22 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pins, align 4
  %arrayidx32 = getelementptr i32, ptr %23, i32 %i.069
  %24 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx32, align 4
  %26 = ptrtoint ptr %altsetting to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %altsetting, align 4
  %call34 = tail call fastcc i32 @abx500_set_mode(ptr noundef %pctldev, ptr noundef %chip1, i32 noundef %25, i32 noundef %27)
  %inc = add nuw i32 %i.069, 1
  %28 = ptrtoint ptr %npins8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %npins8, align 4
  %cmp9 = icmp ult i32 %inc, %29
  br i1 %cmp9, label %do.end30.do.body10_crit_edge, label %for.end

do.end30.do.body10_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

for.end:                                          ; preds = %do.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.70, i32 noundef %call34) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %for.end.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call34, %do.end39 ], [ %call34, %for.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx500_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %soc = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %gpio_num_ranges = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gpio_num_ranges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_num_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp53.not = icmp eq i32 %3, 0
  br i1 %cmp53.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.abx500_pinrange, ptr %5, i32 %i.054
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %offset)
  %cmp3.not = icmp ugt i32 %7, %offset
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %npins = getelementptr %struct.abx500_pinrange, ptr %5, i32 %i.054, i32 1
  %8 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npins, align 4
  %add = add i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp5 = icmp ugt i32 %add, %offset
  br i1 %cmp5, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.end:                                          ; preds = %land.lhs.true.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.054, %land.lhs.true.for.end_crit_edge ]
  %p.1 = phi ptr [ inttoptr (i32 -1 to ptr), %entry.for.end_crit_edge ], [ %arrayidx, %land.lhs.true.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %3)
  %cmp8 = icmp eq i32 %i.0.lcssa, %3
  br i1 %cmp8, label %for.end.cleanup.sink.split_crit_edge, label %do.body11

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body11:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @abx500_gpio_request_enable.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@abx500_gpio_request_enable, %do.end20)) #9
          to label %if.then16 [label %do.end20], !srcloc !202

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %altfunc = getelementptr inbounds %struct.abx500_pinrange, ptr %p.1, i32 0, i32 2
  %12 = ptrtoint ptr %altfunc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %altfunc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @abx500_gpio_request_enable.__UNIQUE_ID_ddebug292, ptr noundef %11, ptr noundef nonnull @.str.78, i32 noundef %13, i32 noundef %offset) #9
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %do.body11
  %pctldev21 = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %pctldev21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pctldev21, align 4
  %chip = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 3
  %altfunc22 = getelementptr inbounds %struct.abx500_pinrange, ptr %p.1, i32 0, i32 2
  %16 = ptrtoint ptr %altfunc22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %altfunc22, align 4
  %call23 = tail call fastcc i32 @abx500_set_mode(ptr noundef %15, ptr noundef %chip, i32 noundef %offset, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end20.cleanup.sink.split_crit_edge, label %do.end20.cleanup_crit_edge

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end20.cleanup.sink.split_crit_edge:            ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end20.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %for.inc.cleanup.sink.split_crit_edge
  %.str.80.sink = phi ptr [ @.str.76, %for.end.cleanup.sink.split_crit_edge ], [ @.str.80, %do.end20.cleanup.sink.split_crit_edge ], [ @.str.76, %for.inc.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -19, %for.end.cleanup.sink.split_crit_edge ], [ %call23, %do.end20.cleanup.sink.split_crit_edge ], [ -19, %for.inc.cleanup.sink.split_crit_edge ]
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull %.str.80.sink, ptr noundef nonnull @.str.77) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %do.end20.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @abx500_gpio_disable_free(ptr nocapture noundef %pctldev, ptr nocapture noundef %range, i32 noundef %offset) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @abx500_set_mode(ptr noundef %pctldev, ptr noundef %chip, i32 noundef %gpio, i32 noundef %alt_setting) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %soc = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %alternate_functions = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %alternate_functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alternate_functions, align 4
  %arrayidx = getelementptr %struct.alternate_functions, ptr %3, i32 %gpio
  %af.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 5
  %4 = ptrtoint ptr %af.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %af.sroa.5.0.copyload188 = load i8, ptr %af.sroa.5.0.arrayidx.sroa_idx, align 1
  %af.sroa.10.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 6
  %5 = ptrtoint ptr %af.sroa.10.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %af.sroa.10.0.copyload193 = load i8, ptr %af.sroa.10.0.arrayidx.sroa_idx, align 2
  %af.sroa.17.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 7
  %6 = ptrtoint ptr %af.sroa.17.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %af.sroa.17.0.copyload200 = load i8, ptr %af.sroa.17.0.arrayidx.sroa_idx, align 1
  %af.sroa.19.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %7 = ptrtoint ptr %af.sroa.19.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %af.sroa.19.0.copyload202 = load i8, ptr %af.sroa.19.0.arrayidx.sroa_idx, align 4
  %af.sroa.21.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 9
  %8 = ptrtoint ptr %af.sroa.21.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %af.sroa.21.0.copyload204 = load i8, ptr %af.sroa.21.0.arrayidx.sroa_idx, align 1
  %9 = zext i32 %alt_setting to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %alt_setting, label %if.end22 [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true5
    i32 3, label %land.lhs.true12
  ]

land.lhs.true:                                    ; preds = %entry
  %af.sroa.4.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %10 = ptrtoint ptr %af.sroa.4.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %af.sroa.4.0.copyload187 = load i8, ptr %af.sroa.4.0.arrayidx.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %af.sroa.4.0.copyload187)
  %cmp1 = icmp eq i8 %af.sroa.4.0.copyload187, -1
  br i1 %cmp1, label %land.lhs.true.do.body_crit_edge, label %if.end22.thread362

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end22.thread362:                               ; preds = %land.lhs.true
  %sub363 = add i32 %gpio, -1
  %conv32 = sext i8 %af.sroa.5.0.copyload188 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %af.sroa.5.0.copyload188)
  %cmp33.not = icmp eq i8 %af.sroa.5.0.copyload188, -1
  %call.i267 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %conv.i268 = and i32 %sub363, 7
  %div20.i269 = lshr i32 %sub363, 3
  %11 = trunc i32 %div20.i269 to i8
  %12 = ptrtoint ptr %call.i267 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i267, align 4
  %shl.i270 = shl nuw nsw i32 1, %conv.i268
  %conv4.i271 = trunc i32 %shl.i270 to i8
  br i1 %cmp33.not, label %if.else, label %if.then35

land.lhs.true5:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %af.sroa.5.0.copyload188)
  %cmp7.old = icmp eq i8 %af.sroa.5.0.copyload188, -1
  br i1 %cmp7.old, label %land.lhs.true5.do.body_crit_edge, label %if.end22.thread365

land.lhs.true5.do.body_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end22.thread365:                               ; preds = %land.lhs.true5
  %sub366 = add i32 %gpio, -1
  %call.i279 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %conv.i280 = and i32 %sub366, 7
  %div20.i281 = lshr i32 %sub366, 3
  %14 = trunc i32 %div20.i281 to i8
  %15 = ptrtoint ptr %call.i279 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i279, align 4
  %shl.i282 = shl nuw nsw i32 1, %conv.i280
  %conv4.i283 = trunc i32 %shl.i282 to i8
  %call8.i284 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %16, i8 noundef zeroext 16, i8 noundef zeroext %14, i8 noundef zeroext %conv4.i283, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i284)
  %cmp.i285 = icmp slt i32 %call8.i284, 0
  br i1 %cmp.i285, label %abx500_gpio_set_bits.exit288.thread, label %if.end78

land.lhs.true12:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %af.sroa.10.0.copyload193)
  %cmp14.old = icmp eq i8 %af.sroa.10.0.copyload193, -1
  br i1 %cmp14.old, label %land.lhs.true12.do.body_crit_edge, label %if.end22.thread

land.lhs.true12.do.body_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end22.thread:                                  ; preds = %land.lhs.true12
  %sub352 = add i32 %gpio, -1
  %call.i315 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %conv.i316 = and i32 %sub352, 7
  %div20.i317 = lshr i32 %sub352, 3
  %17 = trunc i32 %div20.i317 to i8
  %18 = ptrtoint ptr %call.i315 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i315, align 4
  %shl.i318 = shl nuw nsw i32 1, %conv.i316
  %conv4.i319 = trunc i32 %shl.i318 to i8
  %call8.i320 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %19, i8 noundef zeroext 16, i8 noundef zeroext %17, i8 noundef zeroext %conv4.i319, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i320)
  %cmp.i321 = icmp slt i32 %call8.i320, 0
  br i1 %cmp.i321, label %abx500_gpio_set_bits.exit324.thread, label %if.end115

do.body:                                          ; preds = %land.lhs.true12.do.body_crit_edge, %land.lhs.true5.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @abx500_set_mode.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@abx500_set_mode, %cleanup)) #9
          to label %if.then20 [label %cleanup], !srcloc !202

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  %arrayidx21 = getelementptr [4 x ptr], ptr @__const.abx500_set_mode.modes, i32 0, i32 %alt_setting
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @abx500_set_mode.__UNIQUE_ID_ddebug288, ptr noundef %21, ptr noundef nonnull @.str.74, i32 noundef %gpio, ptr noundef %23) #9
  br label %cleanup

if.end22:                                         ; preds = %entry
  %sub = add i32 %gpio, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alt_setting)
  %cond = icmp eq i32 %alt_setting, 0
  br i1 %cond, label %sw.bb, label %do.body141

sw.bb:                                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %af.sroa.5.0.copyload188)
  %cmp25.not = icmp ne i8 %af.sroa.5.0.copyload188, -1
  %spec.select = zext i1 %cmp25.not to i32
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %conv.i = and i32 %sub, 7
  %div20.i = lshr i32 %sub, 3
  %24 = trunc i32 %div20.i to i8
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %shl.i = shl nuw nsw i32 1, %conv.i
  %conv4.i = trunc i32 %shl.i to i8
  %shl6.i = shl nuw nsw i32 %spec.select, %conv.i
  %conv7.i = trunc i32 %shl6.i to i8
  %call8.i = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %26, i8 noundef zeroext 16, i8 noundef zeroext %24, i8 noundef zeroext %conv4.i, i8 noundef zeroext %conv7.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %do.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %conv11.i = and i32 %div20.i, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i, i32 noundef %sub, i32 noundef %call8.i) #12
  br label %do.end165

if.then35:                                        ; preds = %if.end22.thread362
  %call8.i237 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %13, i8 noundef zeroext 16, i8 noundef zeroext %11, i8 noundef zeroext %conv4.i271, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i237)
  %cmp.i238 = icmp slt i32 %call8.i237, 0
  br i1 %cmp.i238, label %abx500_gpio_set_bits.exit241.thread, label %if.end40

abx500_gpio_set_bits.exit241.thread:              ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %call.i267 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i267, align 4
  %conv11.i239 = and i32 %div20.i269, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i239, i32 noundef %sub363, i32 noundef %call8.i237) #12
  br label %do.end165

if.end40:                                         ; preds = %if.then35
  %conv43 = zext i8 %af.sroa.17.0.copyload200 to i32
  %and = and i32 %conv43, 1
  %call.i242 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %conv.i243 = and i32 %conv32, 7
  %31 = ashr i8 %af.sroa.5.0.copyload188, 3
  %conv2.i = add nsw i8 %31, 80
  %32 = ptrtoint ptr %call.i242 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i242, align 4
  %shl.i245 = shl nuw nsw i32 1, %conv.i243
  %conv4.i246 = trunc i32 %shl.i245 to i8
  %shl6.i247 = shl nuw nsw i32 %and, %conv.i243
  %conv7.i248 = trunc i32 %shl6.i247 to i8
  %call8.i249 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %33, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i, i8 noundef zeroext %conv4.i246, i8 noundef zeroext %conv7.i248) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i249)
  %cmp.i250 = icmp slt i32 %call8.i249, 0
  br i1 %cmp.i250, label %abx500_gpio_set_bits.exit253.thread, label %abx500_gpio_set_bits.exit253

abx500_gpio_set_bits.exit253.thread:              ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %call.i242 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i242, align 4
  %conv11.i251 = zext i8 %conv2.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i251, i32 noundef %conv32, i32 noundef %call8.i249) #12
  br label %do.end165

abx500_gpio_set_bits.exit253:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %af.sroa.10.0.copyload193)
  %cmp56.not = icmp eq i8 %af.sroa.10.0.copyload193, -1
  br i1 %cmp56.not, label %abx500_gpio_set_bits.exit253.cleanup_crit_edge, label %if.then58

abx500_gpio_set_bits.exit253.cleanup_crit_edge:   ; preds = %abx500_gpio_set_bits.exit253
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then58:                                        ; preds = %abx500_gpio_set_bits.exit253
  %conv55 = sext i8 %af.sroa.10.0.copyload193 to i32
  %and63 = lshr i32 %conv43, 1
  %and63.lobit = and i32 %and63, 1
  %call.i254 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %conv.i255 = and i32 %conv55, 7
  %36 = ashr i8 %af.sroa.10.0.copyload193, 3
  %conv2.i257 = add nsw i8 %36, 80
  %37 = ptrtoint ptr %call.i254 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i254, align 4
  %shl.i258 = shl nuw nsw i32 1, %conv.i255
  %conv4.i259 = trunc i32 %shl.i258 to i8
  %shl6.i260 = shl nuw nsw i32 %and63.lobit, %conv.i255
  %conv7.i261 = trunc i32 %shl6.i260 to i8
  %call8.i262 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %38, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i257, i8 noundef zeroext %conv4.i259, i8 noundef zeroext %conv7.i261) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i262)
  %cmp.i263 = icmp slt i32 %call8.i262, 0
  br i1 %cmp.i263, label %do.end.i265, label %if.then58.cleanup_crit_edge

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i265:                                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %call.i254 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i254, align 4
  %conv11.i264 = zext i8 %conv2.i257 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i264, i32 noundef %conv55, i32 noundef %call8.i262) #12
  br label %do.end165

if.else:                                          ; preds = %if.end22.thread362
  %call8.i274 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %13, i8 noundef zeroext 16, i8 noundef zeroext %11, i8 noundef zeroext %conv4.i271, i8 noundef zeroext %conv4.i271) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i274)
  %cmp.i275 = icmp slt i32 %call8.i274, 0
  br i1 %cmp.i275, label %do.end.i277, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i277:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %call.i267 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i267, align 4
  %conv11.i276 = and i32 %div20.i269, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i276, i32 noundef %sub363, i32 noundef %call8.i274) #12
  br label %do.end165

abx500_gpio_set_bits.exit288.thread:              ; preds = %if.end22.thread365
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %call.i279 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i279, align 4
  %conv11.i286 = and i32 %div20.i281, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i286, i32 noundef %sub366, i32 noundef %call8.i284) #12
  br label %do.end165

if.end78:                                         ; preds = %if.end22.thread365
  %conv80 = sext i8 %af.sroa.5.0.copyload188 to i32
  %conv81 = zext i8 %af.sroa.19.0.copyload202 to i32
  %and82 = and i32 %conv81, 1
  %call.i289 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %conv.i290 = and i32 %conv80, 7
  %45 = ashr i8 %af.sroa.5.0.copyload188, 3
  %conv2.i292 = add nsw i8 %45, 80
  %46 = ptrtoint ptr %call.i289 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i289, align 4
  %shl.i293 = shl nuw nsw i32 1, %conv.i290
  %conv4.i294 = trunc i32 %shl.i293 to i8
  %shl6.i295 = shl nuw nsw i32 %and82, %conv.i290
  %conv7.i296 = trunc i32 %shl6.i295 to i8
  %call8.i297 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %47, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i292, i8 noundef zeroext %conv4.i294, i8 noundef zeroext %conv7.i296) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i297)
  %cmp.i298 = icmp slt i32 %call8.i297, 0
  br i1 %cmp.i298, label %abx500_gpio_set_bits.exit301.thread, label %abx500_gpio_set_bits.exit301

abx500_gpio_set_bits.exit301.thread:              ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %call.i289 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i289, align 4
  %conv11.i299 = zext i8 %conv2.i292 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i299, i32 noundef %conv80, i32 noundef %call8.i297) #12
  br label %do.end165

abx500_gpio_set_bits.exit301:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %af.sroa.10.0.copyload193)
  %cmp95.not = icmp eq i8 %af.sroa.10.0.copyload193, -1
  br i1 %cmp95.not, label %abx500_gpio_set_bits.exit301.cleanup_crit_edge, label %if.then97

abx500_gpio_set_bits.exit301.cleanup_crit_edge:   ; preds = %abx500_gpio_set_bits.exit301
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then97:                                        ; preds = %abx500_gpio_set_bits.exit301
  %conv94 = sext i8 %af.sroa.10.0.copyload193 to i32
  %and102 = lshr i32 %conv81, 1
  %and102.lobit = and i32 %and102, 1
  %call.i302 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %conv.i303 = and i32 %conv94, 7
  %50 = ashr i8 %af.sroa.10.0.copyload193, 3
  %conv2.i305 = add nsw i8 %50, 80
  %51 = ptrtoint ptr %call.i302 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i302, align 4
  %shl.i306 = shl nuw nsw i32 1, %conv.i303
  %conv4.i307 = trunc i32 %shl.i306 to i8
  %shl6.i308 = shl nuw nsw i32 %and102.lobit, %conv.i303
  %conv7.i309 = trunc i32 %shl6.i308 to i8
  %call8.i310 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %52, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i305, i8 noundef zeroext %conv4.i307, i8 noundef zeroext %conv7.i309) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i310)
  %cmp.i311 = icmp slt i32 %call8.i310, 0
  br i1 %cmp.i311, label %do.end.i313, label %if.then97.cleanup_crit_edge

if.then97.cleanup_crit_edge:                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i313:                                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %call.i302 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i302, align 4
  %conv11.i312 = zext i8 %conv2.i305 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i312, i32 noundef %conv94, i32 noundef %call8.i310) #12
  br label %do.end165

abx500_gpio_set_bits.exit324.thread:              ; preds = %if.end22.thread
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %call.i315 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i315, align 4
  %conv11.i322 = and i32 %div20.i317, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i322, i32 noundef %sub352, i32 noundef %call8.i320) #12
  br label %do.end165

if.end115:                                        ; preds = %if.end22.thread
  %conv117 = sext i8 %af.sroa.10.0.copyload193 to i32
  %conv118 = zext i8 %af.sroa.21.0.copyload204 to i32
  %and119 = and i32 %conv118, 1
  %call.i325 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %conv.i326 = and i32 %conv117, 7
  %57 = ashr i8 %af.sroa.10.0.copyload193, 3
  %conv2.i328 = add nsw i8 %57, 80
  %58 = ptrtoint ptr %call.i325 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i325, align 4
  %shl.i329 = shl nuw nsw i32 1, %conv.i326
  %conv4.i330 = trunc i32 %shl.i329 to i8
  %shl6.i331 = shl nuw nsw i32 %and119, %conv.i326
  %conv7.i332 = trunc i32 %shl6.i331 to i8
  %call8.i333 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %59, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i328, i8 noundef zeroext %conv4.i330, i8 noundef zeroext %conv7.i332) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i333)
  %cmp.i334 = icmp slt i32 %call8.i333, 0
  br i1 %cmp.i334, label %abx500_gpio_set_bits.exit337.thread, label %if.end129

abx500_gpio_set_bits.exit337.thread:              ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %call.i325 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i325, align 4
  %conv11.i335 = zext i8 %conv2.i328 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i335, i32 noundef %conv117, i32 noundef %call8.i333) #12
  br label %do.end165

if.end129:                                        ; preds = %if.end115
  %and134 = lshr i32 %conv118, 1
  %and134.lobit = and i32 %and134, 1
  %call.i338 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %62 = ptrtoint ptr %call.i338 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i338, align 4
  %shl6.i344 = shl nuw nsw i32 %and134.lobit, %conv.i326
  %conv7.i345 = trunc i32 %shl6.i344 to i8
  %call8.i346 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %63, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i328, i8 noundef zeroext %conv4.i330, i8 noundef zeroext %conv7.i345) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i346)
  %cmp.i347 = icmp slt i32 %call8.i346, 0
  br i1 %cmp.i347, label %do.end.i349, label %if.end129.cleanup_crit_edge

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i349:                                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %call.i338 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i338, align 4
  %conv11.i348 = zext i8 %conv2.i328 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i348, i32 noundef %conv117, i32 noundef %call8.i346) #12
  br label %do.end165

do.body141:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @abx500_set_mode.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@abx500_set_mode, %cleanup)) #9
          to label %if.then155 [label %cleanup], !srcloc !202

if.then155:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @abx500_set_mode.__UNIQUE_ID_ddebug289, ptr noundef %67, ptr noundef nonnull @.str.75, i32 noundef %alt_setting) #9
  br label %cleanup

do.end165:                                        ; preds = %do.end.i349, %abx500_gpio_set_bits.exit337.thread, %abx500_gpio_set_bits.exit324.thread, %do.end.i313, %abx500_gpio_set_bits.exit301.thread, %abx500_gpio_set_bits.exit288.thread, %do.end.i277, %do.end.i265, %abx500_gpio_set_bits.exit253.thread, %abx500_gpio_set_bits.exit241.thread, %do.end.i
  %ret.0.ph = phi i32 [ %call8.i346, %do.end.i349 ], [ %call8.i333, %abx500_gpio_set_bits.exit337.thread ], [ %call8.i320, %abx500_gpio_set_bits.exit324.thread ], [ %call8.i310, %do.end.i313 ], [ %call8.i297, %abx500_gpio_set_bits.exit301.thread ], [ %call8.i284, %abx500_gpio_set_bits.exit288.thread ], [ %call8.i274, %do.end.i277 ], [ %call8.i262, %do.end.i265 ], [ %call8.i249, %abx500_gpio_set_bits.exit253.thread ], [ %call8.i237, %abx500_gpio_set_bits.exit241.thread ], [ %call8.i, %do.end.i ]
  %68 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.73, i32 noundef %ret.0.ph) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end165, %if.then155, %do.body141, %if.end129.cleanup_crit_edge, %if.then97.cleanup_crit_edge, %abx500_gpio_set_bits.exit301.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then58.cleanup_crit_edge, %abx500_gpio_set_bits.exit253.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then20, %do.body
  %retval.0 = phi i32 [ -22, %if.then20 ], [ -22, %if.then155 ], [ %ret.0.ph, %do.end165 ], [ %call8.i297, %abx500_gpio_set_bits.exit301.cleanup_crit_edge ], [ %call8.i249, %abx500_gpio_set_bits.exit253.cleanup_crit_edge ], [ %call8.i, %sw.bb.cleanup_crit_edge ], [ %call8.i262, %if.then58.cleanup_crit_edge ], [ %call8.i274, %if.else.cleanup_crit_edge ], [ %call8.i310, %if.then97.cleanup_crit_edge ], [ %call8.i346, %if.end129.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body141 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @abx500_pin_config_get(ptr nocapture noundef readnone %pctldev, i32 noundef %pin, ptr nocapture noundef readnone %config) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abx500_pin_config_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %chip1 = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp136.not = icmp eq i32 %num_configs, 0
  br i1 %cmp136.not, label %entry.do.end46_crit_edge, label %for.body.lr.ph

entry.do.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

for.body.lr.ph:                                   ; preds = %entry
  %parent = getelementptr inbounds %struct.abx500_pinctrl, ptr %call, i32 0, i32 3, i32 2
  %sub = add i32 %pin, -1
  %conv.i.i105 = and i32 %sub, 7
  %div20.i.i106 = lshr i32 %sub, 3
  %0 = trunc i32 %div20.i.i106 to i8
  %conv2.i.i107 = add i8 %0, 16
  %shl.i.i108 = shl nuw nsw i32 1, %conv.i.i105
  %conv4.i.i109 = trunc i32 %shl.i.i108 to i8
  %conv11.i.i123 = zext i8 %conv2.i.i107 to i32
  %conv2.i94 = add i8 %0, 48
  %conv11.i101 = zext i8 %conv2.i94 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.0137 = phi i32 [ -22, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0138
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %2, 255
  %shr.i = lshr i32 %2, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @abx500_pin_config_set.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@abx500_pin_config_set, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !202

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and.i)
  %cmp10 = icmp eq i32 %and.i, 17
  %cond = select i1 %cmp10, ptr @.str.84, ptr @.str.85
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %2)
  %tobool12.not = icmp ult i32 %2, 256
  %cond13 = select i1 %tobool12.not, ptr @.str.87, ptr @.str.86
  %cond15 = select i1 %tobool12.not, ptr @.str.44, ptr @.str.46
  %cond16 = select i1 %cmp10, ptr %cond13, ptr %cond15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @abx500_pin_config_set.__UNIQUE_ID_ddebug293, ptr noundef %4, ptr noundef nonnull @.str.83, i32 noundef %pin, i32 noundef %6, ptr noundef nonnull %cond, ptr noundef nonnull %cond16) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  %7 = add nsw i32 %and.i, -1
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 31)
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %8, label %do.end40 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb22
    i32 2, label %sw.bb30
    i32 8, label %sw.bb36
  ]

sw.bb:                                            ; preds = %do.end
  %call.i.i = tail call ptr @gpiochip_get_data(ptr noundef %chip1) #9
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i.i, align 4
  %call8.i.i = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %11, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i.i107, i8 noundef zeroext %conv4.i.i109, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.do.end46.sink.split_crit_edge, label %if.end20

sw.bb.do.end46.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46.sink.split

if.end20:                                         ; preds = %sw.bb
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip1) #9
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %call8.i = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %13, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i94, i8 noundef zeroext %conv4.i.i109, i8 noundef zeroext %conv4.i.i109) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end20.for.inc_crit_edge

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i101, i32 noundef %sub, i32 noundef %call8.i) #12
  br label %for.inc

sw.bb22:                                          ; preds = %do.end
  %call.i.i80 = tail call ptr @gpiochip_get_data(ptr noundef %chip1) #9
  %16 = ptrtoint ptr %call.i.i80 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i.i80, align 4
  %call8.i.i86 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %17, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i.i107, i8 noundef zeroext %conv4.i.i109, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i86)
  %cmp.i.i87 = icmp slt i32 %call8.i.i86, 0
  br i1 %cmp.i.i87, label %sw.bb22.do.end46.sink.split_crit_edge, label %if.end26

sw.bb22.do.end46.sink.split_crit_edge:            ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46.sink.split

if.end26:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %2)
  %tobool27.not = icmp ult i32 %2, 256
  %cond28 = zext i1 %tobool27.not to i32
  %call.i91 = tail call ptr @gpiochip_get_data(ptr noundef %chip1) #9
  %18 = ptrtoint ptr %call.i91 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i91, align 4
  %shl6.i97 = shl nuw nsw i32 %cond28, %conv.i.i105
  %conv7.i98 = trunc i32 %shl6.i97 to i8
  %call8.i99 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %19, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i94, i8 noundef zeroext %conv4.i.i109, i8 noundef zeroext %conv7.i98) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i99)
  %cmp.i100 = icmp slt i32 %call8.i99, 0
  br i1 %cmp.i100, label %do.end.i102, label %if.end26.for.inc_crit_edge

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end.i102:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call.i91 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i91, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i101, i32 noundef %sub, i32 noundef %call8.i99) #12
  br label %for.inc

sw.bb30:                                          ; preds = %do.end
  %call.i.i104 = tail call ptr @gpiochip_get_data(ptr noundef %chip1) #9
  %22 = ptrtoint ptr %call.i.i104 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i.i104, align 4
  %call8.i.i110 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %23, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i.i107, i8 noundef zeroext %conv4.i.i109, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i110)
  %cmp.i.i111 = icmp slt i32 %call8.i.i110, 0
  br i1 %cmp.i.i111, label %sw.bb30.do.end46.sink.split_crit_edge, label %if.end34

sw.bb30.do.end46.sink.split_crit_edge:            ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46.sink.split

if.end34:                                         ; preds = %sw.bb30
  %call.i.i115 = tail call ptr @gpiochip_get_data(ptr noundef %chip1) #9
  %24 = ptrtoint ptr %call.i.i115 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i.i115, align 4
  %call8.i.i121 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %25, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i.i107, i8 noundef zeroext %conv4.i.i109, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i121)
  %cmp.i.i122 = icmp slt i32 %call8.i.i121, 0
  br i1 %cmp.i.i122, label %do.end.i.i124, label %if.end34.for.inc_crit_edge

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end.i.i124:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %call.i.i115 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i.i115, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i.i123, i32 noundef %sub, i32 noundef %call8.i.i121) #12
  br label %for.inc

sw.bb36:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = tail call i32 @abx500_gpio_direction_output(ptr noundef %chip1, i32 noundef %sub, i32 noundef %shr.i)
  br label %for.inc

do.end40:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.88) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end40, %sw.bb36, %do.end.i.i124, %if.end34.for.inc_crit_edge, %do.end.i102, %if.end26.for.inc_crit_edge, %do.end.i, %if.end20.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.0137, %do.end40 ], [ %call37, %sw.bb36 ], [ %call8.i, %if.end20.for.inc_crit_edge ], [ %call8.i, %do.end.i ], [ %call8.i99, %if.end26.for.inc_crit_edge ], [ %call8.i99, %do.end.i102 ], [ %call8.i.i121, %if.end34.for.inc_crit_edge ], [ %call8.i.i121, %do.end.i.i124 ]
  %inc = add nuw i32 %i.0138, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %out, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

out:                                              ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp42 = icmp slt i32 %ret.1, 0
  br i1 %cmp42, label %out.do.end46_crit_edge, label %out.if.end47_crit_edge

out.if.end47_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

out.do.end46_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

do.end46.sink.split:                              ; preds = %sw.bb30.do.end46.sink.split_crit_edge, %sw.bb22.do.end46.sink.split_crit_edge, %sw.bb.do.end46.sink.split_crit_edge
  %call.i.i104.lcssa.sink = phi ptr [ %call.i.i, %sw.bb.do.end46.sink.split_crit_edge ], [ %call.i.i80, %sw.bb22.do.end46.sink.split_crit_edge ], [ %call.i.i104, %sw.bb30.do.end46.sink.split_crit_edge ]
  %call8.i.i110.lcssa.sink = phi i32 [ %call8.i.i, %sw.bb.do.end46.sink.split_crit_edge ], [ %call8.i.i86, %sw.bb22.do.end46.sink.split_crit_edge ], [ %call8.i.i110, %sw.bb30.do.end46.sink.split_crit_edge ]
  %30 = ptrtoint ptr %call.i.i104.lcssa.sink to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i.i104.lcssa.sink, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv11.i.i123, i32 noundef %sub, i32 noundef %call8.i.i110.lcssa.sink) #12
  br label %do.end46

do.end46:                                         ; preds = %do.end46.sink.split, %out.do.end46_crit_edge, %entry.do.end46_crit_edge
  %ret.2130 = phi i32 [ %ret.1, %out.do.end46_crit_edge ], [ -22, %entry.do.end46_crit_edge ], [ %call8.i.i110.lcssa.sink, %do.end46.sink.split ]
  %32 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.82, i32 noundef %ret.2130) #12
  br label %if.end47

if.end47:                                         ; preds = %do.end46, %out.if.end47_crit_edge
  %ret.2129 = phi i32 [ %ret.2130, %do.end46 ], [ %ret.1, %out.if.end47_crit_edge ]
  ret i32 %ret.2129
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !144, !145, !147, !148, !150, !151, !153, !154, !155, !157, !158, !160, !161, !163, !164, !165, !166, !168, !169, !171, !172, !173, !175, !177, !178, !179, !180, !181, !182, !183, !185, !186, !187, !189, !190}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @__initcall__kmod_pinctrl_abx500__294_1101_abx500_gpio_init1, !1, !"__initcall__kmod_pinctrl_abx500__294_1101_abx500_gpio_init1", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 1101, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 1090, i32 11}
!4 = !{ptr @abx500_gpio_driver, !5, !"abx500_gpio_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 1088, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 993, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @abx500_gpio_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @abx500_gpio_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 1009, i32 3}
!16 = !{ptr @abx500_gpio_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @abx500_gpio_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 1023, i32 3}
!20 = !{ptr @abx500_gpio_probe._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @abx500_gpio_probe._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 1028, i32 3}
!24 = !{ptr @abx500_gpio_probe._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @abx500_gpio_probe._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @abx500_gpio_probe.lock_key, !27, !"lock_key", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 1036, i32 8}
!28 = !{ptr @abx500_gpio_probe.request_key, !27, !"request_key", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 1038, i32 3}
!31 = !{ptr @abx500_gpio_probe._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @abx500_gpio_probe._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 1041, i32 2}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @abx500_gpio_probe._entry.18, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @abx500_gpio_probe._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 1048, i32 3}
!40 = !{ptr @abx500_gpio_probe._entry.22, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @abx500_gpio_probe._entry_ptr.24, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 1053, i32 2}
!44 = !{ptr @abx500_gpio_probe._entry.25, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @abx500_gpio_probe._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 1067, i32 2}
!48 = !{ptr @abx500_gpio_probe._entry.28, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @abx500_gpio_probe._entry_ptr.30, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @abx500gpio_chip, !51, !"abx500gpio_chip", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 526, i32 31}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 123, i32 3}
!54 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @abx500_gpio_set_bits._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @abx500_gpio_set_bits._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 195, i32 3}
!59 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @abx500_gpio_direction_output._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @abx500_gpio_direction_output._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 155, i32 3}
!64 = !{ptr @abx500_gpio_get._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @abx500_gpio_get._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 101, i32 3}
!68 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @abx500_gpio_get_bit._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @abx500_gpio_get_bit._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 169, i32 3}
!73 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @abx500_gpio_set._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @abx500_gpio_set._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 461, i32 22}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 462, i32 21}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 463, i32 21}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 464, i32 21}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 468, i32 30}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 469, i32 30}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 471, i32 28}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 479, i32 16}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 480, i32 21}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 481, i32 15}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 481, i32 23}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 489, i32 17}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 491, i32 52}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 491, i32 59}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 495, i32 16}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 495, i32 36}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 499, i32 3}
!110 = !{ptr @abx500_gpio_dbg_show_one._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @abx500_gpio_dbg_show_one._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 391, i32 3}
!114 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @abx500_get_mode._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @abx500_get_mode._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 398, i32 3}
!119 = !{ptr @abx500_get_mode._entry.59, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @abx500_get_mode._entry_ptr.61, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @abx500_get_mode._entry.62, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 441, i32 2}
!123 = !{ptr @abx500_get_mode._entry_ptr.63, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 932, i32 10}
!126 = !{ptr @abx500_pinctrl_desc, !127, !"abx500_pinctrl_desc", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 931, i32 28}
!128 = !{ptr @abx500_pinctrl_ops, !129, !"abx500_pinctrl_ops", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 826, i32 33}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 751, i32 36}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 755, i32 39}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 777, i32 39}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 732, i32 31}
!138 = !{ptr @abx500_pinmux_ops, !139, !"abx500_pinmux_ops", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 638, i32 32}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 580, i32 2}
!142 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @abx500_pmx_set.__UNIQUE_ID_ddebug290, !141, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 583, i32 3}
!147 = !{ptr @abx500_pmx_set.__UNIQUE_ID_ddebug291, !146, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!148 = !{ptr @abx500_pmx_set._entry, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 590, i32 3}
!150 = !{ptr @abx500_pmx_set._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 259, i32 3}
!153 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @abx500_set_mode.__UNIQUE_ID_ddebug288, !152, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!155 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 348, i32 3}
!157 = !{ptr @abx500_set_mode.__UNIQUE_ID_ddebug289, !156, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!158 = !{ptr @abx500_set_mode._entry, !159, !"_entry", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 354, i32 3}
!160 = !{ptr @abx500_set_mode._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 617, i32 3}
!163 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @abx500_gpio_request_enable._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @abx500_gpio_request_enable._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 621, i32 2}
!168 = !{ptr @abx500_gpio_request_enable.__UNIQUE_ID_ddebug292, !167, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 627, i32 3}
!171 = !{ptr @abx500_gpio_request_enable._entry.79, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @abx500_gpio_request_enable._entry_ptr.81, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @abx500_pinconf_ops, !174, !"abx500_pinconf_ops", i1 false, i1 false}
!174 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 925, i32 33}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 859, i32 3}
!177 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @abx500_pin_config_set.__UNIQUE_ID_ddebug293, !176, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!179 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 914, i32 4}
!185 = !{ptr @abx500_pin_config_set._entry, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @abx500_pin_config_set._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @abx500_pin_config_set._entry.89, !188, !"_entry", i1 false, i1 false}
!188 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 920, i32 3}
!189 = !{ptr @abx500_pin_config_set._entry_ptr.90, !188, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @abx500_gpio_match, !191, !"abx500_gpio_match", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/nomadik/pinctrl-abx500.c", i32 977, i32 34}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 1, !"min_enum_size", i32 4}
!194 = !{i32 8, !"branch-target-enforcement", i32 0}
!195 = !{i32 8, !"sign-return-address", i32 0}
!196 = !{i32 8, !"sign-return-address-all", i32 0}
!197 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!198 = !{i32 7, !"uwtable", i32 1}
!199 = !{i32 7, !"frame-pointer", i32 2}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!201 = !{!"auto-init"}
!202 = !{i64 2148717126, i64 2148717131, i64 2148717144, i64 2148717188, i64 2148717222, i64 2148717243}
