; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-amd.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-amd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.amd_pingroup = type { ptr, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.amd_gpio = type { %struct.raw_spinlock, ptr, ptr, i32, ptr, %struct.gpio_chip, i32, ptr, ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.pin_desc = type { ptr, ptr, i8, ptr, i32, ptr, ptr, ptr }

@__initcall__kmod_pinctrl_amd__230_1099_amd_gpio_driver_init6 = internal global ptr @amd_gpio_driver_init, section ".initcall6.init", align 4
@amd_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @amd_gpio_probe, ptr @amd_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amd_gpio_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_amd_gpio_driver_exit = internal global ptr @amd_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file231 = internal constant [45 x i8] c"pinctrl_amd.file=drivers/pinctrl/pinctrl-amd\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [27 x i8] c"pinctrl_amd.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [72 x i8] c"pinctrl_amd.author=Ken Xue <Ken.Xue@amd.com>, Jeff Wu <Jeff.Wu@amd.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [48 x i8] c"pinctrl_amd.description=AMD GPIO pinctrl driver\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd_gpio\00", [23 x i8] zeroinitializer }, align 32
@amd_gpio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amd_gpio_suspend, ptr @amd_gpio_resume, ptr @amd_gpio_suspend, ptr @amd_gpio_resume, ptr @amd_gpio_suspend, ptr @amd_gpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@amd_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&gpio_dev->lock\00", [16 x i8] zeroinitializer }, align 32
@amd_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 977, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get gpio io resource.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amd_gpio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/pinctrl/pinctrl-amd.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amd_gpio_probe._entry_ptr = internal global ptr @amd_gpio_probe._entry, section ".printk_index", align 4
@amd_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr null, ptr @kerncz_pins, i32 183, ptr @amd_pinctrl_ops, ptr null, ptr @amd_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@kerncz_groups = internal constant { [6 x %struct.amd_pingroup], [56 x i8] } { [6 x %struct.amd_pingroup] [%struct.amd_pingroup { ptr @.str.238, ptr @i2c0_pins, i32 2 }, %struct.amd_pingroup { ptr @.str.239, ptr @i2c1_pins, i32 2 }, %struct.amd_pingroup { ptr @.str.240, ptr @i2c2_pins, i32 2 }, %struct.amd_pingroup { ptr @.str.241, ptr @i2c3_pins, i32 2 }, %struct.amd_pingroup { ptr @.str.242, ptr @uart0_pins, i32 5 }, %struct.amd_pingroup { ptr @.str.243, ptr @uart1_pins, i32 5 }], [56 x i8] zeroinitializer }, align 32
@amd_gpio_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1021, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't register pinctrl driver\0A\00", [62 x i8] zeroinitializer }, align 32
@amd_gpio_probe._entry_ptr.9 = internal global ptr @amd_gpio_probe._entry.7, section ".printk_index", align 4
@amd_gpio_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr @amd_gpio_irq_enable, ptr @amd_gpio_irq_disable, ptr @amd_irq_ack, ptr @amd_gpio_irq_mask, ptr null, ptr @amd_gpio_irq_unmask, ptr @amd_gpio_irq_eoi, ptr null, ptr null, ptr @amd_gpio_irq_set_type, ptr @amd_gpio_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 512 }, [56 x i8] zeroinitializer }, align 32
@amd_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@amd_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@amd_gpio_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1044, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to add pin range\0A\00", [39 x i8] zeroinitializer }, align 32
@amd_gpio_probe._entry_ptr.12 = internal global ptr @amd_gpio_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pinctrl_amd\00", [20 x i8] zeroinitializer }, align 32
@amd_gpio_probe.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.3, ptr @.str.4, ptr @.str.14, i8 1, i8 8, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amd gpio driver loaded\0A\00", [40 x i8] zeroinitializer }, align 32
@kerncz_pins = internal constant { [183 x %struct.pinctrl_pin_desc], [556 x i8] } { [183 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.48, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.49, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.50, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.51, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.52, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.53, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.54, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.55, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.56, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.57, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.58, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.59, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.60, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.61, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.62, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.63, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.64, ptr null }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.65, ptr null }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.66, ptr null }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.67, ptr null }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.68, ptr null }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.69, ptr null }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.70, ptr null }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.71, ptr null }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.72, ptr null }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.73, ptr null }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.74, ptr null }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.75, ptr null }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.76, ptr null }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.77, ptr null }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.78, ptr null }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.79, ptr null }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.80, ptr null }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.81, ptr null }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.82, ptr null }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.83, ptr null }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.84, ptr null }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.85, ptr null }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.86, ptr null }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.87, ptr null }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.88, ptr null }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.89, ptr null }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.90, ptr null }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.91, ptr null }, %struct.pinctrl_pin_desc { i32 78, ptr @.str.92, ptr null }, %struct.pinctrl_pin_desc { i32 79, ptr @.str.93, ptr null }, %struct.pinctrl_pin_desc { i32 80, ptr @.str.94, ptr null }, %struct.pinctrl_pin_desc { i32 81, ptr @.str.95, ptr null }, %struct.pinctrl_pin_desc { i32 82, ptr @.str.96, ptr null }, %struct.pinctrl_pin_desc { i32 83, ptr @.str.97, ptr null }, %struct.pinctrl_pin_desc { i32 84, ptr @.str.98, ptr null }, %struct.pinctrl_pin_desc { i32 85, ptr @.str.99, ptr null }, %struct.pinctrl_pin_desc { i32 86, ptr @.str.100, ptr null }, %struct.pinctrl_pin_desc { i32 87, ptr @.str.101, ptr null }, %struct.pinctrl_pin_desc { i32 88, ptr @.str.102, ptr null }, %struct.pinctrl_pin_desc { i32 89, ptr @.str.103, ptr null }, %struct.pinctrl_pin_desc { i32 90, ptr @.str.104, ptr null }, %struct.pinctrl_pin_desc { i32 91, ptr @.str.105, ptr null }, %struct.pinctrl_pin_desc { i32 92, ptr @.str.106, ptr null }, %struct.pinctrl_pin_desc { i32 93, ptr @.str.107, ptr null }, %struct.pinctrl_pin_desc { i32 94, ptr @.str.108, ptr null }, %struct.pinctrl_pin_desc { i32 95, ptr @.str.109, ptr null }, %struct.pinctrl_pin_desc { i32 96, ptr @.str.110, ptr null }, %struct.pinctrl_pin_desc { i32 97, ptr @.str.111, ptr null }, %struct.pinctrl_pin_desc { i32 98, ptr @.str.112, ptr null }, %struct.pinctrl_pin_desc { i32 99, ptr @.str.113, ptr null }, %struct.pinctrl_pin_desc { i32 100, ptr @.str.114, ptr null }, %struct.pinctrl_pin_desc { i32 101, ptr @.str.115, ptr null }, %struct.pinctrl_pin_desc { i32 102, ptr @.str.116, ptr null }, %struct.pinctrl_pin_desc { i32 103, ptr @.str.117, ptr null }, %struct.pinctrl_pin_desc { i32 104, ptr @.str.118, ptr null }, %struct.pinctrl_pin_desc { i32 105, ptr @.str.119, ptr null }, %struct.pinctrl_pin_desc { i32 106, ptr @.str.120, ptr null }, %struct.pinctrl_pin_desc { i32 107, ptr @.str.121, ptr null }, %struct.pinctrl_pin_desc { i32 108, ptr @.str.122, ptr null }, %struct.pinctrl_pin_desc { i32 109, ptr @.str.123, ptr null }, %struct.pinctrl_pin_desc { i32 110, ptr @.str.124, ptr null }, %struct.pinctrl_pin_desc { i32 111, ptr @.str.125, ptr null }, %struct.pinctrl_pin_desc { i32 112, ptr @.str.126, ptr null }, %struct.pinctrl_pin_desc { i32 113, ptr @.str.127, ptr null }, %struct.pinctrl_pin_desc { i32 114, ptr @.str.128, ptr null }, %struct.pinctrl_pin_desc { i32 115, ptr @.str.129, ptr null }, %struct.pinctrl_pin_desc { i32 116, ptr @.str.130, ptr null }, %struct.pinctrl_pin_desc { i32 117, ptr @.str.131, ptr null }, %struct.pinctrl_pin_desc { i32 118, ptr @.str.132, ptr null }, %struct.pinctrl_pin_desc { i32 119, ptr @.str.133, ptr null }, %struct.pinctrl_pin_desc { i32 120, ptr @.str.134, ptr null }, %struct.pinctrl_pin_desc { i32 121, ptr @.str.135, ptr null }, %struct.pinctrl_pin_desc { i32 122, ptr @.str.136, ptr null }, %struct.pinctrl_pin_desc { i32 123, ptr @.str.137, ptr null }, %struct.pinctrl_pin_desc { i32 124, ptr @.str.138, ptr null }, %struct.pinctrl_pin_desc { i32 125, ptr @.str.139, ptr null }, %struct.pinctrl_pin_desc { i32 126, ptr @.str.140, ptr null }, %struct.pinctrl_pin_desc { i32 127, ptr @.str.141, ptr null }, %struct.pinctrl_pin_desc { i32 128, ptr @.str.142, ptr null }, %struct.pinctrl_pin_desc { i32 129, ptr @.str.143, ptr null }, %struct.pinctrl_pin_desc { i32 130, ptr @.str.144, ptr null }, %struct.pinctrl_pin_desc { i32 131, ptr @.str.145, ptr null }, %struct.pinctrl_pin_desc { i32 132, ptr @.str.146, ptr null }, %struct.pinctrl_pin_desc { i32 133, ptr @.str.147, ptr null }, %struct.pinctrl_pin_desc { i32 134, ptr @.str.148, ptr null }, %struct.pinctrl_pin_desc { i32 135, ptr @.str.149, ptr null }, %struct.pinctrl_pin_desc { i32 136, ptr @.str.150, ptr null }, %struct.pinctrl_pin_desc { i32 137, ptr @.str.151, ptr null }, %struct.pinctrl_pin_desc { i32 138, ptr @.str.152, ptr null }, %struct.pinctrl_pin_desc { i32 139, ptr @.str.153, ptr null }, %struct.pinctrl_pin_desc { i32 140, ptr @.str.154, ptr null }, %struct.pinctrl_pin_desc { i32 141, ptr @.str.155, ptr null }, %struct.pinctrl_pin_desc { i32 142, ptr @.str.156, ptr null }, %struct.pinctrl_pin_desc { i32 143, ptr @.str.157, ptr null }, %struct.pinctrl_pin_desc { i32 144, ptr @.str.158, ptr null }, %struct.pinctrl_pin_desc { i32 145, ptr @.str.159, ptr null }, %struct.pinctrl_pin_desc { i32 146, ptr @.str.160, ptr null }, %struct.pinctrl_pin_desc { i32 147, ptr @.str.161, ptr null }, %struct.pinctrl_pin_desc { i32 148, ptr @.str.162, ptr null }, %struct.pinctrl_pin_desc { i32 149, ptr @.str.163, ptr null }, %struct.pinctrl_pin_desc { i32 150, ptr @.str.164, ptr null }, %struct.pinctrl_pin_desc { i32 151, ptr @.str.165, ptr null }, %struct.pinctrl_pin_desc { i32 152, ptr @.str.166, ptr null }, %struct.pinctrl_pin_desc { i32 153, ptr @.str.167, ptr null }, %struct.pinctrl_pin_desc { i32 154, ptr @.str.168, ptr null }, %struct.pinctrl_pin_desc { i32 155, ptr @.str.169, ptr null }, %struct.pinctrl_pin_desc { i32 156, ptr @.str.170, ptr null }, %struct.pinctrl_pin_desc { i32 157, ptr @.str.171, ptr null }, %struct.pinctrl_pin_desc { i32 158, ptr @.str.172, ptr null }, %struct.pinctrl_pin_desc { i32 159, ptr @.str.173, ptr null }, %struct.pinctrl_pin_desc { i32 160, ptr @.str.174, ptr null }, %struct.pinctrl_pin_desc { i32 161, ptr @.str.175, ptr null }, %struct.pinctrl_pin_desc { i32 162, ptr @.str.176, ptr null }, %struct.pinctrl_pin_desc { i32 163, ptr @.str.177, ptr null }, %struct.pinctrl_pin_desc { i32 164, ptr @.str.178, ptr null }, %struct.pinctrl_pin_desc { i32 165, ptr @.str.179, ptr null }, %struct.pinctrl_pin_desc { i32 166, ptr @.str.180, ptr null }, %struct.pinctrl_pin_desc { i32 167, ptr @.str.181, ptr null }, %struct.pinctrl_pin_desc { i32 168, ptr @.str.182, ptr null }, %struct.pinctrl_pin_desc { i32 169, ptr @.str.183, ptr null }, %struct.pinctrl_pin_desc { i32 170, ptr @.str.184, ptr null }, %struct.pinctrl_pin_desc { i32 171, ptr @.str.185, ptr null }, %struct.pinctrl_pin_desc { i32 172, ptr @.str.186, ptr null }, %struct.pinctrl_pin_desc { i32 173, ptr @.str.187, ptr null }, %struct.pinctrl_pin_desc { i32 174, ptr @.str.188, ptr null }, %struct.pinctrl_pin_desc { i32 175, ptr @.str.189, ptr null }, %struct.pinctrl_pin_desc { i32 176, ptr @.str.190, ptr null }, %struct.pinctrl_pin_desc { i32 177, ptr @.str.191, ptr null }, %struct.pinctrl_pin_desc { i32 178, ptr @.str.192, ptr null }, %struct.pinctrl_pin_desc { i32 179, ptr @.str.193, ptr null }, %struct.pinctrl_pin_desc { i32 180, ptr @.str.194, ptr null }, %struct.pinctrl_pin_desc { i32 181, ptr @.str.195, ptr null }, %struct.pinctrl_pin_desc { i32 182, ptr @.str.196, ptr null }, %struct.pinctrl_pin_desc { i32 183, ptr @.str.197, ptr null }], [556 x i8] zeroinitializer }, align 32
@amd_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @amd_get_groups_count, ptr @amd_get_group_name, ptr @amd_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@amd_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr @amd_pinconf_get, ptr @amd_pinconf_set, ptr @amd_pinconf_group_get, ptr @amd_pinconf_group_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_0\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_1\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_2\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_3\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_4\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_5\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_6\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_7\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_8\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO_9\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_10\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_11\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_12\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_13\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_14\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_15\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_16\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_17\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_18\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_19\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_20\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_21\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_22\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_23\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_24\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_25\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_26\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_27\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_28\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_29\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_30\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_31\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_32\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_33\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_34\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_35\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_36\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_37\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_38\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_39\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_40\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_41\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_42\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_43\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_44\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_45\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_46\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_47\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_48\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_49\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_50\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_51\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_52\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_53\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_54\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_55\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_56\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_57\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_58\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_59\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_60\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_61\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_62\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_64\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_65\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_66\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_67\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_68\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_69\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_70\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_71\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_72\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_73\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_74\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_75\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_76\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_77\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_78\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_79\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_80\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_81\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_82\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_83\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_84\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_85\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_86\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_87\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_88\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_89\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_90\00", [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_91\00", [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_92\00", [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_93\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_94\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_95\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_96\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_97\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_98\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GPIO_99\00", [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_100\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_101\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_102\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_103\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_104\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_105\00", [23 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_106\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_107\00", [23 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_108\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_109\00", [23 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_110\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_111\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_112\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_113\00", [23 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_114\00", [23 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_115\00", [23 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_116\00", [23 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_117\00", [23 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_118\00", [23 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_119\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_120\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_121\00", [23 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_122\00", [23 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_123\00", [23 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_124\00", [23 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_125\00", [23 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_126\00", [23 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_127\00", [23 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_128\00", [23 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_129\00", [23 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_130\00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_131\00", [23 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_132\00", [23 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_133\00", [23 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_134\00", [23 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_135\00", [23 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_136\00", [23 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_137\00", [23 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_138\00", [23 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_139\00", [23 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_140\00", [23 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_141\00", [23 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_142\00", [23 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_143\00", [23 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_144\00", [23 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_145\00", [23 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_146\00", [23 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_147\00", [23 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_148\00", [23 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_149\00", [23 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_150\00", [23 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_151\00", [23 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_152\00", [23 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_153\00", [23 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_154\00", [23 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_155\00", [23 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_156\00", [23 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_157\00", [23 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_158\00", [23 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_159\00", [23 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_160\00", [23 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_161\00", [23 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_162\00", [23 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_163\00", [23 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_164\00", [23 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_165\00", [23 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_166\00", [23 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_167\00", [23 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_168\00", [23 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_169\00", [23 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_170\00", [23 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_171\00", [23 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_172\00", [23 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_173\00", [23 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_174\00", [23 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_175\00", [23 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_176\00", [23 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_177\00", [23 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_178\00", [23 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_179\00", [23 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_180\00", [23 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_181\00", [23 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_182\00", [23 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPIO_183\00", [23 x i8] zeroinitializer }, align 32
@amd_pinconf_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.4, i32 757, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid config param %04x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amd_pinconf_get\00", [16 x i8] zeroinitializer }, align 32
@amd_pinconf_get._entry_ptr = internal global ptr @amd_pinconf_get._entry, section ".printk_index", align 4
@amd_pinconf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.200, ptr @.str.4, i32 810, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amd_pinconf_set\00", [16 x i8] zeroinitializer }, align 32
@amd_pinconf_set._entry_ptr = internal global ptr @amd_pinconf_set._entry, section ".printk_index", align 4
@.str.201 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO bank%d\09\00", [19 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pin%d\09\00", [25 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"interrupt is enabled|\00", [42 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Active high|\00", [19 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Active low|\00", [20 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Active on both|\00", [16 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown Active level|\00", [42 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Level trigger|\00", [17 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Edge trigger|\00", [18 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"interrupt is disabled|\00", [41 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"interrupt is unmasked|\00", [41 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt is masked|\00", [43 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enable wakeup in S0i3 state|\00", [35 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disable wakeup in S0i3 state|\00", [34 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"enable wakeup in S3 state|\00", [37 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disable wakeup in S3 state|\00", [36 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enable wakeup in S4/S5 state|\00", [34 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disable wakeup in S4/S5 state|\00", [33 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pull-up is enabled|\00", [44 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"8k pull-up|\00", [20 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"4k pull-up|\00", [20 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pull-up is disabled|\00", [43 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pull-down is enabled|\00", [42 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Pull-down is disabled|\00", [41 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"output is enabled|\00", [45 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"output is high|\00", [16 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"output is low|\00", [17 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"output is disabled|\00", [44 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"input is high|\00", [17 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"input is low|\00", [18 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"debouncing filter (high and low) enabled|\00", [54 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"debouncing filter (low) enabled|\00", [63 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"debouncing filter (high) enabled|\00", [62 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"debouncing timeout is %u (us)|\00", [33 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"debouncing filter disabled|\00", [36 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s %s %s %s %s %s\0A %s %s %s %s %s %s %s %s %s 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c0\00", [27 x i8] zeroinitializer }, align 32
@i2c0_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 145, i32 146], [24 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@i2c1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 147, i32 148], [24 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@i2c2_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 113, i32 114], [24 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@i2c3_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 19, i32 20], [24 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@uart0_pins = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 135, i32 136, i32 137, i32 138, i32 139], [44 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@uart1_pins = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 140, i32 141, i32 142, i32 143, i32 144], [44 x i8] zeroinitializer }, align 32
@amd_gpio_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.245, ptr @.str.4, i32 538, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid type value\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amd_gpio_irq_set_type\00", [42 x i8] zeroinitializer }, align 32
@amd_gpio_irq_set_type._entry_ptr = internal global ptr @amd_gpio_irq_set_type._entry, section ".printk_index", align 4
@amd_gpio_irq_set_wake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.247, ptr @.str.4, i32 468, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to %s wake-up interrupt\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amd_gpio_irq_set_wake\00", [42 x i8] zeroinitializer }, align 32
@amd_gpio_irq_set_wake._entry_ptr = internal global ptr @amd_gpio_irq_set_wake._entry, section ".printk_index", align 4
@.str.248 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@do_amd_gpio_irq_handler.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.250, ptr @.str.4, ptr @.str.251, i8 0, i8 -98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.250 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"do_amd_gpio_irq_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Waking due to GPIO %d: 0x%x\00", [36 x i8] zeroinitializer }, align 32
@do_amd_gpio_irq_handler.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.250, ptr @.str.4, ptr @.str.252, i8 0, i8 -92, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.252 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Disabling spurious GPIO IRQ %d\0A\00", [32 x i8] zeroinitializer }, align 32
@switch.table.amd_gpio_dbg_show = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 63, i32 128, i32 184, i32 224], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.253 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 9, i64 11]
@__sancov_gen_cov_switch_values.254 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 9, i64 11]
@__sancov_gen_cov_switch_values.255 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.256 = private unnamed_addr constant [16 x i8] c"amd_gpio_driver\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 1087, i32 31 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 1089, i32 11 }
@___asan_gen_.262 = private unnamed_addr constant [16 x i8] c"amd_gpio_pm_ops\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 947, i32 32 }
@___asan_gen_.265 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 973, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 977, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant [17 x i8] c"amd_pinctrl_desc\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 953, i32 28 }
@___asan_gen_.292 = private unnamed_addr constant [14 x i8] c"kerncz_groups\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 299, i32 34 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 1021, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [17 x i8] c"amd_gpio_irqchip\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 580, i32 24 }
@___asan_gen_.304 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 1037, i32 8 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 1044, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 1049, i32 24 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 1056, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [12 x i8] c"kerncz_pins\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 105, i32 38 }
@___asan_gen_.325 = private unnamed_addr constant [16 x i8] c"amd_pinctrl_ops\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 715, i32 33 }
@___asan_gen_.328 = private unnamed_addr constant [16 x i8] c"amd_pinconf_ops\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 857, i32 33 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 106, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 107, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 108, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 109, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 110, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 111, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 112, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 113, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 114, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 115, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 116, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 117, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 118, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 119, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 120, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 121, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 122, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 123, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 124, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 125, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 126, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 127, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 128, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 129, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 130, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 131, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 132, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 133, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 134, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 135, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 136, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 137, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 138, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 139, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 140, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 141, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 142, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 143, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 144, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 145, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 146, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 147, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 148, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 149, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 150, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 151, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 152, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 153, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 154, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 155, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 156, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 157, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 158, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 159, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 160, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 161, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 162, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 163, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 164, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 165, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 166, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 167, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 168, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 169, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 170, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 171, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 172, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 173, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 174, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 175, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 176, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 177, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 178, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 179, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 180, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 181, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 182, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 183, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 184, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 185, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 186, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 187, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 188, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 189, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 190, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 191, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 192, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 193, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 194, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 195, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 196, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 197, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 198, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 199, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 200, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 201, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 202, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 203, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 204, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 205, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 206, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 207, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 208, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 209, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 210, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 211, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 212, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 213, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 214, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 215, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 216, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 217, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 218, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 219, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 220, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 221, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 222, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 223, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 224, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 225, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 226, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 227, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 228, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 229, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 230, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 231, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 232, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 233, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 234, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 235, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 236, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 237, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 238, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 239, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 240, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 241, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 242, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 243, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 244, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 245, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 246, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 247, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 248, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 249, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 250, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 251, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 252, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 253, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 254, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 255, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 256, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 257, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 258, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 259, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 260, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 261, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 262, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 263, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 264, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 265, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 266, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 267, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 268, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 269, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 270, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 271, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 272, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 273, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 274, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 275, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 276, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 277, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 278, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 279, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 280, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 281, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 282, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 283, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 284, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 285, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 286, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 287, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 288, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 756, i32 3 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 809, i32 4 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 227, i32 17 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 251, i32 18 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 259, i32 24 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 262, i32 21 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 264, i32 21 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 267, i32 21 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 269, i32 21 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 272, i32 19 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 274, i32 19 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 278, i32 6 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 279, i32 20 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 285, i32 6 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 288, i32 6 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 291, i32 19 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 293, i32 19 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 296, i32 19 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 298, i32 19 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 301, i32 19 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 303, i32 19 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 306, i32 22 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 308, i32 20 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 310, i32 20 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 312, i32 22 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 317, i32 24 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 319, i32 24 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 323, i32 21 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 325, i32 21 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 327, i32 21 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 329, i32 21 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 333, i32 16 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 335, i32 16 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 355, i32 24 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 357, i32 24 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 359, i32 24 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 362, i32 7 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 364, i32 23 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 368, i32 18 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 301, i32 11 }
@___asan_gen_.1009 = private unnamed_addr constant [10 x i8] c"i2c0_pins\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 291, i32 23 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 306, i32 11 }
@___asan_gen_.1015 = private unnamed_addr constant [10 x i8] c"i2c1_pins\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 292, i32 23 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 311, i32 11 }
@___asan_gen_.1021 = private unnamed_addr constant [10 x i8] c"i2c2_pins\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 293, i32 23 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 316, i32 11 }
@___asan_gen_.1027 = private unnamed_addr constant [10 x i8] c"i2c3_pins\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 294, i32 23 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 321, i32 11 }
@___asan_gen_.1033 = private unnamed_addr constant [11 x i8] c"uart0_pins\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 296, i32 23 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 326, i32 11 }
@___asan_gen_.1039 = private unnamed_addr constant [11 x i8] c"uart1_pins\00", align 1
@___asan_gen_.1040 = private unnamed_addr constant [33 x i8] c"../drivers/pinctrl/pinctrl-amd.h\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 297, i32 23 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 538, i32 3 }
@___asan_gen_.1051 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 467, i32 3 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 632, i32 5 }
@___asan_gen_.1072 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1073 = private constant [33 x i8] c"../drivers/pinctrl/pinctrl-amd.c\00", align 1
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1073, i32 655, i32 5 }
@___asan_gen_.1075 = private unnamed_addr constant [31 x i8] c"switch.table.amd_gpio_dbg_show\00", align 1
@llvm.compiler.used = appending global [288 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_amd_gpio_driver_exit, ptr @__initcall__kmod_pinctrl_amd__230_1099_amd_gpio_driver_init6, ptr @amd_gpio_driver_exit, ptr @amd_gpio_irq_set_type._entry, ptr @amd_gpio_irq_set_type._entry_ptr, ptr @amd_gpio_irq_set_wake._entry, ptr @amd_gpio_irq_set_wake._entry_ptr, ptr @amd_gpio_probe._entry, ptr @amd_gpio_probe._entry.10, ptr @amd_gpio_probe._entry.7, ptr @amd_gpio_probe._entry_ptr, ptr @amd_gpio_probe._entry_ptr.12, ptr @amd_gpio_probe._entry_ptr.9, ptr @amd_pinconf_get._entry, ptr @amd_pinconf_get._entry_ptr, ptr @amd_pinconf_set._entry, ptr @amd_pinconf_set._entry_ptr, ptr @amd_gpio_driver, ptr @.str, ptr @amd_gpio_pm_ops, ptr @amd_gpio_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @amd_pinctrl_desc, ptr @kerncz_groups, ptr @.str.8, ptr @amd_gpio_irqchip, ptr @amd_gpio_probe.lock_key, ptr @amd_gpio_probe.request_key, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @kerncz_pins, ptr @amd_pinctrl_ops, ptr @amd_pinconf_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @i2c0_pins, ptr @.str.239, ptr @i2c1_pins, ptr @.str.240, ptr @i2c2_pins, ptr @.str.241, ptr @i2c3_pins, ptr @.str.242, ptr @uart0_pins, ptr @.str.243, ptr @uart1_pins, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @switch.table.amd_gpio_dbg_show], section "llvm.metadata"
@0 = internal global [274 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_gpio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kerncz_groups to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_gpio_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_gpio_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_gpio_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kerncz_pins to i32), i32 2196, i32 2752, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_pinconf_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_pinconf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c0_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c2_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c3_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_pins to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_pins to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_gpio_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_gpio_irq_set_wake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amd_gpio_dbg_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @amd_gpio_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @amd_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @amd_gpio_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 428, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @amd_gpio_probe.__key, i16 noundef signext 2) #9
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end8:                                          ; preds = %do.body
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %1
  %add.i = add i32 %sub.i, %3
  %call11 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %1, i32 noundef %add.i) #9
  %base = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %base, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end8.cleanup_crit_edge, label %if.end15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call16 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call16, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %6 = load i32, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @amd_pinctrl_desc, i32 0, i32 2), align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4) #9
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !556

devm_kcalloc.exit.thread:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %saved_regs190 = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %saved_regs190 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %saved_regs190, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end20
  %10 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %10, i32 noundef 3520) #9
  %saved_regs = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %saved_regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %saved_regs, align 4
  %tobool24.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool24.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end26

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %devm_kcalloc.exit
  %pdev27 = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %pdev27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pdev, ptr %pdev27, align 4
  %gc = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5
  %get_direction = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 7
  %13 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @amd_gpio_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 8
  %14 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @amd_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 9
  %15 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @amd_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 10
  %16 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @amd_gpio_get_value, ptr %get, align 4
  %set = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 12
  %17 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @amd_gpio_set_value, ptr %set, align 4
  %set_config = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 14
  %18 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @amd_gpio_set_config, ptr %set_config, align 4
  %dbg_show = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 16
  %19 = ptrtoint ptr %dbg_show to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @amd_gpio_dbg_show, ptr %dbg_show, align 4
  %base35 = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 19
  %20 = ptrtoint ptr %base35 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %base35, align 4
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %23 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %gc, align 4
  %owner = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 4
  %24 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %owner, align 4
  %parent = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 2
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %parent, align 4
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i, align 4
  %28 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call1, align 4
  %sub.i178 = add i32 %27, 1
  %add.i179 = sub i32 %sub.i178, %29
  %div175 = lshr i32 %add.i179, 2
  %conv = trunc i32 %div175 to i16
  %ngpio = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 20
  %30 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv, ptr %ngpio, align 4
  %conv44 = lshr i32 %add.i179, 8
  %div45176 = and i32 %conv44, 1023
  %hwbank_num = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %hwbank_num to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div45176, ptr %hwbank_num, align 4
  %groups = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @kerncz_groups, ptr %groups, align 4
  %ngroups = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %ngroups to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 6, ptr %ngroups, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end26.dev_name.exit_crit_edge

if.end26.dev_name.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end26.dev_name.exit_crit_edge
  %retval.0.i180 = phi ptr [ %37, %if.end.i ], [ %35, %if.end26.dev_name.exit_crit_edge ]
  store ptr %retval.0.i180, ptr @amd_pinctrl_desc, align 4
  %call49 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @amd_pinctrl_desc, ptr noundef nonnull %call.i) #9
  %pctrl = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %pctrl to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call49, ptr %pctrl, align 4
  %cmp.i = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end55, label %if.end59

do.end55:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  %39 = ptrtoint ptr %pctrl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pctrl, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %cleanup

if.end59:                                         ; preds = %dev_name.exit
  %desc1.i = getelementptr inbounds %struct.pinctrl_dev, ptr %call49, i32 0, i32 1
  %42 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc1.i, align 4
  %npins.i = getelementptr inbounds %struct.pinctrl_desc, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp35.not.i = icmp eq i32 %45, 0
  br i1 %cmp35.not.i, label %if.end59.amd_gpio_irq_init.exit_crit_edge, label %for.body.lr.ph.i

if.end59.amd_gpio_irq_init.exit_crit_edge:        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %amd_gpio_irq_init.exit

for.body.lr.ph.i:                                 ; preds = %if.end59
  %pins.i = getelementptr inbounds %struct.pinctrl_desc, ptr %43, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.036.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %46 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pins.i, align 4
  %arrayidx.i = getelementptr %struct.pinctrl_pin_desc, ptr %47, i32 %i.036.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %50 = ptrtoint ptr %pctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pctrl, align 4
  %pin_desc_tree.i.i = getelementptr inbounds %struct.pinctrl_dev, ptr %51, i32 0, i32 2
  %call.i.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i.i, i32 noundef %49) #9
  %tobool.not.i181 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i181, label %for.body.i.cleanup.i_crit_edge, label %do.body.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %call.i) #9
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %mul.i = shl i32 %i.036.i, 2
  %add.ptr.i = getelementptr i8, ptr %53, i32 %mul.i
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !557
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !558
  %55 = and i32 %54, -16252929
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !559
  tail call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %add.ptr13.i = getelementptr i8, ptr %57, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %55) #9, !srcloc !560
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %call.i, i32 noundef %call4.i) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %i.036.i, 1
  %58 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %npins.i, align 4
  %cmp.i182 = icmp ult i32 %inc.i, %59
  br i1 %cmp.i182, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.amd_gpio_irq_init.exit_crit_edge

cleanup.i.amd_gpio_irq_init.exit_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amd_gpio_irq_init.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

amd_gpio_irq_init.exit:                           ; preds = %cleanup.i.amd_gpio_irq_init.exit_crit_edge, %if.end59.amd_gpio_irq_init.exit_crit_edge
  %irq61 = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 37
  %60 = ptrtoint ptr %irq61 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @amd_gpio_irqchip, ptr %irq61, align 4
  %parent_handler = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 37, i32 13
  %61 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 37, i32 15
  %62 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 37, i32 16
  %63 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %parents, align 4
  %default_type = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 37, i32 10
  %64 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 5, i32 37, i32 9
  %65 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @handle_simple_irq, ptr %handler, align 4
  %call63 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gc, ptr noundef nonnull %call.i, ptr noundef nonnull @amd_gpio_probe.lock_key, ptr noundef nonnull @amd_gpio_probe.request_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %amd_gpio_irq_init.exit.cleanup_crit_edge

amd_gpio_irq_init.exit.cleanup_crit_edge:         ; preds = %amd_gpio_irq_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end66:                                         ; preds = %amd_gpio_irq_init.exit
  %66 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i184 = icmp eq ptr %67, null
  br i1 %tobool.not.i184, label %if.end.i185, label %if.end66.dev_name.exit187_crit_edge

if.end66.dev_name.exit187_crit_edge:              ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit187

if.end.i185:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  br label %dev_name.exit187

dev_name.exit187:                                 ; preds = %if.end.i185, %if.end66.dev_name.exit187_crit_edge
  %retval.0.i186 = phi ptr [ %69, %if.end.i185 ], [ %67, %if.end66.dev_name.exit187_crit_edge ]
  %70 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %ngpio, align 4
  %conv72 = zext i16 %71 to i32
  %call73 = tail call i32 @gpiochip_add_pin_range(ptr noundef %gc, ptr noundef %retval.0.i186, i32 noundef 0, i32 noundef 0, i32 noundef %conv72) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end80, label %do.end78

do.end78:                                         ; preds = %dev_name.exit187
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  br label %out2

if.end80:                                         ; preds = %dev_name.exit187
  %72 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq, align 4
  %call.i188 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %73, ptr noundef nonnull @amd_gpio_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.13, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool84.not = icmp eq i32 %call.i188, 0
  br i1 %tobool84.not, label %if.end86, label %if.end80.out2_crit_edge

if.end80.out2_crit_edge:                          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.end86:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %74 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd_gpio_probe.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@amd_gpio_probe, %cleanup)) #9
          to label %if.then96 [label %cleanup], !srcloc !561

if.then96:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd_gpio_probe.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup

out2:                                             ; preds = %if.end80.out2_crit_edge, %do.end78
  %ret.0 = phi i32 [ %call73, %do.end78 ], [ %call.i188, %if.end80.out2_crit_edge ]
  tail call void @gpiochip_remove(ptr noundef %gc) #9
  br label %cleanup

cleanup:                                          ; preds = %out2, %if.then96, %if.end86, %amd_gpio_irq_init.exit.cleanup_crit_edge, %do.end55, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %41, %do.end55 ], [ %ret.0, %out2 ], [ -22, %do.end6 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call63, %amd_gpio_irq_init.exit.cleanup_crit_edge ], [ 0, %if.then96 ], [ -12, %devm_kcalloc.exit.thread ], [ 0, %if.end86 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_gpio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gc = getelementptr inbounds %struct.amd_gpio, ptr %1, i32 0, i32 5
  tail call void @gpiochip_remove(ptr noundef %gc) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_gpio_get_direction(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #9
  %base = getelementptr inbounds %struct.amd_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %mul = shl i32 %offset, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !562
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call1) #9
  %3 = lshr i32 %2, 15
  %.lobit = and i32 %3, 1
  %4 = xor i32 %.lobit, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_gpio_direction_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #9
  %base = getelementptr inbounds %struct.amd_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %mul = shl i32 %offset, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !563
  %3 = and i32 %2, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !564
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %5, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %3) #9, !srcloc !560
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_gpio_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #9
  %base = getelementptr inbounds %struct.amd_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %mul = shl i32 %offset, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !565
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %3 = and i32 %2, -49153
  %4 = or i32 %3, 32768
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %masksel = select i1 %tobool.not, i32 0, i32 4194304
  %pin_reg.0 = or i32 %5, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !566
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %pin_reg.0)
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %8, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %6) #9, !srcloc !560
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_gpio_get_value(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #9
  %base = getelementptr inbounds %struct.amd_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %mul = shl i32 %offset, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !567
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call1) #9
  %3 = lshr i32 %2, 8
  %.lobit = and i32 %3, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd_gpio_set_value(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #9
  %base = getelementptr inbounds %struct.amd_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %mul = shl i32 %offset, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %3 = and i32 %2, -16385
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %tobool.not, i32 0, i32 4194304
  %pin_reg.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !569
  tail call void @arm_heavy_mb() #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %pin_reg.0)
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %5) #9, !srcloc !560
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_gpio_set_config(ptr noundef %gc, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %config, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr.i = lshr i32 %config, 8
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call.i) #9
  %base.i = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %mul.i = shl i32 %offset, 2
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !557
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !570
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %config)
  %tobool.not.i = icmp ult i32 %config, 256
  br i1 %tobool.not.i, label %if.else51.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %or.i = and i32 %3, -112
  %and.i4 = or i32 %or.i, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 15616, i32 %config)
  %cmp5.i = icmp ult i32 %config, 15616
  br i1 %cmp5.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %or8.i = and i32 %3, -256
  %and9.i = or i32 %or8.i, 97
  br label %amd_gpio_set_debounce.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 249856, i32 %config)
  %cmp11.i = icmp ult i32 %config, 249856
  br i1 %cmp11.i, label %if.then13.i, label %if.else18.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %div.lhs.trunc.i = trunc i32 %shr.i to i16
  %div112.i = udiv i16 %div.lhs.trunc.i, 61
  %div.zext.i = zext i16 %div112.i to i32
  %and.masked111.i = and i32 %and.i4, -160
  %and16.i = or i32 %and.masked111.i, %div.zext.i
  br label %amd_gpio_set_debounce.exit

if.else18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 998400, i32 %config)
  %cmp19.i = icmp ult i32 %config, 998400
  br i1 %cmp19.i, label %if.then21.i, label %if.else27.i

if.then21.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #11
  %div22.lhs.trunc.i = trunc i32 %shr.i to i16
  %div22113.i = udiv i16 %div22.lhs.trunc.i, 244
  %and.masked110.i = and i32 %and.i4, -160
  %4 = or i16 %div22113.i, 16
  %or25.i = zext i16 %4 to i32
  %and26.i = or i32 %and.masked110.i, %or25.i
  br label %amd_gpio_set_debounce.exit

if.else27.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000000, i32 %config)
  %cmp28.i = icmp ult i32 %config, 64000000
  br i1 %cmp28.i, label %if.then30.i, label %if.else36.i

if.then30.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #11
  %div31.i = udiv i32 %config, 4000000
  %and.masked.i = and i32 %and.i4, -160
  %and34.i = or i32 %div31.i, %and.masked.i
  %or35.i = or i32 %and34.i, 128
  br label %amd_gpio_set_debounce.exit

if.else36.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000000, i32 %config)
  %cmp37.i = icmp ult i32 %config, 256000000
  br i1 %cmp37.i, label %if.then39.i, label %if.else36.i.amd_gpio_set_debounce.exit_crit_edge

if.else36.i.amd_gpio_set_debounce.exit_crit_edge: ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amd_gpio_set_debounce.exit

if.then39.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #11
  %div40.i = udiv i32 %config, 16000000
  %or42.i = or i32 %div40.i, %and.i4
  %or44.i = or i32 %or42.i, 144
  br label %amd_gpio_set_debounce.exit

if.else51.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and55.i = and i32 %3, -256
  br label %amd_gpio_set_debounce.exit

amd_gpio_set_debounce.exit:                       ; preds = %if.else51.i, %if.then39.i, %if.else36.i.amd_gpio_set_debounce.exit_crit_edge, %if.then30.i, %if.then21.i, %if.then13.i, %if.then7.i
  %ret.0.i = phi i32 [ 0, %if.then7.i ], [ 0, %if.then13.i ], [ 0, %if.then21.i ], [ 0, %if.then30.i ], [ 0, %if.then39.i ], [ 0, %if.else51.i ], [ -22, %if.else36.i.amd_gpio_set_debounce.exit_crit_edge ]
  %pin_reg.0.i = phi i32 [ %and9.i, %if.then7.i ], [ %and16.i, %if.then13.i ], [ %and26.i, %if.then21.i ], [ %or35.i, %if.then30.i ], [ %or44.i, %if.then39.i ], [ %and55.i, %if.else51.i ], [ %or.i, %if.else36.i.amd_gpio_set_debounce.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !571
  tail call void @arm_heavy_mb() #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %pin_reg.0.i) #9
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr62.i = getelementptr i8, ptr %7, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %5) #9, !srcloc !560
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call.i, i32 noundef %call1.i) #9
  br label %cleanup

cleanup:                                          ; preds = %amd_gpio_set_debounce.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %amd_gpio_set_debounce.exit ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd_gpio_dbg_show(ptr noundef %s, ptr noundef %gc) #2 align 64 {
entry:
  %debounce_value = alloca [40 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %debounce_value) #9
  %0 = call ptr @memset(ptr %debounce_value, i32 255, i32 40)
  %hwbank_num = getelementptr inbounds %struct.amd_gpio, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %hwbank_num to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwbank_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp183.not = icmp eq i32 %2, 0
  br i1 %cmp183.not, label %entry.for.end140_crit_edge, label %for.body.lr.ph

entry.for.end140_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end140

for.body.lr.ph:                                   ; preds = %entry
  %base = getelementptr inbounds %struct.amd_gpio, ptr %call, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc138.for.body_crit_edge, %for.body.lr.ph
  %bank.0184 = phi i32 [ 0, %for.body.lr.ph ], [ %inc139, %for.inc138.for.body_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.201, i32 noundef %bank.0184) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bank.0184)
  %3 = icmp ult i32 %bank.0184, 4
  br i1 %3, label %switch.lookup, label %for.body.for.inc138_crit_edge

for.body.for.inc138_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc138

switch.lookup:                                    ; preds = %for.body
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.amd_gpio_dbg_show, i32 0, i32 %bank.0184
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.idx.mult = shl i32 %bank.0184, 6
  br label %for.body8

for.body8:                                        ; preds = %if.end136.for.body8_crit_edge, %switch.lookup
  %i.1182 = phi i32 [ %inc, %if.end136.for.body8_crit_edge ], [ %switch.idx.mult, %switch.lookup ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.202, i32 noundef %i.1182) #9
  %call10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #9
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %mul = shl i32 %i.1182, 2
  %add.ptr = getelementptr i8, ptr %6, i32 %mul
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !572
  call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call10) #9
  %and = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body8.if.end49_crit_edge, label %if.then

for.body8.if.end49_crit_edge:                     ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then:                                          ; preds = %for.body8
  %shr = lshr i32 %8, 9
  %conv24 = and i32 %shr, 3
  %9 = zext i32 %conv24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv24, label %if.else33 [
    i32 0, label %if.then.if.end42_crit_edge
    i32 1, label %if.then32
  ]

if.then.if.end42_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then32:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.else33:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %and34 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv24)
  %cmp37 = icmp eq i32 %conv24, 2
  %or.cond = select i1 %tobool35.not, i1 %cmp37, i1 false
  %spec.select = select i1 %or.cond, ptr @.str.206, ptr @.str.207
  br label %if.end42

if.end42:                                         ; preds = %if.else33, %if.then32, %if.then.if.end42_crit_edge
  %active_level.0 = phi ptr [ @.str.205, %if.then32 ], [ @.str.204, %if.then.if.end42_crit_edge ], [ %spec.select, %if.else33 ]
  %and43 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %.str.209..str.208 = select i1 %tobool44.not, ptr @.str.209, ptr @.str.208
  br label %if.end49

if.end49:                                         ; preds = %if.end42, %for.body8.if.end49_crit_edge
  %level_trig.1 = phi ptr [ %.str.209..str.208, %if.end42 ], [ @.str.211, %for.body8.if.end49_crit_edge ]
  %active_level.1 = phi ptr [ %active_level.0, %if.end42 ], [ @.str.211, %for.body8.if.end49_crit_edge ]
  %interrupt_enable.0 = phi ptr [ @.str.203, %if.end42 ], [ @.str.210, %for.body8.if.end49_crit_edge ]
  %and50 = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %.str.213..str.212 = select i1 %tobool51.not, ptr @.str.213, ptr @.str.212
  %and55 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %wake_cntrl0.0 = select i1 %tobool56.not, ptr @.str.215, ptr @.str.214
  %and60 = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %wake_cntrl1.0 = select i1 %tobool61.not, ptr @.str.217, ptr @.str.216
  %and65 = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  %wake_cntrl2.0 = select i1 %tobool66.not, ptr @.str.219, ptr @.str.218
  %and70 = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %and73 = and i32 %8, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %.str.222..str.221 = select i1 %tobool74.not, ptr @.str.222, ptr @.str.221
  %pull_up_sel.0 = select i1 %tobool71.not, ptr @.str.211, ptr %.str.222..str.221
  %pull_up_enable.0 = select i1 %tobool71.not, ptr @.str.223, ptr @.str.220
  %and80 = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %pull_down_enable.0 = select i1 %tobool81.not, ptr @.str.225, ptr @.str.224
  %and85 = and i32 %8, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.else93, label %if.then87

if.then87:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %and88 = and i32 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %.str.228..str.227 = select i1 %tobool89.not, ptr @.str.228, ptr @.str.227
  br label %if.end99

if.else93:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %and94 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  %.str.231..str.230 = select i1 %tobool95.not, ptr @.str.231, ptr @.str.230
  br label %if.end99

if.end99:                                         ; preds = %if.else93, %if.then87
  %pin_sts.0 = phi ptr [ @.str.211, %if.then87 ], [ %.str.231..str.230, %if.else93 ]
  %output_value.0 = phi ptr [ %.str.228..str.227, %if.then87 ], [ @.str.211, %if.else93 ]
  %output_enable.0 = phi ptr [ @.str.226, %if.then87 ], [ @.str.229, %if.else93 ]
  %and100 = and i32 %8, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.else133, label %if.then102

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %and103 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  %and105 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  %and108 = and i32 %8, 15
  %. = select i1 %tobool104.not, i32 15625, i32 62500
  %.178 = select i1 %tobool104.not, i32 61, i32 244
  %unit.0 = select i1 %tobool106.not, i32 %.178, i32 %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and100)
  %switch.selectcmp = icmp eq i32 %and100, 32
  %switch.select = select i1 %switch.selectcmp, ptr @.str.233, ptr @.str.234
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and100)
  %switch.selectcmp179 = icmp eq i32 %and100, 96
  %switch.select180 = select i1 %switch.selectcmp179, ptr @.str.232, ptr %switch.select
  %mul131 = mul nuw nsw i32 %unit.0, %and108
  %call132 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %debounce_value, i32 noundef 40, ptr noundef nonnull @.str.235, i32 noundef %mul131)
  br label %if.end136

if.else133:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %debounce_value to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 8192, ptr %debounce_value, align 2
  br label %if.end136

if.end136:                                        ; preds = %if.else133, %if.then102
  %debounce_enable.1 = phi ptr [ %switch.select180, %if.then102 ], [ @.str.236, %if.else133 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.237, ptr noundef nonnull %level_trig.1, ptr noundef nonnull %active_level.1, ptr noundef nonnull %interrupt_enable.0, ptr noundef nonnull %.str.213..str.212, ptr noundef nonnull %wake_cntrl0.0, ptr noundef nonnull %wake_cntrl1.0, ptr noundef nonnull %wake_cntrl2.0, ptr noundef nonnull %pin_sts.0, ptr noundef nonnull %pull_up_sel.0, ptr noundef nonnull %pull_up_enable.0, ptr noundef nonnull %pull_down_enable.0, ptr noundef nonnull %output_value.0, ptr noundef nonnull %output_enable.0, ptr noundef nonnull %debounce_enable.1, ptr noundef nonnull %debounce_value, i32 noundef %8) #9
  %inc = add nuw nsw i32 %i.1182, 1
  %exitcond.not = icmp eq i32 %inc, %switch.load
  br i1 %exitcond.not, label %if.end136.for.inc138_crit_edge, label %if.end136.for.body8_crit_edge

if.end136.for.body8_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8

if.end136.for.inc138_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc138

for.inc138:                                       ; preds = %if.end136.for.inc138_crit_edge, %for.body.for.inc138_crit_edge
  %inc139 = add nuw i32 %bank.0184, 1
  %11 = ptrtoint ptr %hwbank_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwbank_num, align 4
  %cmp = icmp ult i32 %inc139, %12
  br i1 %cmp, label %for.inc138.for.body_crit_edge, label %for.inc138.for.end140_crit_edge

for.inc138.for.end140_crit_edge:                  ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end140

for.inc138.for.body_crit_edge:                    ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end140:                                       ; preds = %for.inc138.for.end140_crit_edge, %entry.for.end140_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %debounce_value) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_gpio_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @do_amd_gpio_irq_handler(i32 noundef %irq, ptr noundef %dev_id)
  %cond = zext i1 %call to i32
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %ngroups = getelementptr inbounds %struct.amd_gpio, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @amd_get_group_name(ptr noundef %pctldev, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %groups = getelementptr inbounds %struct.amd_gpio, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.amd_pingroup, ptr %1, i32 %group
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %groups = getelementptr inbounds %struct.amd_gpio, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.amd_pingroup, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pins, align 4
  %5 = load ptr, ptr %groups, align 4
  %npins = getelementptr %struct.amd_pingroup, ptr %5, i32 %group, i32 2
  %6 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins, align 4
  %8 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 4) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #9
  %base = getelementptr inbounds %struct.amd_gpio, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %mul = shl i32 %pin, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !573
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call2) #9
  %trunc = trunc i32 %1 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.253)
  switch i8 %trunc, label %do.end25 [
    i8 11, label %sw.bb
    i8 3, label %sw.bb15
    i8 5, label %sw.bb17
    i8 9, label %sw.bb20
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %5, 15
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %5, 21
  %and16 = and i32 %shr, 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shr18 = lshr i32 %5, 19
  %and19 = and i32 %shr18, 3
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shr21 = lshr i32 %5, 17
  %and22 = and i32 %shr21, 3
  br label %sw.epilog

do.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.amd_gpio, ptr %call, i32 0, i32 8
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.198, i32 noundef %and.i) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb17, %sw.bb15, %sw.bb
  %arg.0 = phi i32 [ %and22, %sw.bb20 ], [ %and19, %sw.bb17 ], [ %and16, %sw.bb15 ], [ %and, %sw.bb ]
  %shl.i = shl nuw nsw i32 %arg.0, 8
  %or.i = or i32 %shl.i, %and.i
  %9 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end25
  %retval.0 = phi i32 [ -524, %do.end25 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp271.not = icmp eq i32 %num_configs, 0
  br i1 %cmp271.not, label %entry.do.body38_crit_edge, label %for.body.lr.ph

entry.do.body38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

for.body.lr.ph:                                   ; preds = %entry
  %base = getelementptr inbounds %struct.amd_gpio, ptr %call, i32 0, i32 1
  %mul = shl i32 %pin, 2
  %pdev = getelementptr inbounds %struct.amd_gpio, ptr %call, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %do.body32.for.body_crit_edge, %for.body.lr.ph
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body32.for.body_crit_edge ]
  %ret.072 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %do.body32.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.073
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %shr.i = lshr i32 %1, 8
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !574
  %trunc = trunc i32 %1 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.254)
  switch i8 %trunc, label %do.end31 [
    i8 11, label %sw.bb
    i8 3, label %sw.bb11
    i8 5, label %sw.bb15
    i8 9, label %sw.bb24
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %5, -16
  %and10 = and i32 %shr.i, 15
  %or = or i32 %and, %and10
  br label %do.body32

sw.bb11:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %and12 = and i32 %5, -2097153
  %and13 = shl i32 %shr.i, 21
  %shl = and i32 %and13, 2097152
  %or14 = or i32 %and12, %shl
  br label %do.body32

sw.bb15:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %and16 = and i32 %5, -1572865
  %and17 = shl i32 %shr.i, 19
  %or19 = and i32 %and17, 1572864
  %or23 = or i32 %or19, %and16
  br label %do.body32

sw.bb24:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %and25 = and i32 %5, -393217
  %and26 = shl i32 %shr.i, 17
  %shl27 = and i32 %and26, 393216
  %or28 = or i32 %and25, %shl27
  br label %do.body32

do.end31:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %1, 255
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.198, i32 noundef %and.i) #12
  br label %do.body32

do.body32:                                        ; preds = %do.end31, %sw.bb24, %sw.bb15, %sw.bb11, %sw.bb
  %pin_reg.0 = phi i32 [ %5, %do.end31 ], [ %or28, %sw.bb24 ], [ %or23, %sw.bb15 ], [ %or14, %sw.bb11 ], [ %or, %sw.bb ]
  %ret.1 = phi i32 [ -524, %do.end31 ], [ %ret.072, %sw.bb24 ], [ %ret.072, %sw.bb15 ], [ %ret.072, %sw.bb11 ], [ %ret.072, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !575
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %pin_reg.0)
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr37 = getelementptr i8, ptr %11, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %9) #9, !srcloc !560
  %inc = add nuw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %do.body32.do.body38_crit_edge, label %do.body32.for.body_crit_edge

do.body32.for.body_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body32.do.body38_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

do.body38:                                        ; preds = %do.body32.do.body38_crit_edge, %entry.do.body38_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.do.body38_crit_edge ], [ %ret.1, %do.body32.do.body38_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call1) #9
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_pinconf_group_get(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %groups.i = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups.i, align 4
  %pins1.i = getelementptr %struct.amd_pingroup, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pins1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call1 = tail call i32 @amd_pinconf_get(ptr noundef %pctldev, i32 noundef %5, ptr noundef %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %retval.0 = select i1 %tobool2.not, i32 0, i32 -524
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_pinconf_group_set(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %groups.i = getelementptr inbounds %struct.amd_gpio, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups.i, align 4
  %pins1.i = getelementptr %struct.amd_pingroup, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pins1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1.i, align 4
  %npins.i = getelementptr %struct.amd_pingroup, ptr %1, i32 %group, i32 2
  %4 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12.not = icmp eq i32 %5, 0
  br i1 %cmp12.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %3, i32 %i.013
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call1 = tail call i32 @amd_pinconf_set(ptr noundef %pctldev, i32 noundef %7, ptr noundef %configs, i32 noundef %num_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd_gpio_irq_enable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call1) #9
  %base = getelementptr inbounds %struct.amd_gpio, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %mul = shl i32 %5, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !576
  %7 = or i32 %6, 1572864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !577
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq, align 4
  %mul12 = shl i32 %11, 2
  %add.ptr13 = getelementptr i8, ptr %9, i32 %mul12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %7) #9, !srcloc !560
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call1, i32 noundef %call2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd_gpio_irq_disable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call1) #9
  %base = getelementptr inbounds %struct.amd_gpio, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %mul = shl i32 %5, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !578
  %7 = and i32 %6, -1572865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !579
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq, align 4
  %mul12 = shl i32 %11, 2
  %add.ptr13 = getelementptr i8, ptr %9, i32 %mul12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %7) #9, !srcloc !560
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call1, i32 noundef %call2) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @amd_irq_ack(ptr nocapture noundef %d) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd_gpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call1) #9
  %base = getelementptr inbounds %struct.amd_gpio, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %mul = shl i32 %5, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !580
  %7 = and i32 %6, -1048577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !581
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq, align 4
  %mul11 = shl i32 %11, 2
  %add.ptr12 = getelementptr i8, ptr %9, i32 %mul11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %7) #9, !srcloc !560
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call1, i32 noundef %call2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd_gpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call1) #9
  %base = getelementptr inbounds %struct.amd_gpio, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %mul = shl i32 %5, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !582
  %7 = or i32 %6, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !583
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq, align 4
  %mul11 = shl i32 %11, 2
  %add.ptr12 = getelementptr i8, ptr %9, i32 %mul11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %7) #9, !srcloc !560
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call1, i32 noundef %call2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd_gpio_irq_eoi(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call1) #9
  %base = getelementptr inbounds %struct.amd_gpio, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 252
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !584
  %5 = or i32 %4, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !585
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %5) #9, !srcloc !560
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call1, i32 noundef %call2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_gpio_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call1) #9
  %base = getelementptr inbounds %struct.amd_gpio, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %mul = shl i32 %5, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !586
  %and = and i32 %type, 15
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.255)
  switch i32 %and, label %do.end26 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 3, label %sw.bb12
    i32 4, label %sw.bb16
    i32 8, label %sw.bb20
    i32 0, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and7 = and i32 %7, -1793
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %9 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @handle_edge_irq, ptr %handle_irq.i, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and10 = and i32 %7, -1793
  %or11 = or i32 %and10, 512
  %common.i.i101 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %12 = ptrtoint ptr %common.i.i101 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %common.i.i101, align 4
  %handle_irq.i102 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %handle_irq.i102 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @handle_edge_irq, ptr %handle_irq.i102, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and14 = and i32 %7, -1793
  %or15 = or i32 %and14, 1024
  %common.i.i103 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %15 = ptrtoint ptr %common.i.i103 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %common.i.i103, align 4
  %handle_irq.i104 = getelementptr inbounds %struct.irq_desc, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %handle_irq.i104 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @handle_edge_irq, ptr %handle_irq.i104, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or17 = and i32 %7, -1793
  %and18 = or i32 %or17, 256
  %common.i.i105 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %18 = ptrtoint ptr %common.i.i105 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %common.i.i105, align 4
  %handle_irq.i106 = getelementptr inbounds %struct.irq_desc, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %handle_irq.i106 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @handle_level_irq, ptr %handle_irq.i106, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or21 = and i32 %7, -1793
  %or23 = or i32 %or21, 768
  %common.i.i107 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %21 = ptrtoint ptr %common.i.i107 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %common.i.i107, align 4
  %handle_irq.i108 = getelementptr inbounds %struct.irq_desc, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %handle_irq.i108 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @handle_level_irq, ptr %handle_irq.i108, align 4
  br label %sw.epilog

do.end26:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.amd_gpio, ptr %call1, i32 0, i32 8
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.244) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end26, %sw.bb20, %sw.bb16, %sw.bb12, %sw.bb8, %sw.bb, %entry.sw.epilog_crit_edge
  %pin_reg.0 = phi i32 [ %7, %do.end26 ], [ %7, %entry.sw.epilog_crit_edge ], [ %or23, %sw.bb20 ], [ %and18, %sw.bb16 ], [ %or15, %sw.bb12 ], [ %or11, %sw.bb8 ], [ %and7, %sw.bb ]
  %ret.0 = phi i32 [ -22, %do.end26 ], [ %and, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb20 ], [ 0, %sw.bb16 ], [ 0, %sw.bb12 ], [ 0, %sw.bb8 ], [ 0, %sw.bb ]
  %or28 = and i32 %pin_reg.0, -268441601
  %and29 = or i32 %or28, 268437504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !587
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %and29)
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %29 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hwirq, align 4
  %mul35 = shl i32 %30, 2
  %add.ptr36 = getelementptr i8, ptr %28, i32 %mul35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %26) #9, !srcloc !560
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %sw.epilog
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %33 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hwirq, align 4
  %mul41 = shl i32 %34, 2
  %add.ptr42 = getelementptr i8, ptr %32, i32 %mul41
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #9, !srcloc !557
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !588
  %36 = and i32 %35, 524288
  %cmp47.not.not = icmp eq i32 %36, 0
  br i1 %cmp47.not.not, label %while.cond.while.cond_crit_edge, label %do.body49

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

do.body49:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %or27 = or i32 %pin_reg.0, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !589
  tail call void @arm_heavy_mb() #9
  %37 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %40 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hwirq, align 4
  %mul54 = shl i32 %41, 2
  %add.ptr55 = getelementptr i8, ptr %39, i32 %mul54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %37) #9, !srcloc !560
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call1, i32 noundef %call2) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_gpio_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call1) #9
  %base = getelementptr inbounds %struct.amd_gpio, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %mul = shl i32 %5, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !590
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %7 = and i32 %6, -6291457
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %masksel = select i1 %tobool.not, i32 0, i32 24576
  %pin_reg.0 = or i32 %8, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !591
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %pin_reg.0)
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %12 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwirq, align 4
  %mul11 = shl i32 %13, 2
  %add.ptr12 = getelementptr i8, ptr %11, i32 %mul11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %9) #9, !srcloc !560
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call1, i32 noundef %call2) #9
  %irq26 = getelementptr inbounds %struct.amd_gpio, ptr %call1, i32 0, i32 10
  %14 = ptrtoint ptr %irq26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq26, align 4
  %not.tobool.not = xor i1 %tobool.not, true
  %. = zext i1 %not.tobool.not to i32
  %call.i49 = tail call i32 @irq_set_irq_wake(i32 noundef %15, i32 noundef %.) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool29.not = icmp eq i32 %call.i49, 0
  br i1 %tobool29.not, label %entry.if.end35_crit_edge, label %do.end33

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end33:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.amd_gpio, ptr %call1, i32 0, i32 8
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %cond = select i1 %tobool.not, ptr @.str.249, ptr @.str.248
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.246, ptr noundef nonnull %cond) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end33, %entry.if.end35_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @do_amd_gpio_irq_handler(i32 noundef %irq, ptr noundef %dev_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_id) #9
  %base = getelementptr inbounds %struct.amd_gpio, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 764
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !592
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %4, i32 760
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #9, !srcloc !557
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !593
  %6 = zext i32 %5 to i64
  %7 = shl nuw i64 %6, 32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_id, i32 noundef %call) #9
  %8 = and i32 %2, -12648448
  %.masked = zext i32 %8 to i64
  %9 = or i64 %7, %.masked
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not232 = icmp eq i64 %9, 0
  br i1 %tobool.not232, label %entry.for.end122_crit_edge, label %for.body.lr.ph

entry.for.end122_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end122

for.body.lr.ph:                                   ; preds = %entry
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %irq)
  %cmp37 = icmp sgt i32 %irq, -1
  %domain = getelementptr inbounds %struct.amd_gpio, ptr %dev_id, i32 0, i32 5, i32 37, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %cmp79 = icmp eq i32 %irq, 0
  %pdev98 = getelementptr inbounds %struct.amd_gpio, ptr %dev_id, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc118.for.body_crit_edge, %for.body.lr.ph
  %irqnr.0237 = phi i32 [ 0, %for.body.lr.ph ], [ %add121, %for.inc118.for.body_crit_edge ]
  %regs.0236 = phi ptr [ %12, %for.body.lr.ph ], [ %add.ptr120, %for.inc118.for.body_crit_edge ]
  %ret.0.off0235 = phi i1 [ false, %for.body.lr.ph ], [ %ret.3.off0, %for.inc118.for.body_crit_edge ]
  %status.0234 = phi i64 [ %10, %for.body.lr.ph ], [ %status.1, %for.inc118.for.body_crit_edge ]
  %mask.0233 = phi i64 [ 1, %for.body.lr.ph ], [ %shl119, %for.inc118.for.body_crit_edge ]
  %and24 = and i64 %status.0234, %mask.0233
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and24)
  %tobool25.not = icmp eq i64 %and24, 0
  br i1 %tobool25.not, label %for.body.for.inc118_crit_edge, label %if.end

for.body.for.inc118_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc118

if.end:                                           ; preds = %for.body
  %neg = xor i64 %mask.0233, -1
  %and26 = and i64 %status.0234, %neg
  br label %for.body30

for.body30:                                       ; preds = %for.inc.for.body30_crit_edge, %if.end
  %i.0230 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body30_crit_edge ]
  %ret.1.off0229 = phi i1 [ %ret.0.off0235, %if.end ], [ %ret.2.off0, %for.inc.for.body30_crit_edge ]
  %add.ptr33 = getelementptr i32, ptr %regs.0236, i32 %i.0230
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #9, !srcloc !557
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !594
  %and39 = and i32 %14, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %or.cond = select i1 %cmp37, i1 true, i1 %tobool40.not
  br i1 %or.cond, label %if.end53, label %do.body42

do.body42:                                        ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_amd_gpio_irq_handler.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_amd_gpio_irq_handler, %cleanup)) #9
          to label %if.then49 [label %cleanup], !srcloc !561

if.then49:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %pdev98 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev98, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %add = add i32 %i.0230, %irqnr.0237
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_amd_gpio_irq_handler.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.251, i32 noundef %add, i32 noundef %14) #9
  br label %cleanup

if.end53:                                         ; preds = %for.body30
  %and54 = and i32 %14, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %and56 = and i32 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %or.cond219 = or i1 %tobool55.not, %tobool57.not
  br i1 %or.cond219, label %if.end53.for.inc_crit_edge, label %if.end59

if.end53.for.inc_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end59:                                         ; preds = %if.end53
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain, align 4
  %add61 = add nuw nsw i32 %i.0230, %irqnr.0237
  %call62 = tail call i32 @generic_handle_domain_irq(ptr noundef %18, i32 noundef %add61) #9
  %call70 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_id) #9
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #9, !srcloc !557
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !595
  br i1 %cmp79, label %if.then81, label %if.end59.do.body105_crit_edge

if.end59.do.body105_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body105

if.then81:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %and82 = and i32 %20, -2049
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_amd_gpio_irq_handler.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_amd_gpio_irq_handler, %do.body105)) #9
          to label %if.then97 [label %do.body105], !srcloc !561

if.then97:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %pdev98 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev98, align 4
  %dev99 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_amd_gpio_irq_handler.__UNIQUE_ID_ddebug228, ptr noundef %dev99, ptr noundef nonnull @.str.252, i32 noundef %add61) #9
  br label %do.body105

do.body105:                                       ; preds = %if.then97, %if.then81, %if.end59.do.body105_crit_edge
  %regval.0 = phi i32 [ %and82, %if.then97 ], [ %20, %if.end59.do.body105_crit_edge ], [ %and82, %if.then81 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !596
  tail call void @arm_heavy_mb() #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %regval.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %23) #9, !srcloc !560
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_id, i32 noundef %call70) #9
  br label %for.inc

for.inc:                                          ; preds = %do.body105, %if.end53.for.inc_crit_edge
  %ret.2.off0 = phi i1 [ true, %do.body105 ], [ %ret.1.off0229, %if.end53.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0230, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.for.inc118_crit_edge, label %for.inc.for.body30_crit_edge

for.inc.for.body30_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30

for.inc.for.inc118_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc118

for.inc118:                                       ; preds = %for.inc.for.inc118_crit_edge, %for.body.for.inc118_crit_edge
  %status.1 = phi i64 [ %status.0234, %for.body.for.inc118_crit_edge ], [ %and26, %for.inc.for.inc118_crit_edge ]
  %ret.3.off0 = phi i1 [ %ret.0.off0235, %for.body.for.inc118_crit_edge ], [ %ret.2.off0, %for.inc.for.inc118_crit_edge ]
  %shl119 = shl i64 %mask.0233, 1
  %add.ptr120 = getelementptr i32, ptr %regs.0236, i32 4
  %add121 = add i32 %irqnr.0237, 4
  %tobool.not = icmp eq i64 %status.1, 0
  br i1 %tobool.not, label %for.inc118.for.end122_crit_edge, label %for.inc118.for.body_crit_edge

for.inc118.for.body_crit_edge:                    ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc118.for.end122_crit_edge:                  ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end122

for.end122:                                       ; preds = %for.inc118.for.end122_crit_edge, %entry.for.end122_crit_edge
  %ret.0.off0.lcssa = phi i1 [ false, %entry.for.end122_crit_edge ], [ %ret.3.off0, %for.inc118.for.end122_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %cmp123 = icmp slt i32 %irq, 0
  br i1 %cmp123, label %for.end122.cleanup_crit_edge, label %do.body127

for.end122.cleanup_crit_edge:                     ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body127:                                       ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #11
  %call134 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_id) #9
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr140 = getelementptr i8, ptr %25, i32 252
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr140) #9, !srcloc !557
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !597
  %27 = or i32 %26, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !598
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr149 = getelementptr i8, ptr %29, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr149, i32 %27) #9, !srcloc !560
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_id, i32 noundef %call134) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body127, %for.end122.cleanup_crit_edge, %if.then49, %do.body42
  %retval.0 = phi i1 [ %ret.0.off0.lcssa, %do.body127 ], [ true, %if.then49 ], [ false, %for.end122.cleanup_crit_edge ], [ true, %do.body42 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_gpio_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pctrl = getelementptr inbounds %struct.amd_gpio, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctrl, align 4
  %desc1 = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc1, align 4
  %npins = getelementptr inbounds %struct.pinctrl_desc, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp20.not = icmp eq i32 %7, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %5, i32 0, i32 1
  %gc.i = getelementptr inbounds %struct.amd_gpio, ptr %1, i32 0, i32 5
  %base = getelementptr inbounds %struct.amd_gpio, ptr %1, i32 0, i32 1
  %saved_regs = getelementptr inbounds %struct.amd_gpio, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %9, i32 %i.021
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %pctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pctrl, align 4
  %pin_desc_tree.i.i = getelementptr inbounds %struct.pinctrl_dev, ptr %13, i32 0, i32 2
  %call.i.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i.i, i32 noundef %11) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %if.end.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %mux_owner.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %mux_owner.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mux_owner.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.end.i
  %gpio_owner.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %gpio_owner.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpio_owner.i, align 4
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %amd_gpio_should_save.exit, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

amd_gpio_should_save.exit:                        ; preds = %lor.lhs.false.i
  %call4.i = tail call zeroext i1 @gpiochip_line_is_irq(ptr noundef %gc.i, i32 noundef %11) #9
  br i1 %call4.i, label %amd_gpio_should_save.exit.if.end_crit_edge, label %amd_gpio_should_save.exit.cleanup_crit_edge

amd_gpio_should_save.exit.cleanup_crit_edge:      ; preds = %amd_gpio_should_save.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

amd_gpio_should_save.exit.if.end_crit_edge:       ; preds = %amd_gpio_should_save.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %amd_gpio_should_save.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %mul = shl i32 %11, 2
  %add.ptr = getelementptr i8, ptr %19, i32 %mul
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !557
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !599
  %22 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %saved_regs, align 4
  %arrayidx5 = getelementptr i32, ptr %23, i32 %i.021
  %24 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %arrayidx5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %amd_gpio_should_save.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.021, 1
  %25 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_gpio_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pctrl = getelementptr inbounds %struct.amd_gpio, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctrl, align 4
  %desc1 = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc1, align 4
  %npins = getelementptr inbounds %struct.pinctrl_desc, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp18.not = icmp eq i32 %7, 0
  br i1 %cmp18.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %5, i32 0, i32 1
  %gc.i = getelementptr inbounds %struct.amd_gpio, ptr %1, i32 0, i32 5
  %saved_regs = getelementptr inbounds %struct.amd_gpio, ptr %1, i32 0, i32 9
  %base = getelementptr inbounds %struct.amd_gpio, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %9, i32 %i.019
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %pctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pctrl, align 4
  %pin_desc_tree.i.i = getelementptr inbounds %struct.pinctrl_dev, ptr %13, i32 0, i32 2
  %call.i.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i.i, i32 noundef %11) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %if.end.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %mux_owner.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %mux_owner.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mux_owner.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false.i:                                  ; preds = %if.end.i
  %gpio_owner.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %gpio_owner.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpio_owner.i, align 4
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %amd_gpio_should_save.exit, label %lor.lhs.false.i.do.body_crit_edge

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

amd_gpio_should_save.exit:                        ; preds = %lor.lhs.false.i
  %call4.i = tail call zeroext i1 @gpiochip_line_is_irq(ptr noundef %gc.i, i32 noundef %11) #9
  br i1 %call4.i, label %amd_gpio_should_save.exit.do.body_crit_edge, label %amd_gpio_should_save.exit.cleanup_crit_edge

amd_gpio_should_save.exit.cleanup_crit_edge:      ; preds = %amd_gpio_should_save.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

amd_gpio_should_save.exit.do.body_crit_edge:      ; preds = %amd_gpio_should_save.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %amd_gpio_should_save.exit.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge, %if.end.i.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !600
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %saved_regs, align 4
  %arrayidx3 = getelementptr i32, ptr %19, i32 %i.019
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx3, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %mul = shl i32 %11, 2
  %add.ptr = getelementptr i8, ptr %24, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #9, !srcloc !560
  br label %cleanup

cleanup:                                          ; preds = %do.body, %amd_gpio_should_save.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.019, 1
  %25 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gpiochip_line_is_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 274)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 274)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !418, !419, !420, !422, !423, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !529, !530, !531, !533, !534, !535, !536, !537, !538, !540, !541, !542, !544, !545}
!llvm.module.flags = !{!547, !548, !549, !550, !551, !552, !553, !554}
!llvm.ident = !{!555}

!0 = !{ptr @__initcall__kmod_pinctrl_amd__230_1099_amd_gpio_driver_init6, !1, !"__initcall__kmod_pinctrl_amd__230_1099_amd_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 1099, i32 1}
!2 = !{ptr @__exitcall_amd_gpio_driver_exit, !1, !"__exitcall_amd_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file231, !4, !"__UNIQUE_ID_file231", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 1101, i32 1}
!5 = !{ptr @__UNIQUE_ID_license232, !4, !"__UNIQUE_ID_license232", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author233, !7, !"__UNIQUE_ID_author233", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 1102, i32 1}
!8 = !{ptr @__UNIQUE_ID_description234, !9, !"__UNIQUE_ID_description234", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 1103, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 1089, i32 11}
!12 = !{ptr @amd_gpio_driver, !13, !"amd_gpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 1087, i32 31}
!14 = !{ptr @amd_gpio_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 973, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 977, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @amd_gpio_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @amd_gpio_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 1021, i32 3}
!27 = !{ptr @amd_gpio_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @amd_gpio_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @amd_gpio_probe.lock_key, !30, !"lock_key", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 1037, i32 8}
!31 = !{ptr @amd_gpio_probe.request_key, !30, !"request_key", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 1044, i32 3}
!34 = !{ptr @amd_gpio_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @amd_gpio_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 1049, i32 24}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 1056, i32 2}
!40 = !{ptr @amd_gpio_probe.__UNIQUE_ID_ddebug229, !39, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!41 = !{ptr @amd_pinctrl_desc, !42, !"amd_pinctrl_desc", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 953, i32 28}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 106, i32 2}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 107, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 108, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 109, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 110, i32 2}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 111, i32 2}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 112, i32 2}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 113, i32 2}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 114, i32 2}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 115, i32 2}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 116, i32 2}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 117, i32 2}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 118, i32 2}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 119, i32 2}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 120, i32 2}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 121, i32 2}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 122, i32 2}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 123, i32 2}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 124, i32 2}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 125, i32 2}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 126, i32 2}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 127, i32 2}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 128, i32 2}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 129, i32 2}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 130, i32 2}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 131, i32 2}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 132, i32 2}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 133, i32 2}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 134, i32 2}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 135, i32 2}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 136, i32 2}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 137, i32 2}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 138, i32 2}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 139, i32 2}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 140, i32 2}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 141, i32 2}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 142, i32 2}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 143, i32 2}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 144, i32 2}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 145, i32 2}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 146, i32 2}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 147, i32 2}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 148, i32 2}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 149, i32 2}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 150, i32 2}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 151, i32 2}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 152, i32 2}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 153, i32 2}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 154, i32 2}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 155, i32 2}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 156, i32 2}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 157, i32 2}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 158, i32 2}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 159, i32 2}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 160, i32 2}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 161, i32 2}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 162, i32 2}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 163, i32 2}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 164, i32 2}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 165, i32 2}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 166, i32 2}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 167, i32 2}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 168, i32 2}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 169, i32 2}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 170, i32 2}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 171, i32 2}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 172, i32 2}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 173, i32 2}
!179 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 174, i32 2}
!181 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 175, i32 2}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 176, i32 2}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 177, i32 2}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 178, i32 2}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 179, i32 2}
!191 = !{ptr @.str.89, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 180, i32 2}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 181, i32 2}
!195 = !{ptr @.str.91, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 182, i32 2}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 183, i32 2}
!199 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 184, i32 2}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 185, i32 2}
!203 = !{ptr @.str.95, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 186, i32 2}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 187, i32 2}
!207 = !{ptr @.str.97, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 188, i32 2}
!209 = !{ptr @.str.98, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 189, i32 2}
!211 = !{ptr @.str.99, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 190, i32 2}
!213 = !{ptr @.str.100, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 191, i32 2}
!215 = !{ptr @.str.101, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 192, i32 2}
!217 = !{ptr @.str.102, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 193, i32 2}
!219 = !{ptr @.str.103, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 194, i32 2}
!221 = !{ptr @.str.104, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 195, i32 2}
!223 = !{ptr @.str.105, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 196, i32 2}
!225 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 197, i32 2}
!227 = !{ptr @.str.107, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 198, i32 2}
!229 = !{ptr @.str.108, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 199, i32 2}
!231 = !{ptr @.str.109, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 200, i32 2}
!233 = !{ptr @.str.110, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 201, i32 2}
!235 = !{ptr @.str.111, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 202, i32 2}
!237 = !{ptr @.str.112, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 203, i32 2}
!239 = !{ptr @.str.113, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 204, i32 2}
!241 = !{ptr @.str.114, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 205, i32 2}
!243 = !{ptr @.str.115, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 206, i32 2}
!245 = !{ptr @.str.116, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 207, i32 2}
!247 = !{ptr @.str.117, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 208, i32 2}
!249 = !{ptr @.str.118, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 209, i32 2}
!251 = !{ptr @.str.119, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 210, i32 2}
!253 = !{ptr @.str.120, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 211, i32 2}
!255 = !{ptr @.str.121, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 212, i32 2}
!257 = !{ptr @.str.122, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 213, i32 2}
!259 = !{ptr @.str.123, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 214, i32 2}
!261 = !{ptr @.str.124, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 215, i32 2}
!263 = !{ptr @.str.125, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 216, i32 2}
!265 = !{ptr @.str.126, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 217, i32 2}
!267 = !{ptr @.str.127, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 218, i32 2}
!269 = !{ptr @.str.128, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 219, i32 2}
!271 = !{ptr @.str.129, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 220, i32 2}
!273 = !{ptr @.str.130, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 221, i32 2}
!275 = !{ptr @.str.131, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 222, i32 2}
!277 = !{ptr @.str.132, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 223, i32 2}
!279 = !{ptr @.str.133, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 224, i32 2}
!281 = !{ptr @.str.134, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 225, i32 2}
!283 = !{ptr @.str.135, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 226, i32 2}
!285 = !{ptr @.str.136, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 227, i32 2}
!287 = !{ptr @.str.137, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 228, i32 2}
!289 = !{ptr @.str.138, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 229, i32 2}
!291 = !{ptr @.str.139, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 230, i32 2}
!293 = !{ptr @.str.140, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 231, i32 2}
!295 = !{ptr @.str.141, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 232, i32 2}
!297 = !{ptr @.str.142, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 233, i32 2}
!299 = !{ptr @.str.143, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 234, i32 2}
!301 = !{ptr @.str.144, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 235, i32 2}
!303 = !{ptr @.str.145, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 236, i32 2}
!305 = !{ptr @.str.146, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 237, i32 2}
!307 = !{ptr @.str.147, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 238, i32 2}
!309 = !{ptr @.str.148, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 239, i32 2}
!311 = !{ptr @.str.149, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 240, i32 2}
!313 = !{ptr @.str.150, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 241, i32 2}
!315 = !{ptr @.str.151, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 242, i32 2}
!317 = !{ptr @.str.152, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 243, i32 2}
!319 = !{ptr @.str.153, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 244, i32 2}
!321 = !{ptr @.str.154, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 245, i32 2}
!323 = !{ptr @.str.155, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 246, i32 2}
!325 = !{ptr @.str.156, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 247, i32 2}
!327 = !{ptr @.str.157, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 248, i32 2}
!329 = !{ptr @.str.158, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 249, i32 2}
!331 = !{ptr @.str.159, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 250, i32 2}
!333 = !{ptr @.str.160, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 251, i32 2}
!335 = !{ptr @.str.161, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 252, i32 2}
!337 = !{ptr @.str.162, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 253, i32 2}
!339 = !{ptr @.str.163, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 254, i32 2}
!341 = !{ptr @.str.164, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 255, i32 2}
!343 = !{ptr @.str.165, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 256, i32 2}
!345 = !{ptr @.str.166, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 257, i32 2}
!347 = !{ptr @.str.167, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 258, i32 2}
!349 = !{ptr @.str.168, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 259, i32 2}
!351 = !{ptr @.str.169, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 260, i32 2}
!353 = !{ptr @.str.170, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 261, i32 2}
!355 = !{ptr @.str.171, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 262, i32 2}
!357 = !{ptr @.str.172, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 263, i32 2}
!359 = !{ptr @.str.173, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 264, i32 2}
!361 = !{ptr @.str.174, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 265, i32 2}
!363 = !{ptr @.str.175, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 266, i32 2}
!365 = !{ptr @.str.176, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 267, i32 2}
!367 = !{ptr @.str.177, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 268, i32 2}
!369 = !{ptr @.str.178, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 269, i32 2}
!371 = !{ptr @.str.179, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 270, i32 2}
!373 = !{ptr @.str.180, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 271, i32 2}
!375 = !{ptr @.str.181, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 272, i32 2}
!377 = !{ptr @.str.182, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 273, i32 2}
!379 = !{ptr @.str.183, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 274, i32 2}
!381 = !{ptr @.str.184, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 275, i32 2}
!383 = !{ptr @.str.185, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 276, i32 2}
!385 = !{ptr @.str.186, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 277, i32 2}
!387 = !{ptr @.str.187, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 278, i32 2}
!389 = !{ptr @.str.188, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 279, i32 2}
!391 = !{ptr @.str.189, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 280, i32 2}
!393 = !{ptr @.str.190, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 281, i32 2}
!395 = !{ptr @.str.191, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 282, i32 2}
!397 = !{ptr @.str.192, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 283, i32 2}
!399 = !{ptr @.str.193, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 284, i32 2}
!401 = !{ptr @.str.194, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 285, i32 2}
!403 = !{ptr @.str.195, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 286, i32 2}
!405 = !{ptr @.str.196, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 287, i32 2}
!407 = !{ptr @.str.197, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 288, i32 2}
!409 = !{ptr @kerncz_pins, !410, !"kerncz_pins", i1 false, i1 false}
!410 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 105, i32 38}
!411 = !{ptr @amd_pinctrl_ops, !412, !"amd_pinctrl_ops", i1 false, i1 false}
!412 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 715, i32 33}
!413 = !{ptr @amd_pinconf_ops, !414, !"amd_pinconf_ops", i1 false, i1 false}
!414 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 857, i32 33}
!415 = !{ptr @.str.198, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 756, i32 3}
!417 = !{ptr @.str.199, !416, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @amd_pinconf_get._entry, !416, !"_entry", i1 false, i1 false}
!419 = !{ptr @amd_pinconf_get._entry_ptr, !416, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.200, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 809, i32 4}
!422 = !{ptr @amd_pinconf_set._entry, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @amd_pinconf_set._entry_ptr, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.201, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 227, i32 17}
!426 = !{ptr @.str.202, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 251, i32 18}
!428 = !{ptr @.str.203, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 259, i32 24}
!430 = !{ptr @.str.204, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 262, i32 21}
!432 = !{ptr @.str.205, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 264, i32 21}
!434 = !{ptr @.str.206, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 267, i32 21}
!436 = !{ptr @.str.207, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 269, i32 21}
!438 = !{ptr @.str.208, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 272, i32 19}
!440 = !{ptr @.str.209, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 274, i32 19}
!442 = !{ptr @.str.210, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 278, i32 6}
!444 = !{ptr @.str.211, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 279, i32 20}
!446 = !{ptr @.str.212, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 285, i32 6}
!448 = !{ptr @.str.213, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 288, i32 6}
!450 = !{ptr @.str.214, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 291, i32 19}
!452 = !{ptr @.str.215, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 293, i32 19}
!454 = !{ptr @.str.216, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 296, i32 19}
!456 = !{ptr @.str.217, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 298, i32 19}
!458 = !{ptr @.str.218, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 301, i32 19}
!460 = !{ptr @.str.219, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 303, i32 19}
!462 = !{ptr @.str.220, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 306, i32 22}
!464 = !{ptr @.str.221, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 308, i32 20}
!466 = !{ptr @.str.222, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 310, i32 20}
!468 = !{ptr @.str.223, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 312, i32 22}
!470 = !{ptr @.str.224, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 317, i32 24}
!472 = !{ptr @.str.225, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 319, i32 24}
!474 = !{ptr @.str.226, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 323, i32 21}
!476 = !{ptr @.str.227, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 325, i32 21}
!478 = !{ptr @.str.228, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 327, i32 21}
!480 = !{ptr @.str.229, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 329, i32 21}
!482 = !{ptr @.str.230, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 333, i32 16}
!484 = !{ptr @.str.231, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 335, i32 16}
!486 = !{ptr @.str.232, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 355, i32 24}
!488 = !{ptr @.str.233, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 357, i32 24}
!490 = !{ptr @.str.234, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 359, i32 24}
!492 = !{ptr @.str.235, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 362, i32 7}
!494 = !{ptr @.str.236, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 364, i32 23}
!496 = !{ptr @.str.237, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 368, i32 18}
!498 = !{ptr @.str.238, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 301, i32 11}
!500 = !{ptr @.str.239, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 306, i32 11}
!502 = !{ptr @.str.240, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 311, i32 11}
!504 = !{ptr @.str.241, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 316, i32 11}
!506 = !{ptr @.str.242, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 321, i32 11}
!508 = !{ptr @.str.243, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 326, i32 11}
!510 = !{ptr @kerncz_groups, !511, !"kerncz_groups", i1 false, i1 false}
!511 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 299, i32 34}
!512 = !{ptr @i2c0_pins, !513, !"i2c0_pins", i1 false, i1 false}
!513 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 291, i32 23}
!514 = !{ptr @i2c1_pins, !515, !"i2c1_pins", i1 false, i1 false}
!515 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 292, i32 23}
!516 = !{ptr @i2c2_pins, !517, !"i2c2_pins", i1 false, i1 false}
!517 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 293, i32 23}
!518 = !{ptr @i2c3_pins, !519, !"i2c3_pins", i1 false, i1 false}
!519 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 294, i32 23}
!520 = !{ptr @uart0_pins, !521, !"uart0_pins", i1 false, i1 false}
!521 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 296, i32 23}
!522 = !{ptr @uart1_pins, !523, !"uart1_pins", i1 false, i1 false}
!523 = !{!"../drivers/pinctrl/pinctrl-amd.h", i32 297, i32 23}
!524 = !{ptr @amd_gpio_irqchip, !525, !"amd_gpio_irqchip", i1 false, i1 false}
!525 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 580, i32 24}
!526 = !{ptr @.str.244, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 538, i32 3}
!528 = !{ptr @.str.245, !527, !"<string literal>", i1 false, i1 false}
!529 = !{ptr @amd_gpio_irq_set_type._entry, !527, !"_entry", i1 false, i1 false}
!530 = !{ptr @amd_gpio_irq_set_type._entry_ptr, !527, !"_entry_ptr", i1 false, i1 false}
!531 = !{ptr @.str.246, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 467, i32 3}
!533 = !{ptr @.str.247, !532, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @amd_gpio_irq_set_wake._entry, !532, !"_entry", i1 false, i1 false}
!535 = !{ptr @amd_gpio_irq_set_wake._entry_ptr, !532, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.248, !532, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @.str.249, !532, !"<string literal>", i1 false, i1 false}
!538 = !{ptr @.str.250, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 632, i32 5}
!540 = !{ptr @.str.251, !539, !"<string literal>", i1 false, i1 false}
!541 = !{ptr @do_amd_gpio_irq_handler.__UNIQUE_ID_ddebug227, !539, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!542 = !{ptr @.str.252, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 655, i32 5}
!544 = !{ptr @do_amd_gpio_irq_handler.__UNIQUE_ID_ddebug228, !543, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!545 = !{ptr @amd_gpio_pm_ops, !546, !"amd_gpio_pm_ops", i1 false, i1 false}
!546 = !{!"../drivers/pinctrl/pinctrl-amd.c", i32 947, i32 32}
!547 = !{i32 1, !"wchar_size", i32 2}
!548 = !{i32 1, !"min_enum_size", i32 4}
!549 = !{i32 8, !"branch-target-enforcement", i32 0}
!550 = !{i32 8, !"sign-return-address", i32 0}
!551 = !{i32 8, !"sign-return-address-all", i32 0}
!552 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!553 = !{i32 7, !"uwtable", i32 1}
!554 = !{i32 7, !"frame-pointer", i32 2}
!555 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!556 = !{!"branch_weights", i32 1, i32 2000}
!557 = !{i64 4063784}
!558 = !{i64 2154490486}
!559 = !{i64 2154490709}
!560 = !{i64 4063366}
!561 = !{i64 2148185123, i64 2148185128, i64 2148185141, i64 2148185185, i64 2148185219, i64 2148185240}
!562 = !{i64 2154446421}
!563 = !{i64 2154447514}
!564 = !{i64 2154447821}
!565 = !{i64 2154449028}
!566 = !{i64 2154449493}
!567 = !{i64 2154450700}
!568 = !{i64 2154451789}
!569 = !{i64 2154452175}
!570 = !{i64 2154453382}
!571 = !{i64 2154454597}
!572 = !{i64 2154455800}
!573 = !{i64 2154483621}
!574 = !{i64 2154486517}
!575 = !{i64 2154488901}
!576 = !{i64 2154458051}
!577 = !{i64 2154458439}
!578 = !{i64 2154459656}
!579 = !{i64 2154460044}
!580 = !{i64 2154461261}
!581 = !{i64 2154461570}
!582 = !{i64 2154462787}
!583 = !{i64 2154463096}
!584 = !{i64 2154467632}
!585 = !{i64 2154467865}
!586 = !{i64 2154469062}
!587 = !{i64 2154471377}
!588 = !{i64 2154472131}
!589 = !{i64 2154472361}
!590 = !{i64 2154464471}
!591 = !{i64 2154464701}
!592 = !{i64 2154473556}
!593 = !{i64 2154474068}
!594 = !{i64 2154474763}
!595 = !{i64 2154478229}
!596 = !{i64 2154480945}
!597 = !{i64 2154482111}
!598 = !{i64 2154482347}
!599 = !{i64 2154491652}
!600 = !{i64 2154491891}
