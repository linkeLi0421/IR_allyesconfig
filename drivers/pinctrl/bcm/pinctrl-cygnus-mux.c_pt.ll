; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/bcm/pinctrl-cygnus-mux.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c"
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
%struct.cygnus_pin = type { i32, ptr, %struct.cygnus_gpio_mux }
%struct.cygnus_gpio_mux = type { i32, i32, i32 }
%struct.cygnus_pin_group = type { ptr, ptr, i32, %struct.cygnus_mux }
%struct.cygnus_mux = type { i32, i32, i32 }
%struct.cygnus_pin_function = type { ptr, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.cygnus_pinctrl = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.spinlock }
%struct.cygnus_mux_log = type { %struct.cygnus_mux, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pinctrl_cygnus_mux__226_1018_cygnus_pinmux_init3 = internal global ptr @cygnus_pinmux_init, section ".initcall3.init", align 4
@cygnus_pinmux_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cygnus_pinmux_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @cygnus_pinmux_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cygnus-pinmux\00", [18 x i8] zeroinitializer }, align 32
@cygnus_pinmux_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-pinmux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cygnus_pinmux_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&pinctrl->lock\00", [17 x i8] zeroinitializer }, align 32
@cygnus_pinmux_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 957, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to map I/O space\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cygnus_pinmux_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/pinctrl/bcm/pinctrl-cygnus-mux.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cygnus_pinmux_probe._entry_ptr = internal global ptr @cygnus_pinmux_probe._entry, section ".printk_index", align 4
@cygnus_pinmux_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 963, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@cygnus_pinmux_probe._entry_ptr.8 = internal global ptr @cygnus_pinmux_probe._entry.7, section ".printk_index", align 4
@cygnus_pinmux_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 969, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to initialize IOMUX log\0A\00", [32 x i8] zeroinitializer }, align 32
@cygnus_pinmux_probe._entry_ptr.11 = internal global ptr @cygnus_pinmux_probe._entry.9, section ".printk_index", align 4
@cygnus_pins = internal global { [180 x %struct.cygnus_pin], [912 x i8] } { [180 x %struct.cygnus_pin] [%struct.cygnus_pin { i32 0, ptr @.str.15, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 1, ptr @.str.16, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 2, ptr @.str.17, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 3, ptr @.str.18, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 4, ptr @.str.19, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 5, ptr @.str.20, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 6, ptr @.str.21, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 7, ptr @.str.22, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 8, ptr @.str.23, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 9, ptr @.str.24, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 10, ptr @.str.25, %struct.cygnus_gpio_mux { i32 1, i32 40, i32 0 } }, %struct.cygnus_pin { i32 11, ptr @.str.26, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 28 } }, %struct.cygnus_pin { i32 12, ptr @.str.27, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 13, ptr @.str.28, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 14, ptr @.str.29, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 15, ptr @.str.30, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 16, ptr @.str.31, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 17, ptr @.str.32, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 18, ptr @.str.33, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 19, ptr @.str.34, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 20, ptr @.str.35, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 21, ptr @.str.36, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 22, ptr @.str.37, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 23, ptr @.str.38, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 24, ptr @.str.39, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 25, ptr @.str.40, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 26, ptr @.str.41, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 27, ptr @.str.42, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 28, ptr @.str.43, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 29, ptr @.str.44, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 30, ptr @.str.45, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 31, ptr @.str.46, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 32, ptr @.str.47, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 33, ptr @.str.48, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 34, ptr @.str.49, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 35, ptr @.str.50, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 36, ptr @.str.51, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 37, ptr @.str.52, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 38, ptr @.str.53, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 30 } }, %struct.cygnus_pin { i32 39, ptr @.str.54, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 28 } }, %struct.cygnus_pin { i32 40, ptr @.str.55, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 26 } }, %struct.cygnus_pin { i32 41, ptr @.str.56, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 24 } }, %struct.cygnus_pin { i32 42, ptr @.str.57, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 22 } }, %struct.cygnus_pin { i32 43, ptr @.str.58, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 20 } }, %struct.cygnus_pin { i32 44, ptr @.str.59, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 18 } }, %struct.cygnus_pin { i32 45, ptr @.str.60, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 16 } }, %struct.cygnus_pin { i32 46, ptr @.str.61, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 14 } }, %struct.cygnus_pin { i32 47, ptr @.str.62, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 12 } }, %struct.cygnus_pin { i32 48, ptr @.str.63, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 10 } }, %struct.cygnus_pin { i32 49, ptr @.str.64, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 8 } }, %struct.cygnus_pin { i32 50, ptr @.str.65, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 6 } }, %struct.cygnus_pin { i32 51, ptr @.str.66, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 4 } }, %struct.cygnus_pin { i32 52, ptr @.str.67, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 2 } }, %struct.cygnus_pin { i32 53, ptr @.str.68, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 0 } }, %struct.cygnus_pin { i32 54, ptr @.str.69, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 10 } }, %struct.cygnus_pin { i32 55, ptr @.str.70, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 6 } }, %struct.cygnus_pin { i32 56, ptr @.str.71, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 8 } }, %struct.cygnus_pin { i32 57, ptr @.str.72, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 4 } }, %struct.cygnus_pin { i32 58, ptr @.str.73, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 2 } }, %struct.cygnus_pin { i32 59, ptr @.str.74, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 30 } }, %struct.cygnus_pin { i32 60, ptr @.str.75, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 0 } }, %struct.cygnus_pin { i32 61, ptr @.str.76, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 28 } }, %struct.cygnus_pin { i32 62, ptr @.str.77, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 26 } }, %struct.cygnus_pin { i32 63, ptr @.str.78, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 22 } }, %struct.cygnus_pin { i32 64, ptr @.str.79, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 24 } }, %struct.cygnus_pin { i32 65, ptr @.str.80, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 20 } }, %struct.cygnus_pin { i32 66, ptr @.str.81, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 18 } }, %struct.cygnus_pin { i32 67, ptr @.str.82, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 14 } }, %struct.cygnus_pin { i32 68, ptr @.str.83, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 16 } }, %struct.cygnus_pin { i32 69, ptr @.str.84, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 12 } }, %struct.cygnus_pin { i32 70, ptr @.str.85, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 10 } }, %struct.cygnus_pin { i32 71, ptr @.str.86, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 8 } }, %struct.cygnus_pin { i32 72, ptr @.str.87, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 6 } }, %struct.cygnus_pin { i32 73, ptr @.str.88, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 4 } }, %struct.cygnus_pin { i32 74, ptr @.str.89, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 2 } }, %struct.cygnus_pin { i32 75, ptr @.str.90, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 0 } }, %struct.cygnus_pin { i32 76, ptr @.str.91, %struct.cygnus_gpio_mux { i32 1, i32 32, i32 14 } }, %struct.cygnus_pin { i32 77, ptr @.str.92, %struct.cygnus_gpio_mux { i32 1, i32 32, i32 12 } }, %struct.cygnus_pin { i32 78, ptr @.str.93, %struct.cygnus_gpio_mux { i32 1, i32 32, i32 10 } }, %struct.cygnus_pin { i32 79, ptr @.str.94, %struct.cygnus_gpio_mux { i32 1, i32 32, i32 8 } }, %struct.cygnus_pin { i32 80, ptr @.str.95, %struct.cygnus_gpio_mux { i32 1, i32 32, i32 6 } }, %struct.cygnus_pin { i32 81, ptr @.str.96, %struct.cygnus_gpio_mux { i32 1, i32 32, i32 4 } }, %struct.cygnus_pin { i32 82, ptr @.str.97, %struct.cygnus_gpio_mux { i32 1, i32 32, i32 2 } }, %struct.cygnus_pin { i32 83, ptr @.str.98, %struct.cygnus_gpio_mux { i32 1, i32 32, i32 0 } }, %struct.cygnus_pin { i32 84, ptr @.str.99, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 6 } }, %struct.cygnus_pin { i32 85, ptr @.str.100, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 4 } }, %struct.cygnus_pin { i32 86, ptr @.str.101, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 2 } }, %struct.cygnus_pin { i32 87, ptr @.str.102, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 0 } }, %struct.cygnus_pin { i32 88, ptr @.str.103, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 30 } }, %struct.cygnus_pin { i32 89, ptr @.str.104, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 28 } }, %struct.cygnus_pin { i32 90, ptr @.str.105, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 24 } }, %struct.cygnus_pin { i32 91, ptr @.str.106, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 10 } }, %struct.cygnus_pin { i32 92, ptr @.str.107, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 26 } }, %struct.cygnus_pin { i32 93, ptr @.str.108, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 8 } }, %struct.cygnus_pin { i32 94, ptr @.str.109, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 26 } }, %struct.cygnus_pin { i32 95, ptr @.str.110, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 24 } }, %struct.cygnus_pin { i32 96, ptr @.str.111, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 22 } }, %struct.cygnus_pin { i32 97, ptr @.str.112, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 20 } }, %struct.cygnus_pin { i32 98, ptr @.str.113, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 18 } }, %struct.cygnus_pin { i32 99, ptr @.str.114, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 16 } }, %struct.cygnus_pin { i32 100, ptr @.str.115, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 12 } }, %struct.cygnus_pin { i32 101, ptr @.str.116, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 30 } }, %struct.cygnus_pin { i32 102, ptr @.str.117, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 14 } }, %struct.cygnus_pin { i32 103, ptr @.str.118, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 28 } }, %struct.cygnus_pin { i32 104, ptr @.str.119, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 22 } }, %struct.cygnus_pin { i32 105, ptr @.str.120, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 20 } }, %struct.cygnus_pin { i32 106, ptr @.str.121, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 14 } }, %struct.cygnus_pin { i32 107, ptr @.str.122, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 16 } }, %struct.cygnus_pin { i32 108, ptr @.str.123, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 12 } }, %struct.cygnus_pin { i32 109, ptr @.str.124, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 18 } }, %struct.cygnus_pin { i32 110, ptr @.str.125, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 30 } }, %struct.cygnus_pin { i32 111, ptr @.str.126, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 28 } }, %struct.cygnus_pin { i32 112, ptr @.str.127, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 26 } }, %struct.cygnus_pin { i32 113, ptr @.str.128, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 24 } }, %struct.cygnus_pin { i32 114, ptr @.str.129, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 22 } }, %struct.cygnus_pin { i32 115, ptr @.str.130, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 20 } }, %struct.cygnus_pin { i32 116, ptr @.str.131, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 18 } }, %struct.cygnus_pin { i32 117, ptr @.str.132, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 16 } }, %struct.cygnus_pin { i32 118, ptr @.str.133, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 14 } }, %struct.cygnus_pin { i32 119, ptr @.str.134, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 12 } }, %struct.cygnus_pin { i32 120, ptr @.str.135, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 10 } }, %struct.cygnus_pin { i32 121, ptr @.str.136, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 8 } }, %struct.cygnus_pin { i32 122, ptr @.str.137, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 6 } }, %struct.cygnus_pin { i32 123, ptr @.str.138, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 4 } }, %struct.cygnus_pin { i32 124, ptr @.str.139, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 2 } }, %struct.cygnus_pin { i32 125, ptr @.str.140, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 0 } }, %struct.cygnus_pin { i32 126, ptr @.str.141, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 26 } }, %struct.cygnus_pin { i32 127, ptr @.str.142, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 24 } }, %struct.cygnus_pin { i32 128, ptr @.str.143, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 22 } }, %struct.cygnus_pin { i32 129, ptr @.str.144, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 0 } }, %struct.cygnus_pin { i32 130, ptr @.str.145, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 20 } }, %struct.cygnus_pin { i32 131, ptr @.str.146, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 18 } }, %struct.cygnus_pin { i32 132, ptr @.str.147, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 16 } }, %struct.cygnus_pin { i32 133, ptr @.str.148, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 14 } }, %struct.cygnus_pin { i32 134, ptr @.str.149, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 12 } }, %struct.cygnus_pin { i32 135, ptr @.str.150, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 10 } }, %struct.cygnus_pin { i32 136, ptr @.str.151, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 8 } }, %struct.cygnus_pin { i32 137, ptr @.str.152, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 6 } }, %struct.cygnus_pin { i32 138, ptr @.str.153, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 4 } }, %struct.cygnus_pin { i32 139, ptr @.str.154, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 2 } }, %struct.cygnus_pin { i32 140, ptr @.str.155, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 22 } }, %struct.cygnus_pin { i32 141, ptr @.str.156, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 30 } }, %struct.cygnus_pin { i32 142, ptr @.str.157, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 28 } }, %struct.cygnus_pin { i32 143, ptr @.str.158, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 26 } }, %struct.cygnus_pin { i32 144, ptr @.str.159, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 24 } }, %struct.cygnus_pin { i32 145, ptr @.str.160, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 20 } }, %struct.cygnus_pin { i32 146, ptr @.str.161, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 18 } }, %struct.cygnus_pin { i32 147, ptr @.str.162, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 16 } }, %struct.cygnus_pin { i32 148, ptr @.str.163, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 14 } }, %struct.cygnus_pin { i32 149, ptr @.str.164, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 12 } }, %struct.cygnus_pin { i32 150, ptr @.str.165, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 10 } }, %struct.cygnus_pin { i32 151, ptr @.str.166, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 8 } }, %struct.cygnus_pin { i32 152, ptr @.str.167, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 6 } }, %struct.cygnus_pin { i32 153, ptr @.str.168, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 4 } }, %struct.cygnus_pin { i32 154, ptr @.str.169, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 2 } }, %struct.cygnus_pin { i32 155, ptr @.str.170, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 0 } }, %struct.cygnus_pin { i32 156, ptr @.str.171, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 30 } }, %struct.cygnus_pin { i32 157, ptr @.str.172, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 0 } }, %struct.cygnus_pin { i32 158, ptr @.str.173, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 2 } }, %struct.cygnus_pin { i32 159, ptr @.str.174, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 4 } }, %struct.cygnus_pin { i32 160, ptr @.str.175, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 6 } }, %struct.cygnus_pin { i32 161, ptr @.str.176, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 8 } }, %struct.cygnus_pin { i32 162, ptr @.str.177, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 10 } }, %struct.cygnus_pin { i32 163, ptr @.str.178, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 12 } }, %struct.cygnus_pin { i32 164, ptr @.str.179, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 14 } }, %struct.cygnus_pin { i32 165, ptr @.str.180, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 16 } }, %struct.cygnus_pin { i32 166, ptr @.str.181, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 18 } }, %struct.cygnus_pin { i32 167, ptr @.str.182, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 20 } }, %struct.cygnus_pin { i32 168, ptr @.str.183, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 22 } }, %struct.cygnus_pin { i32 169, ptr @.str.184, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 24 } }, %struct.cygnus_pin { i32 170, ptr @.str.185, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 26 } }, %struct.cygnus_pin { i32 171, ptr @.str.186, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 28 } }, %struct.cygnus_pin { i32 172, ptr @.str.187, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 30 } }, %struct.cygnus_pin { i32 173, ptr @.str.188, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 174, ptr @.str.189, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 175, ptr @.str.190, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 176, ptr @.str.191, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 177, ptr @.str.192, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 178, ptr @.str.193, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 179, ptr @.str.194, %struct.cygnus_gpio_mux zeroinitializer }], [912 x i8] zeroinitializer }, align 32
@cygnus_pin_groups = internal constant { [86 x %struct.cygnus_pin_group], [528 x i8] } { [86 x %struct.cygnus_pin_group] [%struct.cygnus_pin_group { ptr @.str.195, ptr @i2s2_0_pins, i32 1, %struct.cygnus_mux { i32 0, i32 0, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.196, ptr @i2s2_1_pins, i32 1, %struct.cygnus_mux { i32 0, i32 4, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.197, ptr @i2s2_2_pins, i32 1, %struct.cygnus_mux { i32 0, i32 8, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.198, ptr @i2s2_3_pins, i32 1, %struct.cygnus_mux { i32 0, i32 12, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.199, ptr @i2s2_4_pins, i32 1, %struct.cygnus_mux { i32 0, i32 16, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.200, ptr @pwm4_pins, i32 1, %struct.cygnus_mux { i32 0, i32 20, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.201, ptr @pwm5_pins, i32 1, %struct.cygnus_mux { i32 0, i32 24, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.202, ptr @key0_pins, i32 1, %struct.cygnus_mux { i32 4, i32 0, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.203, ptr @key1_pins, i32 1, %struct.cygnus_mux { i32 4, i32 4, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.204, ptr @key2_pins, i32 1, %struct.cygnus_mux { i32 4, i32 8, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.205, ptr @key3_pins, i32 1, %struct.cygnus_mux { i32 4, i32 12, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.206, ptr @key4_pins, i32 1, %struct.cygnus_mux { i32 4, i32 16, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.207, ptr @key5_pins, i32 1, %struct.cygnus_mux { i32 4, i32 20, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.208, ptr @key6_pins, i32 1, %struct.cygnus_mux { i32 4, i32 24, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.209, ptr @audio_dte0_pins, i32 1, %struct.cygnus_mux { i32 4, i32 24, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.210, ptr @key7_pins, i32 1, %struct.cygnus_mux { i32 4, i32 28, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.211, ptr @audio_dte1_pins, i32 1, %struct.cygnus_mux { i32 4, i32 28, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.212, ptr @key8_pins, i32 1, %struct.cygnus_mux { i32 8, i32 0, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.213, ptr @key9_pins, i32 1, %struct.cygnus_mux { i32 8, i32 4, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.214, ptr @key10_pins, i32 1, %struct.cygnus_mux { i32 8, i32 8, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.215, ptr @key11_pins, i32 1, %struct.cygnus_mux { i32 8, i32 12, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.216, ptr @key12_pins, i32 1, %struct.cygnus_mux { i32 8, i32 16, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.217, ptr @key13_pins, i32 1, %struct.cygnus_mux { i32 8, i32 20, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.218, ptr @key14_pins, i32 1, %struct.cygnus_mux { i32 8, i32 24, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.219, ptr @audio_dte2_pins, i32 1, %struct.cygnus_mux { i32 8, i32 24, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.220, ptr @key15_pins, i32 1, %struct.cygnus_mux { i32 8, i32 28, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.221, ptr @audio_dte3_pins, i32 1, %struct.cygnus_mux { i32 8, i32 28, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.222, ptr @pwm0_pins, i32 1, %struct.cygnus_mux { i32 12, i32 0, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.223, ptr @pwm1_pins, i32 1, %struct.cygnus_mux { i32 12, i32 4, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.224, ptr @pwm2_pins, i32 1, %struct.cygnus_mux { i32 12, i32 8, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.225, ptr @pwm3_pins, i32 1, %struct.cygnus_mux { i32 12, i32 12, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.226, ptr @sdio0_pins, i32 6, %struct.cygnus_mux { i32 12, i32 16, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.227, ptr @smart_card0_pins, i32 5, %struct.cygnus_mux { i32 12, i32 20, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.228, ptr @i2s0_0_pins, i32 4, %struct.cygnus_mux { i32 12, i32 20, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.229, ptr @spdif_pins, i32 1, %struct.cygnus_mux { i32 12, i32 20, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.230, ptr @smart_card1_pins, i32 5, %struct.cygnus_mux { i32 12, i32 24, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.231, ptr @i2s1_0_pins, i32 4, %struct.cygnus_mux { i32 12, i32 24, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.232, ptr @spi0_pins, i32 4, %struct.cygnus_mux { i32 16, i32 0, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.233, ptr @spi1_pins, i32 4, %struct.cygnus_mux { i32 16, i32 4, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.234, ptr @spi2_pins, i32 4, %struct.cygnus_mux { i32 16, i32 8, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.235, ptr @spi3_pins, i32 4, %struct.cygnus_mux { i32 16, i32 12, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.236, ptr @sw_led0_0_pins, i32 4, %struct.cygnus_mux { i32 16, i32 12, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.237, ptr @d1w_pins, i32 2, %struct.cygnus_mux { i32 16, i32 16, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.238, ptr @uart4_pins, i32 2, %struct.cygnus_mux { i32 16, i32 16, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.239, ptr @sw_led2_0_pins, i32 2, %struct.cygnus_mux { i32 16, i32 16, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.240, ptr @lcd_pins, i32 30, %struct.cygnus_mux { i32 16, i32 20, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.241, ptr @sram_0_pins, i32 30, %struct.cygnus_mux { i32 16, i32 20, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.242, ptr @spi5_pins, i32 4, %struct.cygnus_mux { i32 16, i32 20, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.243, ptr @uart0_pins, i32 4, %struct.cygnus_mux { i32 20, i32 0, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.244, ptr @sw_led0_1_pins, i32 4, %struct.cygnus_mux { i32 20, i32 0, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.245, ptr @uart1_dte_pins, i32 4, %struct.cygnus_mux { i32 20, i32 4, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.246, ptr @uart2_pins, i32 4, %struct.cygnus_mux { i32 20, i32 4, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.247, ptr @uart1_pins, i32 4, %struct.cygnus_mux { i32 20, i32 8, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.248, ptr @uart3_pins, i32 2, %struct.cygnus_mux { i32 20, i32 12, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.249, ptr @qspi_0_pins, i32 4, %struct.cygnus_mux { i32 20, i32 16, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.250, ptr @nand_pins, i32 16, %struct.cygnus_mux { i32 20, i32 20, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.251, ptr @sdio0_cd_pins, i32 1, %struct.cygnus_mux { i32 24, i32 0, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.252, ptr @sdio0_mmc_pins, i32 3, %struct.cygnus_mux { i32 24, i32 4, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.253, ptr @sdio1_data_0_pins, i32 2, %struct.cygnus_mux { i32 24, i32 8, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.254, ptr @can0_pins, i32 2, %struct.cygnus_mux { i32 24, i32 8, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.255, ptr @spi4_0_pins, i32 2, %struct.cygnus_mux { i32 24, i32 8, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.256, ptr @sdio1_data_1_pins, i32 2, %struct.cygnus_mux { i32 24, i32 12, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.257, ptr @can1_pins, i32 2, %struct.cygnus_mux { i32 24, i32 12, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.258, ptr @spi4_1_pins, i32 2, %struct.cygnus_mux { i32 24, i32 12, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.259, ptr @sdio1_cd_pins, i32 1, %struct.cygnus_mux { i32 24, i32 16, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.260, ptr @sdio1_led_pins, i32 2, %struct.cygnus_mux { i32 24, i32 20, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.261, ptr @sw_led2_1_pins, i32 2, %struct.cygnus_mux { i32 24, i32 20, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.262, ptr @sdio1_mmc_pins, i32 3, %struct.cygnus_mux { i32 24, i32 24, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.263, ptr @cam_led_pins, i32 5, %struct.cygnus_mux { i32 28, i32 0, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.264, ptr @sw_led1_pins, i32 4, %struct.cygnus_mux { i32 28, i32 0, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.265, ptr @cam_0_pins, i32 5, %struct.cygnus_mux { i32 28, i32 4, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.266, ptr @cam_1_pins, i32 8, %struct.cygnus_mux { i32 28, i32 8, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.267, ptr @sram_1_pins, i32 8, %struct.cygnus_mux { i32 28, i32 8, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.268, ptr @qspi_1_pins, i32 2, %struct.cygnus_mux { i32 28, i32 12, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.269, ptr @bsc1_pins, i32 2, %struct.cygnus_mux { i32 28, i32 16, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.270, ptr @pcie_clkreq_pins, i32 2, %struct.cygnus_mux { i32 28, i32 16, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.271, ptr @smart_card0_fcb_pins, i32 1, %struct.cygnus_mux { i32 32, i32 0, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.272, ptr @i2s0_1_pins, i32 1, %struct.cygnus_mux { i32 32, i32 0, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.273, ptr @smart_card1_fcb_pins, i32 1, %struct.cygnus_mux { i32 32, i32 4, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.274, ptr @i2s1_1_pins, i32 1, %struct.cygnus_mux { i32 32, i32 4, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.275, ptr @gpio0_3p3_pins, i32 1, %struct.cygnus_mux { i32 40, i32 0, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.276, ptr @usb0_oc_pins, i32 1, %struct.cygnus_mux { i32 40, i32 0, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.277, ptr @gpio1_3p3_pins, i32 1, %struct.cygnus_mux { i32 40, i32 4, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.278, ptr @usb1_oc_pins, i32 1, %struct.cygnus_mux { i32 40, i32 4, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.279, ptr @gpio2_3p3_pins, i32 1, %struct.cygnus_mux { i32 40, i32 8, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.280, ptr @usb2_oc_pins, i32 1, %struct.cygnus_mux { i32 40, i32 8, i32 1 } }], [528 x i8] zeroinitializer }, align 32
@cygnus_pin_functions = internal constant { [43 x %struct.cygnus_pin_function], [156 x i8] } { [43 x %struct.cygnus_pin_function] [%struct.cygnus_pin_function { ptr @.str.281, ptr @i2s0_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.282, ptr @i2s1_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.283, ptr @i2s2_grps, i32 5 }, %struct.cygnus_pin_function { ptr @.str.284, ptr @spdif_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.53, ptr @pwm0_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.54, ptr @pwm1_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.55, ptr @pwm2_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.56, ptr @pwm3_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.285, ptr @pwm4_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.286, ptr @pwm5_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.287, ptr @key_grps, i32 16 }, %struct.cygnus_pin_function { ptr @.str.288, ptr @audio_dte_grps, i32 4 }, %struct.cygnus_pin_function { ptr @.str.289, ptr @smart_card0_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.290, ptr @smart_card1_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.291, ptr @spi0_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.292, ptr @spi1_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.293, ptr @spi2_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.294, ptr @spi3_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.295, ptr @spi4_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.296, ptr @spi5_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.297, ptr @sw_led0_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.298, ptr @sw_led1_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.299, ptr @sw_led2_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.300, ptr @d1w_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.301, ptr @lcd_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.302, ptr @sram_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.303, ptr @uart0_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.304, ptr @uart1_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.305, ptr @uart2_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.306, ptr @uart3_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.307, ptr @uart4_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.308, ptr @qspi_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.309, ptr @nand_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.310, ptr @sdio0_grps, i32 3 }, %struct.cygnus_pin_function { ptr @.str.311, ptr @sdio1_grps, i32 5 }, %struct.cygnus_pin_function { ptr @.str.312, ptr @can0_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.313, ptr @can1_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.314, ptr @cam_grps, i32 3 }, %struct.cygnus_pin_function { ptr @.str.315, ptr @bsc1_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.316, ptr @pcie_clkreq_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.317, ptr @usb0_oc_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.318, ptr @usb1_oc_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.319, ptr @usb2_oc_grps, i32 1 }], [156 x i8] zeroinitializer }, align 32
@cygnus_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str, ptr null, i32 0, ptr @cygnus_pinctrl_ops, ptr @cygnus_pinmux_ops, ptr null, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@cygnus_pinmux_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 993, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to register Cygnus IOMUX pinctrl\0A\00", [55 x i8] zeroinitializer }, align 32
@cygnus_pinmux_probe._entry_ptr.14 = internal global ptr @cygnus_pinmux_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ext_device_reset_n\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chip_mode0\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chip_mode1\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chip_mode2\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chip_mode3\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chip_mode4\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bsc0_scl\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bsc0_sda\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bsc1_scl\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bsc1_sda\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"d1w_dq\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"d1wowstz_l\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio9\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio10\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio11\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio12\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio13\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio14\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio15\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio16\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio17\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio18\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio19\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio20\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio21\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio22\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio23\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mdc\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm0\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sc0_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sc0_cmdvcc_l\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sc0_detect\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sc0_fcb\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sc0_io\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sc0_rst_l\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sc1_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sc1_cmdvcc_l\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sc1_detect\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sc1_fcb\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sc1_io\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sc1_rst_l\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi0_mosi\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi0_miso\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi0_ss\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi1_mosi\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi1_miso\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi1_ss\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi2_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi2_mosi\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi2_miso\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi2_ss\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi3_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi3_mosi\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi3_miso\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi3_ss\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_cts\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_rts\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart0_rx\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart0_tx\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_cts\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_dcd\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_dsr\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_dtr\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart1_ri\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_rts\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart1_rx\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart1_tx\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart3_rx\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart3_tx\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdio1_clk_sdcard\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdio1_cmd\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio1_data0\00", [20 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio1_data1\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio1_data2\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio1_data3\00", [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdio1_wp_n\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdio1_card_rst\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdio1_led_on\00", [19 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdio1_cd\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdio0_clk_sdcard\00", [47 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdio0_cmd\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio0_data0\00", [20 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio0_data1\00", [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio0_data2\00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio0_data3\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdio0_wp_n\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdio0_card_rst\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdio0_led_on\00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdio0_cd\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sflash_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sflash_cs_l\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sflash_mosi\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sflash_miso\00", [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sflash_wp_n\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sflash_hold_n\00", [18 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_ale\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nand_ce0_l\00", [21 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nand_ce1_l\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_cle\00", [23 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_dq0\00", [23 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_dq1\00", [23 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_dq2\00", [23 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_dq3\00", [23 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_dq4\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_dq5\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_dq6\00", [23 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_dq7\00", [23 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nand_rb_l\00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nand_re_l\00", [22 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nand_we_l\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nand_wp_l\00", [22 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_clac\00", [23 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_clcp\00", [23 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_cld0\00", [23 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_cld1\00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcd_cld10\00", [22 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcd_cld11\00", [22 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcd_cld12\00", [22 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcd_cld13\00", [22 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcd_cld14\00", [22 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcd_cld15\00", [22 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcd_cld16\00", [22 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcd_cld17\00", [22 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcd_cld18\00", [22 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcd_cld19\00", [22 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_cld2\00", [23 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcd_cld20\00", [22 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcd_cld21\00", [22 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcd_cld22\00", [22 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcd_cld23\00", [22 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_cld3\00", [23 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_cld4\00", [23 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_cld5\00", [23 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_cld6\00", [23 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_cld7\00", [23 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_cld8\00", [23 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_cld9\00", [23 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_clfp\00", [23 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_clle\00", [23 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_cllp\00", [23 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lcd_clpower\00", [20 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"camera_vsync\00", [19 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"camera_trigger\00", [17 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"camera_strobe\00", [18 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"camera_standby\00", [17 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"camera_reset_n\00", [17 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"camera_pixdata9\00", [16 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"camera_pixdata8\00", [16 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"camera_pixdata7\00", [16 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"camera_pixdata6\00", [16 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"camera_pixdata5\00", [16 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"camera_pixdata4\00", [16 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"camera_pixdata3\00", [16 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"camera_pixdata2\00", [16 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"camera_pixdata1\00", [16 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"camera_pixdata0\00", [16 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"camera_pixclk\00", [18 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"camera_hsync\00", [19 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"camera_pll_ref_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb_id_indication\00", [46 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb_vbus_indication\00", [44 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio0_3p3\00", [22 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio1_3p3\00", [22 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio2_3p3\00", [22 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio3_3p3\00", [22 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s2_0_grp\00", [21 x i8] zeroinitializer }, align 32
@i2s2_0_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 12], [28 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s2_1_grp\00", [21 x i8] zeroinitializer }, align 32
@i2s2_1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 13], [28 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s2_2_grp\00", [21 x i8] zeroinitializer }, align 32
@i2s2_2_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 14], [28 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s2_3_grp\00", [21 x i8] zeroinitializer }, align 32
@i2s2_3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 15], [28 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s2_4_grp\00", [21 x i8] zeroinitializer }, align 32
@i2s2_4_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 16], [28 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm4_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm4_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 17], [28 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm5_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm5_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 18], [28 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"key0_grp\00", [23 x i8] zeroinitializer }, align 32
@key0_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 20], [28 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"key1_grp\00", [23 x i8] zeroinitializer }, align 32
@key1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 21], [28 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"key2_grp\00", [23 x i8] zeroinitializer }, align 32
@key2_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 22], [28 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"key3_grp\00", [23 x i8] zeroinitializer }, align 32
@key3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 23], [28 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"key4_grp\00", [23 x i8] zeroinitializer }, align 32
@key4_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 24], [28 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"key5_grp\00", [23 x i8] zeroinitializer }, align 32
@key5_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 25], [28 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"key6_grp\00", [23 x i8] zeroinitializer }, align 32
@key6_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 26], [28 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_dte0_grp\00", [17 x i8] zeroinitializer }, align 32
@audio_dte0_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 26], [28 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"key7_grp\00", [23 x i8] zeroinitializer }, align 32
@key7_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 27], [28 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_dte1_grp\00", [17 x i8] zeroinitializer }, align 32
@audio_dte1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 27], [28 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"key8_grp\00", [23 x i8] zeroinitializer }, align 32
@key8_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 28], [28 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"key9_grp\00", [23 x i8] zeroinitializer }, align 32
@key9_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 29], [28 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"key10_grp\00", [22 x i8] zeroinitializer }, align 32
@key10_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 30], [28 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"key11_grp\00", [22 x i8] zeroinitializer }, align 32
@key11_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 31], [28 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"key12_grp\00", [22 x i8] zeroinitializer }, align 32
@key12_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 32], [28 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"key13_grp\00", [22 x i8] zeroinitializer }, align 32
@key13_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 33], [28 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"key14_grp\00", [22 x i8] zeroinitializer }, align 32
@key14_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 34], [28 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_dte2_grp\00", [17 x i8] zeroinitializer }, align 32
@audio_dte2_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 34], [28 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"key15_grp\00", [22 x i8] zeroinitializer }, align 32
@key15_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 35], [28 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_dte3_grp\00", [17 x i8] zeroinitializer }, align 32
@audio_dte3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 35], [28 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm0_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm0_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 38], [28 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm1_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 39], [28 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm2_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm2_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 40], [28 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm3_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 41], [28 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdio0_grp\00", [22 x i8] zeroinitializer }, align 32
@sdio0_pins = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 94, i32 95, i32 96, i32 97, i32 98, i32 99], [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smart_card0_grp\00", [16 x i8] zeroinitializer }, align 32
@smart_card0_pins = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 42, i32 43, i32 44, i32 46, i32 47], [44 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s0_0_grp\00", [21 x i8] zeroinitializer }, align 32
@i2s0_0_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 42, i32 43, i32 44, i32 46], [16 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_grp\00", [22 x i8] zeroinitializer }, align 32
@spdif_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 47], [28 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smart_card1_grp\00", [16 x i8] zeroinitializer }, align 32
@smart_card1_pins = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 48, i32 49, i32 50, i32 52, i32 53], [44 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s1_0_grp\00", [21 x i8] zeroinitializer }, align 32
@i2s1_0_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 48, i32 49, i32 50, i32 52], [16 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi0_grp\00", [23 x i8] zeroinitializer }, align 32
@spi0_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 54, i32 55, i32 56, i32 57], [16 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi1_grp\00", [23 x i8] zeroinitializer }, align 32
@spi1_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 58, i32 59, i32 60, i32 61], [16 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi2_grp\00", [23 x i8] zeroinitializer }, align 32
@spi2_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 62, i32 63, i32 64, i32 65], [16 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi3_grp\00", [23 x i8] zeroinitializer }, align 32
@spi3_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 66, i32 67, i32 68, i32 69], [16 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sw_led0_0_grp\00", [18 x i8] zeroinitializer }, align 32
@sw_led0_0_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 66, i32 67, i32 68, i32 69], [16 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"d1w_grp\00", [24 x i8] zeroinitializer }, align 32
@d1w_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 10, i32 11], [24 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart4_grp\00", [22 x i8] zeroinitializer }, align 32
@uart4_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 10, i32 11], [24 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sw_led2_0_grp\00", [18 x i8] zeroinitializer }, align 32
@sw_led2_0_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 10, i32 11], [24 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lcd_grp\00", [24 x i8] zeroinitializer }, align 32
@lcd_pins = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 126, i32 127, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155], [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sram_0_grp\00", [21 x i8] zeroinitializer }, align 32
@sram_0_pins = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 126, i32 127, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155], [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi5_grp\00", [23 x i8] zeroinitializer }, align 32
@spi5_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 141, i32 142, i32 143, i32 144], [16 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_grp\00", [22 x i8] zeroinitializer }, align 32
@uart0_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 70, i32 71, i32 72, i32 73], [16 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sw_led0_1_grp\00", [18 x i8] zeroinitializer }, align 32
@sw_led0_1_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 70, i32 71, i32 72, i32 73], [16 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uart1_dte_grp\00", [18 x i8] zeroinitializer }, align 32
@uart1_dte_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 75, i32 76, i32 77, i32 78], [16 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_grp\00", [22 x i8] zeroinitializer }, align 32
@uart2_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 75, i32 76, i32 77, i32 78], [16 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_grp\00", [22 x i8] zeroinitializer }, align 32
@uart1_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 74, i32 79, i32 80, i32 81], [16 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3_grp\00", [22 x i8] zeroinitializer }, align 32
@uart3_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 82, i32 83], [24 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qspi_0_grp\00", [21 x i8] zeroinitializer }, align 32
@qspi_0_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 104, i32 105, i32 106, i32 107], [16 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_grp\00", [23 x i8] zeroinitializer }, align 32
@nand_pins = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125], [32 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdio0_cd_grp\00", [19 x i8] zeroinitializer }, align 32
@sdio0_cd_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 103], [28 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdio0_mmc_grp\00", [18 x i8] zeroinitializer }, align 32
@sdio0_mmc_pins = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 100, i32 101, i32 102], [20 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdio1_data_0_grp\00", [47 x i8] zeroinitializer }, align 32
@sdio1_data_0_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 86, i32 87], [24 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can0_grp\00", [23 x i8] zeroinitializer }, align 32
@can0_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 86, i32 87], [24 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spi4_0_grp\00", [21 x i8] zeroinitializer }, align 32
@spi4_0_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 86, i32 87], [24 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdio1_data_1_grp\00", [47 x i8] zeroinitializer }, align 32
@sdio1_data_1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 88, i32 89], [24 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can1_grp\00", [23 x i8] zeroinitializer }, align 32
@can1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 88, i32 89], [24 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spi4_1_grp\00", [21 x i8] zeroinitializer }, align 32
@spi4_1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 88, i32 89], [24 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdio1_cd_grp\00", [19 x i8] zeroinitializer }, align 32
@sdio1_cd_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 93], [28 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdio1_led_grp\00", [18 x i8] zeroinitializer }, align 32
@sdio1_led_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 84, i32 85], [24 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sw_led2_1_grp\00", [18 x i8] zeroinitializer }, align 32
@sw_led2_1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 84, i32 85], [24 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdio1_mmc_grp\00", [18 x i8] zeroinitializer }, align 32
@sdio1_mmc_pins = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 90, i32 91, i32 92], [20 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cam_led_grp\00", [20 x i8] zeroinitializer }, align 32
@cam_led_pins = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 156, i32 157, i32 158, i32 159, i32 160], [44 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sw_led1_grp\00", [20 x i8] zeroinitializer }, align 32
@sw_led1_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 156, i32 157, i32 158, i32 159], [16 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cam_0_grp\00", [22 x i8] zeroinitializer }, align 32
@cam_0_pins = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 169, i32 170, i32 171, i32 169, i32 170], [44 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cam_1_grp\00", [22 x i8] zeroinitializer }, align 32
@cam_1_pins = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167, i32 168], [32 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sram_1_grp\00", [21 x i8] zeroinitializer }, align 32
@sram_1_pins = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167, i32 168], [32 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qspi_1_grp\00", [21 x i8] zeroinitializer }, align 32
@qspi_1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 108, i32 109], [24 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bsc1_grp\00", [23 x i8] zeroinitializer }, align 32
@bsc1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8, i32 9], [24 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcie_clkreq_grp\00", [16 x i8] zeroinitializer }, align 32
@pcie_clkreq_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8, i32 9], [24 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smart_card0_fcb_grp\00", [44 x i8] zeroinitializer }, align 32
@smart_card0_fcb_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 45], [28 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s0_1_grp\00", [21 x i8] zeroinitializer }, align 32
@i2s0_1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 45], [28 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smart_card1_fcb_grp\00", [44 x i8] zeroinitializer }, align 32
@smart_card1_fcb_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 51], [28 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s1_1_grp\00", [21 x i8] zeroinitializer }, align 32
@i2s1_1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 51], [28 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpio0_3p3_grp\00", [18 x i8] zeroinitializer }, align 32
@gpio0_3p3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 176], [28 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb0_oc_grp\00", [20 x i8] zeroinitializer }, align 32
@usb0_oc_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 176], [28 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpio1_3p3_grp\00", [18 x i8] zeroinitializer }, align 32
@gpio1_3p3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 177], [28 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb1_oc_grp\00", [20 x i8] zeroinitializer }, align 32
@usb1_oc_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 177], [28 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpio2_3p3_grp\00", [18 x i8] zeroinitializer }, align 32
@gpio2_3p3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 178], [28 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb2_oc_grp\00", [20 x i8] zeroinitializer }, align 32
@usb2_oc_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 178], [28 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s0\00", [27 x i8] zeroinitializer }, align 32
@i2s0_grps = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.228, ptr @.str.272], [24 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s1\00", [27 x i8] zeroinitializer }, align 32
@i2s1_grps = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.231, ptr @.str.274], [24 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s2\00", [27 x i8] zeroinitializer }, align 32
@i2s2_grps = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199], [44 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@spdif_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.229], [28 x i8] zeroinitializer }, align 32
@pwm0_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.222], [28 x i8] zeroinitializer }, align 32
@pwm1_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.223], [28 x i8] zeroinitializer }, align 32
@pwm2_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.224], [28 x i8] zeroinitializer }, align 32
@pwm3_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.225], [28 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@pwm4_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.200], [28 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm5\00", [27 x i8] zeroinitializer }, align 32
@pwm5_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.201], [28 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"key\00", [28 x i8] zeroinitializer }, align 32
@key_grps = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.210, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.220], [32 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_dte\00", [22 x i8] zeroinitializer }, align 32
@audio_dte_grps = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.209, ptr @.str.211, ptr @.str.219, ptr @.str.221], [16 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smart_card0\00", [20 x i8] zeroinitializer }, align 32
@smart_card0_grps = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.227, ptr @.str.271], [24 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smart_card1\00", [20 x i8] zeroinitializer }, align 32
@smart_card1_grps = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.230, ptr @.str.273], [24 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi0\00", [27 x i8] zeroinitializer }, align 32
@spi0_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.232], [28 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi1\00", [27 x i8] zeroinitializer }, align 32
@spi1_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.233], [28 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi2\00", [27 x i8] zeroinitializer }, align 32
@spi2_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.234], [28 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi3\00", [27 x i8] zeroinitializer }, align 32
@spi3_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.235], [28 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi4\00", [27 x i8] zeroinitializer }, align 32
@spi4_grps = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.255, ptr @.str.258], [24 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi5\00", [27 x i8] zeroinitializer }, align 32
@spi5_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.242], [28 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sw_led0\00", [24 x i8] zeroinitializer }, align 32
@sw_led0_grps = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.236, ptr @.str.244], [24 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sw_led1\00", [24 x i8] zeroinitializer }, align 32
@sw_led1_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.264], [28 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sw_led2\00", [24 x i8] zeroinitializer }, align 32
@sw_led2_grps = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.239, ptr @.str.261], [24 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"d1w\00", [28 x i8] zeroinitializer }, align 32
@d1w_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.237], [28 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@lcd_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.240], [28 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@sram_grps = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.241, ptr @.str.267], [24 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@uart0_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.243], [28 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@uart1_grps = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.247, ptr @.str.245], [24 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@uart2_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.246], [28 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@uart3_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.248], [28 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart4\00", [26 x i8] zeroinitializer }, align 32
@uart4_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.238], [28 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qspi\00", [27 x i8] zeroinitializer }, align 32
@qspi_grps = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.249, ptr @.str.268], [24 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@nand_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.250], [28 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio0\00", [26 x i8] zeroinitializer }, align 32
@sdio0_grps = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.226, ptr @.str.251, ptr @.str.252], [20 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio1\00", [26 x i8] zeroinitializer }, align 32
@sdio1_grps = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.253, ptr @.str.256, ptr @.str.259, ptr @.str.260, ptr @.str.262], [44 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"can0\00", [27 x i8] zeroinitializer }, align 32
@can0_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.254], [28 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"can1\00", [27 x i8] zeroinitializer }, align 32
@can1_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.257], [28 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cam\00", [28 x i8] zeroinitializer }, align 32
@cam_grps = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.263, ptr @.str.265, ptr @.str.266], [20 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bsc1\00", [27 x i8] zeroinitializer }, align 32
@bsc1_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.269], [28 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcie_clkreq\00", [20 x i8] zeroinitializer }, align 32
@pcie_clkreq_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.270], [28 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb0_oc\00", [24 x i8] zeroinitializer }, align 32
@usb0_oc_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.276], [28 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb1_oc\00", [24 x i8] zeroinitializer }, align 32
@usb1_oc_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.278], [28 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb2_oc\00", [24 x i8] zeroinitializer }, align 32
@usb2_oc_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.280], [28 x i8] zeroinitializer }, align 32
@cygnus_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @cygnus_get_groups_count, ptr @cygnus_get_group_name, ptr @cygnus_get_group_pins, ptr @cygnus_pin_dbg_show, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@cygnus_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @cygnus_get_functions_count, ptr @cygnus_get_function_name, ptr @cygnus_get_function_groups, ptr @cygnus_pinmux_set_mux, ptr @cygnus_gpio_request_enable, ptr @cygnus_gpio_disable_free, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@cygnus_pinmux_set_mux.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.321, ptr @.str.322, ptr @.str.4, ptr @.str.323, i8 0, i8 -47, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.321 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pinctrl_cygnus_mux\00", [45 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cygnus_pinmux_set_mux\00", [42 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"func:%u name:%s grp:%u name:%s\0A\00", [32 x i8] zeroinitializer }, align 32
@cygnus_pinmux_set_mux.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.321, ptr @.str.322, ptr @.str.4, ptr @.str.324, i8 0, i8 -46, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.324 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"offset:0x%08x shift:%u alt:%u\0A\00", [33 x i8] zeroinitializer }, align 32
@cygnus_pinmux_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.325, ptr @.str.326, ptr @.str.4, i32 802, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"double configuration error detected!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cygnus_pinmux_set\00", [46 x i8] zeroinitializer }, align 32
@cygnus_pinmux_set._entry_ptr = internal global ptr @cygnus_pinmux_set._entry, section ".printk_index", align 4
@cygnus_pinmux_set._entry.327 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.326, ptr @.str.4, i32 804, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"func:%s grp:%s\0A\00", [16 x i8] zeroinitializer }, align 32
@cygnus_pinmux_set._entry_ptr.329 = internal global ptr @cygnus_pinmux_set._entry.327, section ".printk_index", align 4
@cygnus_gpio_request_enable.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.321, ptr @.str.330, ptr @.str.4, ptr @.str.331, i8 0, i8 -39, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.330 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cygnus_gpio_request_enable\00", [37 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"gpio request enable pin=%u offset=0x%x shift=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@cygnus_gpio_disable_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.332, ptr @.str.333, ptr @.str.4, i32 897, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"gpio disable free pin=%u offset=0x%x shift=%u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cygnus_gpio_disable_free\00", [39 x i8] zeroinitializer }, align 32
@cygnus_gpio_disable_free._entry_ptr = internal global ptr @cygnus_gpio_disable_free._entry, section ".printk_index", align 4
@___asan_gen_.334 = private unnamed_addr constant [21 x i8] c"cygnus_pinmux_driver\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 1005, i32 31 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 1007, i32 11 }
@___asan_gen_.340 = private unnamed_addr constant [23 x i8] c"cygnus_pinmux_of_match\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 1000, i32 34 }
@___asan_gen_.343 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 953, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 957, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 963, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 969, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [12 x i8] c"cygnus_pins\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 164, i32 26 }
@___asan_gen_.379 = private unnamed_addr constant [18 x i8] c"cygnus_pin_groups\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 499, i32 38 }
@___asan_gen_.382 = private unnamed_addr constant [21 x i8] c"cygnus_pin_functions\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 659, i32 41 }
@___asan_gen_.385 = private unnamed_addr constant [20 x i8] c"cygnus_pinctrl_desc\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 909, i32 28 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 993, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 165, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 166, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 167, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 168, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 169, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 170, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 171, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 172, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 173, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 174, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 175, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 176, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 177, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 178, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 179, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 180, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 181, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 182, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 183, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 184, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 185, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 186, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 187, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 188, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 189, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 190, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 191, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 192, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 193, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 194, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 195, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 196, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 197, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 198, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 199, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 200, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 201, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 202, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 203, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 204, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 205, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 206, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 207, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 208, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 209, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 210, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 211, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 212, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 213, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 214, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 215, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 216, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 217, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 218, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 219, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 220, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 221, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 222, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 223, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 224, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 225, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 226, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 227, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 228, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 229, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 230, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 231, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 232, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 233, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 234, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 235, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 236, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 237, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 238, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 239, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 240, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 241, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 242, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 243, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 244, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 245, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 246, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 247, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 248, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 249, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 250, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 251, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 252, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 253, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 254, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 255, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 256, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 257, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 258, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 259, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 260, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 261, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 262, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 263, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 264, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 265, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 266, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 267, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 268, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 269, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 270, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 271, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 272, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 273, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 274, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 275, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 276, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 277, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 278, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 279, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 280, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 281, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 282, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 283, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 284, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 285, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 286, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 287, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 288, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 289, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 290, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 291, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 292, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 293, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 294, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 295, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 296, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 297, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 298, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 299, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 300, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 301, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 302, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 303, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 304, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 305, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 306, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 307, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 308, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 309, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 310, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 311, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 312, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 313, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 314, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 315, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 316, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 317, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 318, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 319, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 320, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 321, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 322, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 323, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 324, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 325, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 326, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 327, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 328, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 329, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 330, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 331, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 332, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 333, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 334, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 335, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 336, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 337, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 338, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 339, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 340, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 341, i32 2 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 342, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 343, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 344, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 500, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant [12 x i8] c"i2s2_0_pins\00", align 1
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 353, i32 23 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 501, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant [12 x i8] c"i2s2_1_pins\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 354, i32 23 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 502, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant [12 x i8] c"i2s2_2_pins\00", align 1
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 355, i32 23 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 503, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant [12 x i8] c"i2s2_3_pins\00", align 1
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 356, i32 23 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 504, i32 2 }
@___asan_gen_.961 = private unnamed_addr constant [12 x i8] c"i2s2_4_pins\00", align 1
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 357, i32 23 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 505, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant [10 x i8] c"pwm4_pins\00", align 1
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 359, i32 23 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 506, i32 2 }
@___asan_gen_.973 = private unnamed_addr constant [10 x i8] c"pwm5_pins\00", align 1
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 360, i32 23 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 507, i32 2 }
@___asan_gen_.979 = private unnamed_addr constant [10 x i8] c"key0_pins\00", align 1
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 362, i32 23 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 508, i32 2 }
@___asan_gen_.985 = private unnamed_addr constant [10 x i8] c"key1_pins\00", align 1
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 363, i32 23 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 509, i32 2 }
@___asan_gen_.991 = private unnamed_addr constant [10 x i8] c"key2_pins\00", align 1
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 364, i32 23 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 510, i32 2 }
@___asan_gen_.997 = private unnamed_addr constant [10 x i8] c"key3_pins\00", align 1
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 365, i32 23 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 511, i32 2 }
@___asan_gen_.1003 = private unnamed_addr constant [10 x i8] c"key4_pins\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 366, i32 23 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 512, i32 2 }
@___asan_gen_.1009 = private unnamed_addr constant [10 x i8] c"key5_pins\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 367, i32 23 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 513, i32 2 }
@___asan_gen_.1015 = private unnamed_addr constant [10 x i8] c"key6_pins\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 369, i32 23 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 514, i32 2 }
@___asan_gen_.1021 = private unnamed_addr constant [16 x i8] c"audio_dte0_pins\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 370, i32 23 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 515, i32 2 }
@___asan_gen_.1027 = private unnamed_addr constant [10 x i8] c"key7_pins\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 372, i32 23 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 516, i32 2 }
@___asan_gen_.1033 = private unnamed_addr constant [16 x i8] c"audio_dte1_pins\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 373, i32 23 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 517, i32 2 }
@___asan_gen_.1039 = private unnamed_addr constant [10 x i8] c"key8_pins\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 375, i32 23 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 518, i32 2 }
@___asan_gen_.1045 = private unnamed_addr constant [10 x i8] c"key9_pins\00", align 1
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 376, i32 23 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 519, i32 2 }
@___asan_gen_.1051 = private unnamed_addr constant [11 x i8] c"key10_pins\00", align 1
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 377, i32 23 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 520, i32 2 }
@___asan_gen_.1057 = private unnamed_addr constant [11 x i8] c"key11_pins\00", align 1
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 378, i32 23 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 521, i32 2 }
@___asan_gen_.1063 = private unnamed_addr constant [11 x i8] c"key12_pins\00", align 1
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 379, i32 23 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 522, i32 2 }
@___asan_gen_.1069 = private unnamed_addr constant [11 x i8] c"key13_pins\00", align 1
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 380, i32 23 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 523, i32 2 }
@___asan_gen_.1075 = private unnamed_addr constant [11 x i8] c"key14_pins\00", align 1
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 382, i32 23 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 524, i32 2 }
@___asan_gen_.1081 = private unnamed_addr constant [16 x i8] c"audio_dte2_pins\00", align 1
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 383, i32 23 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 525, i32 2 }
@___asan_gen_.1087 = private unnamed_addr constant [11 x i8] c"key15_pins\00", align 1
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 385, i32 23 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 526, i32 2 }
@___asan_gen_.1093 = private unnamed_addr constant [16 x i8] c"audio_dte3_pins\00", align 1
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 386, i32 23 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 527, i32 2 }
@___asan_gen_.1099 = private unnamed_addr constant [10 x i8] c"pwm0_pins\00", align 1
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 388, i32 23 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 528, i32 2 }
@___asan_gen_.1105 = private unnamed_addr constant [10 x i8] c"pwm1_pins\00", align 1
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 389, i32 23 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 529, i32 2 }
@___asan_gen_.1111 = private unnamed_addr constant [10 x i8] c"pwm2_pins\00", align 1
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 390, i32 23 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 530, i32 2 }
@___asan_gen_.1117 = private unnamed_addr constant [10 x i8] c"pwm3_pins\00", align 1
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 391, i32 23 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 531, i32 2 }
@___asan_gen_.1123 = private unnamed_addr constant [11 x i8] c"sdio0_pins\00", align 1
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 393, i32 23 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 532, i32 2 }
@___asan_gen_.1129 = private unnamed_addr constant [17 x i8] c"smart_card0_pins\00", align 1
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 395, i32 23 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 533, i32 2 }
@___asan_gen_.1135 = private unnamed_addr constant [12 x i8] c"i2s0_0_pins\00", align 1
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 396, i32 23 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 534, i32 2 }
@___asan_gen_.1141 = private unnamed_addr constant [11 x i8] c"spdif_pins\00", align 1
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 397, i32 23 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 535, i32 2 }
@___asan_gen_.1147 = private unnamed_addr constant [17 x i8] c"smart_card1_pins\00", align 1
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 399, i32 23 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 536, i32 2 }
@___asan_gen_.1153 = private unnamed_addr constant [12 x i8] c"i2s1_0_pins\00", align 1
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 400, i32 23 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 537, i32 2 }
@___asan_gen_.1159 = private unnamed_addr constant [10 x i8] c"spi0_pins\00", align 1
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 402, i32 23 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 538, i32 2 }
@___asan_gen_.1165 = private unnamed_addr constant [10 x i8] c"spi1_pins\00", align 1
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 404, i32 23 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 539, i32 2 }
@___asan_gen_.1171 = private unnamed_addr constant [10 x i8] c"spi2_pins\00", align 1
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 406, i32 23 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 540, i32 2 }
@___asan_gen_.1177 = private unnamed_addr constant [10 x i8] c"spi3_pins\00", align 1
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 408, i32 23 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 541, i32 2 }
@___asan_gen_.1183 = private unnamed_addr constant [15 x i8] c"sw_led0_0_pins\00", align 1
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 409, i32 23 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 542, i32 2 }
@___asan_gen_.1189 = private unnamed_addr constant [9 x i8] c"d1w_pins\00", align 1
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 411, i32 23 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 543, i32 2 }
@___asan_gen_.1195 = private unnamed_addr constant [11 x i8] c"uart4_pins\00", align 1
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 412, i32 23 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 544, i32 2 }
@___asan_gen_.1201 = private unnamed_addr constant [15 x i8] c"sw_led2_0_pins\00", align 1
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 413, i32 23 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 545, i32 2 }
@___asan_gen_.1207 = private unnamed_addr constant [9 x i8] c"lcd_pins\00", align 1
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 415, i32 23 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 546, i32 2 }
@___asan_gen_.1213 = private unnamed_addr constant [12 x i8] c"sram_0_pins\00", align 1
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 418, i32 23 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 547, i32 2 }
@___asan_gen_.1219 = private unnamed_addr constant [10 x i8] c"spi5_pins\00", align 1
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 421, i32 23 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 548, i32 2 }
@___asan_gen_.1225 = private unnamed_addr constant [11 x i8] c"uart0_pins\00", align 1
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 423, i32 23 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 549, i32 2 }
@___asan_gen_.1231 = private unnamed_addr constant [15 x i8] c"sw_led0_1_pins\00", align 1
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 424, i32 23 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 550, i32 2 }
@___asan_gen_.1237 = private unnamed_addr constant [15 x i8] c"uart1_dte_pins\00", align 1
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 426, i32 23 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 551, i32 2 }
@___asan_gen_.1243 = private unnamed_addr constant [11 x i8] c"uart2_pins\00", align 1
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 427, i32 23 }
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 552, i32 2 }
@___asan_gen_.1249 = private unnamed_addr constant [11 x i8] c"uart1_pins\00", align 1
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 429, i32 23 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 553, i32 2 }
@___asan_gen_.1255 = private unnamed_addr constant [11 x i8] c"uart3_pins\00", align 1
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 431, i32 23 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 554, i32 2 }
@___asan_gen_.1261 = private unnamed_addr constant [12 x i8] c"qspi_0_pins\00", align 1
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 433, i32 23 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 555, i32 2 }
@___asan_gen_.1267 = private unnamed_addr constant [10 x i8] c"nand_pins\00", align 1
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 435, i32 23 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 556, i32 2 }
@___asan_gen_.1273 = private unnamed_addr constant [14 x i8] c"sdio0_cd_pins\00", align 1
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 438, i32 23 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 557, i32 2 }
@___asan_gen_.1279 = private unnamed_addr constant [15 x i8] c"sdio0_mmc_pins\00", align 1
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 440, i32 23 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 558, i32 2 }
@___asan_gen_.1285 = private unnamed_addr constant [18 x i8] c"sdio1_data_0_pins\00", align 1
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 442, i32 23 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 559, i32 2 }
@___asan_gen_.1291 = private unnamed_addr constant [10 x i8] c"can0_pins\00", align 1
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 443, i32 23 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 560, i32 2 }
@___asan_gen_.1297 = private unnamed_addr constant [12 x i8] c"spi4_0_pins\00", align 1
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 444, i32 23 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 561, i32 2 }
@___asan_gen_.1303 = private unnamed_addr constant [18 x i8] c"sdio1_data_1_pins\00", align 1
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 446, i32 23 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 562, i32 2 }
@___asan_gen_.1309 = private unnamed_addr constant [10 x i8] c"can1_pins\00", align 1
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 447, i32 23 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 563, i32 2 }
@___asan_gen_.1315 = private unnamed_addr constant [12 x i8] c"spi4_1_pins\00", align 1
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 448, i32 23 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 564, i32 2 }
@___asan_gen_.1321 = private unnamed_addr constant [14 x i8] c"sdio1_cd_pins\00", align 1
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 450, i32 23 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 565, i32 2 }
@___asan_gen_.1327 = private unnamed_addr constant [15 x i8] c"sdio1_led_pins\00", align 1
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 452, i32 23 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 566, i32 2 }
@___asan_gen_.1333 = private unnamed_addr constant [15 x i8] c"sw_led2_1_pins\00", align 1
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 453, i32 23 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 567, i32 2 }
@___asan_gen_.1339 = private unnamed_addr constant [15 x i8] c"sdio1_mmc_pins\00", align 1
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 455, i32 23 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 568, i32 2 }
@___asan_gen_.1345 = private unnamed_addr constant [13 x i8] c"cam_led_pins\00", align 1
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 457, i32 23 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 569, i32 2 }
@___asan_gen_.1351 = private unnamed_addr constant [13 x i8] c"sw_led1_pins\00", align 1
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 458, i32 23 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 570, i32 2 }
@___asan_gen_.1357 = private unnamed_addr constant [11 x i8] c"cam_0_pins\00", align 1
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 460, i32 23 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 571, i32 2 }
@___asan_gen_.1363 = private unnamed_addr constant [11 x i8] c"cam_1_pins\00", align 1
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 462, i32 23 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 572, i32 2 }
@___asan_gen_.1369 = private unnamed_addr constant [12 x i8] c"sram_1_pins\00", align 1
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 464, i32 23 }
@___asan_gen_.1374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 573, i32 2 }
@___asan_gen_.1375 = private unnamed_addr constant [12 x i8] c"qspi_1_pins\00", align 1
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 467, i32 23 }
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 574, i32 2 }
@___asan_gen_.1381 = private unnamed_addr constant [10 x i8] c"bsc1_pins\00", align 1
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 350, i32 23 }
@___asan_gen_.1386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 575, i32 2 }
@___asan_gen_.1387 = private unnamed_addr constant [17 x i8] c"pcie_clkreq_pins\00", align 1
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 351, i32 23 }
@___asan_gen_.1392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 576, i32 2 }
@___asan_gen_.1393 = private unnamed_addr constant [21 x i8] c"smart_card0_fcb_pins\00", align 1
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 469, i32 23 }
@___asan_gen_.1398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 577, i32 2 }
@___asan_gen_.1399 = private unnamed_addr constant [12 x i8] c"i2s0_1_pins\00", align 1
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 470, i32 23 }
@___asan_gen_.1404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 578, i32 2 }
@___asan_gen_.1405 = private unnamed_addr constant [21 x i8] c"smart_card1_fcb_pins\00", align 1
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 472, i32 23 }
@___asan_gen_.1410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 579, i32 2 }
@___asan_gen_.1411 = private unnamed_addr constant [12 x i8] c"i2s1_1_pins\00", align 1
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 473, i32 23 }
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 580, i32 2 }
@___asan_gen_.1417 = private unnamed_addr constant [15 x i8] c"gpio0_3p3_pins\00", align 1
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 475, i32 23 }
@___asan_gen_.1422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 581, i32 2 }
@___asan_gen_.1423 = private unnamed_addr constant [13 x i8] c"usb0_oc_pins\00", align 1
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 476, i32 23 }
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 582, i32 2 }
@___asan_gen_.1429 = private unnamed_addr constant [15 x i8] c"gpio1_3p3_pins\00", align 1
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 478, i32 23 }
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 583, i32 2 }
@___asan_gen_.1435 = private unnamed_addr constant [13 x i8] c"usb1_oc_pins\00", align 1
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 479, i32 23 }
@___asan_gen_.1440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 584, i32 2 }
@___asan_gen_.1441 = private unnamed_addr constant [15 x i8] c"gpio2_3p3_pins\00", align 1
@___asan_gen_.1443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 481, i32 23 }
@___asan_gen_.1446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 585, i32 2 }
@___asan_gen_.1447 = private unnamed_addr constant [13 x i8] c"usb2_oc_pins\00", align 1
@___asan_gen_.1449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 482, i32 23 }
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 660, i32 2 }
@___asan_gen_.1453 = private unnamed_addr constant [10 x i8] c"i2s0_grps\00", align 1
@___asan_gen_.1455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 591, i32 27 }
@___asan_gen_.1458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 661, i32 2 }
@___asan_gen_.1459 = private unnamed_addr constant [10 x i8] c"i2s1_grps\00", align 1
@___asan_gen_.1461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 592, i32 27 }
@___asan_gen_.1464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 662, i32 2 }
@___asan_gen_.1465 = private unnamed_addr constant [10 x i8] c"i2s2_grps\00", align 1
@___asan_gen_.1467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 593, i32 27 }
@___asan_gen_.1470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 663, i32 2 }
@___asan_gen_.1471 = private unnamed_addr constant [11 x i8] c"spdif_grps\00", align 1
@___asan_gen_.1473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 595, i32 27 }
@___asan_gen_.1474 = private unnamed_addr constant [10 x i8] c"pwm0_grps\00", align 1
@___asan_gen_.1476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 596, i32 27 }
@___asan_gen_.1477 = private unnamed_addr constant [10 x i8] c"pwm1_grps\00", align 1
@___asan_gen_.1479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 597, i32 27 }
@___asan_gen_.1480 = private unnamed_addr constant [10 x i8] c"pwm2_grps\00", align 1
@___asan_gen_.1482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 598, i32 27 }
@___asan_gen_.1483 = private unnamed_addr constant [10 x i8] c"pwm3_grps\00", align 1
@___asan_gen_.1485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 599, i32 27 }
@___asan_gen_.1488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 668, i32 2 }
@___asan_gen_.1489 = private unnamed_addr constant [10 x i8] c"pwm4_grps\00", align 1
@___asan_gen_.1491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 600, i32 27 }
@___asan_gen_.1494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 669, i32 2 }
@___asan_gen_.1495 = private unnamed_addr constant [10 x i8] c"pwm5_grps\00", align 1
@___asan_gen_.1497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 601, i32 27 }
@___asan_gen_.1500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 670, i32 2 }
@___asan_gen_.1501 = private unnamed_addr constant [9 x i8] c"key_grps\00", align 1
@___asan_gen_.1503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 602, i32 27 }
@___asan_gen_.1506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 671, i32 2 }
@___asan_gen_.1507 = private unnamed_addr constant [15 x i8] c"audio_dte_grps\00", align 1
@___asan_gen_.1509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 606, i32 27 }
@___asan_gen_.1512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 672, i32 2 }
@___asan_gen_.1513 = private unnamed_addr constant [17 x i8] c"smart_card0_grps\00", align 1
@___asan_gen_.1515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 608, i32 27 }
@___asan_gen_.1518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 673, i32 2 }
@___asan_gen_.1519 = private unnamed_addr constant [17 x i8] c"smart_card1_grps\00", align 1
@___asan_gen_.1521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 610, i32 27 }
@___asan_gen_.1524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 674, i32 2 }
@___asan_gen_.1525 = private unnamed_addr constant [10 x i8] c"spi0_grps\00", align 1
@___asan_gen_.1527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 612, i32 27 }
@___asan_gen_.1530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 675, i32 2 }
@___asan_gen_.1531 = private unnamed_addr constant [10 x i8] c"spi1_grps\00", align 1
@___asan_gen_.1533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 613, i32 27 }
@___asan_gen_.1536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 676, i32 2 }
@___asan_gen_.1537 = private unnamed_addr constant [10 x i8] c"spi2_grps\00", align 1
@___asan_gen_.1539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 614, i32 27 }
@___asan_gen_.1542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 677, i32 2 }
@___asan_gen_.1543 = private unnamed_addr constant [10 x i8] c"spi3_grps\00", align 1
@___asan_gen_.1545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 615, i32 27 }
@___asan_gen_.1548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 678, i32 2 }
@___asan_gen_.1549 = private unnamed_addr constant [10 x i8] c"spi4_grps\00", align 1
@___asan_gen_.1551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 616, i32 27 }
@___asan_gen_.1554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 679, i32 2 }
@___asan_gen_.1555 = private unnamed_addr constant [10 x i8] c"spi5_grps\00", align 1
@___asan_gen_.1557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 617, i32 27 }
@___asan_gen_.1560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 680, i32 2 }
@___asan_gen_.1561 = private unnamed_addr constant [13 x i8] c"sw_led0_grps\00", align 1
@___asan_gen_.1563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 619, i32 27 }
@___asan_gen_.1566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 681, i32 2 }
@___asan_gen_.1567 = private unnamed_addr constant [13 x i8] c"sw_led1_grps\00", align 1
@___asan_gen_.1569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 621, i32 27 }
@___asan_gen_.1572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 682, i32 2 }
@___asan_gen_.1573 = private unnamed_addr constant [13 x i8] c"sw_led2_grps\00", align 1
@___asan_gen_.1575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 622, i32 27 }
@___asan_gen_.1578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 683, i32 2 }
@___asan_gen_.1579 = private unnamed_addr constant [9 x i8] c"d1w_grps\00", align 1
@___asan_gen_.1581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 624, i32 27 }
@___asan_gen_.1584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 684, i32 2 }
@___asan_gen_.1585 = private unnamed_addr constant [9 x i8] c"lcd_grps\00", align 1
@___asan_gen_.1587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 625, i32 27 }
@___asan_gen_.1590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 685, i32 2 }
@___asan_gen_.1591 = private unnamed_addr constant [10 x i8] c"sram_grps\00", align 1
@___asan_gen_.1593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 626, i32 27 }
@___asan_gen_.1596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 686, i32 2 }
@___asan_gen_.1597 = private unnamed_addr constant [11 x i8] c"uart0_grps\00", align 1
@___asan_gen_.1599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 628, i32 27 }
@___asan_gen_.1602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 687, i32 2 }
@___asan_gen_.1603 = private unnamed_addr constant [11 x i8] c"uart1_grps\00", align 1
@___asan_gen_.1605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 629, i32 27 }
@___asan_gen_.1608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 688, i32 2 }
@___asan_gen_.1609 = private unnamed_addr constant [11 x i8] c"uart2_grps\00", align 1
@___asan_gen_.1611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 630, i32 27 }
@___asan_gen_.1614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 689, i32 2 }
@___asan_gen_.1615 = private unnamed_addr constant [11 x i8] c"uart3_grps\00", align 1
@___asan_gen_.1617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 631, i32 27 }
@___asan_gen_.1620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 690, i32 2 }
@___asan_gen_.1621 = private unnamed_addr constant [11 x i8] c"uart4_grps\00", align 1
@___asan_gen_.1623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 632, i32 27 }
@___asan_gen_.1626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 691, i32 2 }
@___asan_gen_.1627 = private unnamed_addr constant [10 x i8] c"qspi_grps\00", align 1
@___asan_gen_.1629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 633, i32 27 }
@___asan_gen_.1632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 692, i32 2 }
@___asan_gen_.1633 = private unnamed_addr constant [10 x i8] c"nand_grps\00", align 1
@___asan_gen_.1635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 634, i32 27 }
@___asan_gen_.1638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 693, i32 2 }
@___asan_gen_.1639 = private unnamed_addr constant [11 x i8] c"sdio0_grps\00", align 1
@___asan_gen_.1641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 635, i32 27 }
@___asan_gen_.1644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 694, i32 2 }
@___asan_gen_.1645 = private unnamed_addr constant [11 x i8] c"sdio1_grps\00", align 1
@___asan_gen_.1647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 637, i32 27 }
@___asan_gen_.1650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 695, i32 2 }
@___asan_gen_.1651 = private unnamed_addr constant [10 x i8] c"can0_grps\00", align 1
@___asan_gen_.1653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 639, i32 27 }
@___asan_gen_.1656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 696, i32 2 }
@___asan_gen_.1657 = private unnamed_addr constant [10 x i8] c"can1_grps\00", align 1
@___asan_gen_.1659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 640, i32 27 }
@___asan_gen_.1662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 697, i32 2 }
@___asan_gen_.1663 = private unnamed_addr constant [9 x i8] c"cam_grps\00", align 1
@___asan_gen_.1665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 641, i32 27 }
@___asan_gen_.1668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 698, i32 2 }
@___asan_gen_.1669 = private unnamed_addr constant [10 x i8] c"bsc1_grps\00", align 1
@___asan_gen_.1671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 643, i32 27 }
@___asan_gen_.1674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 699, i32 2 }
@___asan_gen_.1675 = private unnamed_addr constant [17 x i8] c"pcie_clkreq_grps\00", align 1
@___asan_gen_.1677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 644, i32 27 }
@___asan_gen_.1680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 700, i32 2 }
@___asan_gen_.1681 = private unnamed_addr constant [13 x i8] c"usb0_oc_grps\00", align 1
@___asan_gen_.1683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 645, i32 27 }
@___asan_gen_.1686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 701, i32 2 }
@___asan_gen_.1687 = private unnamed_addr constant [13 x i8] c"usb1_oc_grps\00", align 1
@___asan_gen_.1689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 646, i32 27 }
@___asan_gen_.1692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 702, i32 2 }
@___asan_gen_.1693 = private unnamed_addr constant [13 x i8] c"usb2_oc_grps\00", align 1
@___asan_gen_.1695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 647, i32 27 }
@___asan_gen_.1696 = private unnamed_addr constant [19 x i8] c"cygnus_pinctrl_ops\00", align 1
@___asan_gen_.1698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 738, i32 33 }
@___asan_gen_.1699 = private unnamed_addr constant [18 x i8] c"cygnus_pinmux_ops\00", align 1
@___asan_gen_.1701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 900, i32 32 }
@___asan_gen_.1704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 735, i32 16 }
@___asan_gen_.1713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 838, i32 2 }
@___asan_gen_.1716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 841, i32 2 }
@___asan_gen_.1725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 801, i32 4 }
@___asan_gen_.1731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 803, i32 4 }
@___asan_gen_.1737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 868, i32 2 }
@___asan_gen_.1738 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1744 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1745 = private constant [44 x i8] c"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c\00", align 1
@___asan_gen_.1746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1745, i32 895, i32 2 }
@llvm.compiler.used = appending global [479 x ptr] [ptr @__initcall__kmod_pinctrl_cygnus_mux__226_1018_cygnus_pinmux_init3, ptr @cygnus_gpio_disable_free._entry, ptr @cygnus_gpio_disable_free._entry_ptr, ptr @cygnus_pinmux_probe._entry, ptr @cygnus_pinmux_probe._entry.12, ptr @cygnus_pinmux_probe._entry.7, ptr @cygnus_pinmux_probe._entry.9, ptr @cygnus_pinmux_probe._entry_ptr, ptr @cygnus_pinmux_probe._entry_ptr.11, ptr @cygnus_pinmux_probe._entry_ptr.14, ptr @cygnus_pinmux_probe._entry_ptr.8, ptr @cygnus_pinmux_set._entry, ptr @cygnus_pinmux_set._entry.327, ptr @cygnus_pinmux_set._entry_ptr, ptr @cygnus_pinmux_set._entry_ptr.329, ptr @cygnus_pinmux_driver, ptr @.str, ptr @cygnus_pinmux_of_match, ptr @cygnus_pinmux_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.10, ptr @cygnus_pins, ptr @cygnus_pin_groups, ptr @cygnus_pin_functions, ptr @cygnus_pinctrl_desc, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @i2s2_0_pins, ptr @.str.196, ptr @i2s2_1_pins, ptr @.str.197, ptr @i2s2_2_pins, ptr @.str.198, ptr @i2s2_3_pins, ptr @.str.199, ptr @i2s2_4_pins, ptr @.str.200, ptr @pwm4_pins, ptr @.str.201, ptr @pwm5_pins, ptr @.str.202, ptr @key0_pins, ptr @.str.203, ptr @key1_pins, ptr @.str.204, ptr @key2_pins, ptr @.str.205, ptr @key3_pins, ptr @.str.206, ptr @key4_pins, ptr @.str.207, ptr @key5_pins, ptr @.str.208, ptr @key6_pins, ptr @.str.209, ptr @audio_dte0_pins, ptr @.str.210, ptr @key7_pins, ptr @.str.211, ptr @audio_dte1_pins, ptr @.str.212, ptr @key8_pins, ptr @.str.213, ptr @key9_pins, ptr @.str.214, ptr @key10_pins, ptr @.str.215, ptr @key11_pins, ptr @.str.216, ptr @key12_pins, ptr @.str.217, ptr @key13_pins, ptr @.str.218, ptr @key14_pins, ptr @.str.219, ptr @audio_dte2_pins, ptr @.str.220, ptr @key15_pins, ptr @.str.221, ptr @audio_dte3_pins, ptr @.str.222, ptr @pwm0_pins, ptr @.str.223, ptr @pwm1_pins, ptr @.str.224, ptr @pwm2_pins, ptr @.str.225, ptr @pwm3_pins, ptr @.str.226, ptr @sdio0_pins, ptr @.str.227, ptr @smart_card0_pins, ptr @.str.228, ptr @i2s0_0_pins, ptr @.str.229, ptr @spdif_pins, ptr @.str.230, ptr @smart_card1_pins, ptr @.str.231, ptr @i2s1_0_pins, ptr @.str.232, ptr @spi0_pins, ptr @.str.233, ptr @spi1_pins, ptr @.str.234, ptr @spi2_pins, ptr @.str.235, ptr @spi3_pins, ptr @.str.236, ptr @sw_led0_0_pins, ptr @.str.237, ptr @d1w_pins, ptr @.str.238, ptr @uart4_pins, ptr @.str.239, ptr @sw_led2_0_pins, ptr @.str.240, ptr @lcd_pins, ptr @.str.241, ptr @sram_0_pins, ptr @.str.242, ptr @spi5_pins, ptr @.str.243, ptr @uart0_pins, ptr @.str.244, ptr @sw_led0_1_pins, ptr @.str.245, ptr @uart1_dte_pins, ptr @.str.246, ptr @uart2_pins, ptr @.str.247, ptr @uart1_pins, ptr @.str.248, ptr @uart3_pins, ptr @.str.249, ptr @qspi_0_pins, ptr @.str.250, ptr @nand_pins, ptr @.str.251, ptr @sdio0_cd_pins, ptr @.str.252, ptr @sdio0_mmc_pins, ptr @.str.253, ptr @sdio1_data_0_pins, ptr @.str.254, ptr @can0_pins, ptr @.str.255, ptr @spi4_0_pins, ptr @.str.256, ptr @sdio1_data_1_pins, ptr @.str.257, ptr @can1_pins, ptr @.str.258, ptr @spi4_1_pins, ptr @.str.259, ptr @sdio1_cd_pins, ptr @.str.260, ptr @sdio1_led_pins, ptr @.str.261, ptr @sw_led2_1_pins, ptr @.str.262, ptr @sdio1_mmc_pins, ptr @.str.263, ptr @cam_led_pins, ptr @.str.264, ptr @sw_led1_pins, ptr @.str.265, ptr @cam_0_pins, ptr @.str.266, ptr @cam_1_pins, ptr @.str.267, ptr @sram_1_pins, ptr @.str.268, ptr @qspi_1_pins, ptr @.str.269, ptr @bsc1_pins, ptr @.str.270, ptr @pcie_clkreq_pins, ptr @.str.271, ptr @smart_card0_fcb_pins, ptr @.str.272, ptr @i2s0_1_pins, ptr @.str.273, ptr @smart_card1_fcb_pins, ptr @.str.274, ptr @i2s1_1_pins, ptr @.str.275, ptr @gpio0_3p3_pins, ptr @.str.276, ptr @usb0_oc_pins, ptr @.str.277, ptr @gpio1_3p3_pins, ptr @.str.278, ptr @usb1_oc_pins, ptr @.str.279, ptr @gpio2_3p3_pins, ptr @.str.280, ptr @usb2_oc_pins, ptr @.str.281, ptr @i2s0_grps, ptr @.str.282, ptr @i2s1_grps, ptr @.str.283, ptr @i2s2_grps, ptr @.str.284, ptr @spdif_grps, ptr @pwm0_grps, ptr @pwm1_grps, ptr @pwm2_grps, ptr @pwm3_grps, ptr @.str.285, ptr @pwm4_grps, ptr @.str.286, ptr @pwm5_grps, ptr @.str.287, ptr @key_grps, ptr @.str.288, ptr @audio_dte_grps, ptr @.str.289, ptr @smart_card0_grps, ptr @.str.290, ptr @smart_card1_grps, ptr @.str.291, ptr @spi0_grps, ptr @.str.292, ptr @spi1_grps, ptr @.str.293, ptr @spi2_grps, ptr @.str.294, ptr @spi3_grps, ptr @.str.295, ptr @spi4_grps, ptr @.str.296, ptr @spi5_grps, ptr @.str.297, ptr @sw_led0_grps, ptr @.str.298, ptr @sw_led1_grps, ptr @.str.299, ptr @sw_led2_grps, ptr @.str.300, ptr @d1w_grps, ptr @.str.301, ptr @lcd_grps, ptr @.str.302, ptr @sram_grps, ptr @.str.303, ptr @uart0_grps, ptr @.str.304, ptr @uart1_grps, ptr @.str.305, ptr @uart2_grps, ptr @.str.306, ptr @uart3_grps, ptr @.str.307, ptr @uart4_grps, ptr @.str.308, ptr @qspi_grps, ptr @.str.309, ptr @nand_grps, ptr @.str.310, ptr @sdio0_grps, ptr @.str.311, ptr @sdio1_grps, ptr @.str.312, ptr @can0_grps, ptr @.str.313, ptr @can1_grps, ptr @.str.314, ptr @cam_grps, ptr @.str.315, ptr @bsc1_grps, ptr @.str.316, ptr @pcie_clkreq_grps, ptr @.str.317, ptr @usb0_oc_grps, ptr @.str.318, ptr @usb1_oc_grps, ptr @.str.319, ptr @usb2_oc_grps, ptr @cygnus_pinctrl_ops, ptr @cygnus_pinmux_ops, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.328, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333], section "llvm.metadata"
@0 = internal global [471 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_pinmux_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_pinmux_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_pinmux_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_pinmux_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_pinmux_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_pinmux_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_pins to i32), i32 3600, i32 4512, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_pin_groups to i32), i32 2064, i32 2592, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_pin_functions to i32), i32 516, i32 672, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_pinmux_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_4_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm4_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm5_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key4_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key5_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key6_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_dte0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key7_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_dte1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key8_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key9_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key10_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key11_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key12_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key13_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key14_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_dte2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key15_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_dte3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio0_pins to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smart_card0_pins to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_0_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smart_card1_pins to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_0_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi0_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi1_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi2_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi3_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_led0_0_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d1w_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart4_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_led2_0_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_pins to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_0_pins to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi5_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_led0_1_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_dte_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart3_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi_0_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_pins to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio0_cd_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio0_mmc_pins to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio1_data_0_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can0_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi4_0_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio1_data_1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi4_1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio1_cd_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio1_led_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_led2_1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio1_mmc_pins to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_led_pins to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_led1_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_0_pins to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_1_pins to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_1_pins to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi_1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsc1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_clkreq_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smart_card0_fcb_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smart_card1_fcb_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio0_3p3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb0_oc_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio1_3p3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb1_oc_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio2_3p3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2_oc_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_grps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_grps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_grps to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm0_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm1_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm2_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm3_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm4_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm5_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_grps to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1501 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_dte_grps to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smart_card0_grps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smart_card1_grps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1519 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi0_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi1_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi2_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi3_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi4_grps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi5_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_led0_grps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_led1_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_led2_grps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d1w_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_grps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1597 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_grps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart3_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart4_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1621 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi_grps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio0_grps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio1_grps to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can0_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can1_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1657 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_grps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1663 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsc1_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_clkreq_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1675 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb0_oc_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1681 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb1_oc_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1687 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2_oc_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1696 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_pinmux_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_pinmux_set._entry.327 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cygnus_gpio_disable_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_pinmux_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cygnus_pinmux_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_pinmux_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 80, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @cygnus_pinmux_probe.__key, i16 noundef signext 3) #6
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base0 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %base0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %base0, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end10, label %if.end14

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %3 = ptrtoint ptr %base0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base0, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #6
  %base1 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %base1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call15, ptr %base1, align 4
  %cmp.i103 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %do.end21, label %if.end25

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %7 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base1, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 1024, i32 noundef 3520) #6
  %mux_log.i = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %mux_log.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i.i, ptr %mux_log.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %do.end31, label %if.end25.for.cond2.preheader.i_crit_edge

if.end25.for.cond2.preheader.i_crit_edge:         ; preds = %if.end25
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge, %if.end25.for.cond2.preheader.i_crit_edge
  %i.028.i = phi i32 [ %inc11.i, %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge ], [ 0, %if.end25.for.cond2.preheader.i_crit_edge ]
  %mul.i = shl i32 %i.028.i, 3
  %mul6.i = shl i32 %i.028.i, 2
  %13 = ptrtoint ptr %mux_log.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mux_log.i, align 4
  %arrayidx.i = getelementptr %struct.cygnus_mux_log, ptr %14, i32 %mul.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul6.i, ptr %arrayidx.i, align 4
  %shift.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.i, i32 0, i32 1
  %16 = ptrtoint ptr %shift.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %shift.i, align 4
  %alt.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.i, i32 0, i32 2
  %17 = ptrtoint ptr %alt.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %alt.i, align 4
  %is_configured.i = getelementptr %struct.cygnus_mux_log, ptr %14, i32 %mul.i, i32 1
  %18 = ptrtoint ptr %is_configured.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %is_configured.i, align 4
  %19 = load ptr, ptr %mux_log.i, align 4
  %add.1.i = or i32 %mul.i, 1
  %arrayidx.1.i = getelementptr %struct.cygnus_mux_log, ptr %19, i32 %add.1.i
  %20 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul6.i, ptr %arrayidx.1.i, align 4
  %shift.1.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.1.i, i32 0, i32 1
  %21 = ptrtoint ptr %shift.1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %shift.1.i, align 4
  %alt.1.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.1.i, i32 0, i32 2
  %22 = ptrtoint ptr %alt.1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %alt.1.i, align 4
  %is_configured.1.i = getelementptr %struct.cygnus_mux_log, ptr %19, i32 %add.1.i, i32 1
  %23 = ptrtoint ptr %is_configured.1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %is_configured.1.i, align 4
  %24 = load ptr, ptr %mux_log.i, align 4
  %add.2.i = or i32 %mul.i, 2
  %arrayidx.2.i = getelementptr %struct.cygnus_mux_log, ptr %24, i32 %add.2.i
  %25 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul6.i, ptr %arrayidx.2.i, align 4
  %shift.2.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.2.i, i32 0, i32 1
  %26 = ptrtoint ptr %shift.2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %shift.2.i, align 4
  %alt.2.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.2.i, i32 0, i32 2
  %27 = ptrtoint ptr %alt.2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %alt.2.i, align 4
  %is_configured.2.i = getelementptr %struct.cygnus_mux_log, ptr %24, i32 %add.2.i, i32 1
  %28 = ptrtoint ptr %is_configured.2.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %is_configured.2.i, align 4
  %29 = load ptr, ptr %mux_log.i, align 4
  %add.3.i = or i32 %mul.i, 3
  %arrayidx.3.i = getelementptr %struct.cygnus_mux_log, ptr %29, i32 %add.3.i
  %30 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul6.i, ptr %arrayidx.3.i, align 4
  %shift.3.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.3.i, i32 0, i32 1
  %31 = ptrtoint ptr %shift.3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 12, ptr %shift.3.i, align 4
  %alt.3.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.3.i, i32 0, i32 2
  %32 = ptrtoint ptr %alt.3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %alt.3.i, align 4
  %is_configured.3.i = getelementptr %struct.cygnus_mux_log, ptr %29, i32 %add.3.i, i32 1
  %33 = ptrtoint ptr %is_configured.3.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %is_configured.3.i, align 4
  %34 = load ptr, ptr %mux_log.i, align 4
  %add.4.i = or i32 %mul.i, 4
  %arrayidx.4.i = getelementptr %struct.cygnus_mux_log, ptr %34, i32 %add.4.i
  %35 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul6.i, ptr %arrayidx.4.i, align 4
  %shift.4.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.4.i, i32 0, i32 1
  %36 = ptrtoint ptr %shift.4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16, ptr %shift.4.i, align 4
  %alt.4.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.4.i, i32 0, i32 2
  %37 = ptrtoint ptr %alt.4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %alt.4.i, align 4
  %is_configured.4.i = getelementptr %struct.cygnus_mux_log, ptr %34, i32 %add.4.i, i32 1
  %38 = ptrtoint ptr %is_configured.4.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %is_configured.4.i, align 4
  %39 = load ptr, ptr %mux_log.i, align 4
  %add.5.i = or i32 %mul.i, 5
  %arrayidx.5.i = getelementptr %struct.cygnus_mux_log, ptr %39, i32 %add.5.i
  %40 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul6.i, ptr %arrayidx.5.i, align 4
  %shift.5.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.5.i, i32 0, i32 1
  %41 = ptrtoint ptr %shift.5.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 20, ptr %shift.5.i, align 4
  %alt.5.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.5.i, i32 0, i32 2
  %42 = ptrtoint ptr %alt.5.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %alt.5.i, align 4
  %is_configured.5.i = getelementptr %struct.cygnus_mux_log, ptr %39, i32 %add.5.i, i32 1
  %43 = ptrtoint ptr %is_configured.5.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %is_configured.5.i, align 4
  %44 = load ptr, ptr %mux_log.i, align 4
  %add.6.i = or i32 %mul.i, 6
  %arrayidx.6.i = getelementptr %struct.cygnus_mux_log, ptr %44, i32 %add.6.i
  %45 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul6.i, ptr %arrayidx.6.i, align 4
  %shift.6.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.6.i, i32 0, i32 1
  %46 = ptrtoint ptr %shift.6.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 24, ptr %shift.6.i, align 4
  %alt.6.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.6.i, i32 0, i32 2
  %47 = ptrtoint ptr %alt.6.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %alt.6.i, align 4
  %is_configured.6.i = getelementptr %struct.cygnus_mux_log, ptr %44, i32 %add.6.i, i32 1
  %48 = ptrtoint ptr %is_configured.6.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %is_configured.6.i, align 4
  %49 = load ptr, ptr %mux_log.i, align 4
  %add.7.i = or i32 %mul.i, 7
  %arrayidx.7.i = getelementptr %struct.cygnus_mux_log, ptr %49, i32 %add.7.i
  %50 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul6.i, ptr %arrayidx.7.i, align 4
  %shift.7.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.7.i, i32 0, i32 1
  %51 = ptrtoint ptr %shift.7.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 28, ptr %shift.7.i, align 4
  %alt.7.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.7.i, i32 0, i32 2
  %52 = ptrtoint ptr %alt.7.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %alt.7.i, align 4
  %is_configured.7.i = getelementptr %struct.cygnus_mux_log, ptr %49, i32 %add.7.i, i32 1
  %53 = ptrtoint ptr %is_configured.7.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %is_configured.7.i, align 4
  %inc11.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc11.i, 8
  br i1 %exitcond.not.i, label %if.end33, label %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge

for.cond2.preheader.i.for.cond2.preheader.i_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond2.preheader.i

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end33:                                         ; preds = %for.cond2.preheader.i
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2160, i32 noundef 3520) #6
  %tobool36.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool36.not, label %if.end33.cleanup_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  br label %for.body

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end33.for.body_crit_edge
  %i.0107 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end33.for.body_crit_edge ]
  %arrayidx = getelementptr [180 x %struct.cygnus_pin], ptr @cygnus_pins, i32 0, i32 %i.0107
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  %arrayidx39 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0107
  %56 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx39, align 4
  %name = getelementptr [180 x %struct.cygnus_pin], ptr @cygnus_pins, i32 0, i32 %i.0107, i32 1
  %57 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name, align 4
  %name42 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0107, i32 1
  %59 = ptrtoint ptr %name42 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %name42, align 4
  %gpio_mux = getelementptr [180 x %struct.cygnus_pin], ptr @cygnus_pins, i32 0, i32 %i.0107, i32 2
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0107, i32 2
  %60 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %gpio_mux, ptr %drv_data, align 4
  %inc = add nuw nsw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, 180
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %groups = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call.i, i32 0, i32 4
  %61 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @cygnus_pin_groups, ptr %groups, align 4
  %num_groups = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call.i, i32 0, i32 5
  %62 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 86, ptr %num_groups, align 4
  %functions = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call.i, i32 0, i32 6
  %63 = ptrtoint ptr %functions to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @cygnus_pin_functions, ptr %functions, align 4
  %num_functions = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call.i, i32 0, i32 7
  %64 = ptrtoint ptr %num_functions to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 43, ptr %num_functions, align 4
  store ptr %call5.i.i, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @cygnus_pinctrl_desc, i32 0, i32 1), align 4
  store i32 180, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @cygnus_pinctrl_desc, i32 0, i32 2), align 4
  %call46 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @cygnus_pinctrl_desc, ptr noundef nonnull %call.i) #6
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call46, ptr %call.i, align 4
  %cmp.i104 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %do.end52, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end52:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 4
  %68 = ptrtoint ptr %67 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %for.end.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.end31, %do.end21, %do.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end10 ], [ %9, %do.end21 ], [ -12, %do.end31 ], [ %68, %do.end52 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end33.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_get_groups_count(ptr noundef %pctrl_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %num_groups = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_groups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cygnus_get_group_name(ptr noundef %pctrl_dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %groups = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.cygnus_pin_group, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_get_group_pins(ptr noundef %pctrl_dev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %groups = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.cygnus_pin_group, ptr %1, i32 %selector, i32 1
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pins, align 4
  %5 = load ptr, ptr %groups, align 4
  %num_pins4 = getelementptr %struct.cygnus_pin_group, ptr %5, i32 %selector, i32 2
  %6 = ptrtoint ptr %num_pins4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pins4, align 4
  %8 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cygnus_pin_dbg_show(ptr nocapture noundef readonly %pctrl_dev, ptr noundef %s, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrl_dev, i32 0, i32 8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.320, ptr noundef %retval.0.i) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 4) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_get_functions_count(ptr noundef %pctrl_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %num_functions = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_functions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cygnus_get_function_name(ptr noundef %pctrl_dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %functions = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.cygnus_pin_function, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_get_function_groups(ptr noundef %pctrl_dev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %functions = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.cygnus_pin_function, ptr %1, i32 %selector, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %functions, align 4
  %num_groups4 = getelementptr %struct.cygnus_pin_function, ptr %5, i32 %selector, i32 2
  %6 = ptrtoint ptr %num_groups4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_groups4, align 4
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_pinmux_set_mux(ptr noundef %pctrl_dev, i32 noundef %func_select, i32 noundef %grp_select) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %functions = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.cygnus_pin_function, ptr %1, i32 %func_select
  %groups = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %arrayidx1 = getelementptr %struct.cygnus_pin_group, ptr %3, i32 %grp_select
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_pinmux_set_mux.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cygnus_pinmux_set_mux, %do.body7)) #6
          to label %if.then [label %do.body7], !srcloc !947

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrl_dev, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_pinmux_set_mux.__UNIQUE_ID_ddebug223, ptr noundef %5, ptr noundef nonnull @.str.323, i32 noundef %func_select, ptr noundef %7, i32 noundef %grp_select, ptr noundef %9) #6
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_pinmux_set_mux.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cygnus_pinmux_set_mux, %do.end27)) #6
          to label %if.then21 [label %do.end27], !srcloc !947

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %dev22 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrl_dev, i32 0, i32 8
  %10 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev22, align 4
  %mux = getelementptr %struct.cygnus_pin_group, ptr %3, i32 %grp_select, i32 3
  %12 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mux, align 4
  %shift = getelementptr %struct.cygnus_pin_group, ptr %3, i32 %grp_select, i32 3, i32 1
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shift, align 4
  %alt = getelementptr %struct.cygnus_pin_group, ptr %3, i32 %grp_select, i32 3, i32 2
  %16 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_pinmux_set_mux.__UNIQUE_ID_ddebug224, ptr noundef %11, ptr noundef nonnull @.str.324, i32 noundef %13, i32 noundef %15, i32 noundef %17) #6
  br label %do.end27

do.end27:                                         ; preds = %if.then21, %do.body7
  %mux_log = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call, i32 0, i32 8
  %18 = ptrtoint ptr %mux_log to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mux_log, align 4
  %mux1.i = getelementptr %struct.cygnus_pin_group, ptr %3, i32 %grp_select, i32 3
  %20 = ptrtoint ptr %mux1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mux1.i, align 4
  %shift.i = getelementptr %struct.cygnus_pin_group, ptr %3, i32 %grp_select, i32 3, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end27
  %i.090.i = phi i32 [ 0, %do.end27 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cygnus_mux_log, ptr %19, i32 %i.090.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp4.not.i = icmp eq i32 %21, %23
  br i1 %cmp4.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %24 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %shift.i, align 4
  %shift7.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.i, i32 0, i32 1
  %26 = ptrtoint ptr %shift7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %shift7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp8.not.i = icmp eq i32 %25, %27
  br i1 %cmp8.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %is_configured.i = getelementptr %struct.cygnus_mux_log, ptr %19, i32 %i.090.i, i32 1
  %28 = ptrtoint ptr %is_configured.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_configured.i, align 4, !range !948
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end11.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end11.i:                                       ; preds = %if.end.i
  %alt.i = getelementptr inbounds %struct.cygnus_mux, ptr %arrayidx.i, i32 0, i32 2
  %30 = ptrtoint ptr %alt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %alt.i, align 4
  %alt14.i = getelementptr %struct.cygnus_pin_group, ptr %3, i32 %grp_select, i32 3, i32 2
  %32 = ptrtoint ptr %alt14.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %alt14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp15.not.i = icmp eq i32 %31, %33
  br i1 %cmp15.not.i, label %if.end11.i.cygnus_pinmux_set.exit_crit_edge, label %do.end.i

if.end11.i.cygnus_pinmux_set.exit_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cygnus_pinmux_set.exit

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call, i32 0, i32 1
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.325) #9
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %40 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.328, ptr noundef %39, ptr noundef %41) #9
  br label %cygnus_pinmux_set.exit

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.090.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %i.089.i = phi i32 [ %i.090.i, %if.end.i.for.end.i_crit_edge ], [ 64, %for.inc.i.for.end.i_crit_edge ]
  %alt22.i = getelementptr %struct.cygnus_pin_group, ptr %3, i32 %grp_select, i32 3, i32 2
  %42 = ptrtoint ptr %alt22.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %alt22.i, align 4
  %alt25.i = getelementptr %struct.cygnus_mux_log, ptr %19, i32 %i.089.i, i32 0, i32 2
  %44 = ptrtoint ptr %alt25.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %alt25.i, align 4
  %is_configured27.i = getelementptr %struct.cygnus_mux_log, ptr %19, i32 %i.089.i, i32 1
  %45 = ptrtoint ptr %is_configured27.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %is_configured27.i, align 4
  %lock.i = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call, i32 0, i32 9
  %call31.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %base0.i = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call, i32 0, i32 2
  %46 = ptrtoint ptr %base0.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base0.i, align 4
  %48 = ptrtoint ptr %mux1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mux1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 %49
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !949
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !950
  %52 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 7, %53
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %51, %neg.i
  %54 = ptrtoint ptr %alt22.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %alt22.i, align 4
  %shl47.i = shl i32 %55, %53
  %or.i = or i32 %and.i, %shl47.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !951
  tail call void @arm_heavy_mb() #6
  %56 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %57 = ptrtoint ptr %base0.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base0.i, align 4
  %59 = ptrtoint ptr %mux1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mux1.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %58, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 %56) #6, !srcloc !952
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call31.i) #6
  br label %cygnus_pinmux_set.exit

cygnus_pinmux_set.exit:                           ; preds = %for.end.i, %do.end.i, %if.end11.i.cygnus_pinmux_set.exit_crit_edge
  %retval.0.i44 = phi i32 [ -22, %do.end.i ], [ 0, %for.end.i ], [ 0, %if.end11.i.cygnus_pinmux_set.exit_crit_edge ]
  ret i32 %retval.0.i44
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cygnus_gpio_request_enable(ptr noundef %pctrl_dev, ptr nocapture noundef readnone %range, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrl_dev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %pin, i32 2
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call, i32 0, i32 9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %base1 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base1, align 4
  %offset = getelementptr inbounds %struct.cygnus_gpio_mux, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !949
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !953
  %shift = getelementptr inbounds %struct.cygnus_gpio_mux, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shift, align 4
  %shl = shl i32 3, %15
  %or = or i32 %shl, %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !954
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %17 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base1, align 4
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %add.ptr14 = getelementptr i8, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %16) #6, !srcloc !952
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cygnus_gpio_request_enable.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cygnus_gpio_request_enable, %cleanup)) #6
          to label %if.then23 [label %cleanup], !srcloc !947

if.then23:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrl_dev, i32 0, i32 8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  %25 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %shift, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cygnus_gpio_request_enable.__UNIQUE_ID_ddebug225, ptr noundef %22, ptr noundef nonnull @.str.331, i32 noundef %pin, i32 noundef %24, i32 noundef %26) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %do.body1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cygnus_gpio_disable_free(ptr noundef %pctrl_dev, ptr nocapture noundef readnone %range, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrl_dev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %pin, i32 2
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call, i32 0, i32 9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %base1 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base1, align 4
  %offset = getelementptr inbounds %struct.cygnus_gpio_mux, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !949
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !955
  %shift = getelementptr inbounds %struct.cygnus_gpio_mux, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shift, align 4
  %shl = shl i32 3, %15
  %neg = xor i32 %shl, -1
  %and = and i32 %13, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !956
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %and)
  %17 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base1, align 4
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %add.ptr14 = getelementptr i8, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %16) #6, !srcloc !952
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrl_dev, i32 0, i32 8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  %25 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %shift, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.332, i32 noundef %pin, i32 noundef %24, i32 noundef %26) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 471)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 471)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !710, !712, !714, !716, !718, !720, !722, !724, !726, !728, !730, !732, !734, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !764, !766, !768, !770, !772, !774, !776, !778, !780, !782, !784, !786, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !810, !812, !814, !816, !818, !820, !822, !824, !826, !828, !830, !832, !834, !836, !838, !840, !842, !844, !846, !848, !850, !852, !854, !856, !858, !860, !862, !864, !866, !868, !870, !872, !874, !876, !878, !880, !882, !884, !886, !888, !890, !892, !894, !896, !898, !900, !902, !904, !906, !908, !910, !912, !913, !914, !915, !917, !918, !920, !921, !922, !923, !925, !926, !927, !929, !930, !931, !933, !934, !935, !936}
!llvm.module.flags = !{!938, !939, !940, !941, !942, !943, !944, !945}
!llvm.ident = !{!946}

!0 = !{ptr @__initcall__kmod_pinctrl_cygnus_mux__226_1018_cygnus_pinmux_init3, !1, !"__initcall__kmod_pinctrl_cygnus_mux__226_1018_cygnus_pinmux_init3", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 1018, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 1007, i32 11}
!4 = !{ptr @cygnus_pinmux_driver, !5, !"cygnus_pinmux_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 1005, i32 31}
!6 = !{ptr @cygnus_pinmux_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 953, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 957, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cygnus_pinmux_probe._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @cygnus_pinmux_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @cygnus_pinmux_probe._entry.7, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 963, i32 3}
!19 = !{ptr @cygnus_pinmux_probe._entry_ptr.8, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 969, i32 3}
!22 = !{ptr @cygnus_pinmux_probe._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cygnus_pinmux_probe._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 993, i32 3}
!26 = !{ptr @cygnus_pinmux_probe._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cygnus_pinmux_probe._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 165, i32 2}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 166, i32 2}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 167, i32 2}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 168, i32 2}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 169, i32 2}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 170, i32 2}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 171, i32 2}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 172, i32 2}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 173, i32 2}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 174, i32 2}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 175, i32 2}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 176, i32 2}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 177, i32 2}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 178, i32 2}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 179, i32 2}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 180, i32 2}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 181, i32 2}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 182, i32 2}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 183, i32 2}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 184, i32 2}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 185, i32 2}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 186, i32 2}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 187, i32 2}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 188, i32 2}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 189, i32 2}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 190, i32 2}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 191, i32 2}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 192, i32 2}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 193, i32 2}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 194, i32 2}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 195, i32 2}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 196, i32 2}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 197, i32 2}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 198, i32 2}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 199, i32 2}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 200, i32 2}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 201, i32 2}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 202, i32 2}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 203, i32 2}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 204, i32 2}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 205, i32 2}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 206, i32 2}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 207, i32 2}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 208, i32 2}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 209, i32 2}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 210, i32 2}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 211, i32 2}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 212, i32 2}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 213, i32 2}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 214, i32 2}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 215, i32 2}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 216, i32 2}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 217, i32 2}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 218, i32 2}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 219, i32 2}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 220, i32 2}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 221, i32 2}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 222, i32 2}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 223, i32 2}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 224, i32 2}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 225, i32 2}
!150 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 226, i32 2}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 227, i32 2}
!154 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 228, i32 2}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 229, i32 2}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 230, i32 2}
!160 = !{ptr @.str.81, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 231, i32 2}
!162 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 232, i32 2}
!164 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 233, i32 2}
!166 = !{ptr @.str.84, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 234, i32 2}
!168 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 235, i32 2}
!170 = !{ptr @.str.86, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 236, i32 2}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 237, i32 2}
!174 = !{ptr @.str.88, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 238, i32 2}
!176 = !{ptr @.str.89, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 239, i32 2}
!178 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 240, i32 2}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 241, i32 2}
!182 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 242, i32 2}
!184 = !{ptr @.str.93, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 243, i32 2}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 244, i32 2}
!188 = !{ptr @.str.95, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 245, i32 2}
!190 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 246, i32 2}
!192 = !{ptr @.str.97, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 247, i32 2}
!194 = !{ptr @.str.98, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 248, i32 2}
!196 = !{ptr @.str.99, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 249, i32 2}
!198 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 250, i32 2}
!200 = !{ptr @.str.101, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 251, i32 2}
!202 = !{ptr @.str.102, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 252, i32 2}
!204 = !{ptr @.str.103, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 253, i32 2}
!206 = !{ptr @.str.104, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 254, i32 2}
!208 = !{ptr @.str.105, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 255, i32 2}
!210 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 256, i32 2}
!212 = !{ptr @.str.107, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 257, i32 2}
!214 = !{ptr @.str.108, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 258, i32 2}
!216 = !{ptr @.str.109, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 259, i32 2}
!218 = !{ptr @.str.110, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 260, i32 2}
!220 = !{ptr @.str.111, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 261, i32 2}
!222 = !{ptr @.str.112, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 262, i32 2}
!224 = !{ptr @.str.113, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 263, i32 2}
!226 = !{ptr @.str.114, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 264, i32 2}
!228 = !{ptr @.str.115, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 265, i32 2}
!230 = !{ptr @.str.116, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 266, i32 2}
!232 = !{ptr @.str.117, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 267, i32 2}
!234 = !{ptr @.str.118, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 268, i32 2}
!236 = !{ptr @.str.119, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 269, i32 2}
!238 = !{ptr @.str.120, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 270, i32 2}
!240 = !{ptr @.str.121, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 271, i32 2}
!242 = !{ptr @.str.122, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 272, i32 2}
!244 = !{ptr @.str.123, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 273, i32 2}
!246 = !{ptr @.str.124, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 274, i32 2}
!248 = !{ptr @.str.125, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 275, i32 2}
!250 = !{ptr @.str.126, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 276, i32 2}
!252 = !{ptr @.str.127, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 277, i32 2}
!254 = !{ptr @.str.128, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 278, i32 2}
!256 = !{ptr @.str.129, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 279, i32 2}
!258 = !{ptr @.str.130, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 280, i32 2}
!260 = !{ptr @.str.131, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 281, i32 2}
!262 = !{ptr @.str.132, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 282, i32 2}
!264 = !{ptr @.str.133, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 283, i32 2}
!266 = !{ptr @.str.134, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 284, i32 2}
!268 = !{ptr @.str.135, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 285, i32 2}
!270 = !{ptr @.str.136, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 286, i32 2}
!272 = !{ptr @.str.137, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 287, i32 2}
!274 = !{ptr @.str.138, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 288, i32 2}
!276 = !{ptr @.str.139, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 289, i32 2}
!278 = !{ptr @.str.140, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 290, i32 2}
!280 = !{ptr @.str.141, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 291, i32 2}
!282 = !{ptr @.str.142, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 292, i32 2}
!284 = !{ptr @.str.143, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 293, i32 2}
!286 = !{ptr @.str.144, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 294, i32 2}
!288 = !{ptr @.str.145, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 295, i32 2}
!290 = !{ptr @.str.146, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 296, i32 2}
!292 = !{ptr @.str.147, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 297, i32 2}
!294 = !{ptr @.str.148, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 298, i32 2}
!296 = !{ptr @.str.149, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 299, i32 2}
!298 = !{ptr @.str.150, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 300, i32 2}
!300 = !{ptr @.str.151, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 301, i32 2}
!302 = !{ptr @.str.152, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 302, i32 2}
!304 = !{ptr @.str.153, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 303, i32 2}
!306 = !{ptr @.str.154, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 304, i32 2}
!308 = !{ptr @.str.155, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 305, i32 2}
!310 = !{ptr @.str.156, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 306, i32 2}
!312 = !{ptr @.str.157, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 307, i32 2}
!314 = !{ptr @.str.158, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 308, i32 2}
!316 = !{ptr @.str.159, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 309, i32 2}
!318 = !{ptr @.str.160, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 310, i32 2}
!320 = !{ptr @.str.161, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 311, i32 2}
!322 = !{ptr @.str.162, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 312, i32 2}
!324 = !{ptr @.str.163, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 313, i32 2}
!326 = !{ptr @.str.164, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 314, i32 2}
!328 = !{ptr @.str.165, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 315, i32 2}
!330 = !{ptr @.str.166, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 316, i32 2}
!332 = !{ptr @.str.167, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 317, i32 2}
!334 = !{ptr @.str.168, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 318, i32 2}
!336 = !{ptr @.str.169, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 319, i32 2}
!338 = !{ptr @.str.170, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 320, i32 2}
!340 = !{ptr @.str.171, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 321, i32 2}
!342 = !{ptr @.str.172, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 322, i32 2}
!344 = !{ptr @.str.173, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 323, i32 2}
!346 = !{ptr @.str.174, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 324, i32 2}
!348 = !{ptr @.str.175, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 325, i32 2}
!350 = !{ptr @.str.176, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 326, i32 2}
!352 = !{ptr @.str.177, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 327, i32 2}
!354 = !{ptr @.str.178, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 328, i32 2}
!356 = !{ptr @.str.179, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 329, i32 2}
!358 = !{ptr @.str.180, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 330, i32 2}
!360 = !{ptr @.str.181, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 331, i32 2}
!362 = !{ptr @.str.182, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 332, i32 2}
!364 = !{ptr @.str.183, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 333, i32 2}
!366 = !{ptr @.str.184, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 334, i32 2}
!368 = !{ptr @.str.185, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 335, i32 2}
!370 = !{ptr @.str.186, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 336, i32 2}
!372 = !{ptr @.str.187, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 337, i32 2}
!374 = !{ptr @.str.188, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 338, i32 2}
!376 = !{ptr @.str.189, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 339, i32 2}
!378 = !{ptr @.str.190, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 340, i32 2}
!380 = !{ptr @.str.191, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 341, i32 2}
!382 = !{ptr @.str.192, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 342, i32 2}
!384 = !{ptr @.str.193, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 343, i32 2}
!386 = !{ptr @.str.194, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 344, i32 2}
!388 = !{ptr @cygnus_pins, !389, !"cygnus_pins", i1 false, i1 false}
!389 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 164, i32 26}
!390 = !{ptr @.str.195, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 500, i32 2}
!392 = !{ptr @.str.196, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 501, i32 2}
!394 = !{ptr @.str.197, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 502, i32 2}
!396 = !{ptr @.str.198, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 503, i32 2}
!398 = !{ptr @.str.199, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 504, i32 2}
!400 = !{ptr @.str.200, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 505, i32 2}
!402 = !{ptr @.str.201, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 506, i32 2}
!404 = !{ptr @.str.202, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 507, i32 2}
!406 = !{ptr @.str.203, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 508, i32 2}
!408 = !{ptr @.str.204, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 509, i32 2}
!410 = !{ptr @.str.205, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 510, i32 2}
!412 = !{ptr @.str.206, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 511, i32 2}
!414 = !{ptr @.str.207, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 512, i32 2}
!416 = !{ptr @.str.208, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 513, i32 2}
!418 = !{ptr @.str.209, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 514, i32 2}
!420 = !{ptr @.str.210, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 515, i32 2}
!422 = !{ptr @.str.211, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 516, i32 2}
!424 = !{ptr @.str.212, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 517, i32 2}
!426 = !{ptr @.str.213, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 518, i32 2}
!428 = !{ptr @.str.214, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 519, i32 2}
!430 = !{ptr @.str.215, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 520, i32 2}
!432 = !{ptr @.str.216, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 521, i32 2}
!434 = !{ptr @.str.217, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 522, i32 2}
!436 = !{ptr @.str.218, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 523, i32 2}
!438 = !{ptr @.str.219, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 524, i32 2}
!440 = !{ptr @.str.220, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 525, i32 2}
!442 = !{ptr @.str.221, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 526, i32 2}
!444 = !{ptr @.str.222, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 527, i32 2}
!446 = !{ptr @.str.223, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 528, i32 2}
!448 = !{ptr @.str.224, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 529, i32 2}
!450 = !{ptr @.str.225, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 530, i32 2}
!452 = !{ptr @.str.226, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 531, i32 2}
!454 = !{ptr @.str.227, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 532, i32 2}
!456 = !{ptr @.str.228, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 533, i32 2}
!458 = !{ptr @.str.229, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 534, i32 2}
!460 = !{ptr @.str.230, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 535, i32 2}
!462 = !{ptr @.str.231, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 536, i32 2}
!464 = !{ptr @.str.232, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 537, i32 2}
!466 = !{ptr @.str.233, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 538, i32 2}
!468 = !{ptr @.str.234, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 539, i32 2}
!470 = !{ptr @.str.235, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 540, i32 2}
!472 = !{ptr @.str.236, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 541, i32 2}
!474 = !{ptr @.str.237, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 542, i32 2}
!476 = !{ptr @.str.238, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 543, i32 2}
!478 = !{ptr @.str.239, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 544, i32 2}
!480 = !{ptr @.str.240, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 545, i32 2}
!482 = !{ptr @.str.241, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 546, i32 2}
!484 = !{ptr @.str.242, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 547, i32 2}
!486 = !{ptr @.str.243, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 548, i32 2}
!488 = !{ptr @.str.244, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 549, i32 2}
!490 = !{ptr @.str.245, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 550, i32 2}
!492 = !{ptr @.str.246, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 551, i32 2}
!494 = !{ptr @.str.247, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 552, i32 2}
!496 = !{ptr @.str.248, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 553, i32 2}
!498 = !{ptr @.str.249, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 554, i32 2}
!500 = !{ptr @.str.250, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 555, i32 2}
!502 = !{ptr @.str.251, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 556, i32 2}
!504 = !{ptr @.str.252, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 557, i32 2}
!506 = !{ptr @.str.253, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 558, i32 2}
!508 = !{ptr @.str.254, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 559, i32 2}
!510 = !{ptr @.str.255, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 560, i32 2}
!512 = !{ptr @.str.256, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 561, i32 2}
!514 = !{ptr @.str.257, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 562, i32 2}
!516 = !{ptr @.str.258, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 563, i32 2}
!518 = !{ptr @.str.259, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 564, i32 2}
!520 = !{ptr @.str.260, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 565, i32 2}
!522 = !{ptr @.str.261, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 566, i32 2}
!524 = !{ptr @.str.262, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 567, i32 2}
!526 = !{ptr @.str.263, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 568, i32 2}
!528 = !{ptr @.str.264, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 569, i32 2}
!530 = !{ptr @.str.265, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 570, i32 2}
!532 = !{ptr @.str.266, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 571, i32 2}
!534 = !{ptr @.str.267, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 572, i32 2}
!536 = !{ptr @.str.268, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 573, i32 2}
!538 = !{ptr @.str.269, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 574, i32 2}
!540 = !{ptr @.str.270, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 575, i32 2}
!542 = !{ptr @.str.271, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 576, i32 2}
!544 = !{ptr @.str.272, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 577, i32 2}
!546 = !{ptr @.str.273, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 578, i32 2}
!548 = !{ptr @.str.274, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 579, i32 2}
!550 = !{ptr @.str.275, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 580, i32 2}
!552 = !{ptr @.str.276, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 581, i32 2}
!554 = !{ptr @.str.277, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 582, i32 2}
!556 = !{ptr @.str.278, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 583, i32 2}
!558 = !{ptr @.str.279, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 584, i32 2}
!560 = !{ptr @.str.280, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 585, i32 2}
!562 = !{ptr @cygnus_pin_groups, !563, !"cygnus_pin_groups", i1 false, i1 false}
!563 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 499, i32 38}
!564 = !{ptr @i2s2_0_pins, !565, !"i2s2_0_pins", i1 false, i1 false}
!565 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 353, i32 23}
!566 = !{ptr @i2s2_1_pins, !567, !"i2s2_1_pins", i1 false, i1 false}
!567 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 354, i32 23}
!568 = !{ptr @i2s2_2_pins, !569, !"i2s2_2_pins", i1 false, i1 false}
!569 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 355, i32 23}
!570 = !{ptr @i2s2_3_pins, !571, !"i2s2_3_pins", i1 false, i1 false}
!571 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 356, i32 23}
!572 = !{ptr @i2s2_4_pins, !573, !"i2s2_4_pins", i1 false, i1 false}
!573 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 357, i32 23}
!574 = !{ptr @pwm4_pins, !575, !"pwm4_pins", i1 false, i1 false}
!575 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 359, i32 23}
!576 = !{ptr @pwm5_pins, !577, !"pwm5_pins", i1 false, i1 false}
!577 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 360, i32 23}
!578 = !{ptr @key0_pins, !579, !"key0_pins", i1 false, i1 false}
!579 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 362, i32 23}
!580 = !{ptr @key1_pins, !581, !"key1_pins", i1 false, i1 false}
!581 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 363, i32 23}
!582 = !{ptr @key2_pins, !583, !"key2_pins", i1 false, i1 false}
!583 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 364, i32 23}
!584 = !{ptr @key3_pins, !585, !"key3_pins", i1 false, i1 false}
!585 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 365, i32 23}
!586 = !{ptr @key4_pins, !587, !"key4_pins", i1 false, i1 false}
!587 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 366, i32 23}
!588 = !{ptr @key5_pins, !589, !"key5_pins", i1 false, i1 false}
!589 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 367, i32 23}
!590 = !{ptr @key6_pins, !591, !"key6_pins", i1 false, i1 false}
!591 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 369, i32 23}
!592 = !{ptr @audio_dte0_pins, !593, !"audio_dte0_pins", i1 false, i1 false}
!593 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 370, i32 23}
!594 = !{ptr @key7_pins, !595, !"key7_pins", i1 false, i1 false}
!595 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 372, i32 23}
!596 = !{ptr @audio_dte1_pins, !597, !"audio_dte1_pins", i1 false, i1 false}
!597 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 373, i32 23}
!598 = !{ptr @key8_pins, !599, !"key8_pins", i1 false, i1 false}
!599 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 375, i32 23}
!600 = !{ptr @key9_pins, !601, !"key9_pins", i1 false, i1 false}
!601 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 376, i32 23}
!602 = !{ptr @key10_pins, !603, !"key10_pins", i1 false, i1 false}
!603 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 377, i32 23}
!604 = !{ptr @key11_pins, !605, !"key11_pins", i1 false, i1 false}
!605 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 378, i32 23}
!606 = !{ptr @key12_pins, !607, !"key12_pins", i1 false, i1 false}
!607 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 379, i32 23}
!608 = !{ptr @key13_pins, !609, !"key13_pins", i1 false, i1 false}
!609 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 380, i32 23}
!610 = !{ptr @key14_pins, !611, !"key14_pins", i1 false, i1 false}
!611 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 382, i32 23}
!612 = !{ptr @audio_dte2_pins, !613, !"audio_dte2_pins", i1 false, i1 false}
!613 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 383, i32 23}
!614 = !{ptr @key15_pins, !615, !"key15_pins", i1 false, i1 false}
!615 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 385, i32 23}
!616 = !{ptr @audio_dte3_pins, !617, !"audio_dte3_pins", i1 false, i1 false}
!617 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 386, i32 23}
!618 = !{ptr @pwm0_pins, !619, !"pwm0_pins", i1 false, i1 false}
!619 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 388, i32 23}
!620 = !{ptr @pwm1_pins, !621, !"pwm1_pins", i1 false, i1 false}
!621 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 389, i32 23}
!622 = !{ptr @pwm2_pins, !623, !"pwm2_pins", i1 false, i1 false}
!623 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 390, i32 23}
!624 = !{ptr @pwm3_pins, !625, !"pwm3_pins", i1 false, i1 false}
!625 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 391, i32 23}
!626 = !{ptr @sdio0_pins, !627, !"sdio0_pins", i1 false, i1 false}
!627 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 393, i32 23}
!628 = !{ptr @smart_card0_pins, !629, !"smart_card0_pins", i1 false, i1 false}
!629 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 395, i32 23}
!630 = !{ptr @i2s0_0_pins, !631, !"i2s0_0_pins", i1 false, i1 false}
!631 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 396, i32 23}
!632 = !{ptr @spdif_pins, !633, !"spdif_pins", i1 false, i1 false}
!633 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 397, i32 23}
!634 = !{ptr @smart_card1_pins, !635, !"smart_card1_pins", i1 false, i1 false}
!635 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 399, i32 23}
!636 = !{ptr @i2s1_0_pins, !637, !"i2s1_0_pins", i1 false, i1 false}
!637 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 400, i32 23}
!638 = !{ptr @spi0_pins, !639, !"spi0_pins", i1 false, i1 false}
!639 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 402, i32 23}
!640 = !{ptr @spi1_pins, !641, !"spi1_pins", i1 false, i1 false}
!641 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 404, i32 23}
!642 = !{ptr @spi2_pins, !643, !"spi2_pins", i1 false, i1 false}
!643 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 406, i32 23}
!644 = !{ptr @spi3_pins, !645, !"spi3_pins", i1 false, i1 false}
!645 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 408, i32 23}
!646 = !{ptr @sw_led0_0_pins, !647, !"sw_led0_0_pins", i1 false, i1 false}
!647 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 409, i32 23}
!648 = !{ptr @d1w_pins, !649, !"d1w_pins", i1 false, i1 false}
!649 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 411, i32 23}
!650 = !{ptr @uart4_pins, !651, !"uart4_pins", i1 false, i1 false}
!651 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 412, i32 23}
!652 = !{ptr @sw_led2_0_pins, !653, !"sw_led2_0_pins", i1 false, i1 false}
!653 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 413, i32 23}
!654 = !{ptr @lcd_pins, !655, !"lcd_pins", i1 false, i1 false}
!655 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 415, i32 23}
!656 = !{ptr @sram_0_pins, !657, !"sram_0_pins", i1 false, i1 false}
!657 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 418, i32 23}
!658 = !{ptr @spi5_pins, !659, !"spi5_pins", i1 false, i1 false}
!659 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 421, i32 23}
!660 = !{ptr @uart0_pins, !661, !"uart0_pins", i1 false, i1 false}
!661 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 423, i32 23}
!662 = !{ptr @sw_led0_1_pins, !663, !"sw_led0_1_pins", i1 false, i1 false}
!663 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 424, i32 23}
!664 = !{ptr @uart1_dte_pins, !665, !"uart1_dte_pins", i1 false, i1 false}
!665 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 426, i32 23}
!666 = !{ptr @uart2_pins, !667, !"uart2_pins", i1 false, i1 false}
!667 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 427, i32 23}
!668 = !{ptr @uart1_pins, !669, !"uart1_pins", i1 false, i1 false}
!669 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 429, i32 23}
!670 = !{ptr @uart3_pins, !671, !"uart3_pins", i1 false, i1 false}
!671 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 431, i32 23}
!672 = !{ptr @qspi_0_pins, !673, !"qspi_0_pins", i1 false, i1 false}
!673 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 433, i32 23}
!674 = !{ptr @nand_pins, !675, !"nand_pins", i1 false, i1 false}
!675 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 435, i32 23}
!676 = !{ptr @sdio0_cd_pins, !677, !"sdio0_cd_pins", i1 false, i1 false}
!677 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 438, i32 23}
!678 = !{ptr @sdio0_mmc_pins, !679, !"sdio0_mmc_pins", i1 false, i1 false}
!679 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 440, i32 23}
!680 = !{ptr @sdio1_data_0_pins, !681, !"sdio1_data_0_pins", i1 false, i1 false}
!681 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 442, i32 23}
!682 = !{ptr @can0_pins, !683, !"can0_pins", i1 false, i1 false}
!683 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 443, i32 23}
!684 = !{ptr @spi4_0_pins, !685, !"spi4_0_pins", i1 false, i1 false}
!685 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 444, i32 23}
!686 = !{ptr @sdio1_data_1_pins, !687, !"sdio1_data_1_pins", i1 false, i1 false}
!687 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 446, i32 23}
!688 = !{ptr @can1_pins, !689, !"can1_pins", i1 false, i1 false}
!689 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 447, i32 23}
!690 = !{ptr @spi4_1_pins, !691, !"spi4_1_pins", i1 false, i1 false}
!691 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 448, i32 23}
!692 = !{ptr @sdio1_cd_pins, !693, !"sdio1_cd_pins", i1 false, i1 false}
!693 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 450, i32 23}
!694 = !{ptr @sdio1_led_pins, !695, !"sdio1_led_pins", i1 false, i1 false}
!695 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 452, i32 23}
!696 = !{ptr @sw_led2_1_pins, !697, !"sw_led2_1_pins", i1 false, i1 false}
!697 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 453, i32 23}
!698 = !{ptr @sdio1_mmc_pins, !699, !"sdio1_mmc_pins", i1 false, i1 false}
!699 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 455, i32 23}
!700 = !{ptr @cam_led_pins, !701, !"cam_led_pins", i1 false, i1 false}
!701 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 457, i32 23}
!702 = !{ptr @sw_led1_pins, !703, !"sw_led1_pins", i1 false, i1 false}
!703 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 458, i32 23}
!704 = !{ptr @cam_0_pins, !705, !"cam_0_pins", i1 false, i1 false}
!705 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 460, i32 23}
!706 = !{ptr @cam_1_pins, !707, !"cam_1_pins", i1 false, i1 false}
!707 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 462, i32 23}
!708 = !{ptr @sram_1_pins, !709, !"sram_1_pins", i1 false, i1 false}
!709 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 464, i32 23}
!710 = !{ptr @qspi_1_pins, !711, !"qspi_1_pins", i1 false, i1 false}
!711 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 467, i32 23}
!712 = !{ptr @bsc1_pins, !713, !"bsc1_pins", i1 false, i1 false}
!713 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 350, i32 23}
!714 = !{ptr @pcie_clkreq_pins, !715, !"pcie_clkreq_pins", i1 false, i1 false}
!715 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 351, i32 23}
!716 = !{ptr @smart_card0_fcb_pins, !717, !"smart_card0_fcb_pins", i1 false, i1 false}
!717 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 469, i32 23}
!718 = !{ptr @i2s0_1_pins, !719, !"i2s0_1_pins", i1 false, i1 false}
!719 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 470, i32 23}
!720 = !{ptr @smart_card1_fcb_pins, !721, !"smart_card1_fcb_pins", i1 false, i1 false}
!721 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 472, i32 23}
!722 = !{ptr @i2s1_1_pins, !723, !"i2s1_1_pins", i1 false, i1 false}
!723 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 473, i32 23}
!724 = !{ptr @gpio0_3p3_pins, !725, !"gpio0_3p3_pins", i1 false, i1 false}
!725 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 475, i32 23}
!726 = !{ptr @usb0_oc_pins, !727, !"usb0_oc_pins", i1 false, i1 false}
!727 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 476, i32 23}
!728 = !{ptr @gpio1_3p3_pins, !729, !"gpio1_3p3_pins", i1 false, i1 false}
!729 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 478, i32 23}
!730 = !{ptr @usb1_oc_pins, !731, !"usb1_oc_pins", i1 false, i1 false}
!731 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 479, i32 23}
!732 = !{ptr @gpio2_3p3_pins, !733, !"gpio2_3p3_pins", i1 false, i1 false}
!733 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 481, i32 23}
!734 = !{ptr @usb2_oc_pins, !735, !"usb2_oc_pins", i1 false, i1 false}
!735 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 482, i32 23}
!736 = !{ptr @.str.281, !737, !"<string literal>", i1 false, i1 false}
!737 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 660, i32 2}
!738 = !{ptr @.str.282, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 661, i32 2}
!740 = !{ptr @.str.283, !741, !"<string literal>", i1 false, i1 false}
!741 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 662, i32 2}
!742 = !{ptr @.str.284, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 663, i32 2}
!744 = !{ptr @.str.285, !745, !"<string literal>", i1 false, i1 false}
!745 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 668, i32 2}
!746 = !{ptr @.str.286, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 669, i32 2}
!748 = !{ptr @.str.287, !749, !"<string literal>", i1 false, i1 false}
!749 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 670, i32 2}
!750 = !{ptr @.str.288, !751, !"<string literal>", i1 false, i1 false}
!751 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 671, i32 2}
!752 = !{ptr @.str.289, !753, !"<string literal>", i1 false, i1 false}
!753 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 672, i32 2}
!754 = !{ptr @.str.290, !755, !"<string literal>", i1 false, i1 false}
!755 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 673, i32 2}
!756 = !{ptr @.str.291, !757, !"<string literal>", i1 false, i1 false}
!757 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 674, i32 2}
!758 = !{ptr @.str.292, !759, !"<string literal>", i1 false, i1 false}
!759 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 675, i32 2}
!760 = !{ptr @.str.293, !761, !"<string literal>", i1 false, i1 false}
!761 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 676, i32 2}
!762 = !{ptr @.str.294, !763, !"<string literal>", i1 false, i1 false}
!763 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 677, i32 2}
!764 = !{ptr @.str.295, !765, !"<string literal>", i1 false, i1 false}
!765 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 678, i32 2}
!766 = !{ptr @.str.296, !767, !"<string literal>", i1 false, i1 false}
!767 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 679, i32 2}
!768 = !{ptr @.str.297, !769, !"<string literal>", i1 false, i1 false}
!769 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 680, i32 2}
!770 = !{ptr @.str.298, !771, !"<string literal>", i1 false, i1 false}
!771 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 681, i32 2}
!772 = !{ptr @.str.299, !773, !"<string literal>", i1 false, i1 false}
!773 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 682, i32 2}
!774 = !{ptr @.str.300, !775, !"<string literal>", i1 false, i1 false}
!775 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 683, i32 2}
!776 = !{ptr @.str.301, !777, !"<string literal>", i1 false, i1 false}
!777 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 684, i32 2}
!778 = !{ptr @.str.302, !779, !"<string literal>", i1 false, i1 false}
!779 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 685, i32 2}
!780 = !{ptr @.str.303, !781, !"<string literal>", i1 false, i1 false}
!781 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 686, i32 2}
!782 = !{ptr @.str.304, !783, !"<string literal>", i1 false, i1 false}
!783 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 687, i32 2}
!784 = !{ptr @.str.305, !785, !"<string literal>", i1 false, i1 false}
!785 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 688, i32 2}
!786 = !{ptr @.str.306, !787, !"<string literal>", i1 false, i1 false}
!787 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 689, i32 2}
!788 = !{ptr @.str.307, !789, !"<string literal>", i1 false, i1 false}
!789 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 690, i32 2}
!790 = !{ptr @.str.308, !791, !"<string literal>", i1 false, i1 false}
!791 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 691, i32 2}
!792 = !{ptr @.str.309, !793, !"<string literal>", i1 false, i1 false}
!793 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 692, i32 2}
!794 = !{ptr @.str.310, !795, !"<string literal>", i1 false, i1 false}
!795 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 693, i32 2}
!796 = !{ptr @.str.311, !797, !"<string literal>", i1 false, i1 false}
!797 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 694, i32 2}
!798 = !{ptr @.str.312, !799, !"<string literal>", i1 false, i1 false}
!799 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 695, i32 2}
!800 = !{ptr @.str.313, !801, !"<string literal>", i1 false, i1 false}
!801 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 696, i32 2}
!802 = !{ptr @.str.314, !803, !"<string literal>", i1 false, i1 false}
!803 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 697, i32 2}
!804 = !{ptr @.str.315, !805, !"<string literal>", i1 false, i1 false}
!805 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 698, i32 2}
!806 = !{ptr @.str.316, !807, !"<string literal>", i1 false, i1 false}
!807 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 699, i32 2}
!808 = !{ptr @.str.317, !809, !"<string literal>", i1 false, i1 false}
!809 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 700, i32 2}
!810 = !{ptr @.str.318, !811, !"<string literal>", i1 false, i1 false}
!811 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 701, i32 2}
!812 = !{ptr @.str.319, !813, !"<string literal>", i1 false, i1 false}
!813 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 702, i32 2}
!814 = !{ptr @cygnus_pin_functions, !815, !"cygnus_pin_functions", i1 false, i1 false}
!815 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 659, i32 41}
!816 = !{ptr @i2s0_grps, !817, !"i2s0_grps", i1 false, i1 false}
!817 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 591, i32 27}
!818 = !{ptr @i2s1_grps, !819, !"i2s1_grps", i1 false, i1 false}
!819 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 592, i32 27}
!820 = !{ptr @i2s2_grps, !821, !"i2s2_grps", i1 false, i1 false}
!821 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 593, i32 27}
!822 = !{ptr @spdif_grps, !823, !"spdif_grps", i1 false, i1 false}
!823 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 595, i32 27}
!824 = !{ptr @pwm0_grps, !825, !"pwm0_grps", i1 false, i1 false}
!825 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 596, i32 27}
!826 = !{ptr @pwm1_grps, !827, !"pwm1_grps", i1 false, i1 false}
!827 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 597, i32 27}
!828 = !{ptr @pwm2_grps, !829, !"pwm2_grps", i1 false, i1 false}
!829 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 598, i32 27}
!830 = !{ptr @pwm3_grps, !831, !"pwm3_grps", i1 false, i1 false}
!831 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 599, i32 27}
!832 = !{ptr @pwm4_grps, !833, !"pwm4_grps", i1 false, i1 false}
!833 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 600, i32 27}
!834 = !{ptr @pwm5_grps, !835, !"pwm5_grps", i1 false, i1 false}
!835 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 601, i32 27}
!836 = !{ptr @key_grps, !837, !"key_grps", i1 false, i1 false}
!837 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 602, i32 27}
!838 = !{ptr @audio_dte_grps, !839, !"audio_dte_grps", i1 false, i1 false}
!839 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 606, i32 27}
!840 = !{ptr @smart_card0_grps, !841, !"smart_card0_grps", i1 false, i1 false}
!841 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 608, i32 27}
!842 = !{ptr @smart_card1_grps, !843, !"smart_card1_grps", i1 false, i1 false}
!843 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 610, i32 27}
!844 = !{ptr @spi0_grps, !845, !"spi0_grps", i1 false, i1 false}
!845 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 612, i32 27}
!846 = !{ptr @spi1_grps, !847, !"spi1_grps", i1 false, i1 false}
!847 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 613, i32 27}
!848 = !{ptr @spi2_grps, !849, !"spi2_grps", i1 false, i1 false}
!849 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 614, i32 27}
!850 = !{ptr @spi3_grps, !851, !"spi3_grps", i1 false, i1 false}
!851 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 615, i32 27}
!852 = !{ptr @spi4_grps, !853, !"spi4_grps", i1 false, i1 false}
!853 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 616, i32 27}
!854 = !{ptr @spi5_grps, !855, !"spi5_grps", i1 false, i1 false}
!855 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 617, i32 27}
!856 = !{ptr @sw_led0_grps, !857, !"sw_led0_grps", i1 false, i1 false}
!857 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 619, i32 27}
!858 = !{ptr @sw_led1_grps, !859, !"sw_led1_grps", i1 false, i1 false}
!859 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 621, i32 27}
!860 = !{ptr @sw_led2_grps, !861, !"sw_led2_grps", i1 false, i1 false}
!861 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 622, i32 27}
!862 = !{ptr @d1w_grps, !863, !"d1w_grps", i1 false, i1 false}
!863 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 624, i32 27}
!864 = !{ptr @lcd_grps, !865, !"lcd_grps", i1 false, i1 false}
!865 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 625, i32 27}
!866 = !{ptr @sram_grps, !867, !"sram_grps", i1 false, i1 false}
!867 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 626, i32 27}
!868 = !{ptr @uart0_grps, !869, !"uart0_grps", i1 false, i1 false}
!869 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 628, i32 27}
!870 = !{ptr @uart1_grps, !871, !"uart1_grps", i1 false, i1 false}
!871 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 629, i32 27}
!872 = !{ptr @uart2_grps, !873, !"uart2_grps", i1 false, i1 false}
!873 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 630, i32 27}
!874 = !{ptr @uart3_grps, !875, !"uart3_grps", i1 false, i1 false}
!875 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 631, i32 27}
!876 = !{ptr @uart4_grps, !877, !"uart4_grps", i1 false, i1 false}
!877 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 632, i32 27}
!878 = !{ptr @qspi_grps, !879, !"qspi_grps", i1 false, i1 false}
!879 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 633, i32 27}
!880 = !{ptr @nand_grps, !881, !"nand_grps", i1 false, i1 false}
!881 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 634, i32 27}
!882 = !{ptr @sdio0_grps, !883, !"sdio0_grps", i1 false, i1 false}
!883 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 635, i32 27}
!884 = !{ptr @sdio1_grps, !885, !"sdio1_grps", i1 false, i1 false}
!885 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 637, i32 27}
!886 = !{ptr @can0_grps, !887, !"can0_grps", i1 false, i1 false}
!887 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 639, i32 27}
!888 = !{ptr @can1_grps, !889, !"can1_grps", i1 false, i1 false}
!889 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 640, i32 27}
!890 = !{ptr @cam_grps, !891, !"cam_grps", i1 false, i1 false}
!891 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 641, i32 27}
!892 = !{ptr @bsc1_grps, !893, !"bsc1_grps", i1 false, i1 false}
!893 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 643, i32 27}
!894 = !{ptr @pcie_clkreq_grps, !895, !"pcie_clkreq_grps", i1 false, i1 false}
!895 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 644, i32 27}
!896 = !{ptr @usb0_oc_grps, !897, !"usb0_oc_grps", i1 false, i1 false}
!897 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 645, i32 27}
!898 = !{ptr @usb1_oc_grps, !899, !"usb1_oc_grps", i1 false, i1 false}
!899 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 646, i32 27}
!900 = !{ptr @usb2_oc_grps, !901, !"usb2_oc_grps", i1 false, i1 false}
!901 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 647, i32 27}
!902 = !{ptr @cygnus_pinctrl_desc, !903, !"cygnus_pinctrl_desc", i1 false, i1 false}
!903 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 909, i32 28}
!904 = !{ptr @cygnus_pinctrl_ops, !905, !"cygnus_pinctrl_ops", i1 false, i1 false}
!905 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 738, i32 33}
!906 = !{ptr @.str.320, !907, !"<string literal>", i1 false, i1 false}
!907 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 735, i32 16}
!908 = !{ptr @cygnus_pinmux_ops, !909, !"cygnus_pinmux_ops", i1 false, i1 false}
!909 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 900, i32 32}
!910 = !{ptr @.str.321, !911, !"<string literal>", i1 false, i1 false}
!911 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 838, i32 2}
!912 = !{ptr @.str.322, !911, !"<string literal>", i1 false, i1 false}
!913 = !{ptr @.str.323, !911, !"<string literal>", i1 false, i1 false}
!914 = !{ptr @cygnus_pinmux_set_mux.__UNIQUE_ID_ddebug223, !911, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!915 = !{ptr @.str.324, !916, !"<string literal>", i1 false, i1 false}
!916 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 841, i32 2}
!917 = !{ptr @cygnus_pinmux_set_mux.__UNIQUE_ID_ddebug224, !916, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!918 = !{ptr @.str.325, !919, !"<string literal>", i1 false, i1 false}
!919 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 801, i32 4}
!920 = !{ptr @.str.326, !919, !"<string literal>", i1 false, i1 false}
!921 = !{ptr @cygnus_pinmux_set._entry, !919, !"_entry", i1 false, i1 false}
!922 = !{ptr @cygnus_pinmux_set._entry_ptr, !919, !"_entry_ptr", i1 false, i1 false}
!923 = !{ptr @.str.328, !924, !"<string literal>", i1 false, i1 false}
!924 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 803, i32 4}
!925 = !{ptr @cygnus_pinmux_set._entry.327, !924, !"_entry", i1 false, i1 false}
!926 = !{ptr @cygnus_pinmux_set._entry_ptr.329, !924, !"_entry_ptr", i1 false, i1 false}
!927 = !{ptr @.str.330, !928, !"<string literal>", i1 false, i1 false}
!928 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 868, i32 2}
!929 = !{ptr @.str.331, !928, !"<string literal>", i1 false, i1 false}
!930 = !{ptr @cygnus_gpio_request_enable.__UNIQUE_ID_ddebug225, !928, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!931 = !{ptr @.str.332, !932, !"<string literal>", i1 false, i1 false}
!932 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 895, i32 2}
!933 = !{ptr @.str.333, !932, !"<string literal>", i1 false, i1 false}
!934 = !{ptr @cygnus_gpio_disable_free._entry, !932, !"_entry", i1 false, i1 false}
!935 = !{ptr @cygnus_gpio_disable_free._entry_ptr, !932, !"_entry_ptr", i1 false, i1 false}
!936 = !{ptr @cygnus_pinmux_of_match, !937, !"cygnus_pinmux_of_match", i1 false, i1 false}
!937 = !{!"../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c", i32 1000, i32 34}
!938 = !{i32 1, !"wchar_size", i32 2}
!939 = !{i32 1, !"min_enum_size", i32 4}
!940 = !{i32 8, !"branch-target-enforcement", i32 0}
!941 = !{i32 8, !"sign-return-address", i32 0}
!942 = !{i32 8, !"sign-return-address-all", i32 0}
!943 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!944 = !{i32 7, !"uwtable", i32 1}
!945 = !{i32 7, !"frame-pointer", i32 2}
!946 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!947 = !{i64 2148195345, i64 2148195350, i64 2148195363, i64 2148195407, i64 2148195441, i64 2148195462}
!948 = !{i8 0, i8 2}
!949 = !{i64 718122}
!950 = !{i64 2153798766}
!951 = !{i64 2153798995}
!952 = !{i64 717704}
!953 = !{i64 2153805208}
!954 = !{i64 2153805433}
!955 = !{i64 2153809161}
!956 = !{i64 2153809386}
