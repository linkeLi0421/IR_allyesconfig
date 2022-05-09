; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/bcm/pinctrl-ns2-mux.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-ns2-mux.c"
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
%struct.ns2_pin = type { i32, ptr, %struct.ns2_pinconf }
%struct.ns2_pinconf = type { i32, i32, i32, i32, i32, i32 }
%struct.ns2_pin_group = type { ptr, ptr, i32, %struct.ns2_mux }
%struct.ns2_mux = type { i32, i32, i32, i32, i32 }
%struct.ns2_pin_function = type { ptr, ptr, i32 }
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
%struct.ns2_pinctrl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ns2_mux_log = type { %struct.ns2_mux, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pinctrl_ns2_mux__232_1113_ns2_pinmux_init3 = internal global ptr @ns2_pinmux_init, section ".initcall3.init", align 4
@ns2_pinmux_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ns2_pinmux_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ns2_pinmux_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ns2-pinmux\00", [21 x i8] zeroinitializer }, align 32
@ns2_pinmux_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ns2-pinmux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ns2_pinmux_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&pinctrl->lock\00", [17 x i8] zeroinitializer }, align 32
@ns2_pinmux_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1055, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to map I/O space\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ns2_pinmux_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pinctrl/bcm/pinctrl-ns2-mux.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ns2_pinmux_probe._entry_ptr = internal global ptr @ns2_pinmux_probe._entry, section ".printk_index", align 4
@ns2_pinmux_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1065, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to initialize IOMUX log\0A\00", [32 x i8] zeroinitializer }, align 32
@ns2_pinmux_probe._entry_ptr.9 = internal global ptr @ns2_pinmux_probe._entry.7, section ".printk_index", align 4
@ns2_pins = internal global { [119 x %struct.ns2_pin], [928 x i8] } { [119 x %struct.ns2_pin] [%struct.ns2_pin { i32 0, ptr @.str.13, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 1, ptr @.str.14, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 2, ptr @.str.15, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 3, ptr @.str.16, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 4, ptr @.str.17, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 5, ptr @.str.18, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 6, ptr @.str.19, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 7, ptr @.str.20, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 8, ptr @.str.21, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 9, ptr @.str.22, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 10, ptr @.str.23, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 11, ptr @.str.24, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 12, ptr @.str.25, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 13, ptr @.str.26, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 14, ptr @.str.27, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 15, ptr @.str.28, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 16, ptr @.str.29, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 17, ptr @.str.30, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 18, ptr @.str.31, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 19, ptr @.str.32, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 20, ptr @.str.33, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 21, ptr @.str.34, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 22, ptr @.str.35, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 23, ptr @.str.36, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 24, ptr @.str.37, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 25, ptr @.str.38, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 26, ptr @.str.39, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 27, ptr @.str.40, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 28, ptr @.str.41, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 29, ptr @.str.42, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 30, ptr @.str.43, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 31, ptr @.str.44, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 32, ptr @.str.45, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 33, ptr @.str.46, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 34, ptr @.str.47, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 35, ptr @.str.48, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 36, ptr @.str.49, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 37, ptr @.str.50, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 38, ptr @.str.51, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 39, ptr @.str.52, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 40, ptr @.str.53, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 41, ptr @.str.54, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 42, ptr @.str.55, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 43, ptr @.str.56, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 44, ptr @.str.57, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 45, ptr @.str.58, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 46, ptr @.str.59, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 47, ptr @.str.60, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 48, ptr @.str.61, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 49, ptr @.str.62, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 50, ptr @.str.63, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 51, ptr @.str.64, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 52, ptr @.str.65, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 53, ptr @.str.66, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 54, ptr @.str.67, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 55, ptr @.str.68, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 56, ptr @.str.69, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 57, ptr @.str.70, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 58, ptr @.str.71, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 59, ptr @.str.72, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 60, ptr @.str.73, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 61, ptr @.str.74, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 62, ptr @.str.75, %struct.ns2_pinconf { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.ns2_pin { i32 63, ptr @.str.76, %struct.ns2_pinconf { i32 2, i32 0, i32 31, i32 30, i32 27, i32 24 } }, %struct.ns2_pin { i32 64, ptr @.str.77, %struct.ns2_pinconf { i32 2, i32 0, i32 23, i32 22, i32 19, i32 16 } }, %struct.ns2_pin { i32 65, ptr @.str.78, %struct.ns2_pinconf { i32 2, i32 0, i32 15, i32 14, i32 11, i32 8 } }, %struct.ns2_pin { i32 66, ptr @.str.79, %struct.ns2_pinconf { i32 2, i32 0, i32 7, i32 6, i32 3, i32 0 } }, %struct.ns2_pin { i32 67, ptr @.str.80, %struct.ns2_pinconf { i32 2, i32 4, i32 31, i32 30, i32 27, i32 24 } }, %struct.ns2_pin { i32 68, ptr @.str.81, %struct.ns2_pinconf { i32 2, i32 4, i32 23, i32 22, i32 19, i32 16 } }, %struct.ns2_pin { i32 69, ptr @.str.82, %struct.ns2_pinconf { i32 2, i32 4, i32 15, i32 14, i32 11, i32 8 } }, %struct.ns2_pin { i32 70, ptr @.str.83, %struct.ns2_pinconf { i32 2, i32 4, i32 7, i32 6, i32 3, i32 0 } }, %struct.ns2_pin { i32 71, ptr @.str.84, %struct.ns2_pinconf { i32 2, i32 8, i32 31, i32 30, i32 27, i32 24 } }, %struct.ns2_pin { i32 72, ptr @.str.85, %struct.ns2_pinconf { i32 2, i32 8, i32 23, i32 22, i32 19, i32 16 } }, %struct.ns2_pin { i32 73, ptr @.str.86, %struct.ns2_pinconf { i32 2, i32 8, i32 15, i32 14, i32 11, i32 8 } }, %struct.ns2_pin { i32 74, ptr @.str.87, %struct.ns2_pinconf { i32 2, i32 8, i32 7, i32 6, i32 3, i32 0 } }, %struct.ns2_pin { i32 75, ptr @.str.88, %struct.ns2_pinconf { i32 2, i32 12, i32 31, i32 30, i32 27, i32 24 } }, %struct.ns2_pin { i32 76, ptr @.str.89, %struct.ns2_pinconf { i32 2, i32 12, i32 23, i32 22, i32 19, i32 16 } }, %struct.ns2_pin { i32 77, ptr @.str.90, %struct.ns2_pinconf { i32 2, i32 12, i32 15, i32 14, i32 11, i32 8 } }, %struct.ns2_pin { i32 78, ptr @.str.91, %struct.ns2_pinconf { i32 2, i32 12, i32 7, i32 6, i32 3, i32 0 } }, %struct.ns2_pin { i32 79, ptr @.str.92, %struct.ns2_pinconf { i32 2, i32 16, i32 31, i32 30, i32 27, i32 24 } }, %struct.ns2_pin { i32 80, ptr @.str.93, %struct.ns2_pinconf { i32 2, i32 16, i32 23, i32 22, i32 19, i32 16 } }, %struct.ns2_pin { i32 81, ptr @.str.94, %struct.ns2_pinconf { i32 2, i32 16, i32 15, i32 14, i32 11, i32 8 } }, %struct.ns2_pin { i32 82, ptr @.str.95, %struct.ns2_pinconf { i32 2, i32 16, i32 7, i32 6, i32 3, i32 0 } }, %struct.ns2_pin { i32 83, ptr @.str.96, %struct.ns2_pinconf { i32 2, i32 20, i32 31, i32 30, i32 27, i32 24 } }, %struct.ns2_pin { i32 84, ptr @.str.97, %struct.ns2_pinconf { i32 2, i32 20, i32 23, i32 22, i32 19, i32 16 } }, %struct.ns2_pin { i32 85, ptr @.str.98, %struct.ns2_pinconf { i32 2, i32 20, i32 15, i32 14, i32 11, i32 8 } }, %struct.ns2_pin { i32 86, ptr @.str.99, %struct.ns2_pinconf { i32 2, i32 20, i32 7, i32 6, i32 3, i32 0 } }, %struct.ns2_pin { i32 87, ptr @.str.100, %struct.ns2_pinconf { i32 2, i32 24, i32 31, i32 30, i32 27, i32 24 } }, %struct.ns2_pin { i32 88, ptr @.str.101, %struct.ns2_pinconf { i32 2, i32 24, i32 23, i32 22, i32 19, i32 16 } }, %struct.ns2_pin { i32 89, ptr @.str.102, %struct.ns2_pinconf { i32 2, i32 24, i32 15, i32 14, i32 11, i32 8 } }, %struct.ns2_pin { i32 90, ptr @.str.103, %struct.ns2_pinconf { i32 2, i32 24, i32 7, i32 6, i32 3, i32 0 } }, %struct.ns2_pin { i32 91, ptr @.str.104, %struct.ns2_pinconf { i32 2, i32 28, i32 31, i32 30, i32 27, i32 24 } }, %struct.ns2_pin { i32 92, ptr @.str.105, %struct.ns2_pinconf { i32 2, i32 28, i32 23, i32 22, i32 19, i32 16 } }, %struct.ns2_pin { i32 93, ptr @.str.106, %struct.ns2_pinconf { i32 2, i32 28, i32 15, i32 14, i32 11, i32 8 } }, %struct.ns2_pin { i32 94, ptr @.str.107, %struct.ns2_pinconf { i32 2, i32 28, i32 7, i32 6, i32 3, i32 0 } }, %struct.ns2_pin { i32 95, ptr @.str.108, %struct.ns2_pinconf { i32 2, i32 32, i32 31, i32 30, i32 27, i32 24 } }, %struct.ns2_pin { i32 96, ptr @.str.109, %struct.ns2_pinconf { i32 2, i32 32, i32 23, i32 22, i32 19, i32 16 } }, %struct.ns2_pin { i32 97, ptr @.str.110, %struct.ns2_pinconf { i32 2, i32 32, i32 15, i32 14, i32 11, i32 8 } }, %struct.ns2_pin { i32 98, ptr @.str.111, %struct.ns2_pinconf { i32 2, i32 32, i32 7, i32 6, i32 3, i32 0 } }, %struct.ns2_pin { i32 99, ptr @.str.112, %struct.ns2_pinconf { i32 2, i32 36, i32 31, i32 30, i32 27, i32 24 } }, %struct.ns2_pin { i32 100, ptr @.str.113, %struct.ns2_pinconf { i32 2, i32 36, i32 23, i32 22, i32 19, i32 16 } }, %struct.ns2_pin { i32 101, ptr @.str.114, %struct.ns2_pinconf { i32 2, i32 36, i32 15, i32 14, i32 11, i32 8 } }, %struct.ns2_pin { i32 102, ptr @.str.115, %struct.ns2_pinconf { i32 2, i32 36, i32 7, i32 6, i32 3, i32 0 } }, %struct.ns2_pin { i32 103, ptr @.str.116, %struct.ns2_pinconf { i32 2, i32 40, i32 31, i32 30, i32 27, i32 24 } }, %struct.ns2_pin { i32 104, ptr @.str.117, %struct.ns2_pinconf { i32 2, i32 40, i32 23, i32 22, i32 19, i32 16 } }, %struct.ns2_pin { i32 105, ptr @.str.118, %struct.ns2_pinconf { i32 2, i32 40, i32 15, i32 14, i32 11, i32 8 } }, %struct.ns2_pin { i32 106, ptr @.str.119, %struct.ns2_pinconf { i32 2, i32 40, i32 7, i32 6, i32 3, i32 0 } }, %struct.ns2_pin { i32 107, ptr @.str.120, %struct.ns2_pinconf { i32 2, i32 44, i32 15, i32 14, i32 11, i32 8 } }, %struct.ns2_pin { i32 108, ptr @.str.121, %struct.ns2_pinconf { i32 2, i32 44, i32 7, i32 6, i32 3, i32 0 } }, %struct.ns2_pin { i32 109, ptr @.str.122, %struct.ns2_pinconf { i32 2, i32 52, i32 31, i32 30, i32 27, i32 24 } }, %struct.ns2_pin { i32 110, ptr @.str.123, %struct.ns2_pinconf { i32 2, i32 52, i32 23, i32 22, i32 19, i32 16 } }, %struct.ns2_pin { i32 111, ptr @.str.124, %struct.ns2_pinconf { i32 2, i32 52, i32 15, i32 14, i32 11, i32 8 } }, %struct.ns2_pin { i32 112, ptr @.str.125, %struct.ns2_pinconf { i32 2, i32 52, i32 7, i32 6, i32 3, i32 0 } }, %struct.ns2_pin { i32 113, ptr @.str.126, %struct.ns2_pinconf { i32 2, i32 56, i32 31, i32 30, i32 27, i32 24 } }, %struct.ns2_pin { i32 114, ptr @.str.127, %struct.ns2_pinconf { i32 2, i32 56, i32 23, i32 22, i32 19, i32 16 } }, %struct.ns2_pin { i32 115, ptr @.str.128, %struct.ns2_pinconf { i32 2, i32 56, i32 15, i32 14, i32 11, i32 8 } }, %struct.ns2_pin { i32 116, ptr @.str.129, %struct.ns2_pinconf { i32 2, i32 56, i32 7, i32 6, i32 3, i32 0 } }, %struct.ns2_pin { i32 117, ptr @.str.130, %struct.ns2_pinconf { i32 2, i32 60, i32 15, i32 14, i32 11, i32 8 } }, %struct.ns2_pin { i32 118, ptr @.str.131, %struct.ns2_pinconf { i32 2, i32 60, i32 7, i32 6, i32 3, i32 0 } }], [928 x i8] zeroinitializer }, align 32
@ns2_pin_groups = internal constant { [41 x %struct.ns2_pin_group], [320 x i8] } { [41 x %struct.ns2_pin_group] [%struct.ns2_pin_group { ptr @.str.132, ptr @nand_pins, i32 24, %struct.ns2_mux { i32 0, i32 0, i32 31, i32 1, i32 0 } }, %struct.ns2_pin_group { ptr @.str.133, ptr @nor_data_pins, i32 26, %struct.ns2_mux { i32 0, i32 0, i32 31, i32 1, i32 1 } }, %struct.ns2_pin_group { ptr @.str.134, ptr @gpio_0_1_pins, i32 2, %struct.ns2_mux { i32 0, i32 0, i32 31, i32 1, i32 0 } }, %struct.ns2_pin_group { ptr @.str.135, ptr @uart1_ext_clk_pins, i32 1, %struct.ns2_mux { i32 0, i32 4, i32 30, i32 3, i32 1 } }, %struct.ns2_pin_group { ptr @.str.136, ptr @nor_adv_pins, i32 1, %struct.ns2_mux { i32 0, i32 4, i32 30, i32 3, i32 2 } }, %struct.ns2_pin_group { ptr @.str.137, ptr @gpio_2_5_pins, i32 4, %struct.ns2_mux { i32 0, i32 4, i32 28, i32 3, i32 0 } }, %struct.ns2_pin_group { ptr @.str.138, ptr @pcie_ab1_clk_wak_pins, i32 4, %struct.ns2_mux { i32 0, i32 4, i32 28, i32 3, i32 1 } }, %struct.ns2_pin_group { ptr @.str.139, ptr @nor_addr_0_3_pins, i32 4, %struct.ns2_mux { i32 0, i32 4, i32 28, i32 3, i32 2 } }, %struct.ns2_pin_group { ptr @.str.140, ptr @gpio_6_7_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 26, i32 3, i32 0 } }, %struct.ns2_pin_group { ptr @.str.141, ptr @pcie_a3_clk_wak_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 26, i32 3, i32 1 } }, %struct.ns2_pin_group { ptr @.str.142, ptr @nor_addr_4_5_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 26, i32 3, i32 2 } }, %struct.ns2_pin_group { ptr @.str.143, ptr @gpio_8_9_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 24, i32 3, i32 0 } }, %struct.ns2_pin_group { ptr @.str.144, ptr @pcie_b3_clk_wak_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 24, i32 3, i32 1 } }, %struct.ns2_pin_group { ptr @.str.145, ptr @nor_addr_6_7_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 24, i32 3, i32 2 } }, %struct.ns2_pin_group { ptr @.str.146, ptr @gpio_10_11_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 22, i32 3, i32 0 } }, %struct.ns2_pin_group { ptr @.str.147, ptr @pcie_b2_clk_wak_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 22, i32 3, i32 1 } }, %struct.ns2_pin_group { ptr @.str.148, ptr @nor_addr_8_9_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 22, i32 3, i32 2 } }, %struct.ns2_pin_group { ptr @.str.149, ptr @gpio_12_13_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 20, i32 3, i32 0 } }, %struct.ns2_pin_group { ptr @.str.150, ptr @pcie_a2_clk_wak_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 20, i32 3, i32 1 } }, %struct.ns2_pin_group { ptr @.str.151, ptr @nor_addr_10_11_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 20, i32 3, i32 2 } }, %struct.ns2_pin_group { ptr @.str.152, ptr @gpio_14_17_pins, i32 4, %struct.ns2_mux { i32 0, i32 4, i32 18, i32 3, i32 0 } }, %struct.ns2_pin_group { ptr @.str.153, ptr @uart0_modem_pins, i32 4, %struct.ns2_mux { i32 0, i32 4, i32 18, i32 3, i32 1 } }, %struct.ns2_pin_group { ptr @.str.154, ptr @nor_addr_12_15_pins, i32 4, %struct.ns2_mux { i32 0, i32 4, i32 18, i32 3, i32 2 } }, %struct.ns2_pin_group { ptr @.str.155, ptr @gpio_18_19_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 16, i32 3, i32 0 } }, %struct.ns2_pin_group { ptr @.str.156, ptr @uart0_rts_cts_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 16, i32 3, i32 1 } }, %struct.ns2_pin_group { ptr @.str.157, ptr @gpio_20_21_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 14, i32 3, i32 0 } }, %struct.ns2_pin_group { ptr @.str.158, ptr @uart0_in_out_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 14, i32 3, i32 1 } }, %struct.ns2_pin_group { ptr @.str.159, ptr @gpio_22_23_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 12, i32 3, i32 0 } }, %struct.ns2_pin_group { ptr @.str.160, ptr @uart1_dcd_dsr_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 12, i32 3, i32 1 } }, %struct.ns2_pin_group { ptr @.str.161, ptr @gpio_24_25_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 10, i32 3, i32 0 } }, %struct.ns2_pin_group { ptr @.str.162, ptr @uart1_ri_dtr_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 10, i32 3, i32 1 } }, %struct.ns2_pin_group { ptr @.str.163, ptr @gpio_26_27_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 8, i32 3, i32 0 } }, %struct.ns2_pin_group { ptr @.str.164, ptr @uart1_rts_cts_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 8, i32 3, i32 1 } }, %struct.ns2_pin_group { ptr @.str.165, ptr @gpio_28_29_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 6, i32 3, i32 0 } }, %struct.ns2_pin_group { ptr @.str.166, ptr @uart1_in_out_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 6, i32 3, i32 1 } }, %struct.ns2_pin_group { ptr @.str.167, ptr @gpio_30_31_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 4, i32 3, i32 0 } }, %struct.ns2_pin_group { ptr @.str.168, ptr @uart2_rts_cts_pins, i32 2, %struct.ns2_mux { i32 0, i32 4, i32 4, i32 3, i32 1 } }, %struct.ns2_pin_group { ptr @.str.169, ptr @pwm_0_pins, i32 1, %struct.ns2_mux { i32 1, i32 0, i32 0, i32 1, i32 1 } }, %struct.ns2_pin_group { ptr @.str.170, ptr @pwm_1_pins, i32 1, %struct.ns2_mux { i32 1, i32 0, i32 1, i32 1, i32 1 } }, %struct.ns2_pin_group { ptr @.str.171, ptr @pwm_2_pins, i32 1, %struct.ns2_mux { i32 1, i32 0, i32 2, i32 1, i32 1 } }, %struct.ns2_pin_group { ptr @.str.172, ptr @pwm_3_pins, i32 1, %struct.ns2_mux { i32 1, i32 0, i32 3, i32 1, i32 1 } }], [320 x i8] zeroinitializer }, align 32
@ns2_pin_functions = internal constant { [8 x %struct.ns2_pin_function], [32 x i8] } { [8 x %struct.ns2_pin_function] [%struct.ns2_pin_function { ptr @.str.173, ptr @nand_grps, i32 1 }, %struct.ns2_pin_function { ptr @.str.174, ptr @nor_grps, i32 8 }, %struct.ns2_pin_function { ptr @.str.175, ptr @gpio_grps, i32 14 }, %struct.ns2_pin_function { ptr @.str.176, ptr @pcie_grps, i32 5 }, %struct.ns2_pin_function { ptr @.str.177, ptr @uart0_grps, i32 3 }, %struct.ns2_pin_function { ptr @.str.178, ptr @uart1_grps, i32 5 }, %struct.ns2_pin_function { ptr @.str.179, ptr @uart2_grps, i32 1 }, %struct.ns2_pin_function { ptr @.str.180, ptr @pwm_grps, i32 4 }], [32 x i8] zeroinitializer }, align 32
@ns2_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str, ptr null, i32 0, ptr @ns2_pinctrl_ops, ptr @ns2_pinmux_ops, ptr @ns2_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@ns2_pinmux_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1089, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to register IOMUX pinctrl\0A\00", [62 x i8] zeroinitializer }, align 32
@ns2_pinmux_probe._entry_ptr.12 = internal global ptr @ns2_pinmux_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio_0\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio_1\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio_2\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio_3\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio_4\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio_5\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio_6\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio_7\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio_8\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfio_9\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_10\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_11\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_12\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_13\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_14\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_15\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_16\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_17\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_18\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_19\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_20\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_21\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_22\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_23\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_24\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_25\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_26\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_27\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_28\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_29\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_30\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_31\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_32\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_33\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_34\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_35\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_36\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_37\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_38\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_39\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_40\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_41\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_42\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_43\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_44\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_45\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_46\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_47\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_48\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_49\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_50\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_51\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_52\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_53\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_54\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_55\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_56\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_57\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_58\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_59\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_60\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_61\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfio_62\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qspi_wp\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qspi_hold\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qspi_cs\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qspi_sck\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3_sin\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart3_sout\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qspi_mosi\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qspi_miso\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi0_fss\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi0_rxd\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi0_txd\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi0_sck\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi1_fss\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi1_rxd\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi1_txd\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi1_sck\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio0_data7\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdio0_emmc_rst\00", [17 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdio0_led_on\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdio0_wp\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio0_data3\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio0_data4\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio0_data5\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio0_data6\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdio0_cmd\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio0_data0\00", [20 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio0_data1\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio0_data2\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdio1_led_on\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdio1_wp\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdio0_cd_l\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdio0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio1_data5\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio1_data6\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio1_data7\00", [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdio1_emmc_rst\00", [17 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio1_data1\00", [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio1_data2\00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio1_data3\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio1_data4\00", [20 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdio1_cd_l\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdio1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdio1_cmd\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio1_data0\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ext_mdio_0\00", [21 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ext_mdc_0\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb3_p1_vbus_ppc\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb3_p1_overcurrent\00", [44 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb3_p0_vbus_ppc\00", [47 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb3_p0_overcurrent\00", [44 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usb2_presence_indication\00", [39 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb2_vbus_present\00", [46 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb2_vbus_ppc\00", [18 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb2_overcurrent\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sata_led1\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sata_led0\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_grp\00", [23 x i8] zeroinitializer }, align 32
@nand_pins = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23], [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nor_data_grp\00", [19 x i8] zeroinitializer }, align 32
@nor_data_pins = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25], [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_0_1_grp\00", [19 x i8] zeroinitializer }, align 32
@gpio_0_1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 24, i32 25], [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uart1_ext_clk_grp\00", [46 x i8] zeroinitializer }, align 32
@uart1_ext_clk_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 26], [28 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nor_adv_grp\00", [20 x i8] zeroinitializer }, align 32
@nor_adv_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 26], [28 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_2_5_grp\00", [19 x i8] zeroinitializer }, align 32
@gpio_2_5_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 27, i32 28, i32 29, i32 30], [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcie_ab1_clk_wak_grp\00", [43 x i8] zeroinitializer }, align 32
@pcie_ab1_clk_wak_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 27, i32 28, i32 29, i32 30], [16 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nor_addr_0_3_grp\00", [47 x i8] zeroinitializer }, align 32
@nor_addr_0_3_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 27, i32 28, i32 29, i32 30], [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_6_7_grp\00", [19 x i8] zeroinitializer }, align 32
@gpio_6_7_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 31, i32 32], [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcie_a3_clk_wak_grp\00", [44 x i8] zeroinitializer }, align 32
@pcie_a3_clk_wak_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 31, i32 32], [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nor_addr_4_5_grp\00", [47 x i8] zeroinitializer }, align 32
@nor_addr_4_5_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 31, i32 32], [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_8_9_grp\00", [19 x i8] zeroinitializer }, align 32
@gpio_8_9_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 33, i32 34], [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcie_b3_clk_wak_grp\00", [44 x i8] zeroinitializer }, align 32
@pcie_b3_clk_wak_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 33, i32 34], [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nor_addr_6_7_grp\00", [47 x i8] zeroinitializer }, align 32
@nor_addr_6_7_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 33, i32 34], [24 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio_10_11_grp\00", [17 x i8] zeroinitializer }, align 32
@gpio_10_11_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 35, i32 36], [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcie_b2_clk_wak_grp\00", [44 x i8] zeroinitializer }, align 32
@pcie_b2_clk_wak_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 35, i32 36], [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nor_addr_8_9_grp\00", [47 x i8] zeroinitializer }, align 32
@nor_addr_8_9_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 35, i32 36], [24 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio_12_13_grp\00", [17 x i8] zeroinitializer }, align 32
@gpio_12_13_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 37, i32 38], [24 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcie_a2_clk_wak_grp\00", [44 x i8] zeroinitializer }, align 32
@pcie_a2_clk_wak_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 37, i32 38], [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nor_addr_10_11_grp\00", [45 x i8] zeroinitializer }, align 32
@nor_addr_10_11_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 37, i32 38], [24 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio_14_17_grp\00", [17 x i8] zeroinitializer }, align 32
@gpio_14_17_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 39, i32 40, i32 41, i32 42], [16 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uart0_modem_grp\00", [16 x i8] zeroinitializer }, align 32
@uart0_modem_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 39, i32 40, i32 41, i32 42], [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nor_addr_12_15_grp\00", [45 x i8] zeroinitializer }, align 32
@nor_addr_12_15_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 39, i32 40, i32 41, i32 42], [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio_18_19_grp\00", [17 x i8] zeroinitializer }, align 32
@gpio_18_19_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 43, i32 44], [24 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uart0_rts_cts_grp\00", [46 x i8] zeroinitializer }, align 32
@uart0_rts_cts_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 43, i32 44], [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio_20_21_grp\00", [17 x i8] zeroinitializer }, align 32
@gpio_20_21_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 45, i32 46], [24 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uart0_in_out_grp\00", [47 x i8] zeroinitializer }, align 32
@uart0_in_out_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 45, i32 46], [24 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio_22_23_grp\00", [17 x i8] zeroinitializer }, align 32
@gpio_22_23_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 47, i32 48], [24 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uart1_dcd_dsr_grp\00", [46 x i8] zeroinitializer }, align 32
@uart1_dcd_dsr_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 47, i32 48], [24 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio_24_25_grp\00", [17 x i8] zeroinitializer }, align 32
@gpio_24_25_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 49, i32 50], [24 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uart1_ri_dtr_grp\00", [47 x i8] zeroinitializer }, align 32
@uart1_ri_dtr_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 49, i32 50], [24 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio_26_27_grp\00", [17 x i8] zeroinitializer }, align 32
@gpio_26_27_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 51, i32 52], [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uart1_rts_cts_grp\00", [46 x i8] zeroinitializer }, align 32
@uart1_rts_cts_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 51, i32 52], [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio_28_29_grp\00", [17 x i8] zeroinitializer }, align 32
@gpio_28_29_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 53, i32 54], [24 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uart1_in_out_grp\00", [47 x i8] zeroinitializer }, align 32
@uart1_in_out_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 53, i32 54], [24 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio_30_31_grp\00", [17 x i8] zeroinitializer }, align 32
@gpio_30_31_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 55, i32 56], [24 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uart2_rts_cts_grp\00", [46 x i8] zeroinitializer }, align 32
@uart2_rts_cts_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 55, i32 56], [24 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm_0_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm_0_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 24], [28 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm_1_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm_1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 25], [28 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm_2_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm_2_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 27], [28 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm_3_grp\00", [22 x i8] zeroinitializer }, align 32
@pwm_3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 28], [28 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@nand_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.132], [28 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nor\00", [28 x i8] zeroinitializer }, align 32
@nor_grps = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154], [32 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@gpio_grps = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.167], [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@pcie_grps = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.150], [44 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@uart0_grps = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.153, ptr @.str.156, ptr @.str.158], [20 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@uart1_grps = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.135, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.166], [44 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@uart2_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.168], [28 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@pwm_grps = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172], [16 x i8] zeroinitializer }, align 32
@ns2_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @ns2_get_groups_count, ptr @ns2_get_group_name, ptr @ns2_get_group_pins, ptr @ns2_pin_dbg_show, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@ns2_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @ns2_get_functions_count, ptr @ns2_get_function_name, ptr @ns2_get_function_groups, ptr @ns2_pinmux_enable, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@ns2_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @ns2_pin_config_get, ptr @ns2_pin_config_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@ns2_pinmux_enable.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.182, ptr @.str.183, ptr @.str.4, ptr @.str.184, i8 0, i8 -94, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pinctrl_ns2_mux\00", [16 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ns2_pinmux_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"func:%u name:%s grp:%u name:%s\0A\00", [32 x i8] zeroinitializer }, align 32
@ns2_pinmux_enable.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.182, ptr @.str.183, ptr @.str.4, ptr @.str.185, i8 0, i8 -93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"offset:0x%08x shift:%u alt:%u\0A\00", [33 x i8] zeroinitializer }, align 32
@ns2_pinmux_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.4, i32 598, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"double configuration error detected!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ns2_pinmux_set\00", [17 x i8] zeroinitializer }, align 32
@ns2_pinmux_set._entry_ptr = internal global ptr @ns2_pinmux_set._entry, section ".printk_index", align 4
@ns2_pinmux_set._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.187, ptr @.str.4, i32 600, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"func:%s grp:%s\0A\00", [16 x i8] zeroinitializer }, align 32
@ns2_pinmux_set._entry_ptr.190 = internal global ptr @ns2_pinmux_set._entry.188, section ".printk_index", align 4
@ns2_pin_get_strength.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.182, ptr @.str.191, ptr @.str.4, ptr @.str.192, i8 0, i8 -47, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.191 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ns2_pin_get_strength\00", [43 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pin:%u get drive strength:%d mA\0A\00", [63 x i8] zeroinitializer }, align 32
@ns2_pin_get_slew.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.182, ptr @.str.193, ptr @.str.4, ptr @.str.194, i8 0, i8 -71, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.193 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ns2_pin_get_slew\00", [47 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pin:%u get slew:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@ns2_pin_get_enable.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.182, ptr @.str.195, ptr @.str.4, ptr @.str.196, i8 0, i8 -81, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.195 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ns2_pin_get_enable\00", [45 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pin:%u get disable:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@ns2_pin_config_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.4, i32 955, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid configuration\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ns2_pin_config_set\00", [45 x i8] zeroinitializer }, align 32
@ns2_pin_config_set._entry_ptr = internal global ptr @ns2_pin_config_set._entry, section ".printk_index", align 4
@ns2_pin_set_pull.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.182, ptr @.str.199, ptr @.str.4, ptr @.str.200, i8 0, i8 -64, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.199 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ns2_pin_set_pull\00", [47 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pin:%u set pullup:%d pulldown: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ns2_pin_set_strength.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.182, ptr @.str.201, ptr @.str.4, ptr @.str.202, i8 0, i8 -52, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.201 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ns2_pin_set_strength\00", [43 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pin:%u set drive strength:%d mA\0A\00", [63 x i8] zeroinitializer }, align 32
@ns2_pin_set_slew.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.182, ptr @.str.203, ptr @.str.4, ptr @.str.204, i8 0, i8 -75, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.203 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ns2_pin_set_slew\00", [47 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pin:%u set slew:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@ns2_pin_set_enable.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.182, ptr @.str.205, ptr @.str.4, ptr @.str.206, i8 0, i8 -87, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.205 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ns2_pin_set_enable\00", [45 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pin:%u set enable:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.207 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 3, i64 5, i64 9, i64 12, i64 24]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.210 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.211 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 3, i64 5, i64 9, i64 12, i64 24]
@___asan_gen_.212 = private unnamed_addr constant [18 x i8] c"ns2_pinmux_driver\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 1101, i32 31 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 1103, i32 11 }
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c"ns2_pinmux_of_match\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 1096, i32 34 }
@___asan_gen_.221 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 1043, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 1055, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 1065, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant [9 x i8] c"ns2_pins\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 187, i32 23 }
@___asan_gen_.254 = private unnamed_addr constant [15 x i8] c"ns2_pin_groups\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 389, i32 35 }
@___asan_gen_.257 = private unnamed_addr constant [18 x i8] c"ns2_pin_functions\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 490, i32 38 }
@___asan_gen_.260 = private unnamed_addr constant [17 x i8] c"ns2_pinctrl_desc\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 975, i32 28 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 1089, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 188, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 189, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 190, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 191, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 192, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 193, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 194, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 195, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 196, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 197, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 198, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 199, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 200, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 201, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 202, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 203, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 204, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 205, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 206, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 207, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 208, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 209, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 210, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 211, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 212, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 213, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 214, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 215, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 216, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 217, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 218, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 219, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 220, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 221, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 222, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 223, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 224, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 225, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 226, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 227, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 228, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 229, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 230, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 231, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 232, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 233, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 234, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 235, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 236, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 237, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 238, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 239, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 240, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 241, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 242, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 243, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 244, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 245, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 246, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 247, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 248, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 249, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 250, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 251, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 252, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 253, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 254, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 255, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 256, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 257, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 258, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 259, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 260, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 261, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 262, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 263, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 264, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 265, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 266, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 267, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 268, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 269, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 270, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 271, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 272, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 273, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 274, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 275, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 276, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 277, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 278, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 279, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 280, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 281, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 282, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 283, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 284, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 285, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 286, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 287, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 288, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 289, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 290, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 291, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 292, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 293, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 294, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 295, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 296, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 297, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 298, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 299, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 300, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 301, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 302, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 303, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 304, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 305, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 306, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 390, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant [10 x i8] c"nand_pins\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 313, i32 27 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 391, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant [14 x i8] c"nor_data_pins\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 315, i32 27 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 392, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant [14 x i8] c"gpio_0_1_pins\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 318, i32 27 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 394, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant [19 x i8] c"uart1_ext_clk_pins\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 322, i32 27 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 395, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant [13 x i8] c"nor_adv_pins\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 323, i32 27 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 397, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant [14 x i8] c"gpio_2_5_pins\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 325, i32 27 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 398, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant [22 x i8] c"pcie_ab1_clk_wak_pins\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 326, i32 27 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 399, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant [18 x i8] c"nor_addr_0_3_pins\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 327, i32 27 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 401, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant [14 x i8] c"gpio_6_7_pins\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 331, i32 27 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 402, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant [21 x i8] c"pcie_a3_clk_wak_pins\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 332, i32 27 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 403, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant [18 x i8] c"nor_addr_4_5_pins\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 333, i32 27 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 405, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant [14 x i8] c"gpio_8_9_pins\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 335, i32 27 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 406, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant [21 x i8] c"pcie_b3_clk_wak_pins\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 336, i32 27 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 407, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant [18 x i8] c"nor_addr_6_7_pins\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 337, i32 27 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 409, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant [16 x i8] c"gpio_10_11_pins\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 339, i32 27 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 410, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant [21 x i8] c"pcie_b2_clk_wak_pins\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 340, i32 27 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 411, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant [18 x i8] c"nor_addr_8_9_pins\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 341, i32 27 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 413, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant [16 x i8] c"gpio_12_13_pins\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 343, i32 27 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 414, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant [21 x i8] c"pcie_a2_clk_wak_pins\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 344, i32 27 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 415, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant [20 x i8] c"nor_addr_10_11_pins\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 345, i32 27 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 417, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant [16 x i8] c"gpio_14_17_pins\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 347, i32 27 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 418, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant [17 x i8] c"uart0_modem_pins\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 348, i32 27 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 419, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant [20 x i8] c"nor_addr_12_15_pins\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 349, i32 27 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 421, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant [16 x i8] c"gpio_18_19_pins\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 351, i32 27 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 422, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant [19 x i8] c"uart0_rts_cts_pins\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 352, i32 27 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 424, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant [16 x i8] c"gpio_20_21_pins\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 354, i32 27 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 425, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant [18 x i8] c"uart0_in_out_pins\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 355, i32 27 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 427, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant [16 x i8] c"gpio_22_23_pins\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 357, i32 27 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 428, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant [19 x i8] c"uart1_dcd_dsr_pins\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 358, i32 27 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 430, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant [16 x i8] c"gpio_24_25_pins\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 360, i32 27 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 431, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant [18 x i8] c"uart1_ri_dtr_pins\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 361, i32 27 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 433, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant [16 x i8] c"gpio_26_27_pins\00", align 1
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 363, i32 27 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 434, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant [19 x i8] c"uart1_rts_cts_pins\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 364, i32 27 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 436, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant [16 x i8] c"gpio_28_29_pins\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 366, i32 27 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 437, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant [18 x i8] c"uart1_in_out_pins\00", align 1
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 367, i32 27 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 439, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant [16 x i8] c"gpio_30_31_pins\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 369, i32 27 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 440, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant [19 x i8] c"uart2_rts_cts_pins\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 370, i32 27 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 442, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant [11 x i8] c"pwm_0_pins\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 319, i32 27 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 443, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant [11 x i8] c"pwm_1_pins\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 320, i32 27 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 444, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant [11 x i8] c"pwm_2_pins\00", align 1
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 328, i32 27 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 445, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant [11 x i8] c"pwm_3_pins\00", align 1
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 329, i32 27 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 491, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant [10 x i8] c"nand_grps\00", align 1
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 452, i32 27 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 492, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant [9 x i8] c"nor_grps\00", align 1
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 454, i32 27 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 493, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant [10 x i8] c"gpio_grps\00", align 1
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 458, i32 27 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 494, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant [10 x i8] c"pcie_grps\00", align 1
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 464, i32 27 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 495, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant [11 x i8] c"uart0_grps\00", align 1
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 468, i32 27 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 496, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant [11 x i8] c"uart1_grps\00", align 1
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 471, i32 27 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 497, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant [11 x i8] c"uart2_grps\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 475, i32 27 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 498, i32 2 }
@___asan_gen_.917 = private unnamed_addr constant [9 x i8] c"pwm_grps\00", align 1
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 477, i32 27 }
@___asan_gen_.920 = private unnamed_addr constant [16 x i8] c"ns2_pinctrl_ops\00", align 1
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 534, i32 33 }
@___asan_gen_.923 = private unnamed_addr constant [15 x i8] c"ns2_pinmux_ops\00", align 1
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 962, i32 32 }
@___asan_gen_.926 = private unnamed_addr constant [16 x i8] c"ns2_pinconf_ops\00", align 1
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 969, i32 33 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 531, i32 16 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 650, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 653, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 597, i32 4 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 599, i32 4 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 836, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 742, i32 2 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 701, i32 2 }
@___asan_gen_.977 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 955, i32 4 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 767, i32 2 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 816, i32 2 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 725, i32 2 }
@___asan_gen_.1007 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1008 = private constant [41 x i8] c"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c\00", align 1
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 679, i32 2 }
@llvm.compiler.used = appending global [273 x ptr] [ptr @__initcall__kmod_pinctrl_ns2_mux__232_1113_ns2_pinmux_init3, ptr @ns2_pin_config_set._entry, ptr @ns2_pin_config_set._entry_ptr, ptr @ns2_pinmux_probe._entry, ptr @ns2_pinmux_probe._entry.10, ptr @ns2_pinmux_probe._entry.7, ptr @ns2_pinmux_probe._entry_ptr, ptr @ns2_pinmux_probe._entry_ptr.12, ptr @ns2_pinmux_probe._entry_ptr.9, ptr @ns2_pinmux_set._entry, ptr @ns2_pinmux_set._entry.188, ptr @ns2_pinmux_set._entry_ptr, ptr @ns2_pinmux_set._entry_ptr.190, ptr @ns2_pinmux_driver, ptr @.str, ptr @ns2_pinmux_of_match, ptr @ns2_pinmux_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @ns2_pins, ptr @ns2_pin_groups, ptr @ns2_pin_functions, ptr @ns2_pinctrl_desc, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @nand_pins, ptr @.str.133, ptr @nor_data_pins, ptr @.str.134, ptr @gpio_0_1_pins, ptr @.str.135, ptr @uart1_ext_clk_pins, ptr @.str.136, ptr @nor_adv_pins, ptr @.str.137, ptr @gpio_2_5_pins, ptr @.str.138, ptr @pcie_ab1_clk_wak_pins, ptr @.str.139, ptr @nor_addr_0_3_pins, ptr @.str.140, ptr @gpio_6_7_pins, ptr @.str.141, ptr @pcie_a3_clk_wak_pins, ptr @.str.142, ptr @nor_addr_4_5_pins, ptr @.str.143, ptr @gpio_8_9_pins, ptr @.str.144, ptr @pcie_b3_clk_wak_pins, ptr @.str.145, ptr @nor_addr_6_7_pins, ptr @.str.146, ptr @gpio_10_11_pins, ptr @.str.147, ptr @pcie_b2_clk_wak_pins, ptr @.str.148, ptr @nor_addr_8_9_pins, ptr @.str.149, ptr @gpio_12_13_pins, ptr @.str.150, ptr @pcie_a2_clk_wak_pins, ptr @.str.151, ptr @nor_addr_10_11_pins, ptr @.str.152, ptr @gpio_14_17_pins, ptr @.str.153, ptr @uart0_modem_pins, ptr @.str.154, ptr @nor_addr_12_15_pins, ptr @.str.155, ptr @gpio_18_19_pins, ptr @.str.156, ptr @uart0_rts_cts_pins, ptr @.str.157, ptr @gpio_20_21_pins, ptr @.str.158, ptr @uart0_in_out_pins, ptr @.str.159, ptr @gpio_22_23_pins, ptr @.str.160, ptr @uart1_dcd_dsr_pins, ptr @.str.161, ptr @gpio_24_25_pins, ptr @.str.162, ptr @uart1_ri_dtr_pins, ptr @.str.163, ptr @gpio_26_27_pins, ptr @.str.164, ptr @uart1_rts_cts_pins, ptr @.str.165, ptr @gpio_28_29_pins, ptr @.str.166, ptr @uart1_in_out_pins, ptr @.str.167, ptr @gpio_30_31_pins, ptr @.str.168, ptr @uart2_rts_cts_pins, ptr @.str.169, ptr @pwm_0_pins, ptr @.str.170, ptr @pwm_1_pins, ptr @.str.171, ptr @pwm_2_pins, ptr @.str.172, ptr @pwm_3_pins, ptr @.str.173, ptr @nand_grps, ptr @.str.174, ptr @nor_grps, ptr @.str.175, ptr @gpio_grps, ptr @.str.176, ptr @pcie_grps, ptr @.str.177, ptr @uart0_grps, ptr @.str.178, ptr @uart1_grps, ptr @.str.179, ptr @uart2_grps, ptr @.str.180, ptr @pwm_grps, ptr @ns2_pinctrl_ops, ptr @ns2_pinmux_ops, ptr @ns2_pinconf_ops, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.189, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206], section "llvm.metadata"
@0 = internal global [266 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pinmux_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pinmux_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pinmux_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pinmux_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pinmux_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pins to i32), i32 3808, i32 4736, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pin_groups to i32), i32 1312, i32 1632, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pin_functions to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pinmux_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_pins to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nor_data_pins to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_0_1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_ext_clk_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nor_adv_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_2_5_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_ab1_clk_wak_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nor_addr_0_3_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_6_7_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_a3_clk_wak_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nor_addr_4_5_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_8_9_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_b3_clk_wak_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nor_addr_6_7_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_10_11_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_b2_clk_wak_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nor_addr_8_9_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_12_13_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_a2_clk_wak_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nor_addr_10_11_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_14_17_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_modem_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nor_addr_12_15_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_18_19_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_rts_cts_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_20_21_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_in_out_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_22_23_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_dcd_dsr_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_24_25_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_ri_dtr_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_26_27_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_rts_cts_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_28_29_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_in_out_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_30_31_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_rts_cts_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nor_grps to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_grps to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_grps to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_grps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_grps to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_grps to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pinmux_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pinmux_set._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_pin_config_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_pinmux_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ns2_pinmux_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_pinmux_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 84, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ns2_pinmux_probe.__key, i16 noundef signext 3) #7
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base0 = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %base0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %base0, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %4 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call11, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call11, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %call17 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %5, i32 noundef %add.i) #7
  %base1 = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %base1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %base1, align 4
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  %call26 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 2) #7
  %pinconf_base = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %pinconf_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call26, ptr %pinconf_base, align 4
  %cmp.i116 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 456, i32 noundef 3520) #7
  %mux_log.i = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i, i32 0, i32 9
  %13 = ptrtoint ptr %mux_log.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i.i, ptr %mux_log.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %is_configured.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %is_configured.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %is_configured.i, align 4
  %is_configured.1.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 1, i32 1
  %15 = ptrtoint ptr %is_configured.1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %is_configured.1.i, align 4
  %is_configured.2.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 2, i32 1
  %16 = ptrtoint ptr %is_configured.2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %is_configured.2.i, align 4
  %is_configured.3.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 3, i32 1
  %17 = ptrtoint ptr %is_configured.3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %is_configured.3.i, align 4
  %is_configured.4.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 4, i32 1
  %18 = ptrtoint ptr %is_configured.4.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %is_configured.4.i, align 4
  %is_configured.5.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 5, i32 1
  %19 = ptrtoint ptr %is_configured.5.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %is_configured.5.i, align 4
  %is_configured.6.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 6, i32 1
  %20 = ptrtoint ptr %is_configured.6.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %is_configured.6.i, align 4
  %is_configured.7.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 7, i32 1
  %21 = ptrtoint ptr %is_configured.7.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %is_configured.7.i, align 4
  %is_configured.8.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 8, i32 1
  %22 = ptrtoint ptr %is_configured.8.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %is_configured.8.i, align 4
  %is_configured.9.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 9, i32 1
  %23 = ptrtoint ptr %is_configured.9.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %is_configured.9.i, align 4
  %is_configured.10.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 10, i32 1
  %24 = ptrtoint ptr %is_configured.10.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %is_configured.10.i, align 4
  %is_configured.11.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 11, i32 1
  %25 = ptrtoint ptr %is_configured.11.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %is_configured.11.i, align 4
  %is_configured.12.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 12, i32 1
  %26 = ptrtoint ptr %is_configured.12.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %is_configured.12.i, align 4
  %is_configured.13.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 13, i32 1
  %27 = ptrtoint ptr %is_configured.13.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %is_configured.13.i, align 4
  %is_configured.14.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 14, i32 1
  %28 = ptrtoint ptr %is_configured.14.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %is_configured.14.i, align 4
  %is_configured.15.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 15, i32 1
  %29 = ptrtoint ptr %is_configured.15.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %is_configured.15.i, align 4
  %is_configured.16.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 16, i32 1
  %30 = ptrtoint ptr %is_configured.16.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %is_configured.16.i, align 4
  %is_configured.17.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 17, i32 1
  %31 = ptrtoint ptr %is_configured.17.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %is_configured.17.i, align 4
  %is_configured.18.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 18, i32 1
  %32 = ptrtoint ptr %is_configured.18.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %is_configured.18.i, align 4
  %33 = ptrtoint ptr %call5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %call5.i.i.i, align 4
  %offset.i = getelementptr inbounds %struct.ns2_mux, ptr %call5.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %offset.i, align 4
  %shift.i = getelementptr inbounds %struct.ns2_mux, ptr %call5.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %shift.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 31, ptr %shift.i, align 4
  %alt.i = getelementptr inbounds %struct.ns2_mux, ptr %call5.i.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %alt.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %alt.i, align 4
  %arrayidx12.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 1
  %37 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx12.i, align 4
  %offset16.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %offset16.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %offset16.i, align 4
  %shift18.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 1, i32 0, i32 2
  %39 = ptrtoint ptr %shift18.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 30, ptr %shift18.i, align 4
  %alt20.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 1, i32 0, i32 4
  %40 = ptrtoint ptr %alt20.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %alt20.i, align 4
  %arrayidx12.1.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 2
  %41 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx12.1.i, align 4
  %offset16.1.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 2, i32 0, i32 1
  %42 = ptrtoint ptr %offset16.1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %offset16.1.i, align 4
  %shift18.1.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 2, i32 0, i32 2
  %43 = ptrtoint ptr %shift18.1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 28, ptr %shift18.1.i, align 4
  %alt20.1.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 2, i32 0, i32 4
  %44 = ptrtoint ptr %alt20.1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %alt20.1.i, align 4
  %arrayidx12.2.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 3
  %45 = ptrtoint ptr %arrayidx12.2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx12.2.i, align 4
  %offset16.2.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 3, i32 0, i32 1
  %46 = ptrtoint ptr %offset16.2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %offset16.2.i, align 4
  %shift18.2.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 3, i32 0, i32 2
  %47 = ptrtoint ptr %shift18.2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 26, ptr %shift18.2.i, align 4
  %alt20.2.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 3, i32 0, i32 4
  %48 = ptrtoint ptr %alt20.2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %alt20.2.i, align 4
  %arrayidx12.3.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 4
  %49 = ptrtoint ptr %arrayidx12.3.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx12.3.i, align 4
  %offset16.3.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 4, i32 0, i32 1
  %50 = ptrtoint ptr %offset16.3.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %offset16.3.i, align 4
  %shift18.3.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 4, i32 0, i32 2
  %51 = ptrtoint ptr %shift18.3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 24, ptr %shift18.3.i, align 4
  %alt20.3.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 4, i32 0, i32 4
  %52 = ptrtoint ptr %alt20.3.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %alt20.3.i, align 4
  %arrayidx12.4.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 5
  %53 = ptrtoint ptr %arrayidx12.4.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx12.4.i, align 4
  %offset16.4.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 5, i32 0, i32 1
  %54 = ptrtoint ptr %offset16.4.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4, ptr %offset16.4.i, align 4
  %shift18.4.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 5, i32 0, i32 2
  %55 = ptrtoint ptr %shift18.4.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 22, ptr %shift18.4.i, align 4
  %alt20.4.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 5, i32 0, i32 4
  %56 = ptrtoint ptr %alt20.4.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %alt20.4.i, align 4
  %arrayidx12.5.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 6
  %57 = ptrtoint ptr %arrayidx12.5.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %arrayidx12.5.i, align 4
  %offset16.5.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 6, i32 0, i32 1
  %58 = ptrtoint ptr %offset16.5.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %offset16.5.i, align 4
  %shift18.5.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 6, i32 0, i32 2
  %59 = ptrtoint ptr %shift18.5.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 20, ptr %shift18.5.i, align 4
  %alt20.5.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 6, i32 0, i32 4
  %60 = ptrtoint ptr %alt20.5.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %alt20.5.i, align 4
  %arrayidx12.6.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 7
  %61 = ptrtoint ptr %arrayidx12.6.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %arrayidx12.6.i, align 4
  %offset16.6.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 7, i32 0, i32 1
  %62 = ptrtoint ptr %offset16.6.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4, ptr %offset16.6.i, align 4
  %shift18.6.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 7, i32 0, i32 2
  %63 = ptrtoint ptr %shift18.6.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 18, ptr %shift18.6.i, align 4
  %alt20.6.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 7, i32 0, i32 4
  %64 = ptrtoint ptr %alt20.6.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %alt20.6.i, align 4
  %arrayidx12.7.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 8
  %65 = ptrtoint ptr %arrayidx12.7.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %arrayidx12.7.i, align 4
  %offset16.7.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 8, i32 0, i32 1
  %66 = ptrtoint ptr %offset16.7.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4, ptr %offset16.7.i, align 4
  %shift18.7.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 8, i32 0, i32 2
  %67 = ptrtoint ptr %shift18.7.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 16, ptr %shift18.7.i, align 4
  %alt20.7.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 8, i32 0, i32 4
  %68 = ptrtoint ptr %alt20.7.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %alt20.7.i, align 4
  %arrayidx12.8.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 9
  %69 = ptrtoint ptr %arrayidx12.8.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %arrayidx12.8.i, align 4
  %offset16.8.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 9, i32 0, i32 1
  %70 = ptrtoint ptr %offset16.8.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 4, ptr %offset16.8.i, align 4
  %shift18.8.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 9, i32 0, i32 2
  %71 = ptrtoint ptr %shift18.8.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 14, ptr %shift18.8.i, align 4
  %alt20.8.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 9, i32 0, i32 4
  %72 = ptrtoint ptr %alt20.8.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %alt20.8.i, align 4
  %arrayidx12.9.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 10
  %73 = ptrtoint ptr %arrayidx12.9.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %arrayidx12.9.i, align 4
  %offset16.9.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 10, i32 0, i32 1
  %74 = ptrtoint ptr %offset16.9.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 4, ptr %offset16.9.i, align 4
  %shift18.9.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 10, i32 0, i32 2
  %75 = ptrtoint ptr %shift18.9.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 12, ptr %shift18.9.i, align 4
  %alt20.9.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 10, i32 0, i32 4
  %76 = ptrtoint ptr %alt20.9.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %alt20.9.i, align 4
  %arrayidx12.10.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 11
  %77 = ptrtoint ptr %arrayidx12.10.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %arrayidx12.10.i, align 4
  %offset16.10.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 11, i32 0, i32 1
  %78 = ptrtoint ptr %offset16.10.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4, ptr %offset16.10.i, align 4
  %shift18.10.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 11, i32 0, i32 2
  %79 = ptrtoint ptr %shift18.10.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 10, ptr %shift18.10.i, align 4
  %alt20.10.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 11, i32 0, i32 4
  %80 = ptrtoint ptr %alt20.10.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %alt20.10.i, align 4
  %arrayidx12.11.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 12
  %81 = ptrtoint ptr %arrayidx12.11.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %arrayidx12.11.i, align 4
  %offset16.11.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 12, i32 0, i32 1
  %82 = ptrtoint ptr %offset16.11.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 4, ptr %offset16.11.i, align 4
  %shift18.11.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 12, i32 0, i32 2
  %83 = ptrtoint ptr %shift18.11.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 8, ptr %shift18.11.i, align 4
  %alt20.11.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 12, i32 0, i32 4
  %84 = ptrtoint ptr %alt20.11.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %alt20.11.i, align 4
  %arrayidx12.12.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 13
  %85 = ptrtoint ptr %arrayidx12.12.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %arrayidx12.12.i, align 4
  %offset16.12.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 13, i32 0, i32 1
  %86 = ptrtoint ptr %offset16.12.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 4, ptr %offset16.12.i, align 4
  %shift18.12.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 13, i32 0, i32 2
  %87 = ptrtoint ptr %shift18.12.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 6, ptr %shift18.12.i, align 4
  %alt20.12.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 13, i32 0, i32 4
  %88 = ptrtoint ptr %alt20.12.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %alt20.12.i, align 4
  %arrayidx12.13.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 14
  %89 = ptrtoint ptr %arrayidx12.13.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %arrayidx12.13.i, align 4
  %offset16.13.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 14, i32 0, i32 1
  %90 = ptrtoint ptr %offset16.13.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 4, ptr %offset16.13.i, align 4
  %shift18.13.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 14, i32 0, i32 2
  %91 = ptrtoint ptr %shift18.13.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 4, ptr %shift18.13.i, align 4
  %alt20.13.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 14, i32 0, i32 4
  %92 = ptrtoint ptr %alt20.13.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %alt20.13.i, align 4
  %arrayidx28.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 15
  %93 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %arrayidx28.i, align 4
  %offset32.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 15, i32 0, i32 1
  %94 = ptrtoint ptr %offset32.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %offset32.i, align 4
  %shift34.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 15, i32 0, i32 2
  %95 = ptrtoint ptr %shift34.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %shift34.i, align 4
  %alt36.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 15, i32 0, i32 4
  %96 = ptrtoint ptr %alt36.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %alt36.i, align 4
  %arrayidx28.1.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 16
  %97 = ptrtoint ptr %arrayidx28.1.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %arrayidx28.1.i, align 4
  %offset32.1.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 16, i32 0, i32 1
  %98 = ptrtoint ptr %offset32.1.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %offset32.1.i, align 4
  %shift34.1.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 16, i32 0, i32 2
  %99 = ptrtoint ptr %shift34.1.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %shift34.1.i, align 4
  %alt36.1.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 16, i32 0, i32 4
  %100 = ptrtoint ptr %alt36.1.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %alt36.1.i, align 4
  %arrayidx28.2.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 17
  %101 = ptrtoint ptr %arrayidx28.2.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %arrayidx28.2.i, align 4
  %offset32.2.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 17, i32 0, i32 1
  %102 = ptrtoint ptr %offset32.2.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %offset32.2.i, align 4
  %shift34.2.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 17, i32 0, i32 2
  %103 = ptrtoint ptr %shift34.2.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 2, ptr %shift34.2.i, align 4
  %alt36.2.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 17, i32 0, i32 4
  %104 = ptrtoint ptr %alt36.2.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %alt36.2.i, align 4
  %arrayidx28.3.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 18
  %105 = ptrtoint ptr %arrayidx28.3.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %arrayidx28.3.i, align 4
  %offset32.3.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 18, i32 0, i32 1
  %106 = ptrtoint ptr %offset32.3.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %offset32.3.i, align 4
  %shift34.3.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 18, i32 0, i32 2
  %107 = ptrtoint ptr %shift34.3.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 3, ptr %shift34.3.i, align 4
  %alt36.3.i = getelementptr %struct.ns2_mux_log, ptr %call5.i.i.i, i32 18, i32 0, i32 4
  %108 = ptrtoint ptr %alt36.3.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %alt36.3.i, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1428, i32 noundef 3520) #7
  %tobool43.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool43.not, label %if.end40.cleanup_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  br label %for.body

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end40.for.body_crit_edge
  %i.0120 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end40.for.body_crit_edge ]
  %arrayidx = getelementptr [119 x %struct.ns2_pin], ptr @ns2_pins, i32 0, i32 %i.0120
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx, align 4
  %arrayidx46 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0120
  %111 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %arrayidx46, align 4
  %name = getelementptr [119 x %struct.ns2_pin], ptr @ns2_pins, i32 0, i32 %i.0120, i32 1
  %112 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %name, align 4
  %name49 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0120, i32 1
  %114 = ptrtoint ptr %name49 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %113, ptr %name49, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0120, i32 2
  %115 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %arrayidx, ptr %drv_data, align 4
  %inc = add nuw nsw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, 119
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %groups = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i, i32 0, i32 5
  %116 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @ns2_pin_groups, ptr %groups, align 4
  %num_groups = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i, i32 0, i32 6
  %117 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 41, ptr %num_groups, align 4
  %functions = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i, i32 0, i32 7
  %118 = ptrtoint ptr %functions to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @ns2_pin_functions, ptr %functions, align 4
  %num_functions = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i, i32 0, i32 8
  %119 = ptrtoint ptr %num_functions to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 8, ptr %num_functions, align 4
  store ptr %call5.i.i, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @ns2_pinctrl_desc, i32 0, i32 1), align 4
  store i32 119, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @ns2_pinctrl_desc, i32 0, i32 2), align 4
  %call53 = tail call ptr @pinctrl_register(ptr noundef nonnull @ns2_pinctrl_desc, ptr noundef %dev, ptr noundef nonnull %call.i) #7
  %120 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call53, ptr %call.i, align 4
  %cmp.i117 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %do.end59, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end59:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  %121 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %call.i, align 4
  %123 = ptrtoint ptr %122 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %for.end.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %do.end38, %if.then29, %do.end23, %if.end10.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %10, %if.then29 ], [ -12, %do.end38 ], [ %123, %do.end59 ], [ -12, %do.end23 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -12, %if.end40.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_get_groups_count(ptr noundef %pctrl_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #7
  %num_groups = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_groups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ns2_get_group_name(ptr noundef %pctrl_dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #7
  %groups = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.ns2_pin_group, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_get_group_pins(ptr noundef %pctrl_dev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #7
  %groups = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.ns2_pin_group, ptr %1, i32 %selector, i32 1
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pins, align 4
  %5 = load ptr, ptr %groups, align 4
  %num_pins4 = getelementptr %struct.ns2_pin_group, ptr %5, i32 %selector, i32 2
  %6 = ptrtoint ptr %num_pins4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pins4, align 4
  %8 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ns2_pin_dbg_show(ptr nocapture noundef readonly %pctrl_dev, ptr noundef %s, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.181, ptr noundef %retval.0.i) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #7
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
define internal i32 @ns2_get_functions_count(ptr noundef %pctrl_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #7
  %num_functions = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_functions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ns2_get_function_name(ptr noundef %pctrl_dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #7
  %functions = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.ns2_pin_function, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_get_function_groups(ptr noundef %pctrl_dev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #7
  %functions = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.ns2_pin_function, ptr %1, i32 %selector, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %functions, align 4
  %num_groups4 = getelementptr %struct.ns2_pin_function, ptr %5, i32 %selector, i32 2
  %6 = ptrtoint ptr %num_groups4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_groups4, align 4
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_pinmux_enable(ptr noundef %pctrl_dev, i32 noundef %func_select, i32 noundef %grp_select) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #7
  %num_groups = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_groups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %grp_select)
  %cmp.not = icmp ugt i32 %1, %grp_select
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %num_functions = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_functions, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %func_select)
  %cmp1.not = icmp ugt i32 %3, %func_select
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %functions = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.ns2_pin_function, ptr %5, i32 %func_select
  %groups = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %groups, align 4
  %arrayidx2 = getelementptr %struct.ns2_pin_group, ptr %7, i32 %grp_select
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns2_pinmux_enable.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ns2_pinmux_enable, %do.body10)) #7
          to label %if.then7 [label %do.body10], !srcloc !536

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrl_dev, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ns2_pinmux_enable.__UNIQUE_ID_ddebug223, ptr noundef %9, ptr noundef nonnull @.str.184, i32 noundef %func_select, ptr noundef %11, i32 noundef %grp_select, ptr noundef %13) #7
  br label %do.body10

do.body10:                                        ; preds = %if.then7, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns2_pinmux_enable.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ns2_pinmux_enable, %do.end30)) #7
          to label %if.then24 [label %do.end30], !srcloc !536

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %dev25 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrl_dev, i32 0, i32 8
  %14 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev25, align 4
  %offset = getelementptr %struct.ns2_pin_group, ptr %7, i32 %grp_select, i32 3, i32 1
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %shift = getelementptr %struct.ns2_pin_group, ptr %7, i32 %grp_select, i32 3, i32 2
  %18 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shift, align 4
  %alt = getelementptr %struct.ns2_pin_group, ptr %7, i32 %grp_select, i32 3, i32 4
  %20 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %alt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ns2_pinmux_enable.__UNIQUE_ID_ddebug224, ptr noundef %15, ptr noundef nonnull @.str.185, i32 noundef %17, i32 noundef %19, i32 noundef %21) #7
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %do.body10
  %mux_log = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 9
  %22 = ptrtoint ptr %mux_log to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mux_log, align 4
  %mux1.i = getelementptr %struct.ns2_pin_group, ptr %7, i32 %grp_select, i32 3
  %shift.i = getelementptr %struct.ns2_pin_group, ptr %7, i32 %grp_select, i32 3, i32 2
  %24 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %shift.i, align 4
  %offset.i = getelementptr %struct.ns2_pin_group, ptr %7, i32 %grp_select, i32 3, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end30
  %i.0110.i = phi i32 [ 0, %do.end30 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ns2_mux_log, ptr %23, i32 %i.0110.i
  %shift3.i = getelementptr inbounds %struct.ns2_mux, ptr %arrayidx.i, i32 0, i32 2
  %26 = ptrtoint ptr %shift3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %shift3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp4.not.i = icmp eq i32 %25, %27
  br i1 %cmp4.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %28 = ptrtoint ptr %mux1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mux1.i, align 4
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp8.not.i = icmp eq i32 %29, %31
  br i1 %cmp8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %32 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset.i, align 4
  %offset12.i = getelementptr inbounds %struct.ns2_mux, ptr %arrayidx.i, i32 0, i32 1
  %34 = ptrtoint ptr %offset12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp13.not.i = icmp eq i32 %33, %35
  br i1 %cmp13.not.i, label %if.end.i, label %lor.lhs.false9.i.for.inc.i_crit_edge

lor.lhs.false9.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false9.i
  %is_configured.i = getelementptr %struct.ns2_mux_log, ptr %23, i32 %i.0110.i, i32 1
  %36 = ptrtoint ptr %is_configured.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_configured.i, align 4, !range !537
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %if.end30.i, label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i
  %alt.i = getelementptr inbounds %struct.ns2_mux, ptr %arrayidx.i, i32 0, i32 4
  %38 = ptrtoint ptr %alt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %alt.i, align 4
  %alt19.i = getelementptr %struct.ns2_pin_group, ptr %7, i32 %grp_select, i32 3, i32 4
  %40 = ptrtoint ptr %alt19.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %alt19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp20.not.i = icmp eq i32 %39, %41
  br i1 %cmp20.not.i, label %if.end16.i.cleanup_crit_edge, label %do.end.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 1
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.186) #10
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %48 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.189, ptr noundef %47, ptr noundef %49) #10
  br label %cleanup

for.inc.i:                                        ; preds = %lor.lhs.false9.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0110.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 19
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30.i:                                       ; preds = %if.end.i
  %mask31.i = getelementptr %struct.ns2_pin_group, ptr %7, i32 %grp_select, i32 3, i32 3
  %50 = ptrtoint ptr %mask31.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mask31.i, align 4
  %alt32.i = getelementptr %struct.ns2_pin_group, ptr %7, i32 %grp_select, i32 3, i32 4
  %52 = ptrtoint ptr %alt32.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %alt32.i, align 4
  %alt35.i = getelementptr %struct.ns2_mux_log, ptr %23, i32 %i.0110.i, i32 0, i32 4
  %54 = ptrtoint ptr %alt35.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %alt35.i, align 4
  %55 = ptrtoint ptr %is_configured.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %is_configured.i, align 4
  %56 = ptrtoint ptr %mux1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mux1.i, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %57, label %if.end30.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb39.i
  ]

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  %base0.i = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 2
  br label %do.body41.i

sw.bb39.i:                                        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  %base1.i = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 3
  br label %do.body41.i

do.body41.i:                                      ; preds = %sw.bb39.i, %sw.bb.i
  %base_address.0.in.i = phi ptr [ %base1.i, %sw.bb39.i ], [ %base0.i, %sw.bb.i ]
  %59 = ptrtoint ptr %base_address.0.in.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %base_address.0.i = load ptr, ptr %base_address.0.in.i, align 4
  %lock.i = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 10
  %call43.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %60 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %base_address.0.i, i32 %61
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !538
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !539
  %64 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %51, %65
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %63, %neg.i
  %66 = ptrtoint ptr %alt32.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %alt32.i, align 4
  %shl59.i = shl i32 %67, %65
  %or.i = or i32 %and.i, %shl59.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !540
  tail call void @arm_heavy_mb() #7
  %68 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %69 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %offset.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %base_address.0.i, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %68) #7, !srcloc !541
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call43.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body41.i, %if.end30.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %do.end.i, %if.end16.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ 0, %do.body41.i ], [ 0, %if.end16.i.cleanup_crit_edge ], [ -22, %if.end30.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_pin_config_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  %pull_up = alloca i8, align 1
  %pull_down = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
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
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %config, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pull_up)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pull_down)
  %pin_conf = getelementptr inbounds %struct.ns2_pin, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %pin_conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pin_conf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %trunc = trunc i32 %7 to i8
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.207)
  switch i8 %trunc, label %if.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 5, label %sw.bb3
    i8 3, label %sw.bb7
    i8 9, label %sw.bb11
    i8 24, label %sw.bb17
    i8 12, label %sw.bb24
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc, align 4
  %pins.i = getelementptr inbounds %struct.pinctrl_desc, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pins.i, align 4
  %drv_data.i = getelementptr %struct.pinctrl_pin_desc, ptr %14, i32 %pin, i32 2
  %15 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drv_data.i, align 4
  %lock.i = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i, i32 0, i32 10
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %pinconf_base.i = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %pinconf_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pinconf_base.i, align 4
  %offset.i = getelementptr inbounds %struct.ns2_pin, ptr %16, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !538
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !542
  %pull_shift.i = getelementptr inbounds %struct.ns2_pin, ptr %16, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %pull_shift.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pull_shift.i, align 4
  %shr.i = lshr i32 %22, %24
  %and.i56 = and i32 %shr.i, 3
  %25 = ptrtoint ptr %pull_up to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %pull_up, align 1
  %26 = ptrtoint ptr %pull_down to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %pull_down, align 1
  %27 = zext i32 %and.i56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %and.i56, label %sw.bb.ns2_pin_get_pull.exit_crit_edge [
    i32 1, label %sw.bb.if.end15.sink.split.i_crit_edge
    i32 2, label %if.then14.i
  ]

sw.bb.if.end15.sink.split.i_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i

sw.bb.ns2_pin_get_pull.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %ns2_pin_get_pull.exit

if.then14.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i

if.end15.sink.split.i:                            ; preds = %if.then14.i, %sw.bb.if.end15.sink.split.i_crit_edge
  %pull_up.sink.i = phi ptr [ %pull_down, %if.then14.i ], [ %pull_up, %sw.bb.if.end15.sink.split.i_crit_edge ]
  %28 = ptrtoint ptr %pull_up.sink.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %pull_up.sink.i, align 1
  br label %ns2_pin_get_pull.exit

ns2_pin_get_pull.exit:                            ; preds = %if.end15.sink.split.i, %sw.bb.ns2_pin_get_pull.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #7
  %29 = ptrtoint ptr %pull_up to i32
  call void @__asan_load1_noabort(i32 %29)
  %pull_up.0.pull_up.0. = load i8, ptr %pull_up, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pull_up.0.pull_up.0.)
  %tobool.not = icmp eq i8 %pull_up.0.pull_up.0., 0
  br i1 %tobool.not, label %land.lhs.true, label %ns2_pin_get_pull.exit.if.else_crit_edge

ns2_pin_get_pull.exit.if.else_crit_edge:          ; preds = %ns2_pin_get_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %ns2_pin_get_pull.exit
  %30 = ptrtoint ptr %pull_down to i32
  call void @__asan_load1_noabort(i32 %30)
  %pull_down.0.pull_down.0. = load i8, ptr %pull_down, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pull_down.0.pull_down.0.)
  %tobool1.not = icmp eq i8 %pull_down.0.pull_down.0., 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %ns2_pin_get_pull.exit.if.else_crit_edge
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  %call.i57 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %31 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %desc, align 4
  %pins.i59 = getelementptr inbounds %struct.pinctrl_desc, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %pins.i59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pins.i59, align 4
  %drv_data.i60 = getelementptr %struct.pinctrl_pin_desc, ptr %34, i32 %pin, i32 2
  %35 = ptrtoint ptr %drv_data.i60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %drv_data.i60, align 4
  %lock.i61 = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i57, i32 0, i32 10
  %call3.i62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i61) #7
  %pinconf_base.i63 = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i57, i32 0, i32 4
  %37 = ptrtoint ptr %pinconf_base.i63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pinconf_base.i63, align 4
  %offset.i64 = getelementptr inbounds %struct.ns2_pin, ptr %36, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %offset.i64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset.i64, align 4
  %add.ptr.i65 = getelementptr i8, ptr %38, i32 %40
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #7, !srcloc !538
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !542
  %pull_shift.i66 = getelementptr inbounds %struct.ns2_pin, ptr %36, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %pull_shift.i66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pull_shift.i66, align 4
  %shr.i67 = lshr i32 %42, %44
  %and.i68 = and i32 %shr.i67, 3
  %45 = ptrtoint ptr %pull_up to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %pull_up, align 1
  %46 = ptrtoint ptr %pull_down to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %pull_down, align 1
  %47 = zext i32 %and.i68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %and.i68, label %sw.bb3.ns2_pin_get_pull.exit72_crit_edge [
    i32 1, label %sw.bb3.if.end15.sink.split.i71_crit_edge
    i32 2, label %if.then14.i69
  ]

sw.bb3.if.end15.sink.split.i71_crit_edge:         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i71

sw.bb3.ns2_pin_get_pull.exit72_crit_edge:         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %ns2_pin_get_pull.exit72

if.then14.i69:                                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i71

if.end15.sink.split.i71:                          ; preds = %if.then14.i69, %sw.bb3.if.end15.sink.split.i71_crit_edge
  %pull_up.sink.i70 = phi ptr [ %pull_down, %if.then14.i69 ], [ %pull_up, %sw.bb3.if.end15.sink.split.i71_crit_edge ]
  %48 = ptrtoint ptr %pull_up.sink.i70 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %pull_up.sink.i70, align 1
  br label %ns2_pin_get_pull.exit72

ns2_pin_get_pull.exit72:                          ; preds = %if.end15.sink.split.i71, %sw.bb3.ns2_pin_get_pull.exit72_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i61, i32 noundef %call3.i62) #7
  %49 = ptrtoint ptr %pull_up to i32
  call void @__asan_load1_noabort(i32 %49)
  %pull_up.0.pull_up.0.127 = load i8, ptr %pull_up, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pull_up.0.pull_up.0.127)
  %tobool4.not = icmp eq i8 %pull_up.0.pull_up.0.127, 0
  %. = select i1 %tobool4.not, i32 -22, i32 0
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %call.i73 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %50 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %desc, align 4
  %pins.i75 = getelementptr inbounds %struct.pinctrl_desc, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %pins.i75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pins.i75, align 4
  %drv_data.i76 = getelementptr %struct.pinctrl_pin_desc, ptr %53, i32 %pin, i32 2
  %54 = ptrtoint ptr %drv_data.i76 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %drv_data.i76, align 4
  %lock.i77 = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i73, i32 0, i32 10
  %call3.i78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i77) #7
  %pinconf_base.i79 = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i73, i32 0, i32 4
  %56 = ptrtoint ptr %pinconf_base.i79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pinconf_base.i79, align 4
  %offset.i80 = getelementptr inbounds %struct.ns2_pin, ptr %55, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %offset.i80 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset.i80, align 4
  %add.ptr.i81 = getelementptr i8, ptr %57, i32 %59
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #7, !srcloc !538
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !542
  %pull_shift.i82 = getelementptr inbounds %struct.ns2_pin, ptr %55, i32 0, i32 2, i32 4
  %62 = ptrtoint ptr %pull_shift.i82 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pull_shift.i82, align 4
  %shr.i83 = lshr i32 %61, %63
  %and.i84 = and i32 %shr.i83, 3
  %64 = ptrtoint ptr %pull_up to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %pull_up, align 1
  %65 = ptrtoint ptr %pull_down to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %pull_down, align 1
  %66 = zext i32 %and.i84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %and.i84, label %sw.bb7.ns2_pin_get_pull.exit88_crit_edge [
    i32 1, label %sw.bb7.if.end15.sink.split.i87_crit_edge
    i32 2, label %if.then14.i85
  ]

sw.bb7.if.end15.sink.split.i87_crit_edge:         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i87

sw.bb7.ns2_pin_get_pull.exit88_crit_edge:         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %ns2_pin_get_pull.exit88

if.then14.i85:                                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i87

if.end15.sink.split.i87:                          ; preds = %if.then14.i85, %sw.bb7.if.end15.sink.split.i87_crit_edge
  %pull_up.sink.i86 = phi ptr [ %pull_down, %if.then14.i85 ], [ %pull_up, %sw.bb7.if.end15.sink.split.i87_crit_edge ]
  %67 = ptrtoint ptr %pull_up.sink.i86 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %pull_up.sink.i86, align 1
  br label %ns2_pin_get_pull.exit88

ns2_pin_get_pull.exit88:                          ; preds = %if.end15.sink.split.i87, %sw.bb7.ns2_pin_get_pull.exit88_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i77, i32 noundef %call3.i78) #7
  %68 = ptrtoint ptr %pull_down to i32
  call void @__asan_load1_noabort(i32 %68)
  %pull_down.0.pull_down.0.126 = load i8, ptr %pull_down, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pull_down.0.pull_down.0.126)
  %tobool8.not = icmp eq i8 %pull_down.0.pull_down.0.126, 0
  %.54 = select i1 %tobool8.not, i32 -22, i32 0
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %call.i89 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %69 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %desc, align 4
  %pins.i91 = getelementptr inbounds %struct.pinctrl_desc, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %pins.i91 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pins.i91, align 4
  %drv_data.i92 = getelementptr %struct.pinctrl_pin_desc, ptr %72, i32 %pin, i32 2
  %73 = ptrtoint ptr %drv_data.i92 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %drv_data.i92, align 4
  %lock.i93 = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i89, i32 0, i32 10
  %call3.i94 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i93) #7
  %pinconf_base.i95 = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i89, i32 0, i32 4
  %75 = ptrtoint ptr %pinconf_base.i95 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pinconf_base.i95, align 4
  %offset.i96 = getelementptr inbounds %struct.ns2_pin, ptr %74, i32 0, i32 2, i32 1
  %77 = ptrtoint ptr %offset.i96 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offset.i96, align 4
  %add.ptr.i97 = getelementptr i8, ptr %76, i32 %78
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #7, !srcloc !538
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !543
  %drive_shift.i = getelementptr inbounds %struct.ns2_pin, ptr %74, i32 0, i32 2, i32 5
  %81 = ptrtoint ptr %drive_shift.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %drive_shift.i, align 4
  %shr.i98 = lshr i32 %80, %82
  %shr.tr.i = trunc i32 %shr.i98 to i16
  %83 = shl i16 %shr.tr.i, 1
  %84 = and i16 %83, 14
  %conv12.i = add nuw nsw i16 %84, 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i93, i32 noundef %call3.i94) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns2_pin_get_strength.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ns2_pin_config_get, %ns2_pin_get_strength.exit)) #7
          to label %if.then.i [label %ns2_pin_get_strength.exit], !srcloc !536

if.then.i:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %85 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i, align 4
  %conv20.i = zext i16 %conv12.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ns2_pin_get_strength.__UNIQUE_ID_ddebug231, ptr noundef %86, ptr noundef nonnull @.str.192, i32 noundef %pin, i32 noundef %conv20.i) #7
  br label %ns2_pin_get_strength.exit

ns2_pin_get_strength.exit:                        ; preds = %if.then.i, %sw.bb11
  %87 = shl nuw nsw i16 %conv12.i, 8
  %88 = or i16 %87, 9
  %or.i = zext i16 %88 to i32
  %89 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  %call.i99 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %90 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %desc, align 4
  %pins.i101 = getelementptr inbounds %struct.pinctrl_desc, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %pins.i101 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pins.i101, align 4
  %drv_data.i102 = getelementptr %struct.pinctrl_pin_desc, ptr %93, i32 %pin, i32 2
  %94 = ptrtoint ptr %drv_data.i102 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %drv_data.i102, align 4
  %lock.i103 = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i99, i32 0, i32 10
  %call3.i104 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i103) #7
  %pinconf_base.i105 = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i99, i32 0, i32 4
  %96 = ptrtoint ptr %pinconf_base.i105 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pinconf_base.i105, align 4
  %offset.i106 = getelementptr inbounds %struct.ns2_pin, ptr %95, i32 0, i32 2, i32 1
  %98 = ptrtoint ptr %offset.i106 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %offset.i106, align 4
  %add.ptr.i107 = getelementptr i8, ptr %97, i32 %99
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #7, !srcloc !538
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !544
  %src_shift.i = getelementptr inbounds %struct.ns2_pin, ptr %95, i32 0, i32 2, i32 2
  %102 = ptrtoint ptr %src_shift.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %src_shift.i, align 4
  %shr.i108 = lshr i32 %101, %103
  %104 = trunc i32 %shr.i108 to i16
  %conv10.i = and i16 %104, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i103, i32 noundef %call3.i104) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns2_pin_get_slew.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ns2_pin_config_get, %ns2_pin_get_slew.exit)) #7
          to label %if.then.i110 [label %ns2_pin_get_slew.exit], !srcloc !536

if.then.i110:                                     ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i109 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %105 = ptrtoint ptr %dev.i109 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i109, align 4
  %conv18.i = zext i16 %conv10.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ns2_pin_get_slew.__UNIQUE_ID_ddebug228, ptr noundef %106, ptr noundef nonnull @.str.194, i32 noundef %pin, i32 noundef %conv18.i) #7
  br label %ns2_pin_get_slew.exit

ns2_pin_get_slew.exit:                            ; preds = %if.then.i110, %sw.bb17
  %107 = shl nuw nsw i16 %conv10.i, 8
  %108 = or i16 %107, 24
  %or.i112 = zext i16 %108 to i32
  %109 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or.i112, ptr %config, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  %call.i113 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %110 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %desc, align 4
  %pins.i115 = getelementptr inbounds %struct.pinctrl_desc, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %pins.i115 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pins.i115, align 4
  %drv_data.i116 = getelementptr %struct.pinctrl_pin_desc, ptr %113, i32 %pin, i32 2
  %114 = ptrtoint ptr %drv_data.i116 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %drv_data.i116, align 4
  %lock.i117 = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i113, i32 0, i32 10
  %call3.i118 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i117) #7
  %pinconf_base.i119 = getelementptr inbounds %struct.ns2_pinctrl, ptr %call.i113, i32 0, i32 4
  %116 = ptrtoint ptr %pinconf_base.i119 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pinconf_base.i119, align 4
  %offset.i120 = getelementptr inbounds %struct.ns2_pin, ptr %115, i32 0, i32 2, i32 1
  %118 = ptrtoint ptr %offset.i120 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %offset.i120, align 4
  %add.ptr.i121 = getelementptr i8, ptr %117, i32 %119
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #7, !srcloc !538
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !545
  %input_en.i = getelementptr inbounds %struct.ns2_pin, ptr %115, i32 0, i32 2, i32 3
  %121 = ptrtoint ptr %input_en.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %input_en.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i117, i32 noundef %call3.i118) #7
  %123 = xor i32 %120, -1
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #7
  %125 = lshr i32 %124, %122
  %126 = and i32 %125, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns2_pin_get_enable.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ns2_pin_config_get, %ns2_pin_get_enable.exit)) #7
          to label %if.then18.i [label %ns2_pin_get_enable.exit], !srcloc !536

if.then18.i:                                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i122 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %127 = ptrtoint ptr %dev.i122 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i122, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ns2_pin_get_enable.__UNIQUE_ID_ddebug226, ptr noundef %128, ptr noundef nonnull @.str.196, i32 noundef %pin, i32 noundef %126) #7
  br label %ns2_pin_get_enable.exit

ns2_pin_get_enable.exit:                          ; preds = %if.then18.i, %sw.bb24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool26.not = icmp eq i32 %126, 0
  %.55 = select i1 %tobool26.not, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %ns2_pin_get_enable.exit, %ns2_pin_get_slew.exit, %ns2_pin_get_strength.exit, %ns2_pin_get_pull.exit88, %ns2_pin_get_pull.exit72, %if.else, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ns2_pin_get_slew.exit ], [ 0, %ns2_pin_get_strength.exit ], [ -22, %if.else ], [ -524, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %., %ns2_pin_get_pull.exit72 ], [ %.54, %ns2_pin_get_pull.exit88 ], [ %.55, %ns2_pin_get_enable.exit ], [ -524, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pull_down)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pull_up)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_pin_config_set(ptr noundef %pctrldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrldev, i32 0, i32 1
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
  %pin_conf = getelementptr inbounds %struct.ns2_pin, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pin_conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pin_conf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp ne i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp164 = icmp ne i32 %num_configs, 0
  %or.cond = and i1 %cmp, %cmp164
  br i1 %or.cond, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.065 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx2 = getelementptr i32, ptr %configs, i32 %i.065
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %shr.i = lshr i32 %9, 8
  %trunc = trunc i32 %9 to i8
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.211)
  switch i8 %trunc, label %do.end [
    i8 1, label %sw.bb
    i8 5, label %sw.bb9
    i8 3, label %sw.bb14
    i8 9, label %sw.bb19
    i8 24, label %sw.bb24
    i8 12, label %sw.bb29
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ns2_pin_set_pull(ptr noundef %pctrldev, i32 noundef %pin, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %for.inc

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ns2_pin_set_pull(ptr noundef %pctrldev, i32 noundef %pin, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %for.inc

sw.bb14:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ns2_pin_set_pull(ptr noundef %pctrldev, i32 noundef %pin, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %for.inc

sw.bb19:                                          ; preds = %for.body
  %call20 = tail call fastcc i32 @ns2_pin_set_strength(ptr noundef %pctrldev, i32 noundef %pin, i32 noundef %shr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %sw.bb19.cleanup_crit_edge, label %sw.bb19.for.inc_crit_edge

sw.bb19.for.inc_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb24:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ns2_pin_set_slew(ptr noundef %pctrldev, i32 noundef %pin, i32 noundef %shr.i)
  br label %for.inc

sw.bb29:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %shr.i to i16
  tail call fastcc void @ns2_pin_set_enable(ptr noundef %pctrldev, i32 noundef %pin, i16 noundef zeroext %conv)
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrldev, i32 0, i32 8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.197) #10
  br label %cleanup

for.inc:                                          ; preds = %sw.bb29, %sw.bb24, %sw.bb19.for.inc_crit_edge, %sw.bb14, %sw.bb9, %sw.bb
  %ret.1 = phi i32 [ 0, %sw.bb29 ], [ 0, %sw.bb24 ], [ %call20, %sw.bb19.for.inc_crit_edge ], [ 0, %sw.bb14 ], [ 0, %sw.bb9 ], [ 0, %sw.bb ]
  %inc = add nuw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %sw.bb19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end ], [ -524, %entry.cleanup_crit_edge ], [ %ret.1, %for.inc.cleanup_crit_edge ], [ %call20, %sw.bb19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns2_pin_set_pull(ptr noundef %pctrldev, i32 noundef %pin, i1 noundef zeroext %pull_up, i1 noundef zeroext %pull_down) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrldev) #7
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrldev, i32 0, i32 1
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
  %pinconf_base = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %pinconf_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pinconf_base, align 4
  %lock = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 10
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %offset = getelementptr inbounds %struct.ns2_pin, ptr %5, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !538
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !546
  %pull_shift = getelementptr inbounds %struct.ns2_pin, ptr %5, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %pull_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pull_shift, align 4
  %shl = shl i32 3, %13
  %neg = xor i32 %shl, -1
  %and = and i32 %11, %neg
  %shl16 = shl nuw i32 1, %13
  %or = select i1 %pull_up, i32 %shl16, i32 0
  %val.0 = or i32 %and, %or
  %shl24 = shl i32 2, %13
  %or25 = select i1 %pull_down, i32 %shl24, i32 0
  %val.1 = or i32 %val.0, %or25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !547
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %val.1)
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %add.ptr32 = getelementptr i8, ptr %7, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %14) #7, !srcloc !541
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns2_pin_set_pull.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ns2_pin_set_pull, %do.end49)) #7
          to label %if.then42 [label %do.end49], !srcloc !536

if.then42:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv18 = zext i1 %pull_down to i32
  %conv11 = zext i1 %pull_up to i32
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrldev, i32 0, i32 8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ns2_pin_set_pull.__UNIQUE_ID_ddebug229, ptr noundef %18, ptr noundef nonnull @.str.200, i32 noundef %pin, i32 noundef %conv11, i32 noundef %conv18) #7
  br label %do.end49

do.end49:                                         ; preds = %if.then42, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ns2_pin_set_strength(ptr noundef %pctrldev, i32 noundef %pin, i32 noundef %strength) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrldev) #7
  %0 = add i32 %strength, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %0)
  %1 = icmp ult i32 %0, 15
  %rem = and i32 %strength, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond54 = and i1 %1, %tobool.not
  br i1 %or.cond54, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrldev, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %5, i32 %pin, i32 2
  %6 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_data, align 4
  %pinconf_base = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %pinconf_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pinconf_base, align 4
  %lock = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 10
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %offset = getelementptr inbounds %struct.ns2_pin, ptr %7, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !538
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !548
  %drive_shift = getelementptr inbounds %struct.ns2_pin, ptr %7, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %drive_shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %drive_shift, align 4
  %shl = shl i32 7, %15
  %neg = xor i32 %shl, -1
  %and = and i32 %13, %neg
  %div53 = lshr i32 %strength, 1
  %sub = add nsw i32 %div53, -1
  %shl15 = shl i32 %sub, %15
  %or = or i32 %and, %shl15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !549
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %add.ptr21 = getelementptr i8, ptr %9, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %16) #7, !srcloc !541
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns2_pin_set_strength.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ns2_pin_set_strength, %cleanup)) #7
          to label %if.then30 [label %cleanup], !srcloc !536

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrldev, i32 0, i32 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ns2_pin_set_strength.__UNIQUE_ID_ddebug230, ptr noundef %20, ptr noundef nonnull @.str.202, i32 noundef %pin, i32 noundef %strength) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns2_pin_set_slew(ptr noundef %pctrldev, i32 noundef %pin, i32 noundef %slew) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrldev) #7
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrldev, i32 0, i32 1
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
  %pinconf_base = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %pinconf_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pinconf_base, align 4
  %lock = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %offset = getelementptr inbounds %struct.ns2_pin, ptr %5, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !538
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !550
  %src_shift = getelementptr inbounds %struct.ns2_pin, ptr %5, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %src_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src_shift, align 4
  %shl = shl nuw i32 1, %13
  %neg = xor i32 %shl, -1
  %and = and i32 %11, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slew)
  %tobool.not = icmp eq i32 %slew, 0
  %or = or i32 %shl, %11
  %spec.select = select i1 %tobool.not, i32 %and, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !551
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %add.ptr18 = getelementptr i8, ptr %7, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %14) #7, !srcloc !541
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns2_pin_set_slew.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ns2_pin_set_slew, %do.end30)) #7
          to label %if.then27 [label %do.end30], !srcloc !536

if.then27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrldev, i32 0, i32 8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ns2_pin_set_slew.__UNIQUE_ID_ddebug227, ptr noundef %18, ptr noundef nonnull @.str.204, i32 noundef %pin, i32 noundef %slew) #7
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns2_pin_set_enable(ptr noundef %pctrldev, i32 noundef %pin, i16 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrldev) #7
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrldev, i32 0, i32 1
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
  %pinconf_base = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %pinconf_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pinconf_base, align 4
  %lock = getelementptr inbounds %struct.ns2_pinctrl, ptr %call, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %offset = getelementptr inbounds %struct.ns2_pin, ptr %5, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !538
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !552
  %input_en = getelementptr inbounds %struct.ns2_pin, ptr %5, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %input_en to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %input_en, align 4
  %shl = shl nuw i32 1, %13
  %neg = xor i32 %shl, -1
  %and = and i32 %11, %neg
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %enable)
  %tobool.not = icmp eq i16 %enable, 0
  %or = or i32 %shl, %11
  %spec.select = select i1 %tobool.not, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !553
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %add.ptr18 = getelementptr i8, ptr %7, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %14) #7, !srcloc !541
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ns2_pin_set_enable.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ns2_pin_set_enable, %do.end31)) #7
          to label %if.then27 [label %do.end31], !srcloc !536

if.then27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrldev, i32 0, i32 8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %conv28 = zext i16 %enable to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ns2_pin_set_enable.__UNIQUE_ID_ddebug225, ptr noundef %18, ptr noundef nonnull @.str.206, i32 noundef %pin, i32 noundef %conv28) #7
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 266)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 266)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !476, !477, !478, !480, !481, !483, !484, !485, !486, !488, !489, !490, !492, !494, !495, !496, !498, !499, !500, !502, !503, !504, !506, !507, !508, !509, !511, !512, !513, !515, !516, !517, !519, !520, !521, !523, !524, !525}
!llvm.module.flags = !{!527, !528, !529, !530, !531, !532, !533, !534}
!llvm.ident = !{!535}

!0 = !{ptr @__initcall__kmod_pinctrl_ns2_mux__232_1113_ns2_pinmux_init3, !1, !"__initcall__kmod_pinctrl_ns2_mux__232_1113_ns2_pinmux_init3", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 1113, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 1103, i32 11}
!4 = !{ptr @ns2_pinmux_driver, !5, !"ns2_pinmux_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 1101, i32 31}
!6 = !{ptr @ns2_pinmux_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 1043, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 1055, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ns2_pinmux_probe._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @ns2_pinmux_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 1065, i32 3}
!19 = !{ptr @ns2_pinmux_probe._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @ns2_pinmux_probe._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 1089, i32 3}
!23 = !{ptr @ns2_pinmux_probe._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ns2_pinmux_probe._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 188, i32 2}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 189, i32 2}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 190, i32 2}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 191, i32 2}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 192, i32 2}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 193, i32 2}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 194, i32 2}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 195, i32 2}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 196, i32 2}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 197, i32 2}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 198, i32 2}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 199, i32 2}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 200, i32 2}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 201, i32 2}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 202, i32 2}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 203, i32 2}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 204, i32 2}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 205, i32 2}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 206, i32 2}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 207, i32 2}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 208, i32 2}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 209, i32 2}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 210, i32 2}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 211, i32 2}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 212, i32 2}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 213, i32 2}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 214, i32 2}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 215, i32 2}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 216, i32 2}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 217, i32 2}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 218, i32 2}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 219, i32 2}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 220, i32 2}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 221, i32 2}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 222, i32 2}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 223, i32 2}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 224, i32 2}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 225, i32 2}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 226, i32 2}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 227, i32 2}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 228, i32 2}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 229, i32 2}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 230, i32 2}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 231, i32 2}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 232, i32 2}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 233, i32 2}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 234, i32 2}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 235, i32 2}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 236, i32 2}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 237, i32 2}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 238, i32 2}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 239, i32 2}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 240, i32 2}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 241, i32 2}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 242, i32 2}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 243, i32 2}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 244, i32 2}
!139 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 245, i32 2}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 246, i32 2}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 247, i32 2}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 248, i32 2}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 249, i32 2}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 250, i32 2}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 251, i32 2}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 252, i32 2}
!155 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 253, i32 2}
!157 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 254, i32 2}
!159 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 255, i32 2}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 256, i32 2}
!163 = !{ptr @.str.82, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 257, i32 2}
!165 = !{ptr @.str.83, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 258, i32 2}
!167 = !{ptr @.str.84, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 259, i32 2}
!169 = !{ptr @.str.85, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 260, i32 2}
!171 = !{ptr @.str.86, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 261, i32 2}
!173 = !{ptr @.str.87, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 262, i32 2}
!175 = !{ptr @.str.88, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 263, i32 2}
!177 = !{ptr @.str.89, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 264, i32 2}
!179 = !{ptr @.str.90, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 265, i32 2}
!181 = !{ptr @.str.91, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 266, i32 2}
!183 = !{ptr @.str.92, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 267, i32 2}
!185 = !{ptr @.str.93, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 268, i32 2}
!187 = !{ptr @.str.94, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 269, i32 2}
!189 = !{ptr @.str.95, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 270, i32 2}
!191 = !{ptr @.str.96, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 271, i32 2}
!193 = !{ptr @.str.97, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 272, i32 2}
!195 = !{ptr @.str.98, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 273, i32 2}
!197 = !{ptr @.str.99, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 274, i32 2}
!199 = !{ptr @.str.100, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 275, i32 2}
!201 = !{ptr @.str.101, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 276, i32 2}
!203 = !{ptr @.str.102, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 277, i32 2}
!205 = !{ptr @.str.103, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 278, i32 2}
!207 = !{ptr @.str.104, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 279, i32 2}
!209 = !{ptr @.str.105, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 280, i32 2}
!211 = !{ptr @.str.106, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 281, i32 2}
!213 = !{ptr @.str.107, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 282, i32 2}
!215 = !{ptr @.str.108, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 283, i32 2}
!217 = !{ptr @.str.109, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 284, i32 2}
!219 = !{ptr @.str.110, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 285, i32 2}
!221 = !{ptr @.str.111, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 286, i32 2}
!223 = !{ptr @.str.112, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 287, i32 2}
!225 = !{ptr @.str.113, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 288, i32 2}
!227 = !{ptr @.str.114, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 289, i32 2}
!229 = !{ptr @.str.115, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 290, i32 2}
!231 = !{ptr @.str.116, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 291, i32 2}
!233 = !{ptr @.str.117, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 292, i32 2}
!235 = !{ptr @.str.118, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 293, i32 2}
!237 = !{ptr @.str.119, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 294, i32 2}
!239 = !{ptr @.str.120, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 295, i32 2}
!241 = !{ptr @.str.121, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 296, i32 2}
!243 = !{ptr @.str.122, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 297, i32 2}
!245 = !{ptr @.str.123, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 298, i32 2}
!247 = !{ptr @.str.124, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 299, i32 2}
!249 = !{ptr @.str.125, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 300, i32 2}
!251 = !{ptr @.str.126, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 301, i32 2}
!253 = !{ptr @.str.127, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 302, i32 2}
!255 = !{ptr @.str.128, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 303, i32 2}
!257 = !{ptr @.str.129, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 304, i32 2}
!259 = !{ptr @.str.130, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 305, i32 2}
!261 = !{ptr @.str.131, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 306, i32 2}
!263 = !{ptr @ns2_pins, !264, !"ns2_pins", i1 false, i1 false}
!264 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 187, i32 23}
!265 = !{ptr @.str.132, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 390, i32 2}
!267 = !{ptr @.str.133, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 391, i32 2}
!269 = !{ptr @.str.134, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 392, i32 2}
!271 = !{ptr @.str.135, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 394, i32 2}
!273 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 395, i32 2}
!275 = !{ptr @.str.137, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 397, i32 2}
!277 = !{ptr @.str.138, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 398, i32 2}
!279 = !{ptr @.str.139, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 399, i32 2}
!281 = !{ptr @.str.140, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 401, i32 2}
!283 = !{ptr @.str.141, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 402, i32 2}
!285 = !{ptr @.str.142, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 403, i32 2}
!287 = !{ptr @.str.143, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 405, i32 2}
!289 = !{ptr @.str.144, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 406, i32 2}
!291 = !{ptr @.str.145, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 407, i32 2}
!293 = !{ptr @.str.146, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 409, i32 2}
!295 = !{ptr @.str.147, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 410, i32 2}
!297 = !{ptr @.str.148, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 411, i32 2}
!299 = !{ptr @.str.149, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 413, i32 2}
!301 = !{ptr @.str.150, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 414, i32 2}
!303 = !{ptr @.str.151, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 415, i32 2}
!305 = !{ptr @.str.152, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 417, i32 2}
!307 = !{ptr @.str.153, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 418, i32 2}
!309 = !{ptr @.str.154, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 419, i32 2}
!311 = !{ptr @.str.155, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 421, i32 2}
!313 = !{ptr @.str.156, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 422, i32 2}
!315 = !{ptr @.str.157, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 424, i32 2}
!317 = !{ptr @.str.158, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 425, i32 2}
!319 = !{ptr @.str.159, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 427, i32 2}
!321 = !{ptr @.str.160, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 428, i32 2}
!323 = !{ptr @.str.161, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 430, i32 2}
!325 = !{ptr @.str.162, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 431, i32 2}
!327 = !{ptr @.str.163, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 433, i32 2}
!329 = !{ptr @.str.164, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 434, i32 2}
!331 = !{ptr @.str.165, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 436, i32 2}
!333 = !{ptr @.str.166, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 437, i32 2}
!335 = !{ptr @.str.167, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 439, i32 2}
!337 = !{ptr @.str.168, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 440, i32 2}
!339 = !{ptr @.str.169, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 442, i32 2}
!341 = !{ptr @.str.170, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 443, i32 2}
!343 = !{ptr @.str.171, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 444, i32 2}
!345 = !{ptr @.str.172, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 445, i32 2}
!347 = !{ptr @ns2_pin_groups, !348, !"ns2_pin_groups", i1 false, i1 false}
!348 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 389, i32 35}
!349 = !{ptr @nand_pins, !350, !"nand_pins", i1 false, i1 false}
!350 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 313, i32 27}
!351 = !{ptr @nor_data_pins, !352, !"nor_data_pins", i1 false, i1 false}
!352 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 315, i32 27}
!353 = !{ptr @gpio_0_1_pins, !354, !"gpio_0_1_pins", i1 false, i1 false}
!354 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 318, i32 27}
!355 = !{ptr @uart1_ext_clk_pins, !356, !"uart1_ext_clk_pins", i1 false, i1 false}
!356 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 322, i32 27}
!357 = !{ptr @nor_adv_pins, !358, !"nor_adv_pins", i1 false, i1 false}
!358 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 323, i32 27}
!359 = !{ptr @gpio_2_5_pins, !360, !"gpio_2_5_pins", i1 false, i1 false}
!360 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 325, i32 27}
!361 = !{ptr @pcie_ab1_clk_wak_pins, !362, !"pcie_ab1_clk_wak_pins", i1 false, i1 false}
!362 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 326, i32 27}
!363 = !{ptr @nor_addr_0_3_pins, !364, !"nor_addr_0_3_pins", i1 false, i1 false}
!364 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 327, i32 27}
!365 = !{ptr @gpio_6_7_pins, !366, !"gpio_6_7_pins", i1 false, i1 false}
!366 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 331, i32 27}
!367 = !{ptr @pcie_a3_clk_wak_pins, !368, !"pcie_a3_clk_wak_pins", i1 false, i1 false}
!368 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 332, i32 27}
!369 = !{ptr @nor_addr_4_5_pins, !370, !"nor_addr_4_5_pins", i1 false, i1 false}
!370 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 333, i32 27}
!371 = !{ptr @gpio_8_9_pins, !372, !"gpio_8_9_pins", i1 false, i1 false}
!372 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 335, i32 27}
!373 = !{ptr @pcie_b3_clk_wak_pins, !374, !"pcie_b3_clk_wak_pins", i1 false, i1 false}
!374 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 336, i32 27}
!375 = !{ptr @nor_addr_6_7_pins, !376, !"nor_addr_6_7_pins", i1 false, i1 false}
!376 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 337, i32 27}
!377 = !{ptr @gpio_10_11_pins, !378, !"gpio_10_11_pins", i1 false, i1 false}
!378 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 339, i32 27}
!379 = !{ptr @pcie_b2_clk_wak_pins, !380, !"pcie_b2_clk_wak_pins", i1 false, i1 false}
!380 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 340, i32 27}
!381 = !{ptr @nor_addr_8_9_pins, !382, !"nor_addr_8_9_pins", i1 false, i1 false}
!382 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 341, i32 27}
!383 = !{ptr @gpio_12_13_pins, !384, !"gpio_12_13_pins", i1 false, i1 false}
!384 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 343, i32 27}
!385 = !{ptr @pcie_a2_clk_wak_pins, !386, !"pcie_a2_clk_wak_pins", i1 false, i1 false}
!386 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 344, i32 27}
!387 = !{ptr @nor_addr_10_11_pins, !388, !"nor_addr_10_11_pins", i1 false, i1 false}
!388 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 345, i32 27}
!389 = !{ptr @gpio_14_17_pins, !390, !"gpio_14_17_pins", i1 false, i1 false}
!390 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 347, i32 27}
!391 = !{ptr @uart0_modem_pins, !392, !"uart0_modem_pins", i1 false, i1 false}
!392 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 348, i32 27}
!393 = !{ptr @nor_addr_12_15_pins, !394, !"nor_addr_12_15_pins", i1 false, i1 false}
!394 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 349, i32 27}
!395 = !{ptr @gpio_18_19_pins, !396, !"gpio_18_19_pins", i1 false, i1 false}
!396 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 351, i32 27}
!397 = !{ptr @uart0_rts_cts_pins, !398, !"uart0_rts_cts_pins", i1 false, i1 false}
!398 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 352, i32 27}
!399 = !{ptr @gpio_20_21_pins, !400, !"gpio_20_21_pins", i1 false, i1 false}
!400 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 354, i32 27}
!401 = !{ptr @uart0_in_out_pins, !402, !"uart0_in_out_pins", i1 false, i1 false}
!402 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 355, i32 27}
!403 = !{ptr @gpio_22_23_pins, !404, !"gpio_22_23_pins", i1 false, i1 false}
!404 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 357, i32 27}
!405 = !{ptr @uart1_dcd_dsr_pins, !406, !"uart1_dcd_dsr_pins", i1 false, i1 false}
!406 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 358, i32 27}
!407 = !{ptr @gpio_24_25_pins, !408, !"gpio_24_25_pins", i1 false, i1 false}
!408 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 360, i32 27}
!409 = !{ptr @uart1_ri_dtr_pins, !410, !"uart1_ri_dtr_pins", i1 false, i1 false}
!410 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 361, i32 27}
!411 = !{ptr @gpio_26_27_pins, !412, !"gpio_26_27_pins", i1 false, i1 false}
!412 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 363, i32 27}
!413 = !{ptr @uart1_rts_cts_pins, !414, !"uart1_rts_cts_pins", i1 false, i1 false}
!414 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 364, i32 27}
!415 = !{ptr @gpio_28_29_pins, !416, !"gpio_28_29_pins", i1 false, i1 false}
!416 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 366, i32 27}
!417 = !{ptr @uart1_in_out_pins, !418, !"uart1_in_out_pins", i1 false, i1 false}
!418 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 367, i32 27}
!419 = !{ptr @gpio_30_31_pins, !420, !"gpio_30_31_pins", i1 false, i1 false}
!420 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 369, i32 27}
!421 = !{ptr @uart2_rts_cts_pins, !422, !"uart2_rts_cts_pins", i1 false, i1 false}
!422 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 370, i32 27}
!423 = !{ptr @pwm_0_pins, !424, !"pwm_0_pins", i1 false, i1 false}
!424 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 319, i32 27}
!425 = !{ptr @pwm_1_pins, !426, !"pwm_1_pins", i1 false, i1 false}
!426 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 320, i32 27}
!427 = !{ptr @pwm_2_pins, !428, !"pwm_2_pins", i1 false, i1 false}
!428 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 328, i32 27}
!429 = !{ptr @pwm_3_pins, !430, !"pwm_3_pins", i1 false, i1 false}
!430 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 329, i32 27}
!431 = !{ptr @.str.173, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 491, i32 2}
!433 = !{ptr @.str.174, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 492, i32 2}
!435 = !{ptr @.str.175, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 493, i32 2}
!437 = !{ptr @.str.176, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 494, i32 2}
!439 = !{ptr @.str.177, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 495, i32 2}
!441 = !{ptr @.str.178, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 496, i32 2}
!443 = !{ptr @.str.179, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 497, i32 2}
!445 = !{ptr @.str.180, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 498, i32 2}
!447 = !{ptr @ns2_pin_functions, !448, !"ns2_pin_functions", i1 false, i1 false}
!448 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 490, i32 38}
!449 = !{ptr @nand_grps, !450, !"nand_grps", i1 false, i1 false}
!450 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 452, i32 27}
!451 = !{ptr @nor_grps, !452, !"nor_grps", i1 false, i1 false}
!452 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 454, i32 27}
!453 = !{ptr @gpio_grps, !454, !"gpio_grps", i1 false, i1 false}
!454 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 458, i32 27}
!455 = !{ptr @pcie_grps, !456, !"pcie_grps", i1 false, i1 false}
!456 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 464, i32 27}
!457 = !{ptr @uart0_grps, !458, !"uart0_grps", i1 false, i1 false}
!458 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 468, i32 27}
!459 = !{ptr @uart1_grps, !460, !"uart1_grps", i1 false, i1 false}
!460 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 471, i32 27}
!461 = !{ptr @uart2_grps, !462, !"uart2_grps", i1 false, i1 false}
!462 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 475, i32 27}
!463 = !{ptr @pwm_grps, !464, !"pwm_grps", i1 false, i1 false}
!464 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 477, i32 27}
!465 = !{ptr @ns2_pinctrl_desc, !466, !"ns2_pinctrl_desc", i1 false, i1 false}
!466 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 975, i32 28}
!467 = !{ptr @ns2_pinctrl_ops, !468, !"ns2_pinctrl_ops", i1 false, i1 false}
!468 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 534, i32 33}
!469 = !{ptr @.str.181, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 531, i32 16}
!471 = !{ptr @ns2_pinmux_ops, !472, !"ns2_pinmux_ops", i1 false, i1 false}
!472 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 962, i32 32}
!473 = !{ptr @.str.182, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 650, i32 2}
!475 = !{ptr @.str.183, !474, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @.str.184, !474, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @ns2_pinmux_enable.__UNIQUE_ID_ddebug223, !474, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!478 = !{ptr @.str.185, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 653, i32 2}
!480 = !{ptr @ns2_pinmux_enable.__UNIQUE_ID_ddebug224, !479, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!481 = !{ptr @.str.186, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 597, i32 4}
!483 = !{ptr @.str.187, !482, !"<string literal>", i1 false, i1 false}
!484 = !{ptr @ns2_pinmux_set._entry, !482, !"_entry", i1 false, i1 false}
!485 = !{ptr @ns2_pinmux_set._entry_ptr, !482, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.189, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 599, i32 4}
!488 = !{ptr @ns2_pinmux_set._entry.188, !487, !"_entry", i1 false, i1 false}
!489 = !{ptr @ns2_pinmux_set._entry_ptr.190, !487, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @ns2_pinconf_ops, !491, !"ns2_pinconf_ops", i1 false, i1 false}
!491 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 969, i32 33}
!492 = !{ptr @.str.191, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 836, i32 2}
!494 = !{ptr @.str.192, !493, !"<string literal>", i1 false, i1 false}
!495 = !{ptr @ns2_pin_get_strength.__UNIQUE_ID_ddebug231, !493, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!496 = !{ptr @.str.193, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 742, i32 2}
!498 = !{ptr @.str.194, !497, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @ns2_pin_get_slew.__UNIQUE_ID_ddebug228, !497, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!500 = !{ptr @.str.195, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 701, i32 2}
!502 = !{ptr @.str.196, !501, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @ns2_pin_get_enable.__UNIQUE_ID_ddebug226, !501, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!504 = !{ptr @.str.197, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 955, i32 4}
!506 = !{ptr @.str.198, !505, !"<string literal>", i1 false, i1 false}
!507 = !{ptr @ns2_pin_config_set._entry, !505, !"_entry", i1 false, i1 false}
!508 = !{ptr @ns2_pin_config_set._entry_ptr, !505, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @.str.199, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 767, i32 2}
!511 = !{ptr @.str.200, !510, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @ns2_pin_set_pull.__UNIQUE_ID_ddebug229, !510, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!513 = !{ptr @.str.201, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 816, i32 2}
!515 = !{ptr @.str.202, !514, !"<string literal>", i1 false, i1 false}
!516 = !{ptr @ns2_pin_set_strength.__UNIQUE_ID_ddebug230, !514, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!517 = !{ptr @.str.203, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 725, i32 2}
!519 = !{ptr @.str.204, !518, !"<string literal>", i1 false, i1 false}
!520 = !{ptr @ns2_pin_set_slew.__UNIQUE_ID_ddebug227, !518, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!521 = !{ptr @.str.205, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 679, i32 2}
!523 = !{ptr @.str.206, !522, !"<string literal>", i1 false, i1 false}
!524 = !{ptr @ns2_pin_set_enable.__UNIQUE_ID_ddebug225, !522, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!525 = !{ptr @ns2_pinmux_of_match, !526, !"ns2_pinmux_of_match", i1 false, i1 false}
!526 = !{!"../drivers/pinctrl/bcm/pinctrl-ns2-mux.c", i32 1096, i32 34}
!527 = !{i32 1, !"wchar_size", i32 2}
!528 = !{i32 1, !"min_enum_size", i32 4}
!529 = !{i32 8, !"branch-target-enforcement", i32 0}
!530 = !{i32 8, !"sign-return-address", i32 0}
!531 = !{i32 8, !"sign-return-address-all", i32 0}
!532 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!533 = !{i32 7, !"uwtable", i32 1}
!534 = !{i32 7, !"frame-pointer", i32 2}
!535 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!536 = !{i64 2148194727, i64 2148194732, i64 2148194745, i64 2148194789, i64 2148194823, i64 2148194844}
!537 = !{i8 0, i8 2}
!538 = !{i64 717504}
!539 = !{i64 2153748276}
!540 = !{i64 2153748505}
!541 = !{i64 717086}
!542 = !{i64 2153772699}
!543 = !{i64 2153777512}
!544 = !{i64 2153765523}
!545 = !{i64 2153758507}
!546 = !{i64 2153768775}
!547 = !{i64 2153769029}
!548 = !{i64 2153773656}
!549 = !{i64 2153773900}
!550 = !{i64 2153761795}
!551 = !{i64 2153762044}
!552 = !{i64 2153754753}
!553 = !{i64 2153755002}
