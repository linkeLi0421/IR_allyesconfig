; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-starfive.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-starfive.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pin_config_item = type { i32, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.starfive_pinctrl = type { %struct.gpio_chip, %struct.pinctrl_gpio_range, %struct.raw_spinlock, ptr, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pinctrl_map_mux = type { ptr, ptr }
%struct.group_desc = type { ptr, ptr, i32, ptr }

@__initcall__kmod_pinctrl_starfive__229_1350_starfive_pinctrl_driver_init6 = internal global ptr @starfive_pinctrl_driver_init, section ".initcall6.init", align 4
@starfive_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @starfive_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @starfive_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_starfive_pinctrl_driver_exit = internal global ptr @starfive_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description230 = internal constant [62 x i8] c"pinctrl_starfive.description=Pinctrl driver for StarFive SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [63 x i8] c"pinctrl_starfive.author=Emil Renner Berthing <kernel@esmil.dk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [55 x i8] c"pinctrl_starfive.file=drivers/pinctrl/pinctrl-starfive\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [32 x i8] c"pinctrl_starfive.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pinctrl-starfive\00", [47 x i8] zeroinitializer }, align 32
@starfive_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"starfive,jh7100-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"padctl\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"could not get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"could not get reset\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not deassert reset\0A\00", [38 x i8] zeroinitializer }, align 32
@starfive_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&sfp->lock\00", [21 x i8] zeroinitializer }, align 32
@starfive_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str, ptr @starfive_pins, i32 206, ptr @starfive_pinctrl_ops, ptr @starfive_pinmux_ops, ptr @starfive_pinconf_ops, ptr null, i32 1, ptr @starfive_pinconf_custom_params, ptr @starfive_pinconf_custom_conf_items, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not register pinctrl driver\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"starfive,signal-group\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid signal group %u\0A\00", [39 x i8] zeroinitializer }, align 32
@starfive_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.249, ptr null, ptr null, ptr null, ptr null, ptr @starfive_irq_ack, ptr @starfive_irq_mask, ptr @starfive_irq_mask_ack, ptr @starfive_irq_unmask, ptr null, ptr null, ptr null, ptr @starfive_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1 }, [56 x i8] zeroinitializer }, align 32
@starfive_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@starfive_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not register gpiochip\0A\00", [35 x i8] zeroinitializer }, align 32
@starfive_pins = internal constant { [206 x %struct.pinctrl_pin_desc], [632 x i8] } { [206 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.12, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.13, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.14, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.48, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.49, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.50, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.51, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.52, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.53, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.54, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.55, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.56, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.57, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.58, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.59, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.60, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.61, ptr null }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.62, ptr null }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.63, ptr null }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.64, ptr null }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.65, ptr null }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.66, ptr null }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.67, ptr null }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.68, ptr null }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.69, ptr null }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.70, ptr null }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.71, ptr null }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.72, ptr null }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.73, ptr null }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.74, ptr null }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.75, ptr null }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.76, ptr null }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.77, ptr null }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.78, ptr null }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.79, ptr null }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.80, ptr null }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.81, ptr null }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.82, ptr null }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.83, ptr null }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.84, ptr null }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.85, ptr null }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.86, ptr null }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.87, ptr null }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.88, ptr null }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.89, ptr null }, %struct.pinctrl_pin_desc { i32 78, ptr @.str.90, ptr null }, %struct.pinctrl_pin_desc { i32 79, ptr @.str.91, ptr null }, %struct.pinctrl_pin_desc { i32 80, ptr @.str.92, ptr null }, %struct.pinctrl_pin_desc { i32 81, ptr @.str.93, ptr null }, %struct.pinctrl_pin_desc { i32 82, ptr @.str.94, ptr null }, %struct.pinctrl_pin_desc { i32 83, ptr @.str.95, ptr null }, %struct.pinctrl_pin_desc { i32 84, ptr @.str.96, ptr null }, %struct.pinctrl_pin_desc { i32 85, ptr @.str.97, ptr null }, %struct.pinctrl_pin_desc { i32 86, ptr @.str.98, ptr null }, %struct.pinctrl_pin_desc { i32 87, ptr @.str.99, ptr null }, %struct.pinctrl_pin_desc { i32 88, ptr @.str.100, ptr null }, %struct.pinctrl_pin_desc { i32 89, ptr @.str.101, ptr null }, %struct.pinctrl_pin_desc { i32 90, ptr @.str.102, ptr null }, %struct.pinctrl_pin_desc { i32 91, ptr @.str.103, ptr null }, %struct.pinctrl_pin_desc { i32 92, ptr @.str.104, ptr null }, %struct.pinctrl_pin_desc { i32 93, ptr @.str.105, ptr null }, %struct.pinctrl_pin_desc { i32 94, ptr @.str.106, ptr null }, %struct.pinctrl_pin_desc { i32 95, ptr @.str.107, ptr null }, %struct.pinctrl_pin_desc { i32 96, ptr @.str.108, ptr null }, %struct.pinctrl_pin_desc { i32 97, ptr @.str.109, ptr null }, %struct.pinctrl_pin_desc { i32 98, ptr @.str.110, ptr null }, %struct.pinctrl_pin_desc { i32 99, ptr @.str.111, ptr null }, %struct.pinctrl_pin_desc { i32 100, ptr @.str.112, ptr null }, %struct.pinctrl_pin_desc { i32 101, ptr @.str.113, ptr null }, %struct.pinctrl_pin_desc { i32 102, ptr @.str.114, ptr null }, %struct.pinctrl_pin_desc { i32 103, ptr @.str.115, ptr null }, %struct.pinctrl_pin_desc { i32 104, ptr @.str.116, ptr null }, %struct.pinctrl_pin_desc { i32 105, ptr @.str.117, ptr null }, %struct.pinctrl_pin_desc { i32 106, ptr @.str.118, ptr null }, %struct.pinctrl_pin_desc { i32 107, ptr @.str.119, ptr null }, %struct.pinctrl_pin_desc { i32 108, ptr @.str.120, ptr null }, %struct.pinctrl_pin_desc { i32 109, ptr @.str.121, ptr null }, %struct.pinctrl_pin_desc { i32 110, ptr @.str.122, ptr null }, %struct.pinctrl_pin_desc { i32 111, ptr @.str.123, ptr null }, %struct.pinctrl_pin_desc { i32 112, ptr @.str.124, ptr null }, %struct.pinctrl_pin_desc { i32 113, ptr @.str.125, ptr null }, %struct.pinctrl_pin_desc { i32 114, ptr @.str.126, ptr null }, %struct.pinctrl_pin_desc { i32 115, ptr @.str.127, ptr null }, %struct.pinctrl_pin_desc { i32 116, ptr @.str.128, ptr null }, %struct.pinctrl_pin_desc { i32 117, ptr @.str.129, ptr null }, %struct.pinctrl_pin_desc { i32 118, ptr @.str.130, ptr null }, %struct.pinctrl_pin_desc { i32 119, ptr @.str.131, ptr null }, %struct.pinctrl_pin_desc { i32 120, ptr @.str.132, ptr null }, %struct.pinctrl_pin_desc { i32 121, ptr @.str.133, ptr null }, %struct.pinctrl_pin_desc { i32 122, ptr @.str.134, ptr null }, %struct.pinctrl_pin_desc { i32 123, ptr @.str.135, ptr null }, %struct.pinctrl_pin_desc { i32 124, ptr @.str.136, ptr null }, %struct.pinctrl_pin_desc { i32 125, ptr @.str.137, ptr null }, %struct.pinctrl_pin_desc { i32 126, ptr @.str.138, ptr null }, %struct.pinctrl_pin_desc { i32 127, ptr @.str.139, ptr null }, %struct.pinctrl_pin_desc { i32 128, ptr @.str.140, ptr null }, %struct.pinctrl_pin_desc { i32 129, ptr @.str.141, ptr null }, %struct.pinctrl_pin_desc { i32 130, ptr @.str.142, ptr null }, %struct.pinctrl_pin_desc { i32 131, ptr @.str.143, ptr null }, %struct.pinctrl_pin_desc { i32 132, ptr @.str.144, ptr null }, %struct.pinctrl_pin_desc { i32 133, ptr @.str.145, ptr null }, %struct.pinctrl_pin_desc { i32 134, ptr @.str.146, ptr null }, %struct.pinctrl_pin_desc { i32 135, ptr @.str.147, ptr null }, %struct.pinctrl_pin_desc { i32 136, ptr @.str.148, ptr null }, %struct.pinctrl_pin_desc { i32 137, ptr @.str.149, ptr null }, %struct.pinctrl_pin_desc { i32 138, ptr @.str.150, ptr null }, %struct.pinctrl_pin_desc { i32 139, ptr @.str.151, ptr null }, %struct.pinctrl_pin_desc { i32 140, ptr @.str.152, ptr null }, %struct.pinctrl_pin_desc { i32 141, ptr @.str.153, ptr null }, %struct.pinctrl_pin_desc { i32 142, ptr @.str.154, ptr null }, %struct.pinctrl_pin_desc { i32 143, ptr @.str.155, ptr null }, %struct.pinctrl_pin_desc { i32 144, ptr @.str.156, ptr null }, %struct.pinctrl_pin_desc { i32 145, ptr @.str.157, ptr null }, %struct.pinctrl_pin_desc { i32 146, ptr @.str.158, ptr null }, %struct.pinctrl_pin_desc { i32 147, ptr @.str.159, ptr null }, %struct.pinctrl_pin_desc { i32 148, ptr @.str.160, ptr null }, %struct.pinctrl_pin_desc { i32 149, ptr @.str.161, ptr null }, %struct.pinctrl_pin_desc { i32 150, ptr @.str.162, ptr null }, %struct.pinctrl_pin_desc { i32 151, ptr @.str.163, ptr null }, %struct.pinctrl_pin_desc { i32 152, ptr @.str.164, ptr null }, %struct.pinctrl_pin_desc { i32 153, ptr @.str.165, ptr null }, %struct.pinctrl_pin_desc { i32 154, ptr @.str.166, ptr null }, %struct.pinctrl_pin_desc { i32 155, ptr @.str.167, ptr null }, %struct.pinctrl_pin_desc { i32 156, ptr @.str.168, ptr null }, %struct.pinctrl_pin_desc { i32 157, ptr @.str.169, ptr null }, %struct.pinctrl_pin_desc { i32 158, ptr @.str.170, ptr null }, %struct.pinctrl_pin_desc { i32 159, ptr @.str.171, ptr null }, %struct.pinctrl_pin_desc { i32 160, ptr @.str.172, ptr null }, %struct.pinctrl_pin_desc { i32 161, ptr @.str.173, ptr null }, %struct.pinctrl_pin_desc { i32 162, ptr @.str.174, ptr null }, %struct.pinctrl_pin_desc { i32 163, ptr @.str.175, ptr null }, %struct.pinctrl_pin_desc { i32 164, ptr @.str.176, ptr null }, %struct.pinctrl_pin_desc { i32 165, ptr @.str.177, ptr null }, %struct.pinctrl_pin_desc { i32 166, ptr @.str.178, ptr null }, %struct.pinctrl_pin_desc { i32 167, ptr @.str.179, ptr null }, %struct.pinctrl_pin_desc { i32 168, ptr @.str.180, ptr null }, %struct.pinctrl_pin_desc { i32 169, ptr @.str.181, ptr null }, %struct.pinctrl_pin_desc { i32 170, ptr @.str.182, ptr null }, %struct.pinctrl_pin_desc { i32 171, ptr @.str.183, ptr null }, %struct.pinctrl_pin_desc { i32 172, ptr @.str.184, ptr null }, %struct.pinctrl_pin_desc { i32 173, ptr @.str.185, ptr null }, %struct.pinctrl_pin_desc { i32 174, ptr @.str.186, ptr null }, %struct.pinctrl_pin_desc { i32 175, ptr @.str.187, ptr null }, %struct.pinctrl_pin_desc { i32 176, ptr @.str.188, ptr null }, %struct.pinctrl_pin_desc { i32 177, ptr @.str.189, ptr null }, %struct.pinctrl_pin_desc { i32 178, ptr @.str.190, ptr null }, %struct.pinctrl_pin_desc { i32 179, ptr @.str.191, ptr null }, %struct.pinctrl_pin_desc { i32 180, ptr @.str.192, ptr null }, %struct.pinctrl_pin_desc { i32 181, ptr @.str.193, ptr null }, %struct.pinctrl_pin_desc { i32 182, ptr @.str.194, ptr null }, %struct.pinctrl_pin_desc { i32 183, ptr @.str.195, ptr null }, %struct.pinctrl_pin_desc { i32 184, ptr @.str.196, ptr null }, %struct.pinctrl_pin_desc { i32 185, ptr @.str.197, ptr null }, %struct.pinctrl_pin_desc { i32 186, ptr @.str.198, ptr null }, %struct.pinctrl_pin_desc { i32 187, ptr @.str.199, ptr null }, %struct.pinctrl_pin_desc { i32 188, ptr @.str.200, ptr null }, %struct.pinctrl_pin_desc { i32 189, ptr @.str.201, ptr null }, %struct.pinctrl_pin_desc { i32 190, ptr @.str.202, ptr null }, %struct.pinctrl_pin_desc { i32 191, ptr @.str.203, ptr null }, %struct.pinctrl_pin_desc { i32 192, ptr @.str.204, ptr null }, %struct.pinctrl_pin_desc { i32 193, ptr @.str.205, ptr null }, %struct.pinctrl_pin_desc { i32 194, ptr @.str.206, ptr null }, %struct.pinctrl_pin_desc { i32 195, ptr @.str.207, ptr null }, %struct.pinctrl_pin_desc { i32 196, ptr @.str.208, ptr null }, %struct.pinctrl_pin_desc { i32 197, ptr @.str.209, ptr null }, %struct.pinctrl_pin_desc { i32 198, ptr @.str.210, ptr null }, %struct.pinctrl_pin_desc { i32 199, ptr @.str.211, ptr null }, %struct.pinctrl_pin_desc { i32 200, ptr @.str.212, ptr null }, %struct.pinctrl_pin_desc { i32 201, ptr @.str.213, ptr null }, %struct.pinctrl_pin_desc { i32 202, ptr @.str.214, ptr null }, %struct.pinctrl_pin_desc { i32 203, ptr @.str.215, ptr null }, %struct.pinctrl_pin_desc { i32 204, ptr @.str.216, ptr null }, %struct.pinctrl_pin_desc { i32 205, ptr @.str.217, ptr null }], [632 x i8] zeroinitializer }, align 32
@starfive_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @pinctrl_generic_get_group_count, ptr @pinctrl_generic_get_group_name, ptr @pinctrl_generic_get_group_pins, ptr @starfive_pin_dbg_show, ptr @starfive_dt_node_to_map, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@starfive_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @pinmux_generic_get_function_count, ptr @pinmux_generic_get_function_name, ptr @pinmux_generic_get_function_groups, ptr @starfive_set_mux, ptr null, ptr null, ptr null, i8 1 }, [56 x i8] zeroinitializer }, align 32
@starfive_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @starfive_pinconf_get, ptr null, ptr @starfive_pinconf_group_get, ptr @starfive_pinconf_group_set, ptr @starfive_pinconf_dbg_show, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@starfive_pinconf_custom_params = internal constant { [1 x %struct.pinconf_generic_params], [20 x i8] } { [1 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.247, i32 128, i32 1 }], [20 x i8] zeroinitializer }, align 32
@starfive_pinconf_custom_conf_items = internal constant { [1 x %struct.pin_config_item], [16 x i8] } { [1 x %struct.pin_config_item] [%struct.pin_config_item { i32 128, ptr @.str.248, ptr null, i8 0 }], [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO[0]\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO[1]\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO[2]\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO[3]\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO[4]\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO[5]\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO[6]\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO[7]\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO[8]\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO[9]\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[10]\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[11]\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[12]\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[13]\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[14]\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[15]\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[16]\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[17]\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[18]\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[19]\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[20]\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[21]\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[22]\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[23]\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[24]\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[25]\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[26]\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[27]\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[28]\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[29]\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[30]\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[31]\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[32]\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[33]\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[34]\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[35]\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[36]\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[37]\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[38]\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[39]\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[40]\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[41]\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[42]\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[43]\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[44]\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[45]\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[46]\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[47]\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[48]\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[49]\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[50]\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[51]\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[52]\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[53]\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[54]\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[55]\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[56]\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[57]\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[58]\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[59]\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[60]\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[61]\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[62]\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO[63]\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FUNC_SHARE[0]\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FUNC_SHARE[1]\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FUNC_SHARE[2]\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FUNC_SHARE[3]\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FUNC_SHARE[4]\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FUNC_SHARE[5]\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FUNC_SHARE[6]\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FUNC_SHARE[7]\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FUNC_SHARE[8]\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FUNC_SHARE[9]\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[10]\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[11]\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[12]\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[13]\00", [17 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[14]\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[15]\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[16]\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[17]\00", [17 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[18]\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[19]\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[20]\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[21]\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[22]\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[23]\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[24]\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[25]\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[26]\00", [17 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[27]\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[28]\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[29]\00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[30]\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[31]\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[32]\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[33]\00", [17 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[34]\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[35]\00", [17 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[36]\00", [17 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[37]\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[38]\00", [17 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[39]\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[40]\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[41]\00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[42]\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[43]\00", [17 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[44]\00", [17 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[45]\00", [17 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[46]\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[47]\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[48]\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[49]\00", [17 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[50]\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[51]\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[52]\00", [17 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[53]\00", [17 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[54]\00", [17 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[55]\00", [17 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[56]\00", [17 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[57]\00", [17 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[58]\00", [17 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[59]\00", [17 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[60]\00", [17 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[61]\00", [17 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[62]\00", [17 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[63]\00", [17 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[64]\00", [17 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[65]\00", [17 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[66]\00", [17 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[67]\00", [17 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[68]\00", [17 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[69]\00", [17 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[70]\00", [17 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[71]\00", [17 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[72]\00", [17 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[73]\00", [17 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[74]\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[75]\00", [17 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[76]\00", [17 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[77]\00", [17 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[78]\00", [17 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[79]\00", [17 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[80]\00", [17 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[81]\00", [17 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[82]\00", [17 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[83]\00", [17 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[84]\00", [17 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[85]\00", [17 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[86]\00", [17 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[87]\00", [17 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[88]\00", [17 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[89]\00", [17 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[90]\00", [17 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[91]\00", [17 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[92]\00", [17 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[93]\00", [17 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[94]\00", [17 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[95]\00", [17 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[96]\00", [17 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[97]\00", [17 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[98]\00", [17 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUNC_SHARE[99]\00", [17 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[100]\00", [16 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[101]\00", [16 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[102]\00", [16 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[103]\00", [16 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[104]\00", [16 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[105]\00", [16 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[106]\00", [16 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[107]\00", [16 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[108]\00", [16 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[109]\00", [16 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[110]\00", [16 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[111]\00", [16 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[112]\00", [16 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[113]\00", [16 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[114]\00", [16 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[115]\00", [16 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[116]\00", [16 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[117]\00", [16 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[118]\00", [16 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[119]\00", [16 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[120]\00", [16 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[121]\00", [16 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[122]\00", [16 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[123]\00", [16 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[124]\00", [16 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[125]\00", [16 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[126]\00", [16 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[127]\00", [16 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[128]\00", [16 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[129]\00", [16 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[130]\00", [16 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[131]\00", [16 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[132]\00", [16 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[133]\00", [16 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[134]\00", [16 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[135]\00", [16 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[136]\00", [16 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[137]\00", [16 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[138]\00", [16 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[139]\00", [16 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[140]\00", [16 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUNC_SHARE[141]\00", [16 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dout=%lu%s doen=%lu%s\00", [42 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"r\00", [30 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.221 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pinmux\00", [25 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pins\00", [27 x i8] zeroinitializer }, align 32
@starfive_dt_node_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.224, ptr @.str.225, i32 497, ptr @.str.226, ptr @.str.227 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"invalid pinctrl group %pOFn.%pOFn: both pinmux and pins set\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"starfive_dt_node_to_map\00", [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/pinctrl/pinctrl-starfive.c\00", [61 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@starfive_dt_node_to_map._entry_ptr = internal global ptr @starfive_dt_node_to_map._entry, section ".printk_index", align 4
@starfive_dt_node_to_map._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.224, ptr @.str.225, i32 503, ptr @.str.226, ptr @.str.227 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"invalid pinctrl group %pOFn.%pOFn: neither pinmux nor pins set\0A\00", [32 x i8] zeroinitializer }, align 32
@starfive_dt_node_to_map._entry_ptr.230 = internal global ptr @starfive_dt_node_to_map._entry.228, section ".printk_index", align 4
@.str.231 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%pOFn.%pOFn\00", [20 x i8] zeroinitializer }, align 32
@starfive_dt_node_to_map._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.224, ptr @.str.225, i32 588, ptr @.str.226, ptr @.str.227 }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error adding group %s: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@starfive_dt_node_to_map._entry_ptr.234 = internal global ptr @starfive_dt_node_to_map._entry.232, section ".printk_index", align 4
@starfive_dt_node_to_map._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.224, ptr @.str.225, i32 597, ptr @.str.226, ptr @.str.227 }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error parsing pin config of group %s: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@starfive_dt_node_to_map._entry_ptr.237 = internal global ptr @starfive_dt_node_to_map._entry.235, section ".printk_index", align 4
@starfive_dt_node_to_map._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.224, ptr @.str.225, i32 612, ptr @.str.226, ptr @.str.227 }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error adding function %s: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@starfive_dt_node_to_map._entry_ptr.240 = internal global ptr @starfive_dt_node_to_map._entry.238, section ".printk_index", align 4
@starfive_set_mux.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.241, ptr @.str.242, ptr @.str.225, ptr @.str.243, i8 0, i8 -91, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.241 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pinctrl_starfive\00", [47 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"starfive_set_mux\00", [47 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"GPIO%u: dout=0x%x doen=0x%x din=0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@starfive_padctl_rmw.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.241, ptr @.str.244, ptr @.str.225, ptr @.str.245, i8 0, i8 -79, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.244 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"starfive_padctl_rmw\00", [44 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"padctl_rmw(%u, 0x%03x, 0x%03x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" (0x%03x)\00", [22 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"starfive,strong-pull-up\00", [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"input bias strong pull-up\00", [38 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"StarFive GPIO\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.250 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 3, i64 5, i64 8, i64 12, i64 14]
@__sancov_gen_cov_switch_values.251 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 3, i64 5, i64 9, i64 12, i64 14, i64 24, i64 128]
@__sancov_gen_cov_switch_values.252 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 3, i64 5, i64 9, i64 12, i64 14, i64 24, i64 128]
@__sancov_gen_cov_switch_values.253 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.254 = private unnamed_addr constant [24 x i8] c"starfive_pinctrl_driver\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1343, i32 31 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1346, i32 11 }
@___asan_gen_.260 = private unnamed_addr constant [18 x i8] c"starfive_of_match\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1337, i32 34 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1229, i32 58 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1233, i32 60 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1239, i32 43 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1243, i32 43 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1247, i32 34 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1260, i32 34 }
@___asan_gen_.281 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1264, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [14 x i8] c"starfive_desc\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 899, i32 28 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1268, i32 34 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1270, i32 42 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1272, i32 39 }
@___asan_gen_.299 = private unnamed_addr constant [18 x i8] c"starfive_irq_chip\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1166, i32 24 }
@___asan_gen_.302 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1329, i32 8 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1331, i32 34 }
@___asan_gen_.311 = private unnamed_addr constant [14 x i8] c"starfive_pins\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 238, i32 38 }
@___asan_gen_.314 = private unnamed_addr constant [21 x i8] c"starfive_pinctrl_ops\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 627, i32 33 }
@___asan_gen_.317 = private unnamed_addr constant [20 x i8] c"starfive_pinmux_ops\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 682, i32 32 }
@___asan_gen_.320 = private unnamed_addr constant [21 x i8] c"starfive_pinconf_ops\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 891, i32 33 }
@___asan_gen_.323 = private unnamed_addr constant [31 x i8] c"starfive_pinconf_custom_params\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 719, i32 44 }
@___asan_gen_.326 = private unnamed_addr constant [35 x i8] c"starfive_pinconf_custom_conf_items\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 724, i32 37 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 239, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 240, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 241, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 242, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 243, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 244, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 245, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 246, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 247, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 248, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 249, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 250, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 251, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 252, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 253, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 254, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 255, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 256, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 257, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 258, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 259, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 260, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 261, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 262, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 263, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 264, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 265, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 266, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 267, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 268, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 269, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 270, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 271, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 272, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 273, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 274, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 275, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 276, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 277, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 278, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 279, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 280, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 281, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 282, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 283, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 284, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 285, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 286, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 287, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 288, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 289, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 290, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 291, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 292, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 293, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 294, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 295, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 296, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 297, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 298, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 299, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 300, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 301, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 302, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 303, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 304, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 305, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 306, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 307, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 308, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 309, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 310, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 311, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 312, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 313, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 314, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 315, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 316, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 317, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 318, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 319, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 320, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 321, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 322, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 323, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 324, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 325, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 326, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 327, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 328, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 329, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 330, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 331, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 332, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 333, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 334, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 335, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 336, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 337, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 338, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 339, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 340, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 341, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 342, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 343, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 344, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 345, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 346, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 347, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 348, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 349, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 350, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 351, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 352, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 353, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 354, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 355, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 356, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 357, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 358, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 359, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 360, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 361, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 362, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 363, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 364, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 365, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 366, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 367, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 368, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 369, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 370, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 371, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 372, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 373, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 374, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 375, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 376, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 377, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 378, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 379, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 380, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 381, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 382, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 383, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 384, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 385, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 386, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 387, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 388, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 389, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 390, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 391, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 392, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 393, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 394, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 395, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 396, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 397, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 398, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 399, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 400, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 401, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 402, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 403, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 404, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 405, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 406, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 407, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 408, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 409, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 410, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 411, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 412, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 413, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 414, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 415, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 416, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 417, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 418, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 419, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 420, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 421, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 422, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 423, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 424, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 425, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 426, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 427, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 428, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 429, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 430, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 431, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 432, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 433, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 434, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 435, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 436, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 437, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 438, i32 2 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 439, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 440, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 441, i32 2 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 442, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 443, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 444, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 464, i32 16 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 465, i32 47 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 465, i32 53 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 492, i32 52 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 493, i32 52 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 496, i32 4 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 502, i32 4 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 529, i32 45 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 588, i32 4 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 596, i32 4 }
@___asan_gen_.1001 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 612, i32 3 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 661, i32 3 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 709, i32 2 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 885, i32 16 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 720, i32 4 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 725, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1032 = private constant [38 x i8] c"../drivers/pinctrl/pinctrl-starfive.c\00", align 1
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1032, i32 1167, i32 10 }
@llvm.compiler.used = appending global [272 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_starfive_pinctrl_driver_exit, ptr @__initcall__kmod_pinctrl_starfive__229_1350_starfive_pinctrl_driver_init6, ptr @starfive_dt_node_to_map._entry, ptr @starfive_dt_node_to_map._entry.228, ptr @starfive_dt_node_to_map._entry.232, ptr @starfive_dt_node_to_map._entry.235, ptr @starfive_dt_node_to_map._entry.238, ptr @starfive_dt_node_to_map._entry_ptr, ptr @starfive_dt_node_to_map._entry_ptr.230, ptr @starfive_dt_node_to_map._entry_ptr.234, ptr @starfive_dt_node_to_map._entry_ptr.237, ptr @starfive_dt_node_to_map._entry_ptr.240, ptr @starfive_pinctrl_driver_exit, ptr @starfive_pinctrl_driver, ptr @.str, ptr @starfive_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @starfive_probe.__key, ptr @.str.7, ptr @starfive_desc, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @starfive_irq_chip, ptr @starfive_probe.lock_key, ptr @starfive_probe.request_key, ptr @.str.11, ptr @starfive_pins, ptr @starfive_pinctrl_ops, ptr @starfive_pinmux_ops, ptr @starfive_pinconf_ops, ptr @starfive_pinconf_custom_params, ptr @starfive_pinconf_custom_conf_items, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.229, ptr @.str.231, ptr @.str.233, ptr @.str.236, ptr @.str.239, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249], section "llvm.metadata"
@0 = internal global [260 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_pins to i32), i32 2472, i32 3104, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_pinconf_custom_params to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_pinconf_custom_conf_items to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_dt_node_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_dt_node_to_map._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_dt_node_to_map._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_dt_node_to_map._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfive_dt_node_to_map._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @starfive_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @starfive_pinctrl_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @starfive_pinctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @starfive_pinctrl_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfive_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !532
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 440, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #8
  %base = getelementptr inbounds %struct.starfive_pinctrl, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #8
  %padctl = getelementptr inbounds %struct.starfive_pinctrl, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %padctl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %padctl, align 4
  %cmp.i217 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %cmp.i218 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i218, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call16 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %5, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %call.i219 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %cmp.i220 = icmp ugt ptr %call.i219, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call.i219 to i32
  %call26 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %6, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %call.i221 = tail call i32 @clk_prepare(ptr noundef %call16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %tobool.not.i = icmp eq i32 %call.i221, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end27.if.then30_crit_edge

if.end27.if.then30_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.end.i:                                         ; preds = %if.end27
  %call1.i = tail call i32 @clk_enable(ptr noundef %call16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end32, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call16) #8
  br label %if.then30

if.then30:                                        ; preds = %if.then3.i, %if.end27.if.then30_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i221, %if.end27.if.then30_crit_edge ]
  %call31 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %retval.0.i.ph, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end.i
  %call33 = tail call fastcc i32 @devm_add_action_or_reset(ptr noundef %dev1, ptr noundef %call16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %call37 = tail call i32 @reset_control_deassert(ptr noundef %call.i219) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %call40 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call37, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %parent, align 4
  %lock = getelementptr inbounds %struct.starfive_pinctrl, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @starfive_probe.__key, i16 noundef signext 2) #8
  %pctl = getelementptr inbounds %struct.starfive_pinctrl, ptr %call.i, i32 0, i32 5
  %call42 = tail call i32 @devm_pinctrl_register_and_init(ptr noundef %dev1, ptr noundef nonnull @starfive_desc, ptr noundef nonnull %call.i, ptr noundef %pctl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call42, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.9, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool48.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool48.not, label %if.then49, label %if.end46.if.end57_crit_edge

if.end46.if.end57_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then49:                                        ; preds = %if.end46
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp = icmp ugt i32 %12, 6
  br i1 %cmp, label %if.then50, label %do.body53

if.then50:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef -22, ptr noundef nonnull @.str.10, i32 noundef %12) #8
  br label %cleanup

do.body53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !533
  call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %padctl, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #8, !srcloc !534
  br label %if.end57

if.end57:                                         ; preds = %do.body53, %if.end46.if.end57_crit_edge
  %18 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %padctl, align 4
  %add.ptr59 = getelementptr i8, ptr %19, i32 416
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #8, !srcloc !535
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %value, align 4
  %23 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %if.end57.sw.epilog_crit_edge
    i32 2, label %sw.bb65
    i32 3, label %sw.bb68
    i32 4, label %if.end57.sw.bb71_crit_edge
    i32 5, label %if.end57.sw.bb71_crit_edge228
    i32 6, label %if.end57.sw.bb71_crit_edge229
  ]

if.end57.sw.bb71_crit_edge229:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb71

if.end57.sw.bb71_crit_edge228:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb71

if.end57.sw.bb71_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb71

if.end57.sw.epilog_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %pin_base = getelementptr inbounds %struct.starfive_pinctrl, ptr %call.i, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %pin_base to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 65536, ptr %pin_base, align 4
  br label %out_pinctrl_enable

sw.bb65:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end57.sw.bb71_crit_edge, %if.end57.sw.bb71_crit_edge228, %if.end57.sw.bb71_crit_edge229
  br label %sw.epilog

sw.default:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %call74 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef -22, ptr noundef nonnull @.str.10, i32 noundef %21) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb71, %sw.bb68, %sw.bb65, %if.end57.sw.epilog_crit_edge
  %.sink = phi i32 [ 64, %sw.bb71 ], [ 134, %sw.bb68 ], [ 136, %sw.bb65 ], [ 0, %if.end57.sw.epilog_crit_edge ]
  %pin_base73 = getelementptr inbounds %struct.starfive_pinctrl, ptr %call.i, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %pin_base73 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %pin_base73, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i222 = icmp eq ptr %27, null
  br i1 %tobool.not.i222, label %if.end.i223, label %sw.epilog.dev_name.exit_crit_edge

sw.epilog.dev_name.exit_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i223:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i223, %sw.epilog.dev_name.exit_crit_edge
  %retval.0.i224 = phi ptr [ %29, %if.end.i223 ], [ %27, %sw.epilog.dev_name.exit_crit_edge ]
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %retval.0.i224, ptr %call.i, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %owner, align 4
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @starfive_gpio_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 6
  %33 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @starfive_gpio_free, ptr %free, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 7
  %34 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @starfive_gpio_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %35 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @starfive_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %36 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @starfive_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %37 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @starfive_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %38 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @starfive_gpio_set, ptr %set, align 4
  %set_config = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 14
  %39 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @starfive_gpio_set_config, ptr %set_config, align 4
  %add_pin_ranges = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 18
  %40 = ptrtoint ptr %add_pin_ranges to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @starfive_gpio_add_pin_ranges, ptr %add_pin_ranges, align 4
  %base88 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %41 = ptrtoint ptr %base88 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %base88, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %42 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 64, ptr %ngpio, align 4
  store ptr %dev1, ptr @starfive_irq_chip, align 4
  %irq = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @starfive_irq_chip, ptr %irq, align 4
  %parent_handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 13
  %44 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @starfive_gpio_irq_handler, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 15
  %45 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %num_parents, align 4
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #8
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %46 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call5.i.i, ptr %parents, align 4
  %tobool104.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool104.not, label %dev_name.exit.cleanup_crit_edge, label %if.end106

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end106:                                        ; preds = %dev_name.exit
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %47 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %48 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @handle_bad_irq, ptr %handler, align 4
  %init_hw = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 20
  %49 = ptrtoint ptr %init_hw to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @starfive_gpio_init_hw, ptr %init_hw, align 4
  %call113 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.end106.cleanup_crit_edge, label %if.end116

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end116:                                        ; preds = %if.end106
  %50 = ptrtoint ptr %parents to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %parents, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call113, ptr %51, align 4
  %call122 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @starfive_probe.lock_key, ptr noundef nonnull @starfive_probe.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end116.out_pinctrl_enable_crit_edge, label %if.then124

if.end116.out_pinctrl_enable_crit_edge:           ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_pinctrl_enable

if.then124:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  %call125 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call122, ptr noundef nonnull @.str.11) #8
  br label %cleanup

out_pinctrl_enable:                               ; preds = %if.end116.out_pinctrl_enable_crit_edge, %sw.bb
  %53 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pctl, align 4
  %call128 = call i32 @pinctrl_enable(ptr noundef %54) #8
  br label %cleanup

cleanup:                                          ; preds = %out_pinctrl_enable, %if.then124, %if.end106.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %sw.default, %if.then50, %if.then44, %if.then39, %if.end32.cleanup_crit_edge, %if.then30, %if.then24, %if.then18, %if.then12, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %4, %if.then12 ], [ %call20, %if.then18 ], [ %call26, %if.then24 ], [ %call31, %if.then30 ], [ %call40, %if.then39 ], [ %call45, %if.then44 ], [ %call74, %sw.default ], [ %call125, %if.then124 ], [ %call128, %out_pinctrl_enable ], [ %call51, %if.then50 ], [ -12, %entry.cleanup_crit_edge ], [ %call33, %if.end32.cleanup_crit_edge ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ %call113, %if.end106.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @starfive_disable_clock, ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %data) #8
  tail call void @clk_unprepare(ptr noundef %data) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @starfive_disable_clock(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #8
  tail call void @clk_unprepare(ptr noundef %data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfive_gpio_request(ptr nocapture noundef readonly %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %gpio
  %call = tail call i32 @pinctrl_gpio_request(i32 noundef %add) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @starfive_gpio_free(ptr nocapture noundef readonly %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %gpio
  tail call void @pinctrl_gpio_free(i32 noundef %add) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfive_gpio_get_direction(ptr nocapture noundef readonly %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 84
  %mul = shl i32 %gpio, 3
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp ne i32 %2, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfive_gpio_direction_input(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %pin_base.i = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin_base.i, align 4
  %add.i = add i32 %3, %gpio
  %padctl.i = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 4
  %4 = ptrtoint ptr %padctl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padctl.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @starfive_padctl_rmw.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@starfive_gpio_direction_input, %starfive_padctl_rmw.exit)) #8
          to label %if.then.i [label %starfive_padctl_rmw.exit], !srcloc !537

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @starfive_padctl_rmw.__UNIQUE_ID_ddebug228, ptr noundef %7, ptr noundef nonnull @.str.245, i32 noundef %add.i, i32 noundef 192, i32 noundef 192) #8
  br label %starfive_padctl_rmw.exit

starfive_padctl_rmw.exit:                         ; preds = %if.then.i, %entry
  %add.ptr1 = getelementptr i8, ptr %1, i32 84
  %mul = shl i32 %gpio, 3
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %mul
  %rem.i = shl i32 %add.i, 4
  %mul1.i = and i32 %rem.i, 16
  %shl3.i = shl nuw nsw i32 192, %mul1.i
  %8 = shl i32 %add.i, 1
  %mul.i = and i32 %8, -4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %lock.i = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 2
  %call12.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !535
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %or.i = or i32 %10, %shl3.i
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #8, !srcloc !534
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call12.i) #8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 16777216) #8, !srcloc !534
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfive_gpio_direction_output(ptr noundef %gc, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 80
  %mul = shl i32 %gpio, 3
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %mul
  %add.ptr4 = getelementptr i8, ptr %1, i32 84
  %add.ptr6 = getelementptr i8, ptr %add.ptr4, i32 %mul
  %lock = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 2
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %value)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #8, !srcloc !534
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #8, !srcloc !534
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #8
  %pin_base.i = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pin_base.i, align 4
  %add.i = add i32 %4, %gpio
  %padctl.i = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 4
  %5 = ptrtoint ptr %padctl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %padctl.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @starfive_padctl_rmw.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@starfive_gpio_direction_output, %starfive_padctl_rmw.exit)) #8
          to label %if.then.i [label %starfive_padctl_rmw.exit], !srcloc !537

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @starfive_padctl_rmw.__UNIQUE_ID_ddebug228, ptr noundef %8, ptr noundef nonnull @.str.245, i32 noundef %add.i, i32 noundef 496, i32 noundef 32) #8
  br label %starfive_padctl_rmw.exit

starfive_padctl_rmw.exit:                         ; preds = %if.then.i, %entry
  %rem.i = shl i32 %add.i, 4
  %mul1.i = and i32 %rem.i, 16
  %shl3.i = shl nuw nsw i32 32, %mul1.i
  %shl.i = shl nuw nsw i32 496, %mul1.i
  %9 = shl i32 %add.i, 1
  %mul.i = and i32 %9, -4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %mul.i
  %call12.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !535
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %11, %neg.i
  %or.i = or i32 %and.i, %shl3.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #8, !srcloc !534
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfive_gpio_get(ptr nocapture noundef readonly %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 72
  %2 = lshr i32 %gpio, 3
  %mul = and i32 %2, 536870908
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %mul
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !535
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %rem = and i32 %gpio, 31
  %5 = lshr i32 %4, %rem
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @starfive_gpio_set(ptr noundef %gc, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 80
  %mul = shl i32 %gpio, 3
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %mul
  %lock = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 2
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %value)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #8, !srcloc !534
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfive_gpio_set_config(ptr noundef %gc, i32 noundef %gpio, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trunc = trunc i32 %config to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.250)
  switch i8 %trunc, label %sw.default [
    i8 1, label %entry.sw.epilog_crit_edge
    i8 3, label %sw.bb2
    i8 5, label %sw.bb3
    i8 8, label %entry.cleanup_crit_edge
    i8 12, label %sw.bb8
    i8 14, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %config)
  %cmp = icmp ult i32 %config, 256
  br i1 %cmp, label %sw.bb2.cleanup_crit_edge, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %config)
  %cmp4 = icmp ult i32 %config, 256
  br i1 %cmp4, label %sw.bb3.cleanup_crit_edge, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %config)
  %tobool.not = icmp ult i32 %config, 256
  %conv = select i1 %tobool.not, i32 0, i32 128
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %config)
  %tobool10.not = icmp ult i32 %config, 256
  %conv12 = select i1 %tobool10.not, i32 0, i32 64
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb8, %sw.bb3.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %value.0 = phi i32 [ %conv12, %sw.bb9 ], [ %conv, %sw.bb8 ], [ 32, %entry.sw.epilog_crit_edge ], [ 16, %sw.bb2.sw.epilog_crit_edge ], [ 0, %sw.bb3.sw.epilog_crit_edge ]
  %mask.0 = phi i32 [ 64, %sw.bb9 ], [ 128, %sw.bb8 ], [ 304, %entry.sw.epilog_crit_edge ], [ 304, %sw.bb2.sw.epilog_crit_edge ], [ 304, %sw.bb3.sw.epilog_crit_edge ]
  %pin_base.i = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 1, i32 4
  %1 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pin_base.i, align 4
  %add.i = add i32 %2, %gpio
  %padctl.i = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 4
  %3 = ptrtoint ptr %padctl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %padctl.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @starfive_padctl_rmw.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@starfive_gpio_set_config, %starfive_padctl_rmw.exit)) #8
          to label %if.then.i [label %starfive_padctl_rmw.exit], !srcloc !537

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @starfive_padctl_rmw.__UNIQUE_ID_ddebug228, ptr noundef %6, ptr noundef nonnull @.str.245, i32 noundef %add.i, i32 noundef %mask.0, i32 noundef %value.0) #8
  br label %starfive_padctl_rmw.exit

starfive_padctl_rmw.exit:                         ; preds = %if.then.i, %sw.epilog
  %rem.i = shl i32 %add.i, 4
  %mul1.i = and i32 %rem.i, 16
  %shl3.i = shl nuw nsw i32 %value.0, %mul1.i
  %shl.i = shl nuw nsw i32 %mask.0, %mul1.i
  %7 = shl i32 %add.i, 1
  %mul.i = and i32 %7, -4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %mul.i
  %lock.i = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 2
  %call12.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !535
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %neg.i = xor i32 %shl.i, -1
  %and.i22 = and i32 %9, %neg.i
  %or.i = or i32 %and.i22, %shl3.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #8, !srcloc !534
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call12.i) #8
  br label %cleanup

cleanup:                                          ; preds = %starfive_padctl_rmw.exit, %sw.default, %sw.bb3.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %sw.default ], [ 0, %starfive_padctl_rmw.exit ], [ -524, %sw.bb2.cleanup_crit_edge ], [ -524, %sw.bb3.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfive_gpio_add_pin_ranges(ptr noundef %gc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gc, align 4
  %gpios = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 1
  %name = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %name, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 19
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %base4 = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %base4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %base4, align 4
  %npins = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 64, ptr %npins, align 4
  %gc8 = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 1, i32 7
  %7 = ptrtoint ptr %gc8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %gc, ptr %gc8, align 4
  %pctl = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 5
  %8 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pctl, align 4
  tail call void @pinctrl_add_gpio_range(ptr noundef %9, ptr noundef %gpios) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @starfive_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %mis = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mis) #8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #8
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %irq_data4.i) #8
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %base = getelementptr inbounds %struct.starfive_pinctrl, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 64
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !535
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %mis to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %mis, align 4
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %mis, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call4)
  %cmp42 = icmp ult i32 %call4, 32
  br i1 %cmp42, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pin.043 = phi i32 [ %call4, %for.body.lr.ph ], [ %call6, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain, align 4
  %call5 = call i32 @generic_handle_domain_irq(ptr noundef %18, i32 noundef %pin.043) #8
  %add = add nuw nsw i32 %pin.043, 1
  %call6 = call i32 @_find_next_bit_be(ptr noundef nonnull %mis, i32 noundef 32, i32 noundef %add) #8
  %cmp = icmp ult i32 %call6, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %20, i32 68
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !535
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %mis to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %mis, align 4
  %call13 = call i32 @_find_next_bit_be(ptr noundef nonnull %mis, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call13)
  %cmp1544 = icmp ult i32 %call13, 32
  br i1 %cmp1544, label %for.body16.lr.ph, label %for.end.for.end25_crit_edge

for.end.for.end25_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.body16.lr.ph:                                 ; preds = %for.end
  %domain19 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.body16.lr.ph
  %pin.145 = phi i32 [ %call13, %for.body16.lr.ph ], [ %call24, %for.body16.for.body16_crit_edge ]
  %24 = ptrtoint ptr %domain19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %domain19, align 4
  %add20 = add nuw nsw i32 %pin.145, 32
  %call21 = call i32 @generic_handle_domain_irq(ptr noundef %25, i32 noundef %add20) #8
  %add23 = add nuw nsw i32 %pin.145, 1
  %call24 = call i32 @_find_next_bit_be(ptr noundef nonnull %mis, i32 noundef 32, i32 noundef %add23) #8
  %cmp15 = icmp ult i32 %call24, 32
  br i1 %cmp15, label %for.body16.for.body16_crit_edge, label %for.body16.for.end25_crit_edge

for.body16.for.end25_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body16

for.end25:                                        ; preds = %for.body16.for.end25_crit_edge, %for.end.for.end25_crit_edge
  %26 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i39 = icmp eq ptr %27, null
  br i1 %tobool.not.i39, label %if.else.i40, label %for.end25.chained_irq_exit.exit_crit_edge

for.end25.chained_irq_exit.exit_crit_edge:        ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i40:                                      ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %28 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i40, %for.end25.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %29, %if.else.i40 ], [ %27, %for.end25.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mis) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfive_gpio_init_hw(ptr nocapture noundef readonly %gc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.starfive_pinctrl, ptr %gc, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #8, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !539
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %3, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #8, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !540
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 -1) #8, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !541
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %7, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 -1) #8, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !542
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 16777216) #8, !srcloc !534
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_pins(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @starfive_pin_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pin_base.i = getelementptr inbounds %struct.starfive_pinctrl, ptr %call, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pin_base.i, align 4
  %sub.i = sub i32 %pin, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i)
  %cmp = icmp ugt i32 %sub.i, 63
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.starfive_pinctrl, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 80
  %mul = shl nuw nsw i32 %sub.i, 3
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !535
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %add.ptr6 = getelementptr i8, ptr %add.ptr2, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !535
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  %cond = select i1 %tobool.not, ptr @.str.220, ptr @.str.219
  %and10 = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool12.not = icmp sgt i32 %7, -1
  %cond13 = select i1 %tobool12.not, ptr @.str.220, ptr @.str.219
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.218, i32 noundef %and, ptr noundef nonnull %cond, i32 noundef %and10, ptr noundef nonnull %cond13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfive_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np, ptr nocapture noundef writeonly %maps, ptr nocapture noundef writeonly %num_maps) #2 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %call1 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #8
  %cmp.not322 = icmp eq ptr %call1, null
  br i1 %cmp.not322, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %nmaps.0325 = phi i32 [ %nmaps.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ngroups.0324 = phi i32 [ %add18, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %child.0323 = phi ptr [ %call20, %for.inc.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  %call.i = tail call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child.0323, ptr noundef nonnull @.str.221, i32 noundef 4) #8
  %call.i257 = tail call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child.0323, ptr noundef nonnull @.str.222, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp sgt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257)
  %cmp5 = icmp sgt i32 %call.i257, 0
  %or.cond = select i1 %cmp4, i1 %cmp5, i1 false
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.223, ptr noundef %np, ptr noundef nonnull %child.0323) #11
  tail call void @of_node_put(ptr noundef nonnull %child.0323) #8
  br label %cleanup137

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257)
  %cmp8 = icmp eq i32 %call.i257, 0
  %or.cond256 = select i1 %cmp6, i1 %cmp8, i1 false
  br i1 %or.cond256, label %do.end12, label %for.inc

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.229, ptr noundef %np, ptr noundef nonnull %child.0323) #11
  tail call void @of_node_put(ptr noundef nonnull %child.0323) #8
  br label %cleanup137

for.inc:                                          ; preds = %if.end
  %nmaps.1.v = select i1 %cmp4, i32 2, i32 1
  %nmaps.1 = add i32 %nmaps.1.v, %nmaps.0325
  %add18 = add i32 %ngroups.0324, 1
  %call20 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.0323) #8
  %cmp.not = icmp eq ptr %call20, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ngroups.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add18, %for.inc.for.end_crit_edge ]
  %nmaps.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %nmaps.1, %for.inc.for.end_crit_edge ]
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %ngroups.0.lcssa, i32 4) #8
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %for.end.cleanup137_crit_edge, label %devm_kcalloc.exit, !prof !543

for.end.cleanup137_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup137

devm_kcalloc.exit:                                ; preds = %for.end
  %4 = extractvalue { i32, i1 } %2, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %4, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup137_crit_edge, label %if.end23

devm_kcalloc.exit.cleanup137_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup137

if.end23:                                         ; preds = %devm_kcalloc.exit
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nmaps.0.lcssa, i32 28) #8
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %if.end23.cleanup137_crit_edge, label %if.end7.i.i, !prof !543

if.end23.cleanup137_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup137

if.end7.i.i:                                      ; preds = %if.end23
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #12
  %tobool25.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool25.not, label %if.end7.i.i.cleanup137_crit_edge, label %if.end27

if.end7.i.i.cleanup137_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup137

if.end27:                                         ; preds = %if.end7.i.i
  %call28 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #8
  %cmp30.not359 = icmp eq ptr %call28, null
  br i1 %cmp30.not359, label %if.end27.for.end127_crit_edge, label %for.body31.lr.ph

if.end27.for.end127_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end127

for.body31.lr.ph:                                 ; preds = %if.end27
  %pin_base.i = getelementptr inbounds %struct.starfive_pinctrl, ptr %call, i32 0, i32 1, i32 4
  br label %for.body31

for.body31:                                       ; preds = %for.inc125.for.body31_crit_edge, %for.body31.lr.ph
  %nmaps.3363 = phi i32 [ 0, %for.body31.lr.ph ], [ %nmaps.5, %for.inc125.for.body31_crit_edge ]
  %ngroups.2362 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc, %for.inc125.for.body31_crit_edge ]
  %child.1360 = phi ptr [ %call28, %for.body31.lr.ph ], [ %call126, %for.inc125.for.body31_crit_edge ]
  %call33 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %1, i32 noundef 3264, ptr noundef nonnull @.str.231, ptr noundef %np, ptr noundef nonnull %child.1360) #8
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %for.body31.put_child_crit_edge, label %if.end36

for.body31.put_child_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_child

if.end36:                                         ; preds = %for.body31
  %inc = add i32 %ngroups.2362, 1
  %arrayidx = getelementptr ptr, ptr %call5.i.i, i32 %ngroups.2362
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call33, ptr %arrayidx, align 4
  %call.i260 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child.1360, ptr noundef nonnull @.str.221, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260)
  %cmp38 = icmp sgt i32 %call.i260, 0
  br i1 %cmp38, label %if.then39, label %if.else67

if.then39:                                        ; preds = %if.end36
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i260, i32 4) #8
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.then39.put_child_crit_edge, label %devm_kcalloc.exit264, !prof !543

if.then39.put_child_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_child

devm_kcalloc.exit264:                             ; preds = %if.then39
  %11 = extractvalue { i32, i1 } %9, 0
  %call5.i.i261 = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %11, i32 noundef 3520) #8
  %tobool41.not = icmp eq ptr %call5.i.i261, null
  br i1 %tobool41.not, label %devm_kcalloc.exit264.put_child_crit_edge, label %devm_kcalloc.exit268

devm_kcalloc.exit264.put_child_crit_edge:         ; preds = %devm_kcalloc.exit264
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_child

devm_kcalloc.exit268:                             ; preds = %devm_kcalloc.exit264
  %call5.i.i265 = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %11, i32 noundef 3520) #8
  %tobool45.not = icmp eq ptr %call5.i.i265, null
  br i1 %tobool45.not, label %devm_kcalloc.exit268.put_child_crit_edge, label %if.end47

devm_kcalloc.exit268.put_child_crit_edge:         ; preds = %devm_kcalloc.exit268
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_child

if.end47:                                         ; preds = %devm_kcalloc.exit268
  %call.i269 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.1360, ptr noundef nonnull @.str.221, ptr noundef nonnull %call5.i.i265, i32 noundef %call.i260, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i269)
  %tobool49.not = icmp sgt i32 %call.i269, -1
  br i1 %tobool49.not, label %if.end47.for.body54_crit_edge, label %if.end47.put_child_crit_edge

if.end47.put_child_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_child

if.end47.for.body54_crit_edge:                    ; preds = %if.end47
  br label %for.body54

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %if.end47.for.body54_crit_edge
  %i.0330 = phi i32 [ %inc60, %for.body54.for.body54_crit_edge ], [ 0, %if.end47.for.body54_crit_edge ]
  %arrayidx55 = getelementptr i32, ptr %call5.i.i265, i32 %i.0330
  %12 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx55, align 4
  %and.i = and i32 %13, 63
  %14 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pin_base.i, align 4
  %add.i = add i32 %15, %and.i
  %arrayidx58 = getelementptr i32, ptr %call5.i.i261, i32 %i.0330
  %16 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %arrayidx58, align 4
  %inc60 = add nuw nsw i32 %i.0330, 1
  %exitcond395.not = icmp eq i32 %inc60, %call.i260
  br i1 %exitcond395.not, label %for.end61, label %for.body54.for.body54_crit_edge

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54

for.end61:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr %struct.pinctrl_map, ptr %call8.i.i, i32 %nmaps.3363, i32 2
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %type, align 4
  %18 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %np, align 4
  %data = getelementptr %struct.pinctrl_map, ptr %call8.i.i, i32 %nmaps.3363, i32 4
  %function = getelementptr inbounds %struct.pinctrl_map_mux, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %function, align 4
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call33, ptr %data, align 4
  %add66 = add i32 %nmaps.3363, 1
  br label %if.end91

if.else67:                                        ; preds = %if.end36
  %call.i270 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child.1360, ptr noundef nonnull @.str.222, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %cmp69 = icmp sgt i32 %call.i270, 0
  br i1 %cmp69, label %if.then70, label %if.else67.put_child_crit_edge

if.else67.put_child_crit_edge:                    ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_child

if.then70:                                        ; preds = %if.else67
  %22 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i270, i32 4) #8
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %if.then70.put_child_crit_edge, label %devm_kcalloc.exit274, !prof !543

if.then70.put_child_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_child

devm_kcalloc.exit274:                             ; preds = %if.then70
  %24 = extractvalue { i32, i1 } %22, 0
  %call5.i.i271 = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %24, i32 noundef 3520) #8
  %tobool72.not = icmp eq ptr %call5.i.i271, null
  br i1 %tobool72.not, label %devm_kcalloc.exit274.put_child_crit_edge, label %devm_kcalloc.exit274.for.body77_crit_edge

devm_kcalloc.exit274.for.body77_crit_edge:        ; preds = %devm_kcalloc.exit274
  br label %for.body77

devm_kcalloc.exit274.put_child_crit_edge:         ; preds = %devm_kcalloc.exit274
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_child

for.body77:                                       ; preds = %for.inc86.for.body77_crit_edge, %devm_kcalloc.exit274.for.body77_crit_edge
  %i.1328 = phi i32 [ %inc87, %for.inc86.for.body77_crit_edge ], [ 0, %devm_kcalloc.exit274.for.body77_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #8
  %25 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %v, align 4, !annotation !532
  %call78 = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.1360, ptr noundef nonnull @.str.222, i32 noundef %i.1328, ptr noundef nonnull %v) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %for.inc86, label %cleanup83

cleanup83:                                        ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #8
  br label %put_child

for.inc86:                                        ; preds = %for.body77
  %26 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %v, align 4
  %arrayidx82 = getelementptr i32, ptr %call5.i.i271, i32 %i.1328
  %28 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx82, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #8
  %inc87 = add nuw nsw i32 %i.1328, 1
  %exitcond.not = icmp eq i32 %inc87, %call.i270
  br i1 %exitcond.not, label %for.inc86.if.end91_crit_edge, label %for.inc86.for.body77_crit_edge

for.inc86.for.body77_crit_edge:                   ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body77

for.inc86.if.end91_crit_edge:                     ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.end91:                                         ; preds = %for.inc86.if.end91_crit_edge, %for.end61
  %pinmux.0 = phi ptr [ %call5.i.i265, %for.end61 ], [ null, %for.inc86.if.end91_crit_edge ]
  %pins.0 = phi ptr [ %call5.i.i261, %for.end61 ], [ %call5.i.i271, %for.inc86.if.end91_crit_edge ]
  %nmaps.4 = phi i32 [ %add66, %for.end61 ], [ %nmaps.3363, %for.inc86.if.end91_crit_edge ]
  %npins32.0 = phi i32 [ %call.i260, %for.end61 ], [ %call.i270, %for.inc86.if.end91_crit_edge ]
  %call92 = call i32 @pinctrl_generic_add_group(ptr noundef %pctldev, ptr noundef nonnull %call33, ptr noundef nonnull %pins.0, i32 noundef %npins32.0, ptr noundef %pinmux.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %do.end97, label %if.end98

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.233, ptr noundef nonnull %call33, i32 noundef %call92) #11
  br label %put_child

if.end98:                                         ; preds = %if.end91
  %data100 = getelementptr %struct.pinctrl_map, ptr %call8.i.i, i32 %nmaps.4, i32 4
  %configs = getelementptr inbounds %struct.pinctrl_map_configs, ptr %data100, i32 0, i32 1
  %num_configs = getelementptr inbounds %struct.pinctrl_map_configs, ptr %data100, i32 0, i32 2
  %call103 = call i32 @pinconf_generic_parse_dt_config(ptr noundef nonnull %child.1360, ptr noundef %pctldev, ptr noundef %configs, ptr noundef %num_configs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end109, label %do.end108

do.end108:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.236, ptr noundef nonnull %call33, i32 noundef %call103) #11
  br label %put_child

if.end109:                                        ; preds = %if.end98
  %29 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp113 = icmp eq i32 %30, 0
  br i1 %cmp113, label %if.end109.for.inc125_crit_edge, label %if.end115

if.end109.for.inc125_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc125

if.end115:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  %type117 = getelementptr %struct.pinctrl_map, ptr %call8.i.i, i32 %nmaps.4, i32 2
  %31 = ptrtoint ptr %type117 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %type117, align 4
  %32 = ptrtoint ptr %data100 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call33, ptr %data100, align 4
  %add120 = add i32 %nmaps.4, 1
  br label %for.inc125

for.inc125:                                       ; preds = %if.end115, %if.end109.for.inc125_crit_edge
  %nmaps.5 = phi i32 [ %add120, %if.end115 ], [ %nmaps.4, %if.end109.for.inc125_crit_edge ]
  %call126 = call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.1360) #8
  %cmp30.not = icmp eq ptr %call126, null
  br i1 %cmp30.not, label %for.inc125.for.end127_crit_edge, label %for.inc125.for.body31_crit_edge

for.inc125.for.body31_crit_edge:                  ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31

for.inc125.for.end127_crit_edge:                  ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end127

for.end127:                                       ; preds = %for.inc125.for.end127_crit_edge, %if.end27.for.end127_crit_edge
  %ngroups.2.lcssa = phi i32 [ 0, %if.end27.for.end127_crit_edge ], [ %inc, %for.inc125.for.end127_crit_edge ]
  %nmaps.3.lcssa = phi i32 [ 0, %if.end27.for.end127_crit_edge ], [ %nmaps.5, %for.inc125.for.end127_crit_edge ]
  %33 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %np, align 4
  %call129 = call i32 @pinmux_generic_add_function(ptr noundef %pctldev, ptr noundef %34, ptr noundef nonnull %call5.i.i, i32 noundef %ngroups.2.lcssa, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %do.end134, label %if.end136

do.end134:                                        ; preds = %for.end127
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %np, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.239, ptr noundef %36, i32 noundef %call129) #11
  br label %free_map

if.end136:                                        ; preds = %for.end127
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %maps to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i.i, ptr %maps, align 4
  %38 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %nmaps.3.lcssa, ptr %num_maps, align 4
  br label %cleanup137

put_child:                                        ; preds = %do.end108, %do.end97, %cleanup83, %devm_kcalloc.exit274.put_child_crit_edge, %if.then70.put_child_crit_edge, %if.else67.put_child_crit_edge, %if.end47.put_child_crit_edge, %devm_kcalloc.exit268.put_child_crit_edge, %devm_kcalloc.exit264.put_child_crit_edge, %if.then39.put_child_crit_edge, %for.body31.put_child_crit_edge
  %nmaps.5.ph = phi i32 [ %nmaps.3363, %cleanup83 ], [ %nmaps.4, %do.end108 ], [ %nmaps.4, %do.end97 ], [ %nmaps.3363, %if.end47.put_child_crit_edge ], [ %nmaps.3363, %if.then70.put_child_crit_edge ], [ %nmaps.3363, %if.then39.put_child_crit_edge ], [ %nmaps.3363, %for.body31.put_child_crit_edge ], [ %nmaps.3363, %devm_kcalloc.exit264.put_child_crit_edge ], [ %nmaps.3363, %devm_kcalloc.exit268.put_child_crit_edge ], [ %nmaps.3363, %devm_kcalloc.exit274.put_child_crit_edge ], [ %nmaps.3363, %if.else67.put_child_crit_edge ]
  %ret.0.ph = phi i32 [ %call78, %cleanup83 ], [ %call103, %do.end108 ], [ %call92, %do.end97 ], [ -22, %if.else67.put_child_crit_edge ], [ -12, %devm_kcalloc.exit274.put_child_crit_edge ], [ -12, %devm_kcalloc.exit268.put_child_crit_edge ], [ -12, %devm_kcalloc.exit264.put_child_crit_edge ], [ -12, %for.body31.put_child_crit_edge ], [ -12, %if.then39.put_child_crit_edge ], [ -12, %if.then70.put_child_crit_edge ], [ %call.i269, %if.end47.put_child_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.1360) #8
  br label %free_map

free_map:                                         ; preds = %put_child, %do.end134
  %nmaps.6 = phi i32 [ %nmaps.5.ph, %put_child ], [ %nmaps.3.lcssa, %do.end134 ]
  %ret.1 = phi i32 [ %ret.0.ph, %put_child ], [ %call129, %do.end134 ]
  call void @pinctrl_utils_free_map(ptr noundef %pctldev, ptr noundef nonnull %call8.i.i, i32 noundef %nmaps.6) #8
  br label %cleanup137

cleanup137:                                       ; preds = %free_map, %if.end136, %if.end7.i.i.cleanup137_crit_edge, %if.end23.cleanup137_crit_edge, %devm_kcalloc.exit.cleanup137_crit_edge, %for.end.cleanup137_crit_edge, %do.end12, %do.end
  %retval.2 = phi i32 [ %ret.1, %free_map ], [ 0, %if.end136 ], [ -12, %devm_kcalloc.exit.cleanup137_crit_edge ], [ -12, %if.end7.i.i.cleanup137_crit_edge ], [ -22, %do.end ], [ -22, %do.end12 ], [ -12, %for.end.cleanup137_crit_edge ], [ -12, %if.end23.cleanup137_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_add_group(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_add_function(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_groups(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfive_set_mux(ptr noundef %pctldev, i32 noundef %fsel, i32 noundef %gsel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %call1 = tail call ptr @pinctrl_generic_get_group(ptr noundef %pctldev, i32 noundef %gsel) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.group_desc, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %num_pins = getelementptr inbounds %struct.group_desc, ptr %call1, i32 0, i32 2
  %4 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp73.not = icmp eq i32 %5, 0
  br i1 %cmp73.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %base = getelementptr inbounds %struct.starfive_pinctrl, ptr %call, i32 0, i32 3
  %lock = getelementptr inbounds %struct.starfive_pinctrl, ptr %call, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.body34.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body34.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %3, i32 %i.074
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %7, 63
  %8 = and i32 %7, -16777088
  %and.i68 = shl i32 %7, 25
  %shl.i = and i32 %and.i68, -2147483648
  %shr.i = lshr i32 %7, 16
  %and1.i = and i32 %shr.i, 255
  %or.i = or i32 %shl.i, %and1.i
  %shr.i69 = lshr i32 %7, 8
  %and.i70 = and i32 %shr.i69, 255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @starfive_set_mux.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@starfive_set_mux, %do.end)) #8
          to label %if.then11 [label %do.end], !srcloc !537

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @starfive_set_mux.__UNIQUE_ID_ddebug227, ptr noundef %1, ptr noundef nonnull @.str.243, i32 noundef %and.i, i32 noundef %9, i32 noundef %or.i, i32 noundef %and.i70) #8
  br label %do.end

do.end:                                           ; preds = %if.then11, %for.body
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 80
  %mul = shl nuw nsw i32 %and.i, 3
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 %mul
  %add.ptr15 = getelementptr i8, ptr %11, i32 84
  %add.ptr17 = getelementptr i8, ptr %add.ptr15, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i70)
  %cmp18.not = icmp eq i32 %and.i70, 255
  %add.ptr21 = getelementptr i8, ptr %11, i32 592
  %mul22 = shl nuw nsw i32 %and.i70, 2
  %add.ptr23 = getelementptr i8, ptr %add.ptr21, i32 %mul22
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %8) #8, !srcloc !534
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %12) #8, !srcloc !534
  %tobool31.not72 = icmp eq ptr %add.ptr23, null
  %tobool31.not = select i1 %cmp18.not, i1 true, i1 %tobool31.not72
  br i1 %tobool31.not, label %do.end.do.body34_crit_edge, label %if.then32

do.end.do.body34_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

if.then32:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %add = shl nuw nsw i32 %and.i, 24
  %13 = add nuw nsw i32 %add, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %add.ptr23, i32 %13) #8, !srcloc !534
  br label %do.body34

do.body34:                                        ; preds = %if.then32, %do.end.do.body34_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call28) #8
  %inc = add nuw i32 %i.074, 1
  %14 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_pins, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %do.body34.for.body_crit_edge, label %do.body34.cleanup_crit_edge

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body34.for.body_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %do.body34.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.body34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfive_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %padctl.i = getelementptr inbounds %struct.starfive_pinctrl, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %padctl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %padctl.i, align 4
  %4 = shl i32 %pin, 1
  %mul.i = and i32 %4, -4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %mul.i
  %rem.i = shl i32 %pin, 4
  %mul1.i = and i32 %rem.i, 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !535
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %shr.i = lshr i32 %6, %mul1.i
  %conv.i = trunc i32 %shr.i to i16
  %trunc = trunc i32 %1 to i8
  %7 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.251)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 3, label %sw.bb3
    i8 5, label %sw.bb8
    i8 9, label %sw.bb13
    i8 12, label %sw.bb22
    i8 14, label %sw.bb29
    i8 24, label %sw.bb36
    i8 -128, label %sw.bb43
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = and i16 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool = icmp ne i16 %8, 0
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = and i16 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool6 = icmp ne i16 %9, 0
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = and i16 %conv.i, 304
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool11.not = icmp eq i16 %10, 0
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = and i16 %conv.i, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool16 = icmp ne i16 %11, 0
  %narrow = mul nuw nsw i16 %11, 7
  %narrow82 = add nuw nsw i16 %narrow, 14
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = and i16 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool25 = icmp ne i16 %12, 0
  %.lobit79 = lshr exact i16 %12, 7
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = and i16 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool32 = icmp ne i16 %13, 0
  %.lobit = lshr exact i16 %13, 6
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = and i16 %conv.i, 3584
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool39 = icmp ne i16 %14, 0
  %15 = lshr exact i16 %14, 9
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = and i16 %conv.i, 256
  %.lobit71 = lshr exact i16 %16, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %extract.t = icmp ne i16 %16, 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb36, %sw.bb29, %sw.bb22, %sw.bb13, %sw.bb8, %sw.bb3, %sw.bb
  %enabled.0.off0 = phi i1 [ %extract.t, %sw.bb43 ], [ %tobool39, %sw.bb36 ], [ %tobool32, %sw.bb29 ], [ %tobool25, %sw.bb22 ], [ %tobool16, %sw.bb13 ], [ %tobool11.not, %sw.bb8 ], [ %tobool6, %sw.bb3 ], [ %tobool, %sw.bb ]
  %arg.0.shrunk = phi i16 [ %.lobit71, %sw.bb43 ], [ %15, %sw.bb36 ], [ %.lobit, %sw.bb29 ], [ %.lobit79, %sw.bb22 ], [ %narrow82, %sw.bb13 ], [ 1, %sw.bb8 ], [ 1, %sw.bb3 ], [ 0, %sw.bb ]
  %arg.0 = zext i16 %arg.0.shrunk to i32
  %shl.i = shl nuw nsw i32 %arg.0, 8
  %or.i = or i32 %shl.i, %and.i
  %17 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %config, align 4
  %cond = select i1 %enabled.0.off0, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %sw.epilog ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfive_pinconf_group_get(ptr noundef %pctldev, i32 noundef %gsel, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_generic_get_group(ptr noundef %pctldev, i32 noundef %gsel) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pins = getelementptr inbounds %struct.group_desc, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call1 = tail call i32 @starfive_pinconf_get(ptr noundef %pctldev, i32 noundef %3, ptr noundef %config)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfive_pinconf_group_set(ptr noundef %pctldev, i32 noundef %gsel, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %call1 = tail call ptr @pinctrl_generic_get_group(ptr noundef %pctldev, i32 noundef %gsel) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup105_crit_edge, label %for.cond.preheader

entry.cleanup105_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp157.not = icmp eq i32 %num_configs, 0
  br i1 %cmp157.not, label %for.cond.preheader.for.cond97.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond97.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond97.preheader

for.cond97.preheader:                             ; preds = %for.inc.for.cond97.preheader_crit_edge, %for.cond.preheader.for.cond97.preheader_crit_edge
  %mask.0.lcssa = phi i16 [ 0, %for.cond.preheader.for.cond97.preheader_crit_edge ], [ %mask.2.ph, %for.inc.for.cond97.preheader_crit_edge ]
  %value.0.lcssa = phi i16 [ 0, %for.cond.preheader.for.cond97.preheader_crit_edge ], [ %value.2.ph, %for.inc.for.cond97.preheader_crit_edge ]
  %num_pins = getelementptr inbounds %struct.group_desc, ptr %call1, i32 0, i32 2
  %0 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp98162 = icmp sgt i32 %1, 0
  br i1 %cmp98162, label %for.body100.lr.ph, label %for.cond97.preheader.cleanup105_crit_edge

for.cond97.preheader.cleanup105_crit_edge:        ; preds = %for.cond97.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

for.body100.lr.ph:                                ; preds = %for.cond97.preheader
  %pins = getelementptr inbounds %struct.group_desc, ptr %call1, i32 0, i32 1
  %padctl.i = getelementptr inbounds %struct.starfive_pinctrl, ptr %call, i32 0, i32 4
  %conv.i147 = zext i16 %mask.0.lcssa to i32
  %conv2.i = zext i16 %value.0.lcssa to i32
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.starfive_pinctrl, ptr %call, i32 0, i32 2
  br label %for.body100

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0160 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %value.0159 = phi i16 [ %value.2.ph, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mask.0158 = phi i16 [ %mask.2.ph, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0160
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %shr.i = lshr i32 %3, 8
  %trunc = trunc i32 %3 to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.252)
  switch i8 %trunc, label %for.body.cleanup105_crit_edge [
    i8 1, label %sw.bb
    i8 3, label %sw.bb9
    i8 5, label %sw.bb21
    i8 9, label %sw.bb32
    i8 12, label %sw.bb42
    i8 14, label %sw.bb55
    i8 24, label %sw.bb69
    i8 -128, label %sw.bb78
  ]

for.body.cleanup105_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = or i16 %mask.0158, 304
  %6 = and i16 %value.0159, -305
  %7 = or i16 %6, 32
  br label %for.inc

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %cmp10 = icmp ult i32 %3, 256
  br i1 %cmp10, label %sw.bb9.cleanup105_crit_edge, label %if.end13

sw.bb9.cleanup105_crit_edge:                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

if.end13:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %8 = or i16 %mask.0158, 304
  %9 = and i16 %value.0159, -305
  %10 = or i16 %9, 16
  br label %for.inc

sw.bb21:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %cmp22 = icmp ult i32 %3, 256
  br i1 %cmp22, label %sw.bb21.cleanup105_crit_edge, label %if.end25

sw.bb21.cleanup105_crit_edge:                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

if.end25:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  %11 = or i16 %mask.0158, 304
  %12 = and i16 %value.0159, -305
  br label %for.inc

sw.bb32:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = or i16 %mask.0158, 15
  %14 = and i16 %value.0159, -16
  %15 = tail call i32 @llvm.umax.i32(i32 %shr.i, i32 14) #8
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 63) #8
  %17 = trunc i32 %16 to i8
  %div.lhs.trunc.i = add nsw i8 %17, -14
  %div11.i = udiv i8 %div.lhs.trunc.i, 7
  %conv.i = zext i8 %div11.i to i16
  %or40146 = or i16 %14, %conv.i
  br label %for.inc

sw.bb42:                                          ; preds = %for.body
  %18 = or i16 %mask.0158, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %tobool46.not = icmp ult i32 %3, 256
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #10
  %19 = or i16 %value.0159, 128
  br label %for.inc

if.else:                                          ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #10
  %20 = and i16 %value.0159, -129
  br label %for.inc

sw.bb55:                                          ; preds = %for.body
  %21 = or i16 %mask.0158, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %tobool59.not = icmp ult i32 %3, 256
  br i1 %tobool59.not, label %if.else64, label %if.then60

if.then60:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  %22 = or i16 %value.0159, 64
  br label %for.inc

if.else64:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  %23 = and i16 %value.0159, -65
  br label %for.inc

sw.bb69:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %24 = or i16 %mask.0158, 3584
  %25 = and i16 %value.0159, -3585
  %call4.tr = trunc i32 %shr.i to i16
  %26 = shl i16 %call4.tr, 9
  %27 = and i16 %26, 3584
  %conv77 = or i16 %27, %25
  br label %for.inc

sw.bb78:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %tobool79.not = icmp ult i32 %3, 256
  br i1 %tobool79.not, label %if.else88, label %if.then80

if.then80:                                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #10
  %28 = or i16 %mask.0158, 304
  %29 = and i16 %value.0159, -305
  %30 = or i16 %29, 256
  br label %for.inc

if.else88:                                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #10
  %31 = or i16 %mask.0158, 256
  %32 = and i16 %value.0159, -257
  br label %for.inc

for.inc:                                          ; preds = %if.else88, %if.then80, %sw.bb69, %if.else64, %if.then60, %if.else, %if.then47, %sw.bb32, %if.end25, %if.end13, %sw.bb
  %mask.2.ph = phi i16 [ %5, %sw.bb ], [ %8, %if.end13 ], [ %11, %if.end25 ], [ %13, %sw.bb32 ], [ %18, %if.else ], [ %18, %if.then47 ], [ %21, %if.else64 ], [ %21, %if.then60 ], [ %24, %sw.bb69 ], [ %31, %if.else88 ], [ %28, %if.then80 ]
  %value.2.ph = phi i16 [ %7, %sw.bb ], [ %10, %if.end13 ], [ %12, %if.end25 ], [ %or40146, %sw.bb32 ], [ %20, %if.else ], [ %19, %if.then47 ], [ %23, %if.else64 ], [ %22, %if.then60 ], [ %conv77, %sw.bb69 ], [ %32, %if.else88 ], [ %30, %if.then80 ]
  %inc = add nuw i32 %i.0160, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.for.cond97.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.cond97.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond97.preheader

for.body100:                                      ; preds = %starfive_padctl_rmw.exit.for.body100_crit_edge, %for.body100.lr.ph
  %i.1163 = phi i32 [ 0, %for.body100.lr.ph ], [ %inc103, %starfive_padctl_rmw.exit.for.body100_crit_edge ]
  %33 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pins, align 4
  %arrayidx101 = getelementptr i32, ptr %34, i32 %i.1163
  %35 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx101, align 4
  %37 = ptrtoint ptr %padctl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %padctl.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @starfive_padctl_rmw.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@starfive_pinconf_group_set, %starfive_padctl_rmw.exit)) #8
          to label %if.then.i [label %starfive_padctl_rmw.exit], !srcloc !537

if.then.i:                                        ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @starfive_padctl_rmw.__UNIQUE_ID_ddebug228, ptr noundef %40, ptr noundef nonnull @.str.245, i32 noundef %36, i32 noundef %conv.i147, i32 noundef %conv2.i) #8
  br label %starfive_padctl_rmw.exit

starfive_padctl_rmw.exit:                         ; preds = %if.then.i, %for.body100
  %rem.i = shl i32 %36, 4
  %mul1.i = and i32 %rem.i, 16
  %shl3.i = shl nuw i32 %conv2.i, %mul1.i
  %shl.i = shl nuw i32 %conv.i147, %mul1.i
  %41 = shl i32 %36, 1
  %mul.i = and i32 %41, -4
  %add.ptr.i = getelementptr i8, ptr %38, i32 %mul.i
  %call12.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !535
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  %neg.i = xor i32 %shl.i, -1
  %and.i148 = and i32 %43, %neg.i
  %or.i = or i32 %and.i148, %shl3.i
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %44) #8, !srcloc !534
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call12.i) #8
  %inc103 = add nuw nsw i32 %i.1163, 1
  %45 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_pins, align 4
  %cmp98 = icmp slt i32 %inc103, %46
  br i1 %cmp98, label %starfive_padctl_rmw.exit.for.body100_crit_edge, label %starfive_padctl_rmw.exit.cleanup105_crit_edge

starfive_padctl_rmw.exit.cleanup105_crit_edge:    ; preds = %starfive_padctl_rmw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

starfive_padctl_rmw.exit.for.body100_crit_edge:   ; preds = %starfive_padctl_rmw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body100

cleanup105:                                       ; preds = %starfive_padctl_rmw.exit.cleanup105_crit_edge, %sw.bb21.cleanup105_crit_edge, %sw.bb9.cleanup105_crit_edge, %for.body.cleanup105_crit_edge, %for.cond97.preheader.cleanup105_crit_edge, %entry.cleanup105_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup105_crit_edge ], [ 0, %for.cond97.preheader.cleanup105_crit_edge ], [ 0, %starfive_padctl_rmw.exit.cleanup105_crit_edge ], [ -524, %for.body.cleanup105_crit_edge ], [ -524, %sw.bb21.cleanup105_crit_edge ], [ -524, %sw.bb9.cleanup105_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @starfive_pinconf_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %padctl.i = getelementptr inbounds %struct.starfive_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %padctl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %padctl.i, align 4
  %2 = shl i32 %pin, 1
  %mul.i = and i32 %2, -4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %rem.i = shl i32 %pin, 4
  %mul1.i = and i32 %rem.i, 16
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !535
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %shr.i = lshr i32 %4, %mul1.i
  %conv = and i32 %shr.i, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.246, i32 noundef %conv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @starfive_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %base = getelementptr inbounds %struct.starfive_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 48
  %6 = lshr i32 %3, 3
  %mul = and i32 %6, 536870908
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %lock = getelementptr inbounds %struct.starfive_pinctrl, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %shl)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %7) #8, !srcloc !534
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @starfive_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %base = getelementptr inbounds %struct.starfive_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 40
  %6 = lshr i32 %3, 3
  %mul = and i32 %6, 536870908
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %lock = getelementptr inbounds %struct.starfive_pinctrl, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !535
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %neg = xor i32 %shl, -1
  %and = and i32 %8, %neg
  %9 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %9) #8, !srcloc !534
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @starfive_irq_mask_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %base = getelementptr inbounds %struct.starfive_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 40
  %6 = lshr i32 %3, 3
  %mul = and i32 %6, 536870908
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %add.ptr4 = getelementptr i8, ptr %5, i32 48
  %add.ptr7 = getelementptr i8, ptr %add.ptr4, i32 %mul
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %lock = getelementptr inbounds %struct.starfive_pinctrl, ptr %1, i32 0, i32 2
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !535
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %neg = xor i32 %shl, -1
  %and = and i32 %8, %neg
  %9 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %9) #8, !srcloc !534
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %10) #8, !srcloc !534
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @starfive_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %base = getelementptr inbounds %struct.starfive_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 40
  %6 = lshr i32 %3, 3
  %mul = and i32 %6, 536870908
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %lock = getelementptr inbounds %struct.starfive_pinctrl, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !535
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %or = or i32 %8, %shl
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %9) #8, !srcloc !534
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfive_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %trigger) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %base2 = getelementptr inbounds %struct.starfive_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base2, align 4
  %6 = lshr i32 %3, 3
  %mul = and i32 %6, 536870908
  %add.ptr = getelementptr i8, ptr %5, i32 %mul
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %7 = zext i32 %trigger to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %trigger, label %entry.cleanup_crit_edge [
    i32 1, label %entry.do.body_crit_edge
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %entry.if.else_crit_edge
    i32 8, label %sw.bb6
  ]

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %sw.bb6, %entry.if.else_crit_edge
  %polarity.0 = phi i32 [ 0, %sw.bb6 ], [ %shl, %entry.if.else_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %if.else, %sw.bb4, %sw.bb3, %entry.do.body_crit_edge
  %handle_edge_irq.sink = phi ptr [ @handle_level_irq, %if.else ], [ @handle_edge_irq, %entry.do.body_crit_edge ], [ @handle_edge_irq, %sw.bb4 ], [ @handle_edge_irq, %sw.bb3 ]
  %irq_type.080 = phi i32 [ 0, %if.else ], [ %shl, %entry.do.body_crit_edge ], [ %shl, %sw.bb4 ], [ %shl, %sw.bb3 ]
  %edge_both.078 = phi i32 [ 0, %if.else ], [ 0, %entry.do.body_crit_edge ], [ %shl, %sw.bb4 ], [ 0, %sw.bb3 ]
  %polarity.076 = phi i32 [ %polarity.0, %if.else ], [ %shl, %entry.do.body_crit_edge ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ]
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %8 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %handle_edge_irq.sink, ptr %handle_irq.i, align 4
  %lock = getelementptr inbounds %struct.starfive_pinctrl, ptr %1, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !535
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %neg = xor i32 %shl, -1
  %and11 = and i32 %12, %neg
  %or = or i32 %and11, %irq_type.080
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %13) #8, !srcloc !534
  %add.ptr14 = getelementptr i8, ptr %add.ptr, i32 24
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #8, !srcloc !535
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %and18 = and i32 %15, %neg
  %or19 = or i32 %and18, %edge_both.078
  %16 = tail call i32 @llvm.bswap.i32(i32 %or19)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %16) #8, !srcloc !534
  %add.ptr22 = getelementptr i8, ptr %add.ptr, i32 32
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #8, !srcloc !535
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %and26 = and i32 %18, %neg
  %or27 = or i32 %and26, %polarity.076
  %19 = tail call i32 @llvm.bswap.i32(i32 %or27)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %19) #8, !srcloc !534
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 260)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 260)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !471, !472, !473, !474, !475, !476, !478, !479, !480, !482, !484, !485, !486, !488, !489, !490, !492, !493, !494, !496, !498, !499, !500, !501, !503, !505, !506, !507, !509, !511, !513, !515, !517, !519, !521}
!llvm.module.flags = !{!523, !524, !525, !526, !527, !528, !529, !530}
!llvm.ident = !{!531}

!0 = !{ptr @__initcall__kmod_pinctrl_starfive__229_1350_starfive_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_starfive__229_1350_starfive_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1350, i32 1}
!2 = !{ptr @__exitcall_starfive_pinctrl_driver_exit, !1, !"__exitcall_starfive_pinctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description230, !4, !"__UNIQUE_ID_description230", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1352, i32 1}
!5 = !{ptr @__UNIQUE_ID_author231, !6, !"__UNIQUE_ID_author231", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1353, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1354, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1346, i32 11}
!12 = !{ptr @starfive_pinctrl_driver, !13, !"starfive_pinctrl_driver", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1343, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1229, i32 58}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1233, i32 60}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1239, i32 43}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1243, i32 43}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1247, i32 34}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1260, i32 34}
!26 = !{ptr @starfive_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1264, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1268, i32 34}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1270, i32 42}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1272, i32 39}
!35 = !{ptr @starfive_probe.lock_key, !36, !"lock_key", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1329, i32 8}
!37 = !{ptr @starfive_probe.request_key, !36, !"request_key", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1331, i32 34}
!40 = !{ptr @starfive_desc, !41, !"starfive_desc", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 899, i32 28}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 239, i32 2}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 240, i32 2}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 241, i32 2}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 242, i32 2}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 243, i32 2}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 244, i32 2}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 245, i32 2}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 246, i32 2}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 247, i32 2}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 248, i32 2}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 249, i32 2}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 250, i32 2}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 251, i32 2}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 252, i32 2}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 253, i32 2}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 254, i32 2}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 255, i32 2}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 256, i32 2}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 257, i32 2}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 258, i32 2}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 259, i32 2}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 260, i32 2}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 261, i32 2}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 262, i32 2}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 263, i32 2}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 264, i32 2}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 265, i32 2}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 266, i32 2}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 267, i32 2}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 268, i32 2}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 269, i32 2}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 270, i32 2}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 271, i32 2}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 272, i32 2}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 273, i32 2}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 274, i32 2}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 275, i32 2}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 276, i32 2}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 277, i32 2}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 278, i32 2}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 279, i32 2}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 280, i32 2}
!126 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 281, i32 2}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 282, i32 2}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 283, i32 2}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 284, i32 2}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 285, i32 2}
!136 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 286, i32 2}
!138 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 287, i32 2}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 288, i32 2}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 289, i32 2}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 290, i32 2}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 291, i32 2}
!148 = !{ptr @.str.65, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 292, i32 2}
!150 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 293, i32 2}
!152 = !{ptr @.str.67, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 294, i32 2}
!154 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 295, i32 2}
!156 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 296, i32 2}
!158 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 297, i32 2}
!160 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 298, i32 2}
!162 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 299, i32 2}
!164 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 300, i32 2}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 301, i32 2}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 302, i32 2}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 303, i32 2}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 304, i32 2}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 305, i32 2}
!176 = !{ptr @.str.79, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 306, i32 2}
!178 = !{ptr @.str.80, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 307, i32 2}
!180 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 308, i32 2}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 309, i32 2}
!184 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 310, i32 2}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 311, i32 2}
!188 = !{ptr @.str.85, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 312, i32 2}
!190 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 313, i32 2}
!192 = !{ptr @.str.87, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 314, i32 2}
!194 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 315, i32 2}
!196 = !{ptr @.str.89, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 316, i32 2}
!198 = !{ptr @.str.90, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 317, i32 2}
!200 = !{ptr @.str.91, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 318, i32 2}
!202 = !{ptr @.str.92, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 319, i32 2}
!204 = !{ptr @.str.93, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 320, i32 2}
!206 = !{ptr @.str.94, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 321, i32 2}
!208 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 322, i32 2}
!210 = !{ptr @.str.96, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 323, i32 2}
!212 = !{ptr @.str.97, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 324, i32 2}
!214 = !{ptr @.str.98, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 325, i32 2}
!216 = !{ptr @.str.99, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 326, i32 2}
!218 = !{ptr @.str.100, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 327, i32 2}
!220 = !{ptr @.str.101, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 328, i32 2}
!222 = !{ptr @.str.102, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 329, i32 2}
!224 = !{ptr @.str.103, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 330, i32 2}
!226 = !{ptr @.str.104, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 331, i32 2}
!228 = !{ptr @.str.105, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 332, i32 2}
!230 = !{ptr @.str.106, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 333, i32 2}
!232 = !{ptr @.str.107, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 334, i32 2}
!234 = !{ptr @.str.108, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 335, i32 2}
!236 = !{ptr @.str.109, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 336, i32 2}
!238 = !{ptr @.str.110, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 337, i32 2}
!240 = !{ptr @.str.111, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 338, i32 2}
!242 = !{ptr @.str.112, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 339, i32 2}
!244 = !{ptr @.str.113, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 340, i32 2}
!246 = !{ptr @.str.114, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 341, i32 2}
!248 = !{ptr @.str.115, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 342, i32 2}
!250 = !{ptr @.str.116, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 343, i32 2}
!252 = !{ptr @.str.117, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 344, i32 2}
!254 = !{ptr @.str.118, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 345, i32 2}
!256 = !{ptr @.str.119, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 346, i32 2}
!258 = !{ptr @.str.120, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 347, i32 2}
!260 = !{ptr @.str.121, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 348, i32 2}
!262 = !{ptr @.str.122, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 349, i32 2}
!264 = !{ptr @.str.123, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 350, i32 2}
!266 = !{ptr @.str.124, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 351, i32 2}
!268 = !{ptr @.str.125, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 352, i32 2}
!270 = !{ptr @.str.126, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 353, i32 2}
!272 = !{ptr @.str.127, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 354, i32 2}
!274 = !{ptr @.str.128, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 355, i32 2}
!276 = !{ptr @.str.129, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 356, i32 2}
!278 = !{ptr @.str.130, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 357, i32 2}
!280 = !{ptr @.str.131, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 358, i32 2}
!282 = !{ptr @.str.132, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 359, i32 2}
!284 = !{ptr @.str.133, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 360, i32 2}
!286 = !{ptr @.str.134, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 361, i32 2}
!288 = !{ptr @.str.135, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 362, i32 2}
!290 = !{ptr @.str.136, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 363, i32 2}
!292 = !{ptr @.str.137, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 364, i32 2}
!294 = !{ptr @.str.138, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 365, i32 2}
!296 = !{ptr @.str.139, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 366, i32 2}
!298 = !{ptr @.str.140, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 367, i32 2}
!300 = !{ptr @.str.141, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 368, i32 2}
!302 = !{ptr @.str.142, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 369, i32 2}
!304 = !{ptr @.str.143, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 370, i32 2}
!306 = !{ptr @.str.144, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 371, i32 2}
!308 = !{ptr @.str.145, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 372, i32 2}
!310 = !{ptr @.str.146, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 373, i32 2}
!312 = !{ptr @.str.147, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 374, i32 2}
!314 = !{ptr @.str.148, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 375, i32 2}
!316 = !{ptr @.str.149, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 376, i32 2}
!318 = !{ptr @.str.150, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 377, i32 2}
!320 = !{ptr @.str.151, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 378, i32 2}
!322 = !{ptr @.str.152, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 379, i32 2}
!324 = !{ptr @.str.153, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 380, i32 2}
!326 = !{ptr @.str.154, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 381, i32 2}
!328 = !{ptr @.str.155, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 382, i32 2}
!330 = !{ptr @.str.156, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 383, i32 2}
!332 = !{ptr @.str.157, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 384, i32 2}
!334 = !{ptr @.str.158, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 385, i32 2}
!336 = !{ptr @.str.159, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 386, i32 2}
!338 = !{ptr @.str.160, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 387, i32 2}
!340 = !{ptr @.str.161, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 388, i32 2}
!342 = !{ptr @.str.162, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 389, i32 2}
!344 = !{ptr @.str.163, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 390, i32 2}
!346 = !{ptr @.str.164, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 391, i32 2}
!348 = !{ptr @.str.165, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 392, i32 2}
!350 = !{ptr @.str.166, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 393, i32 2}
!352 = !{ptr @.str.167, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 394, i32 2}
!354 = !{ptr @.str.168, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 395, i32 2}
!356 = !{ptr @.str.169, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 396, i32 2}
!358 = !{ptr @.str.170, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 397, i32 2}
!360 = !{ptr @.str.171, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 398, i32 2}
!362 = !{ptr @.str.172, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 399, i32 2}
!364 = !{ptr @.str.173, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 400, i32 2}
!366 = !{ptr @.str.174, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 401, i32 2}
!368 = !{ptr @.str.175, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 402, i32 2}
!370 = !{ptr @.str.176, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 403, i32 2}
!372 = !{ptr @.str.177, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 404, i32 2}
!374 = !{ptr @.str.178, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 405, i32 2}
!376 = !{ptr @.str.179, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 406, i32 2}
!378 = !{ptr @.str.180, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 407, i32 2}
!380 = !{ptr @.str.181, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 408, i32 2}
!382 = !{ptr @.str.182, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 409, i32 2}
!384 = !{ptr @.str.183, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 410, i32 2}
!386 = !{ptr @.str.184, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 411, i32 2}
!388 = !{ptr @.str.185, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 412, i32 2}
!390 = !{ptr @.str.186, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 413, i32 2}
!392 = !{ptr @.str.187, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 414, i32 2}
!394 = !{ptr @.str.188, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 415, i32 2}
!396 = !{ptr @.str.189, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 416, i32 2}
!398 = !{ptr @.str.190, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 417, i32 2}
!400 = !{ptr @.str.191, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 418, i32 2}
!402 = !{ptr @.str.192, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 419, i32 2}
!404 = !{ptr @.str.193, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 420, i32 2}
!406 = !{ptr @.str.194, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 421, i32 2}
!408 = !{ptr @.str.195, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 422, i32 2}
!410 = !{ptr @.str.196, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 423, i32 2}
!412 = !{ptr @.str.197, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 424, i32 2}
!414 = !{ptr @.str.198, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 425, i32 2}
!416 = !{ptr @.str.199, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 426, i32 2}
!418 = !{ptr @.str.200, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 427, i32 2}
!420 = !{ptr @.str.201, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 428, i32 2}
!422 = !{ptr @.str.202, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 429, i32 2}
!424 = !{ptr @.str.203, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 430, i32 2}
!426 = !{ptr @.str.204, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 431, i32 2}
!428 = !{ptr @.str.205, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 432, i32 2}
!430 = !{ptr @.str.206, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 433, i32 2}
!432 = !{ptr @.str.207, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 434, i32 2}
!434 = !{ptr @.str.208, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 435, i32 2}
!436 = !{ptr @.str.209, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 436, i32 2}
!438 = !{ptr @.str.210, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 437, i32 2}
!440 = !{ptr @.str.211, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 438, i32 2}
!442 = !{ptr @.str.212, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 439, i32 2}
!444 = !{ptr @.str.213, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 440, i32 2}
!446 = !{ptr @.str.214, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 441, i32 2}
!448 = !{ptr @.str.215, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 442, i32 2}
!450 = !{ptr @.str.216, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 443, i32 2}
!452 = !{ptr @.str.217, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 444, i32 2}
!454 = !{ptr @starfive_pins, !455, !"starfive_pins", i1 false, i1 false}
!455 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 238, i32 38}
!456 = !{ptr @starfive_pinctrl_ops, !457, !"starfive_pinctrl_ops", i1 false, i1 false}
!457 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 627, i32 33}
!458 = !{ptr @.str.218, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 464, i32 16}
!460 = !{ptr @.str.219, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 465, i32 47}
!462 = !{ptr @.str.220, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 465, i32 53}
!464 = !{ptr @.str.221, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 492, i32 52}
!466 = !{ptr @.str.222, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 493, i32 52}
!468 = !{ptr @.str.223, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 496, i32 4}
!470 = !{ptr @.str.224, !469, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @.str.225, !469, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @.str.226, !469, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @.str.227, !469, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @starfive_dt_node_to_map._entry, !469, !"_entry", i1 false, i1 false}
!475 = !{ptr @starfive_dt_node_to_map._entry_ptr, !469, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.229, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 502, i32 4}
!478 = !{ptr @starfive_dt_node_to_map._entry.228, !477, !"_entry", i1 false, i1 false}
!479 = !{ptr @starfive_dt_node_to_map._entry_ptr.230, !477, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.231, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 529, i32 45}
!482 = !{ptr @.str.233, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 588, i32 4}
!484 = !{ptr @starfive_dt_node_to_map._entry.232, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @starfive_dt_node_to_map._entry_ptr.234, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.236, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 596, i32 4}
!488 = !{ptr @starfive_dt_node_to_map._entry.235, !487, !"_entry", i1 false, i1 false}
!489 = !{ptr @starfive_dt_node_to_map._entry_ptr.237, !487, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @.str.239, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 612, i32 3}
!492 = !{ptr @starfive_dt_node_to_map._entry.238, !491, !"_entry", i1 false, i1 false}
!493 = !{ptr @starfive_dt_node_to_map._entry_ptr.240, !491, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @starfive_pinmux_ops, !495, !"starfive_pinmux_ops", i1 false, i1 false}
!495 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 682, i32 32}
!496 = !{ptr @.str.241, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 661, i32 3}
!498 = !{ptr @.str.242, !497, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @.str.243, !497, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @starfive_set_mux.__UNIQUE_ID_ddebug227, !497, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!501 = !{ptr @starfive_pinconf_ops, !502, !"starfive_pinconf_ops", i1 false, i1 false}
!502 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 891, i32 33}
!503 = !{ptr @.str.244, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 709, i32 2}
!505 = !{ptr @.str.245, !504, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @starfive_padctl_rmw.__UNIQUE_ID_ddebug228, !504, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!507 = !{ptr @.str.246, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 885, i32 16}
!509 = !{ptr @.str.247, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 720, i32 4}
!511 = !{ptr @starfive_pinconf_custom_params, !512, !"starfive_pinconf_custom_params", i1 false, i1 false}
!512 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 719, i32 44}
!513 = !{ptr @.str.248, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 725, i32 2}
!515 = !{ptr @starfive_pinconf_custom_conf_items, !516, !"starfive_pinconf_custom_conf_items", i1 false, i1 false}
!516 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 724, i32 37}
!517 = !{ptr @.str.249, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1167, i32 10}
!519 = !{ptr @starfive_irq_chip, !520, !"starfive_irq_chip", i1 false, i1 false}
!520 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1166, i32 24}
!521 = !{ptr @starfive_of_match, !522, !"starfive_of_match", i1 false, i1 false}
!522 = !{!"../drivers/pinctrl/pinctrl-starfive.c", i32 1337, i32 34}
!523 = !{i32 1, !"wchar_size", i32 2}
!524 = !{i32 1, !"min_enum_size", i32 4}
!525 = !{i32 8, !"branch-target-enforcement", i32 0}
!526 = !{i32 8, !"sign-return-address", i32 0}
!527 = !{i32 8, !"sign-return-address-all", i32 0}
!528 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!529 = !{i32 7, !"uwtable", i32 1}
!530 = !{i32 7, !"frame-pointer", i32 2}
!531 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!532 = !{!"auto-init"}
!533 = !{i64 2154017132}
!534 = !{i64 4910575}
!535 = !{i64 4910993}
!536 = !{i64 2154017815}
!537 = !{i64 2148761691, i64 2148761696, i64 2148761709, i64 2148761753, i64 2148761787, i64 2148761808}
!538 = !{i64 2154014768}
!539 = !{i64 2154015163}
!540 = !{i64 2154015560}
!541 = !{i64 2154015963}
!542 = !{i64 2154016360}
!543 = !{!"branch_weights", i32 1, i32 2000}
